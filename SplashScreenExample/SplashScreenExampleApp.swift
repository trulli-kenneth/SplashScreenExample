//
//  SplashScreenExampleApp.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/24/23.
//

import SwiftUI

@main
struct SplashScreenExampleApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            BumperScreen(viewModel: BumperScreenViewModel())
                .preferredColorScheme(isDarkMode ? .dark : .light)
//            IntroView(viewModel: IntroViewModel())
//            SplashScreenView(viewModel: SplashScreenViewModel())
        }
    }
}
