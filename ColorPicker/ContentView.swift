//
//  ContentView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedRating: Double = 3
    
    var body: some View {
        VStack {
            Image("SeqoiaPark")
                .resizable()
                .frame(width: 200, height: 250)
            Text("Select Park Rating")
                .font(.largeTitle)
                .padding()
                .background(.green)
            Text(selectedRating, format: .number.precision(.fractionLength(0)))
                .bold()
                .font(.title)
                .foregroundStyle(.orange)
            Slider(value: $selectedRating, in: 0...5)
                .tint(.green)
                .padding()
            
            Button("Next") {
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
