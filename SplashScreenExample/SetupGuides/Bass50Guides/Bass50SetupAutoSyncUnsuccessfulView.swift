//
//  Bass50SetupAutoSyncUnsuccessfulView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SetupAutoSyncUnsuccessfulView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Auto Sync Unsuccessful")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Tap 'TRY AGAIN' to try the auto-sync again, or tap 'MANUAL SYNC' to adjust the sync latency yourself.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding([.leading, .trailing])
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("TRY AGAIN")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed)
                        .padding()
                }
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("MANUAL SYNC")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed)
                        .padding()
                }
                Spacer()
                
                Text("Contact Support")
                    .font(Font.size12PN())
                    .underline()
            }
        }
    }
}

struct Bass50SetupAutoSyncUnsuccessfulView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupAutoSyncUnsuccessfulView()
    }
}
