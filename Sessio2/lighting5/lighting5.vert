#version 330 core

layout (location = 0) in vec3 vertex;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec3 color;
layout (location = 3) in vec2 texCoord;

out vec3 vert;
out vec3 norm;
out vec4 frontColor;
out vec2 vtexCoord;

uniform mat4 modelViewProjectionMatrix;

void main()
{
	vert = vertex;
	norm = normal;
	vtexCoord = texCoord;
	gl_Position = modelViewProjectionMatrix * vec4(vertex.xyz, 1.0);
}


