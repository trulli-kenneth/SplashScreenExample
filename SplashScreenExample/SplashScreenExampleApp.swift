//
//  SplashScreenExampleApp.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/24/23.
//

import SwiftUI

@main
struct SplashScreenExampleApp: App {
    var body: some Scene {
        WindowGroup {
            BumperScreen(viewModel: BumperScreenViewModel())
//            IntroView(viewModel: IntroViewModel())
//            SplashScreenView(viewModel: SplashScreenViewModel())
        }
    }
}
