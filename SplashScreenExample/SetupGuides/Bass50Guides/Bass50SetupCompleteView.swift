//
//  Bass50SetupCompleteView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SetupCompleteView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("BASS50 setup Complete")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Text("Please use the remote to control music while driving. Using your phone while driving could result in serious injury or death to you or those around you.")
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
                        .background( Color.orange.opacity(0.7))
                        .padding()
                }
            }
        }
    }
}

struct Bass50SetupCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupCompleteView()
    }
}
