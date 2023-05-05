//
//  JamConnectionSuccessfulView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/6/23.
//

import SwiftUI

struct JamConnectionSuccessfulView: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack{
                Spacer()
                screenImage
                successMessage
                Spacer()
               nextButton
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    var screenImage: some View {
        Image("Unknown")
            .padding()
    }
    
    var successMessage: some View {
        Text("JAM5 connection successful")
            .font(Font.semibold32PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var nextButton: some View {
        Button(action: {
            path.append(GreaterViewOptions.firmwareUpdateView)
        }) {
            Text("Next")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed )
        }
        .padding(.bottom)
    }
}

struct JamConnectionSuccessfulView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        JamConnectionSuccessfulView(path: $path)
    }
}
