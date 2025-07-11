#version 150

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl and projection.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
    float LineWidth;
};
layout(std140) uniform Projection {
    mat4 ProjMat;
};

uniform sampler2D Sampler0;

in vec3 Position;
in vec2 UV0;
in vec4 Color;

out vec2 texCoord0;
out vec4 vertexColor;

flat out float LogoTest;
#moj_import <minecraft:steve_stuff.glsl>

int vertexId = gl_VertexID % 4;
vec2 atlasSize = textureSize(Sampler0, 0);

vec2[] corners = vec2[](
    vec2(-1.0, 1.0),
    vec2(-1.0, -1.0),
    vec2(1.0, -1.0),
    vec2(1.0, 1.0)
);

void main() {
    LogoTest = isMojangLogo();
    vec3 pos = Position;
    if (LogoTest == 1.0) {
        gl_Position = vec4(corners[vertexId],1.0, 1.0);
    } else {
        gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
    }

    texCoord0 = UV0;
    vertexColor = Color;
}
