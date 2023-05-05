//
//  Bass50SpeakerSystemOtherView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/28/23.
//

import SwiftUI

struct Bass50SpeakerSystemOtherView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Connecting BASS50 to non-Trulli speakers")
                    .font(.semibold40PN())
                    .padding()
                Spacer()
                Image("Unknown")
                Text("Power on your JAM5")
                    .font(.size24PN())
                    .padding()
                Text("Please refer to the BASS50 User Manual for advanced connection guides.")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("DOWNLOAD USER MANUAL")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed)
                        .padding()
                }
            }
        }
    }
}

struct Bass50SpeakerSystemOtherView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SpeakerSystemOtherView()
    }
}
