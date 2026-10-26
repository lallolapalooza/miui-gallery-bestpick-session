#version 300 es

in vec2 mappedposition;
in vec3 position;

uniform mat4 uMatrix;
uniform float uAspectRatio;

out vec2 aUv;

void main() {
    aUv = mappedposition;
    gl_Position = uMatrix * vec4(position, 1.0);
}