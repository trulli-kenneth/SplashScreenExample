//
//  SetupGuideSpeakerConnectionStepTwoView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/27/23.
//

import SwiftUI

struct SetupGuideSpeakerConnectionStepTwoView: View {
    @Binding var path: NavigationPath
    @State var isSelected: Bool = false
    
    var body: some View {
//        NavigationStack(path: $path) {
            ZStack {
                Color(.trulliGold)
                    .ignoresSafeArea()
                VStack {
                    Text("Speaker Connection Guide")
                        .font(Font.semibold24PN())
                        .padding()
                        .multilineTextAlignment(.center)
                    Spacer()
                    Image("Unknown")
                        .scaledToFit()
                        .padding()
                    Text("Step Two")
                        .font(Font.size20PN())
                        .padding()
                    Text("Hold the + and - buttons on your speaker to put it into pairing mode. Then enter your device's Bluetooth settings and select the speaker")
                        .font(Font.size16PN())
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    Button(action: {
                        isSelected = true
                        path.append(GreaterViewOptions.jam5ConnectionSuccessfull)
                        print("Navigate")
                    } ) {
                        Text("Enter Settings")
                            .frame(width: 300, height: 50)
                            .foregroundColor(.white)
                            .background( Color.orange.opacity(0.7))
                            .padding()
                    }
                    navigationLink
                    
                    Text("Contact Support")
                        .font(Font.size12PN())
                        .underline()
                }
            }
//            .navigationDestination(for: Bool.self) { bool in
//                if bool == isSelected {
//                    SetupGuideSpeakerConnectionStepTwoView()
//                }
//            }
//        }
        .navigationBarBackButtonHidden()
    }
    
    var navigationLink: some View {
        NavigationLink(value: isSelected) {
            EmptyView()
        }
    }
}

struct SetupGuideSpeakerConnectionStepTwoView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SetupGuideSpeakerConnectionStepTwoView(path: $path)
    }
}
