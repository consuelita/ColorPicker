//
//  RGBSlider.swift
//  ColorPicker
//
//  Created by Mafalda on 7/10/24.
//

import Foundation
import SwiftUI

enum RGBSlider
{
    case red
    case green
    case blue
    
    var title: String {
        String(describing: self).capitalized
    }
    
    var tintColor: Color
    {
        switch self {
            case .red:
                return .red
            case .green:
                return .green
            case .blue:
                return .blue
        }
    }
}
