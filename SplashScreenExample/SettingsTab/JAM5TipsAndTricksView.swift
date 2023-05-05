//
//  JAM5TipsAndTricksView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/2/23.
//

import SwiftUI

struct JAM5TipsAndTricksView: View {
    @Binding var settingsPath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                title
                tipsScroll
            }
        }
    }
    
    var title: some View {
        Text("JAM5 Tips and Tricks")
            .font(.semibold40PN())
            .multilineTextAlignment(.center)
    }
    
    var tipsScroll: some View {
        ScrollView {
            VStack(spacing: 08 ) {
                firstTip
                secondTip
            }
        }
    }
    
    var firstTip: some View {
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
    
    var secondTip: some View {
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

struct JAM5TipsAndTricksView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        JAM5TipsAndTricksView(settingsPath: $path)
    }
}
