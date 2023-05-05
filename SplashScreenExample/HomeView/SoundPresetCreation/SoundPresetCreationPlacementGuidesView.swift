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
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                title
                guideScrollView
            }
        }
    }
    
    var title: some View {
        Text("BASS50 placement guides")
            .font(.semibold40PN())
            .multilineTextAlignment(.center)
    }
    
    var guideScrollView: some View {
        ScrollView {
            VStack(spacing: 08 ) {
                openTrunkConfigurationSection
                closedTrunkConfigurationSection
                continueButton
            }
        }
    }
    
    var openTrunkConfigurationSection: some View {
        VStack {
            openTrunkImage
            openTrunkTitle
            openTrunkConfig
            openTrunkMessage
        }
    }
    
    var openTrunkImage: some View {
        Image("Unknown")
            .resizable()
            .scaledToFit()
            .frame(width: 320)
            .padding()
    }
    
    var openTrunkTitle: some View {
        Text("Open Trunk")
            .font(.size24PN())
    }
    
    var openTrunkConfig: some View {
        Text("Recommended configuration: horizontal, driver facing down.")
            .font(.size20PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var openTrunkMessage: some View {
        Text("Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
            .font(.size20PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var closedTrunkConfigurationSection: some View {
        VStack{
            closedTrunkImage
            closedTrunkTitle
            closedTrunkConfig
            closedTrunkMessage
        }
    }
    
    var closedTrunkImage: some View {
        Image("Unknown")
            .resizable()
            .scaledToFit()
            .frame(width: 320)
            .padding()
    }
    
    var closedTrunkTitle: some View {
        Text("Open Trunk")
            .font(.size24PN())
    }
    
    var closedTrunkConfig: some View {
        Text("Recommended configuration: horizontal, driver facing down.")
            .font(.size20PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var closedTrunkMessage: some View {
        Text("Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
            .font(.size20PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var continueButton: some View {
        Button(action: {
            homePath.append(HomeViewOptions.soundSuccess)
        } ) {
            Text("CONTINUE")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed)
                .padding()
        }
    }
}

struct SoundPresetCreationPlacementGuidesView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SoundPresetCreationPlacementGuidesView(homePath: $path)
    }
}
