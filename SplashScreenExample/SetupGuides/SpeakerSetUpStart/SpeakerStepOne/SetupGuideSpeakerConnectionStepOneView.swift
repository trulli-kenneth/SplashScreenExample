//
//  SetupGuideSpeakerConnectionStepOneView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/27/23.
//

import SwiftUI

struct SetupGuideSpeakerConnectionStepOneView: View {
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
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    Image("Unknown")
                        .scaledToFit()
                        .padding()
                    Text("Step One")
                        .font(Font.size20PN())
                        .padding()
                    Text("Power on your speaker by holding the Trulli button for 1 second")
                        .font(Font.size16PN())
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    Button(action: {
                        isSelected = true
                        path.append(GreaterViewOptions.speakerSetUpStepTwo)
                        print("Navigate")
                    } ) {
                        Text("Next")
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
        .navigationBarBackButtonHidden()
    }
    
    var navigationLink: some View {
        NavigationLink(value: isSelected) {
            EmptyView()
        }
    }
}

struct SetupGuideSpeakerConnectionStepOneView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SetupGuideSpeakerConnectionStepOneView(path: $path)
    }
}
