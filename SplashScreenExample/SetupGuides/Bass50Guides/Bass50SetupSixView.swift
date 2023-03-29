//
//  Bass50SetupSixView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupSixView: View {
    @State var vehicleName: String = ""
    
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Name your vehicle")
                    .font(.semibold28PN())
                Spacer()
                TextField( "Vehicle name", text: $vehicleName)
                    .frame(width: 300)
                    .padding()
                    .background(
                        Color.white
                    )
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

struct Bass50SetupSixView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupSixView()
    }
}
