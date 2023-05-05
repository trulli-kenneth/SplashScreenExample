//
//  ButtonStyles.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/28/23.
//

import Foundation
import SwiftUI

struct CircleStyle: ButtonStyle {
    @Binding var isButtonToggled: Bool
    
    func makeBody(configuration: ButtonStyleConfiguration) -> some View {
        
        if !isButtonToggled {
            Circle()
                .fill()
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .opacity(configuration.isPressed ? 0.3 : 0)
                )
                .overlay(
                    Circle()
                        .fill()
//                        .stroke(lineWidth: 4)
                        .foregroundColor(.trulliGold)
                        .padding(3)
                )
                .overlay(
                    configuration.label
                        .foregroundColor(.white)
                )
        } else {
            Circle()
                .fill()
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .opacity(configuration.isPressed ? 0.3 : 0)
                )
                .overlay(
                    Circle()
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                        .padding(4)
                )
        }
    }
}
