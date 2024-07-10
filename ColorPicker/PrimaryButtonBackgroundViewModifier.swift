//
//  PrimaryButtonBackgroundViewModifier.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import Foundation
import SwiftUI

struct PrimaryButtonBackgroundViewModifier: ViewModifier
{
    func body(content: Content) -> some View
    {
        content
            .foregroundStyle(.white)
            .padding()
            .background(.blue.gradient, in: .rect(cornerRadius: 12))
    }
}

extension View
{
    func primaryBackground() -> some View
    {
        modifier(PrimaryButtonBackgroundViewModifier())
    }
}
