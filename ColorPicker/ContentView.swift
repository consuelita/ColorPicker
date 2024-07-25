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
    
    var body: some View 
    {
        let _ = Self._printChanges()
        let _ = print("red value = \(redValue)")
        
        ViewThatFits {
            PortraitColorPicker(
                color: $activeColor,
                red: $redValue,
                green: $greenValue,
                blue: $blueValue)
            
            LandscapeColorPicker(
                color: $activeColor,
                red: $redValue,
                green: $greenValue,
                blue: $blueValue)
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
