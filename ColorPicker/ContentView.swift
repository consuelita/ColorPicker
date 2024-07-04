//
//  ContentView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    @State private var activeColor = Color.gray
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 24.0)
                .frame(width: 300, height: 250)
                .foregroundStyle(Color(red:redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0))
                .padding(.bottom, 24)
            
            Text("red")
            HStack {
                Slider(value: $redValue, in: 0...255)
                    .tint(.red)
                Text(redValue, format: .number.precision(.fractionLength(1)))
            }
            
            Text("green")
            HStack {
                Slider(value: $greenValue, in: 0...255)
                    .tint(.green)
                Text(greenValue, format: .number.precision(.fractionLength(1)))
            }
            
            Text("blue")
            HStack {
                Slider(value: $blueValue, in: 0...255)
                    .tint(.blue)
                Text(blueValue, format: .number.precision(.fractionLength(1)))
            }
            
            Button("Set Color") {
                activeColor = Color(red:redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0)
            }
            .buttonStyle(.borderedProminent)
            .padding(16)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
