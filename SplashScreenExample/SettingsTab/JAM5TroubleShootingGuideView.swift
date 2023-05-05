//
//  JAM5TroubleShootingGuideView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/2/23.
//

import SwiftUI

struct JAM5TroubleShootingGuideView: View {
    @Binding var settingsPath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                title
                troubleshootingScroll
            }
        }
    }
    
    var title: some View {
        Text("JAM5 TroubleShooting Guides")
            .font(.semibold36PN())
            .multilineTextAlignment(.center)
    }
    
    var troubleshootingScroll: some View {
        ScrollView {
            VStack(spacing: 08 ) {
                guidePointOne
                guidePointTwo
            }
        }
    }
    
    var guidePointOne: some View {
        VStack {
            Image("Unknown")
                .resizable()
                .scaledToFit()
                .frame(width: 320)
                .padding()
            Text("Purus")
                .font(.size24PN())
            Text("Recommended configuration: horizontal, driver facing down.")
                .font(.size20PN())
                .multilineTextAlignment(.center)
                .padding()
            Text("Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.")
                .font(.size20PN())
                .multilineTextAlignment(.center)
                .padding()
        }
    }
    
    var guidePointTwo: some View {
        VStack {
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
        }
    }
}

struct JAM5TroubleShootingGuideView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        JAM5TroubleShootingGuideView(settingsPath: $path)
    }
}
