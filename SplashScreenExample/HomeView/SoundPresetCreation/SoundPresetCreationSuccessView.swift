//
//  SoundPresetCreationSuccessView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/14/23.
//

import SwiftUI

struct SoundPresetCreationSuccessView: View {
    @Binding var homePath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Sound creation successful")
                    .font(.semibold44PN())
                    .multilineTextAlignment(.center)
                Text("You can adjust this sound in your BASS50's sound settings")
                    .font(.size20PN())
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing])
                Button(action: {
                    homePath.removeLast(homePath.count)
                } ) {
                    Text("Continue")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.buttonColorRed )
                        .padding()
                }
            }
        }
    }
}

struct SoundPresetCreationSuccessView_Previews: PreviewProvider {
   @State static var path = NavigationPath()
    
    static var previews: some View {
        SoundPresetCreationSuccessView(homePath: $path)
    }
}
