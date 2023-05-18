//
//  SpeakerRegistrationCompleteView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationCompleteView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack(spacing: 32) {
                Spacer()
                Text("Sweet Ride!")
                    .font(.semibold36PN())
                Text("Registration is complete, thank you")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                Text("You will recieve an email shortly, confirming your registration")
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
        //            homePath.removeLast(homePath.count)
                } ) {
                    Text("CONTINUE")
                        .frame(width: 320, height: 56)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                        .padding()
                }
            }
        }
    }
}

struct SpeakerRegistrationCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationCompleteView()
    }
}
