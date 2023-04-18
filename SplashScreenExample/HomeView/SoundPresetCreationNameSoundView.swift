//
//  SoundPresetCreationNameSoundView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/14/23.
//

import SwiftUI

struct SoundPresetCreationNameSoundView: View {
    @State var newName: String = ""
    @State var hasChanged: Bool = false
    @Binding var homePath: NavigationPath
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Name your new sound")
                    .multilineTextAlignment(.center)
                    .font(.semibold36PN())
                    .padding([.leading, .trailing])
                Spacer()
                TextField("", text: $newName)
                    .frame(width: 340, height: 56)
                    .background(
                        Color.white
                    )
                    .font(.size40PN())
                    .padding()
                Spacer()
                Button(action: {
                    homePath.append(HomeViewOptions.soundPresetLocations)
                } ) {
                    Text("Continue")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.orange.opacity(0.7))
                        .padding()
                }
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct SoundPresetCreationNameSoundView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SoundPresetCreationNameSoundView(homePath: $path)
    }
}
