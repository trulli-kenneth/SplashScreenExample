//
//  Bass50SetupElevenView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupElevenView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Activate your dongle")
                    .font(Font.semibold24PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("Unknown")
                    .scaledToFit()
                    .padding()

                Text("While sitting in the driver's seat plug the dongle into the 1/8 inch aux input; plug in the USB power, then hold the Bond button on the dongle")
                    .font(Font.size16PN())
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding([.leading, .trailing])
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
        .navigationBarBackButtonHidden()
    }
}

struct Bass50SetupElevenView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupElevenView()
    }
}
