#shader vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 texCrood;

out vec2 v_TexCrood;

uniform mat4 u_MVP;

void main()
{
   gl_Position = u_MVP * position;
   v_TexCrood = texCrood;
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TexCrood;

uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main()
{
	vec4 texColor = texture(u_Texture, v_TexCrood);
	color = texColor;
};