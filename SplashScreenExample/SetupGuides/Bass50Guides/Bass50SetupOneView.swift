//
//  Bass50SetupOneView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/8/23.
//

import SwiftUI

struct Bass50SetupOneView: View {
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
        Text("BASS50 connection successful")
            .font(Font.semibold32PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var nextButton: some View {
        Button(action: {
//            path.append(GreaterViewOptions.firmwareUpdateView)
        }) {
            Text("Next")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed)
        }
        .padding(.bottom)
    }
}

struct Bass50SetupOneView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        Bass50SetupOneView(path: $path)
    }
}
