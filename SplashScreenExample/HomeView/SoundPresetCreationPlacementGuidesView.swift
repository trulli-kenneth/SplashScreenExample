//
//  SoundPresetCreationPlacementGuidesView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/14/23.
//

import SwiftUI

struct SoundPresetCreationPlacementGuidesView: View {
    @Binding var homePath: NavigationPath
    
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("BASS50 placement guides")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                
                
                ScrollView {
                    VStack(spacing: 08 ) {
                        Image("Unknown")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 320)
                            .padding()
                        Text("Open Trunk")
                            .font(.size24PN())
                        Text("Recommended configuration: horizontal, driver facing down.")
                            .font(.size20PN())
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
                            .font(.size20PN())
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Image("Unknown")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 320)
                            .padding()
                        Text("Open Trunk")
                            .font(.size24PN())
                        Text("Recommended configuration: horizontal, driver facing down.")
                            .font(.size20PN())
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
                            .font(.size20PN())
                            .multilineTextAlignment(.center)
                            .padding()
                        Button(action: {
                            homePath.append(HomeViewOptions.soundSuccess)
                        } ) {
                            Text("Continue")
                                .frame(width: 300, height: 50)
                                .foregroundColor(.white)
                                .background( Color.orange.opacity(0.7))
                                .padding()
                        }
                  
                    }
                }
            }
        }
    }
}

struct SoundPresetCreationPlacementGuidesView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SoundPresetCreationPlacementGuidesView(homePath: $path)
    }
}
