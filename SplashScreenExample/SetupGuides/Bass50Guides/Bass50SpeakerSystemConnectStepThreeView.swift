//
//  Bass50SpeakerSystemConnectStepThreeView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/28/23.
//

import SwiftUI

struct Bass50SpeakerSystemConnectStepThreeView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Step Three")
                    .font(.semibold40PN())
                    .padding()
                Spacer()
                Image("Unknown")
                Text("Connect your JAM5s together")
                    .font(.size24PN())
                    .padding()
                Text("On the USB-C connected JAM5, hold the + and Trulli buttons for 2 seconds. On the other JAM5, hold the - and the Trulli buttons for 2 seconds.")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
              
            }
        }
    }
}

struct Bass50SpeakerSystemConnectStepThreeView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SpeakerSystemConnectStepThreeView()
    }
}
