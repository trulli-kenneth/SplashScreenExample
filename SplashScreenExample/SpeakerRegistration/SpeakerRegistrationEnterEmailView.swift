//
//  SpeakerRegistrationEnterEmailView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationEnterEmailView: View {
    @State var firstName: String = ""
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Please Enter your email address")
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
                              label: "I would like to subscribe to Trulli Emails",
                              size: 14,
                              callback: {
                    
                }, otherAction: {
                    
                })
                .padding(.horizontal)
                .padding(.leading)
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
    }
}

struct SpeakerRegistrationEnterEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationEnterEmailView()
    }
}
