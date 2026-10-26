#version 300 es
precision highp float;
uniform sampler2D uTex;
in vec2 vUv;
out vec4 oFragColor;

void main() {
    float a = texture(uTex, vUv).a;
    a = 1.0 - step(0.01, a);
    oFragColor = vec4(a);
}