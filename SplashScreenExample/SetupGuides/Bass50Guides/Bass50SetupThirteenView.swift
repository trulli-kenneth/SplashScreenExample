//
//  Bass50SetupThirteenView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupThirteenView: View {
    @State var isDone = false
    
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Searching for Remote")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
    
    var loadAnimation: some View {
        HStack(alignment: .center){
            VStack(alignment: .center, spacing: 10) {
                LoadingAnimatedView(isDone: $isDone)
            }
        }
    }
}

struct Bass50SetupThirteenView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupThirteenView()
    }
}
