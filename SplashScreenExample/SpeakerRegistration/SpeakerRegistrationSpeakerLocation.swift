//
//  SpeakerRegistrationSpeakerLocation.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationSpeakerLocation: View {
    @State var isYesPressed: Bool = false
    @State var isNoPressed: Bool = false
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Do you plan on using this speaker in a vehicle?")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                    .padding()
                Text("Please note, this is not a mandatory question")
                    .padding(.top)
                Spacer()
                HStack {
                    VStack{
                        Text("Yes")
                        Button(action: {
                            print("boobs")
                            self.isYesPressed.toggle()
                            if self.isNoPressed {
                                self.isNoPressed.toggle()
                            }
                        }) {
                        
                        }
                        .frame(width: 16, height: 16)
                        .buttonStyle(CircleStyle(isButtonToggled: $isYesPressed))
                        .scaledToFit()
                    }
                    .frame(width: 144)
                    VStack{

                        Text("No")
                        Button(action: {
                            print("boobs")
                            self.isNoPressed.toggle()
                            if self.isYesPressed {
                                self.isYesPressed.toggle()
                            }
                        }) {
                        
                        }
                        .frame(width: 16, height: 16)
                        .buttonStyle(CircleStyle(isButtonToggled: $isNoPressed))
                        .scaledToFit()
                    }
                    .frame(width: 144)
                }
                .padding(.top)
                Spacer()
                Button(action: {
        //            homePath.removeLast(homePath.count)
                } ) {
                    Text("NEXT")
                        .frame(width: 320, height: 56)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                        .padding()
                }
            }
           
        }
    }
}

struct SpeakerRegistrationSpeakerLocation_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationSpeakerLocation()
    }
}
