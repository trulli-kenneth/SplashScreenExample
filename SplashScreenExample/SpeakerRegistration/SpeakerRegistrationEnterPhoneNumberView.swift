//
//  SpeakerRegistrationEnterPhoneNumberView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationEnterPhoneNumberView: View {
    @State var firstName: String = ""
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Please Enter your phone number")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                    .padding()
                Spacer()
                TextField("Bob", text: $firstName)
                    .frame(width: 320, height: 56)
                    .background(
                        RoundedCorners(color: Color.white,
                                       tl: 3.0,
                                       tr: 3.0,
                                       bl: 3.0,
                                       br: 3.0)
//                        Color.white
                    )
                    .font(.size40PN())
                    .padding()
                CheckboxField(id: "Bob",
                              label: "I would like to recieve text messages from Trulli",
                              size: 14,
                              callback: {
                    
                }, otherAction: {
                    
                })
                .padding(.horizontal)
                .padding(.leading)
                .padding(.leading)
                .font(.size20PN())
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
    }}

struct SpeakerRegistrationEnterPhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationEnterPhoneNumberView()
    }
}
