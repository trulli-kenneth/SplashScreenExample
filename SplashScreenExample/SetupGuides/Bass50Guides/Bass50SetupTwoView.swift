//
//  Bass50SetupTwoView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/8/23.
//

import SwiftUI

struct Bass50SetupTwoView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                updateAvailableTitle
                Spacer()
                speakerImageAndMessage
                Spacer()
                updateButton
                skipLink
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    var updateAvailableTitle: some View {
        Text("Firmware Update Available")
            .font(Font.semibold32PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var speakerImageAndMessage: some View {
        VStack {
            Image("Unknown")
            Text("Please ensure your speaker remains powered on and near your mobile device")
                .font(Font.size18PN())
                .multilineTextAlignment(.center)
                .padding()
        }
    }
    
    var updateButton: some View {
        Button(action: {
            
        }) {
            Text("START UPDATE")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed)
        }
        .padding(.bottom)
    }
    
    var skipLink: some View {
        Button(action: {
//            path.append(GreaterViewOptions.jamRegisterView)
        }) {
            Text("Skip")
                .foregroundColor(.black)
                .underline()
        }
        .padding(.bottom)
    }
}

struct Bass50SetupTwoView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    
    static var previews: some View {
        Bass50SetupTwoView(path: $path)
    }
}
