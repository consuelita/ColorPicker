//
//  LandscapeColorPicker.swift
//  ColorPicker
//
//  Created by Mafalda on 7/24/24.
//

import SwiftUI

struct LandscapeColorPicker: View 
{
    @Binding var color: Color
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View 
    {
        HStack(spacing: 16)
        {
            ColorCardView(color: color)
            RGBSliderStackView(color: $color, red: $red, green: $green, blue: $blue)
        }
    }
}

#Preview(traits: .landscapeLeft) {
    LandscapeColorPicker(color: .constant(.red), red: .constant(50), green: .constant(50), blue: .constant(50))
}
