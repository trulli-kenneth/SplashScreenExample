//
//  Bass50SetupFourteenView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupFourteenView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Connection successful. Next, mount your remote.")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Select the remote mount you want to use:")
                Spacer()
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("CD Mount")
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
                        Text("Vent Mount")
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
                        Text("Dash Mount")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
                Spacer()
            }
        }
    }
}

enum Mountype {
    case cdMount
    case ventMount
    case dashMount
}

struct Bass50SetupFourteenView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupFourteenView()
    }
}
