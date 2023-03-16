//
//  WelcomeScreenTabbedView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/8/23.
//

import SwiftUI


struct WelcomeScreenTabbedView: View {
    let config: SheetManager.Config
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            image
            title
            content
            Spacer()
        }
    }
    
    var image: some View {
        Image(config.systemName)
            .resizable()
            .scaledToFit()
            .padding()
    }
    
    var title: some View {
        Text(config.title)
            .font(Font.size20PN())
    }
    
    var content: some View {
        Text(config.content)
            .font(Font.size16PN())
            .multilineTextAlignment(.center)
            .padding(.top, 15)
    }
}

struct WelcomeScreenTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenTabbedView(config: SheetManager.Config.init(systemName: "Unknown", title: "BASS50", content: "You dont know me", type: .popupAlert))
    }
}
