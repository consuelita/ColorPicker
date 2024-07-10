//
//  RGBSliderView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import SwiftUI

struct RGBSliderView: View 
{
    let rgbSlider: RGBSlider
    @Binding var value: Double
    
    var body: some View
    {
        VStack(spacing: 0)
        {
            Text(rgbSlider.title)
            HStack
            {
                Slider(value: $value, in: 0...255)
                    .tint(rgbSlider.tintColor)
                Text(value, format: .number.precision(.fractionLength(1)))
            }
        }
    }
}

#Preview {
    RGBSliderView(rgbSlider: .red, value: .constant(50))
        .padding()
}
