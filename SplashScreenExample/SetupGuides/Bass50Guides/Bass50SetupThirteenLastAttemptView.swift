//
//  Bass50SetupThirteenLastAttemptView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupThirteenLastAttemptView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Remote not Found, is your remote powered on?")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Button(action: {
                    
                }) {
                    HStack {
                        Text("YES")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .background(.gray)
                .padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Text("NO")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .background(.gray)
                .padding()
            }
        }
    }
}

struct Bass50SetupThirteenLastAttemptView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupThirteenLastAttemptView()
    }
}
