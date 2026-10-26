#version 300 es

in vec3 aPosition;
in vec2 aUv;

uniform mat4 uMatrix;
uniform float uAspectRatio;

out vec2 vUv;

void main() {
    vUv = aUv;
    gl_Position = uMatrix * vec4(aPosition, 1.0);
}