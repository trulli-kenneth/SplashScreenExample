//
//  SpeakerRegistrationEnterNameView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationEnterNameView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack  {
                Text("Please Enter Your Name")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                    .padding()
                    .padding(.horizontal, 04)
                Spacer()
                TextField("First Name", text: $firstName)
                    .frame(width: 320, height: 56)
                    .background(
                        Color.white
                    )
                    .font(.size40PN())
                    .padding()
                TextField("Last Name", text: $lastName)
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
        //            homePath.removeLast(path.addressView)
                } ) {
                    Text("CONTINUE")
                        .frame(width: 320, height: 56)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                        .padding()
                }
            }
        }
    }
}

struct SpeakerRegistrationEnterNameView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationEnterNameView()
    }
}
