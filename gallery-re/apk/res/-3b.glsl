#version 300 es
precision highp float;
uniform vec2 uSize;
uniform float uDist;
uniform sampler2D uTex;
in vec2 vUv;
out vec4 oFragColor;

void main() {
    //oFragColor = vec4(1.0, 0.0, 0.0, 1.0);
    float b = texture(uTex, vUv).b;
    float xp = 1.0 / uSize.x;
    float yp = 1.0 / uSize.y;
    float dist = uDist * (0.9 - min(b, 0.9));
    b = min(b, texture(uTex, vUv + vec2(xp, 0.0)).b + dist);
    b = min(b, texture(uTex, vUv + vec2(-xp, 0.0)).b + dist);
    b = min(b, texture(uTex, vUv + vec2(0, yp)).b + dist);
    b = min(b, texture(uTex, vUv + vec2(0, -yp)).b + dist);
    b = min(b, texture(uTex, vUv + vec2(xp, yp)).b + dist * 1.41421);
    b = min(b, texture(uTex, vUv + vec2(-xp, yp)).b + dist * 1.41421);
    b = min(b, texture(uTex, vUv + vec2(xp, -yp)).b + dist * 1.41421);
    b = min(b, texture(uTex, vUv + vec2(-xp, -yp)).b + dist * 1.41421);
    b = min(b, 0.7);
    oFragColor = vec4(vec3(b), 1.0);
}
