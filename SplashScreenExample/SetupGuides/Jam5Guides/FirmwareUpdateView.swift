//
//  FirmwareUpdateView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/6/23.
//

import SwiftUI

struct FirmwareUpdateView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                updateAvailableTitle
                Spacer()
                Image("Unknown")
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
        Text("Please ensure your speaker remains powered on and near your mobile device")
            .font(Font.size18PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var updateButton: some View {
        Button(action: {
            
        }) {
            Text("START UPDATE")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.orange.opacity(0.7))
        }
        .padding(.bottom)
    }
    
    var skipLink: some View {
        Button(action: {
            path.append(GreaterViewOptions.jamRegisterView)
        }) {
            Text("Skip")
                .foregroundColor(.black)
                .underline()
        }
        .padding(.bottom)
    }
}

struct FirmwareUpdateView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    
    static var previews: some View {
        FirmwareUpdateView(path: $path)
    }
}
