//
//  ColorCardView.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import SwiftUI

struct ColorCardView: View 
{
    var color: Color
    
    var body: some View
    {
        RoundedRectangle(cornerRadius: 24.0)
            .frame(width: 300, height: 250)
            .foregroundStyle(color)
            .padding(.bottom, 24)
    }
}

#Preview {
    ColorCardView(color: .black)
}
