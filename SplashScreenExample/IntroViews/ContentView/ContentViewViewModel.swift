//
//  ContentViewViewModel.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/15/23.
//

import Foundation
import SwiftUI

class ContentViewViewModel: ObservableObject, Hashable {
    var shown: Bool = false 
    
    static func == (lhs: ContentViewViewModel, rhs: ContentViewViewModel) -> Bool {
        return lhs === rhs
    }
    
    func hash(into hasher: inout Hasher) {
//        hasher.combine(bytes: <#UnsafeRawBufferPointer#>)
        print("No")
    }
    
}
