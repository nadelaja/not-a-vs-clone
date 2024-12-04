varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 red_overlay = vec4(1.0, 0.0, 0.0, 1.0); // Pure red
    
    // Multiply base color by red overlay
    gl_FragColor = base_color * red_overlay * v_vColour;
}