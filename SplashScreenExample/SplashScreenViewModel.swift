//
//  SplashScreenViewModel.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/24/23.
//

import SwiftUI

class SplashScreenViewModel: ObservableObject {
    typealias isProbablyActive = (Bool) -> Void 
    @Published var isActive = false
    @Published var size = 0.8
    @Published var opacity = 0.5
    let isActiveCompletion: isProbablyActive
    
    init(isActiveCompletion: @escaping isProbablyActive){
        self.isActiveCompletion = isActiveCompletion
    }
}
