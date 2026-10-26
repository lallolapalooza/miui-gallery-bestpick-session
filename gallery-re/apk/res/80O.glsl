#version 300 es
precision highp float;

uniform float uGlowStart;
uniform float uGlowWidth;
uniform float uGlowAlpha;
uniform float uParticalSmallAlpha;
uniform float uAlpha;
uniform float uDark;
uniform float uReveal;
uniform float uTime;
uniform float uScanProgress;
uniform float uScanLuminance;

uniform sampler2D uPreTex;
uniform sampler2D uUdfTex;
uniform sampler2D uCropTex;
uniform sampler2D uPerlinTex;
uniform sampler2D uParticleTex;
uniform sampler2D uParticleSmallTex;

in vec2 vUv;

out vec4 o_FragColor;

float luminance(vec3 c) {
    return dot(c, vec3(0.2126, 0.7152, 0.0722));
}

vec4 alphaBlend(vec4 srcColor, vec4 dstColor) {
    vec4 blendedColor;
    blendedColor.rgb = srcColor.rgb * srcColor.a + dstColor.rgb * (1.0 - srcColor.a);
    blendedColor.a = srcColor.a + dstColor.a * (1.0 - srcColor.a);
    return blendedColor;
}

float map(float x1, float x2, float y1, float y2, float x) {
    return (x - x1) / (x2 - x1) * (y2 - y1) + y1;
}



void main() {
    vec4 crop = texture(uCropTex, vUv) * uReveal;
    // scan effect
    float smoothen = 0.7;
    float progress = mix(-smoothen, 1. + smoothen, uScanProgress);
    float progressVal = 1. - luminance(crop.rgb);
    float front = smoothstep(progress + smoothen, progress, progressVal);
    float back = smoothstep(progress - smoothen, progress, progressVal);
    float scan = smoothstep(0., 1., front * back) * 0.6;
    crop.rgb += scan * uScanLuminance * pow(1. - uScanProgress, 1.2);

    // glow background
    float udf = texture(uUdfTex, vUv).r;
    /*    o_FragColor = texture(uUdfTex, vUv);
    return;*/
    udf = map(uGlowStart, uGlowStart + uGlowWidth, 1.0, 0.0, udf);
    udf = clamp(udf, 0.0, 0.9);

    vec2 st = vUv / 5.0;
    float n = texture(uPerlinTex, st + vec2(uTime / 20.0, 0.0)).r;
    n = map(0.0, 0.8, 0.0, 1.0, n);
    udf *= n;

    // glow on edge
    vec4 glow = vec4(udf * uReveal);
    glow *= glow;

    // magic particles
    float particle = texture(uParticleTex, vUv * 4.0 - uTime / 80.0).r;
    float particleSmall = texture(uParticleSmallTex, vUv * 2.0 - uTime / 40.0).r;

    // running light
    float border = texture(uPreTex, vUv).r;
    float region = texture(uPreTex, vUv).g;

    // mix together
    vec4 color = glow * uGlowAlpha * uAlpha;
    color += n * region * 0.1 * uAlpha;
    color += particle * region * uAlpha;
    color += particleSmall * (region + udf) * uAlpha * uParticalSmallAlpha;

    color.rgb = mix(color.rgb, crop.rgb, crop.a);
    color.a = mix(color.a, crop.a, crop.a);

    color += border;
    o_FragColor = color;
}