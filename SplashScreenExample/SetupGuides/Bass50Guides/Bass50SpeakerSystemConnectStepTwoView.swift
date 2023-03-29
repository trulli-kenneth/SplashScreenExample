//
//  Bass50SpeakerSystemConnectStepTwoView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SpeakerSystemConnectStepTwoView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Step Two")
                    .font(.semibold40PN())
                    .padding()
                Spacer()
                Image("Unknown")
                Text("Connect your speakers together")
                    .font(.size24PN())
                    .padding()
                Text("Wireless Connection")
                    .font(.size20PN())
                Text("On your Bass50, hold the + and Trulli buttons for two seconds. On your Jam5 hold this - and Trulli buttons for two seconds.")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing, .bottom])
                
                Text("Wired Connection")
                    .font(.size20PN())
                Text("Connect the two speakers via USB-C cable")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing])
                Spacer()
            }
        }
    }
}

struct Bass50SpeakerSystemConnectStepTwoView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SpeakerSystemConnectStepTwoView()
    }
}
