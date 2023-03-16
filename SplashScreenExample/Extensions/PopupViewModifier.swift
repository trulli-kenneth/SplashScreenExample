//
//  PopupViewModifier.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/7/23.
//

import Foundation
import SwiftUI

struct PopupViewModifier: ViewModifier {
    @ObservedObject var sheetManager: SheetManager
    var popupAction: () -> (Void)
    
    
    func body(content: Content) -> some View {
        content
            .disabled(sheetManager.action.isPresented ? true : false )
            .blur(radius: sheetManager.action.isPresented ? 05 : 0)
            .overlay(alignment: .center) {
                if case let .present(config) = sheetManager.action {
                    switch config.type {
                    case .popupAlert:
                        PopupView(config: config) {
                            withAnimation {
                                sheetManager.dismiss()
                            }
                        }
                    case .soundProfileList:
                        SoundProfilePopupView(config: config) {
                            withAnimation {
                                sheetManager.dismiss()
                            }
                        } tappedProfile: {
                            popupAction()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .ignoresSafeArea()
    }
}
