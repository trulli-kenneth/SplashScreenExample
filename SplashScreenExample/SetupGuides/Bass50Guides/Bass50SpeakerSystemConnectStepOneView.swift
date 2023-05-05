//
//  Bass50SpeakerSystemConnectStepOneView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SpeakerSystemConnectStepOneView: View {
    @EnvironmentObject var sheetManager: SheetManager
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Step One")
                    .font(.semibold40PN())
                    .padding()
                Spacer()
                Image("Unknown")
                Text("Power on your JAM5")
                    .font(.size24PN())
                    .padding()
                Text("Power on your JAM5 by holding the Trulli button for 1 second")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("CONTINUE")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                        .padding()
                }
            }
        }
        .popup(with: self.sheetManager)
        .onAppear {
            sheetManager.present(with: SheetManager.Config.init(systemName: "info",
                                                                title: "The latest JAM5 firmware is required for connection",
                                                                content: "In order for your BASS50 and JAM5 to function together properly, your JAM5 needs the latest firmware update. If you haven't updated your JAM5's firmware, we recommend you do so before moving forward.",
                                                                type: .popupAlert))
        }
    }
}

struct Bass50SpeakerSystemConnectStepOneView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SpeakerSystemConnectStepOneView()
    }
}
