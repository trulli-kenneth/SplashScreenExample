//
//  SheetManager.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/7/23.
//

import Foundation

enum SheetType {
    case popupAlert
    case soundProfileList
}
final class SheetManager: ObservableObject {
    typealias Config = Action.Info
    @Published private(set) var action: Action = .na

    enum Action {
        struct Info {
            let systemName: String
            let title: String
            let content: String
            let type: SheetType
        }
        
        case na
        case present(info: Info)
        case dismiss
    }

    func present(with config: Config) {
        guard !action.isPresented else { return }
        self.action = .present(info: config)
    }
    
    func dismiss() {
        self.action = .dismiss
    }
}

extension SheetManager.Action {
    var isPresented: Bool {
        guard case .present(_) = self else {return false}
        return true
    }
}
