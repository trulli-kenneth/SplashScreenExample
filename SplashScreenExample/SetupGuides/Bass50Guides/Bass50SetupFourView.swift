//
//  Bass50SetupFourView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupFourView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                title
                
                Spacer()
                vehicleButton
                speakerSystemButton
                Spacer()
                Spacer()
                }
        }
    }
    
    var title: some View {
        Text("What are you connecting this BASS50 to?")
            .font(.semibold44PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var vehicleButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Vehicle")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var speakerSystemButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Speaker System")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
      
    }
}

struct Bass50SetupFourView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupFourView()
    }
}
