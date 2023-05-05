//
//  Bass50SetupSpeakerSystemStartView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

enum SpeakerSystemType {
    case oneJAM5
    case dualJAM5
    case other
}

struct Bass50SetupSpeakerSystemStartView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("What speaker system are you connecting to?")
                    .font(.semibold44PN())
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("JAM5")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("DUAL JAM5s")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("Other")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
              
                Spacer()
                Spacer()
                }
        }
    }
}

struct Bass50SetupSpeakerSystemStartView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupSpeakerSystemStartView()
    }
}
