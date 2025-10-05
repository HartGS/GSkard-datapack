#version 150

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
    float LineWidth;
};

uniform sampler2D Sampler0;
uniform vec2 ScreenSize;

in vec2 texCoord0;
in vec4 vertexColor;
flat in float LogoTest;

out vec4 fragColor;

#moj_import <minecraft:draw_logo.glsl>
#moj_import <minecraft:important_config.glsl>

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    if (color.a == 0.0 && LogoTest != 1.0) {
        discard;
    }
    fragColor = color * ColorModulator;
    
    vec2 uv = gl_FragCoord.xy / ScreenSize;
    if (LogoTest == 1.0) {
        fragColor = vec4(0.0,0.0,0.0,vertexColor.a);
        
        if (drawMain(uv,vertexColor.a)) {
            float gradient = (uv.x+uv.y)/2;
            gradient = pow(gradient,1.5);
            vec3 orang = vec3(227, 113, 0);
            orang = orang / 255;
            fragColor = vec4(vec3(gradient)*orang,vertexColor.a);
        }
    }
}

