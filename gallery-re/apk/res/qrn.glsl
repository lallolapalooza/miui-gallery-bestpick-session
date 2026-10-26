#version 300 es
precision mediump float;

const float offset[3] = float[](0.0, 1.3846153846, 3.2307692308);
const float weight[3] = float[](0.2270270270, 0.3162162162, 0.0702702703);
const float LOD = 2.0;
const float RES = 512.0;

uniform sampler2D uTex;

in vec2 vUv;

uniform float uAspectRatio1;


out vec4 o_FragColor;

void main() {
    vec4 color = textureLod(uTex, vUv, LOD) * weight[0];
    for (int i=1; i<3; i++) {
        color += textureLod(uTex, vUv + vec2(0.0, offset[i] * uAspectRatio1 / RES), LOD) * weight[i];
        color += textureLod(uTex, vUv - vec2(0.0, offset[i] * uAspectRatio1 / RES), LOD) * weight[i];
    }

    o_FragColor = color;
}