//
//  Bass50SetupNineView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/22/23.
//

import SwiftUI

struct Bass50SetupNineView: View {
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("What are you connecting this BASS50 to?")
                    .font(.semibold44PN())
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                Text("You can change this later.")
                Spacer()
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("Open Trunk (Hatchback or SUV)")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
                
                closedTrunkSedanButton
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "car")
                            .font(.size52PN())
                            .padding()
                        Text("Back Seat Region")
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
                        Text("Front Seat Region")
                            .font(.semibold28PN())
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .background(.gray)
                .padding()
                
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Learn more about how placement affects sound")
                        .font(.semibold20PN())
                        .underline()
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
        }
    }
    
    var closedTrunkSedanButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Closed Trunk (Sedan)")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
}

struct Bass50SetupNineView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupNineView()
    }
}
