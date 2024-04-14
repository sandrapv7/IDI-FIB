#version 330 core

in vec3 vertex;
in vec3 color;

uniform mat4 TG;
uniform mat4 Proj;
uniform mat4 View;
uniform vec3 ColorCoche;

out vec3 fcolor;

void main() {
    fcolor = color*ColorCoche;
    gl_Position = Proj * View * TG * vec4 (vertex, 1.0);
}
