//
//  ContentView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/3/24.
//

import SwiftUI

struct ContentView: View 
{
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    @State private var activeColor = Color.white
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var landscapeIsCompact: Bool
    {
        horizontalSizeClass == .compact && verticalSizeClass == .compact ||
        horizontalSizeClass == .regular && verticalSizeClass == .compact
    }
    
    var body: some View 
    {
        let _ = Self._printChanges()
        let _ = print("red value = \(redValue)")
        
        Group
        {
            if landscapeIsCompact 
            {
                HStack(spacing: 16)
                {
                    ColorCardView(color: activeColor)
                    RGBSliderStackView(color: $activeColor, red: $redValue, green: $greenValue, blue: $blueValue)
                }
            }
            else
            {
                VStack(spacing: 16)
                {
                    ColorCardView(color: activeColor)
                    RGBSliderStackView(color: $activeColor, red: $redValue, green: $greenValue, blue: $blueValue)
                }
            }
        }
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
}

#Preview(traits: .landscapeLeft) {
    ContentView()
}
