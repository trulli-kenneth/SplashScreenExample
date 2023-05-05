//
//  Bass50SetupNineteenSyncStartView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupNineteenSyncStartView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Sync car stereo with BASS50")
                    .font(Font.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("Unknown")
                    .scaledToFit()
                    .padding()

                Text("Hold phone near ear and press 'AUTO SYNC'")
                    .font(Font.size16PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("AUTO SYNC")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed)
                        .padding()
                }
            }
        }
    .navigationBarBackButtonHidden()
    }
}

struct Bass50SetupNineteenSyncStartView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupNineteenSyncStartView()
    }
}
