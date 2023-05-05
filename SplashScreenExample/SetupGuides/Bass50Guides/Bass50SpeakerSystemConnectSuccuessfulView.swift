//
//  Bass50SpeakerSystemConnectSuccuessfulView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SpeakerSystemConnectSuccuessfulView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("Unknown")
                Text("Connection succuessful, your BASS50 and JAM5 are now connected")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("CONTINUE")
                        .font(.size20PN())
                        .frame(width: 300, height: 75 )
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                }
            }
        }
    }
}

struct Bass50SpeakerSystemConnectSuccuessfulView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SpeakerSystemConnectSuccuessfulView()
    }
}
