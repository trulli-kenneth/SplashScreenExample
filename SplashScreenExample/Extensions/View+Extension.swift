//
//  View+Extension.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/7/23.
//

import Foundation
import SwiftUI

extension View {
    typealias popupDouble = (any View, Void)
    func popup(with sheetManager: SheetManager) -> some View {
        self.modifier(PopupViewModifier(sheetManager: sheetManager){})
    }
    
    func popup(with sheetManager: SheetManager, action: @escaping () -> Void) -> some View {
        self.modifier(PopupViewModifier(sheetManager: sheetManager){ action() })
    }
}
