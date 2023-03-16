//
//  BumperScreenViewModel.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/26/23.
//

import Foundation
import SwiftUI

class BumperScreenViewModel: ObservableObject {
    var isDone: Bool = false
    
    func makeAnimatedView(show: Binding<Bool>) -> some View {
        return AnimatedView(show: show,
                            viewModel: AnimatedViewViewModel(isDoneShowing: {[weak self] isDone in
            guard let self = self else { return }
            self.isDone = isDone
        }))
    }
    
    func getDataFromAPI() async throws {
        let googleURL = URL(string: "https://www.google.com")!
        let (_, response) = try await URLSession.shared.data(from:googleURL)
        print(response as? HTTPURLResponse)
    }
}

extension BumperScreenViewModel: Hashable {
    static func == (lhs: BumperScreenViewModel, rhs: BumperScreenViewModel) -> Bool {
         lhs.isDone == rhs.isDone
    }
    func hash(into hasher: inout Hasher) {
          hasher.combine(self.isDone)
      }
}
