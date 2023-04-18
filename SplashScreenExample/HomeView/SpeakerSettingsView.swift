//
//  SpeakerSettingsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/6/23.
//

import SwiftUI

struct SpeakerSettingsView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Speaker Name")
                        .font(.size36PN())
                }
                .padding(.bottom)
                Spacer()
                Image("Unknown")
                    .padding()
                HStack(alignment: .center, spacing: 08 ) {
//                    Spacer()
                    VStack{
                        Image(systemName: "battery.25")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .none, height: 20)
                        Text("25%")
                        Text("Battery Remaining")
                            .font(.size12PN())
                    }
                    .padding(.leading)
                    Spacer()
                    
                    VStack{
                        Image(systemName: "thermometer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .none, height: 20)
                        Text("70")
                        Text("Fahrenheit")
                            .font(.size12PN())
                            .fixedSize()
                    }
                    .padding(.trailing)
                    Spacer()
                    VStack{
                        Image(systemName: "battery.25")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .none, height: 20)
                        Text("25%")
                        Text("Battery Remaining")
                            .font(.size12PN())
                    }
                    .padding(.trailing)
//                    Spacer()
                }
                Spacer(minLength: 16)
                Button(action: {
                    
                }) {
                    HStack{
                       Image(systemName: "music.note")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(height: 28)
                            .padding()
                        Text("Sound Settings")
                            .foregroundColor(.black)
                            .font(.size28PN())
                            
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                }
                .background(
                    RoundedCorners(color: .white,
                                   tl: 10,
                                   tr: 10,
                                   bl: 10,
                                   br: 10)
                    .shadow(color: .black.opacity(0.2),
                            radius: 3)
                )
                .padding([.leading, .trailing])
                Button(action: {
                    
                }) {
                    HStack{
                       Image(systemName: "music.note")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(height: 28)
                            .padding()
                        Text("Update available")
                            .foregroundColor(.black)
                            .font(.size28PN())
                            
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                }
                .background(
                    RoundedCorners(color: .white,
                                   tl: 10,
                                   tr: 10,
                                   bl: 10,
                                   br: 10)
                    .shadow(color: .black.opacity(0.2),
                            radius: 3)
                )
                .padding([.trailing, .leading])
                Button(action: {
                    
                }) {
                    HStack{
                       Image(systemName: "eraser")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(height: 28)
                            .padding()
                        Text("Reset Speaker")
                            .foregroundColor(.black)
                            .font(.size28PN())
                            
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                }
                .background(
                    RoundedCorners(color: .white,
                                   tl: 10,
                                   tr: 10,
                                   bl: 10,
                                   br: 10)
                    .shadow(color: .black.opacity(0.2),
                            radius: 3)
                )
                .padding([.trailing, .leading])
                
            }
        }
    }
}
//
//struct SpeakerSettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpeakerSettingsView()
//    }
//}
