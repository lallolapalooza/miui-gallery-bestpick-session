#version 300 es
precision highp float;

in vec2 aUv;

uniform float uProgress;
uniform float uLineAlpha;
uniform float uRegionAlpha;
uniform float uHighlightWidth;
uniform float uLineLength;

uniform sampler2D uWandTex;
uniform sampler2D uGlowTex;

out vec4 o_FragColor;


float map(float x1, float x2, float y1, float y2, float x) {
    return (x - x1) / (x2 - x1) * (y2 - y1) + y1;
}

float shiftMod(float x, float offset, float m) {
    return x + offset > m ? x + offset - m : x + offset;
}

void main() {
    float progress = uProgress;
    float end = progress - uLineLength;
    float start = progress;
    float x = aUv.x;
    float y = 1.0 - aUv.y;
    if (end < 0.0) {
        y = shiftMod(y, -end, 1.0);
        start = shiftMod(start, -end, 1.0);
        end = shiftMod(end, -end, 1.0);
    }

    vec2 st = vec2(x, y);
    bool flag = false;
    st.y = map(start, end, 0.0, 1.0, st.y);
    float region = texture(uGlowTex, st).a * uRegionAlpha;

    st.x -= 0.5;
    st.x *= uHighlightWidth;
    st.x += 0.5;

    float border = texture(uWandTex, st).a * uLineAlpha;

    // clamp edge with transparent white pixels
    if (st.y > 0.99 || st.y < 0.01 || st.x > 0.99 || st.x < 0.01) border = 0.0;

    o_FragColor = vec4(border, region, 0.0, 1.0);
}
