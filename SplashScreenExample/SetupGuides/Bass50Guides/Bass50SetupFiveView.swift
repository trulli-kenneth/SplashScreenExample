//
//  Bass50SetupFiveView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupFiveView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack{
                Text("The Trulli Vehicle Kit is required for setup")
                    .font(.semibold28PN())
                    .multilineTextAlignment(.center)
                Spacer()
                Image("Unknown")
                Text("Don't have a vehicle kit?")
                Button(action: {
                    
                }) {
                    Text("Purchase one here")
                        .underline()
                }
                Spacer()
                continueButton
            }
        }
    }
    
    var continueButton: some View {
        Button(action: {
            print("pressed")
        }) {
            Text("CONTINUE")
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .padding(.bottom, 32)
    }
}

struct Bass50SetupFiveView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupFiveView()
    }
}
