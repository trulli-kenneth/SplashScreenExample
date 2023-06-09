//
//  JamRegisterView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/6/23.
//

import SwiftUI

struct JamRegisterView: View {
    @State var dontShowAgainIsPressed: Bool = false
    @Binding var path: NavigationPath
    @Binding var isDoneOnboarding: Bool
    
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Register JAM5?")
                    .font(Font.semibold32PN())
                    .padding()
                Spacer()
                Text("By registering your speaker, you'll unlock its extended X year warranty and allow us to provide you with faster support.")
                    .font(Font.size18PN())
                    .multilineTextAlignment(.center)
                Button(action: {
                    
                }) {
                    Text("REGISTER")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.orange.opacity(0.7))

                }
                .padding()

                Divider()
                    .padding()
                    .foregroundColor(.gray)
                Text("By not registering your device, you must acknowledge that you will not be eligible for the extended warranty and it may take the extra time to provide support.")
                    .font(Font.size18PN())
                    .multilineTextAlignment(.center)
                Button(action:{
                    path.removeLast(path.count)
                    isDoneOnboarding = true
                }) {
                    Text("I acknowledge, skip registration")
                        .font(Font.size22PN())
                        .foregroundColor(.black)
                        .padding()
                        .underline()
                    
                }
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
}

struct JamRegisterView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    @State static var done = false
    static var previews: some View {
        JamRegisterView(path: $path, isDoneOnboarding: $done)
    }
}
