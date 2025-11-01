if (skinspice == 1 && texCoord0.y > 0.125 && texCoord0.y < 0.25 && ((texCoord0.x > 0.125 && texCoord0.x < 0.25) || (texCoord0.x > 0.625 && texCoord0.x < 0.75))) {
    vec2 texSize = textureSize(Sampler0, 0);
    if (texSize.x > 0.0 && texSize.y > 0.0) {
        vec4 colorPixel = texture(Sampler0, vec2(1.0 / 64.0, 0.0));
        if (colorPixel.a == 1.0) {
            vec4 modifiedColor = texture(Sampler0, clamp(texCoord0 + vec2(16.0 / texSize.x, -8.0 / texSize.y), vec2(0.0), vec2(1.0)));
            vec2 duration = vec2(colorPixel.r * 25.5, colorPixel.g * 25.5);
            float time = mod(GameTime * 1200, duration.x + duration.y);
            if (time < duration.y) {
                if (colorPixel.b > 0) {
                    float durationSegment = duration.y / 3.0;
                    float middleSegment = durationSegment * 2.0;
                    float progress;
                    if (time < durationSegment) {
                        progress = 1.0 - time / durationSegment;
                    } else if (time < middleSegment) {
                        progress = 0.0;
                    } else {
                        progress = (time - middleSegment) / durationSegment;
                    }
                    color = mix(modifiedColor, color, progress);
                } else {
                    color = modifiedColor;
                }
            }
        }
    }
}
