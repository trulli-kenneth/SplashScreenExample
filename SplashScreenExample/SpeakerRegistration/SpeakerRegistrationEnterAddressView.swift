//
//  SpeakerRegistrationEnterAddressView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationEnterAddressView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Please enter your address")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                    .padding(.horizontal)
                Spacer()
                TextField("Address", text: $firstName)
                    .frame(width: 320, height: 56)
                    .background(
                        Color.white
                    )
                    .font(.size40PN())
                    .padding()
                TextField("City", text: $firstName)
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
                TextField("State", text: $firstName)
                    .frame(width: 320, height: 56)
                    .background(
                        Color.white
                    )
                    .font(.size40PN())
                    .padding()
                TextField("Postal Code", text: $firstName)
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

struct SpeakerRegistrationEnterAddressView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationEnterAddressView()
    }
}
