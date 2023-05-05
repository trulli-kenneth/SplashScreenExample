//
//  Bass50SetupThreeView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/8/23.
//

import SwiftUI

struct Bass50SetupThreeView: View {
    @State var dontShowAgainIsPressed: Bool = false
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack(alignment: .center) {
                title
                Spacer()
                registerSection

                Divider()
                    .padding()
                    .foregroundColor(.gray)
 
                Spacer()
                dontShowAgain
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    var dontShowAgain: some View {
        HStack {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            CheckboxField(id: PolicyType.bluetoothPolicy.rawValue,
                          label: "Don't show this again",
                          size: 16,
                          textSize: 14,
                          callback: {
                self.dontShowAgainIsPressed.toggle()
            },
                          otherAction: {
                self.dontShowAgainIsPressed.toggle()
            })
            .padding()
        }
    }
    var title: some View {
        Text("Register BASS50?")
            .font(Font.semibold32PN())
            .padding()
    }
    
    var registerSection: some View {
        VStack {
            Text("By registering your speaker, you'll unlock its extended X year warranty and allow us to provide you with faster support.")
                .font(Font.size18PN())
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing])
            Button(action: {
                
            }) {
                Text("REGISTER")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background( Color.buttonColorRed)

            }
            .padding()
        }
    }
    var skipRegistrationSection: some View {
        VStack {
            Text("By not registering your device, you must acknowledge that you will not be eligible for the extended warranty and it may take the extra time to provide support.")
                .font(Font.size18PN())
                .multilineTextAlignment(.center)
            Button(action:{
//                    path.append(GreaterViewOptions.)
            }) {
                Text("I acknowledge, skip registration")
                    .font(Font.size22PN())
                    .foregroundColor(Color.trulliBlack)
                    .padding()
                    .underline()
                
            }
        }
    }
}

struct Bass50SetupThreeView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    
    static var previews: some View {
        Bass50SetupThreeView(path: $path)
    }
}
