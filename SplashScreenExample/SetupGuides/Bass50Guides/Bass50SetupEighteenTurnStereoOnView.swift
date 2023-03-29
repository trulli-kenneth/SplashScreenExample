//
//  Bass50SetupEighteenTurnStereoOnView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupEighteenTurnStereoOnView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Turn car stereo on")
                    .font(Font.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("Unknown")
                    .scaledToFit()
                    .padding()

                Text("Turn car stereo on, select AUX input and set volume to 25%")
                    .font(Font.size16PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("CONTINUE")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.orange.opacity(0.7))
                        .padding()
                }
            }
        }
    .navigationBarBackButtonHidden()
    }
}

struct Bass50SetupEighteenTurnStereoOnView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupEighteenTurnStereoOnView()
    }
}
