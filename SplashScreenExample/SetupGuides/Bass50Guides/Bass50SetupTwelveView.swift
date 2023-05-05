//
//  Bass50SetupTwelveView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupTwelveView: View {
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Power on remote")
                    .font(Font.semibold24PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("Unknown")
                    .scaledToFit()
                    .padding()
                
                Text("Locate the remote and [activate the battery]. Then power on the remote by holding [button] for one second")
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
                        .background( Color.buttonColorRed)
                        .padding()
                }

            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct Bass50SetupTwelveView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupTwelveView()
    }
}
