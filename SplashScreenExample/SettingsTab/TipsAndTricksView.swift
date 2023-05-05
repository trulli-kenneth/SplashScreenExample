//
//  TipsAndTricksView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/2/23.
//

import SwiftUI

struct TipsAndTricksView: View {
    @Binding var settingsPath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                title
                Spacer()
                buttonsStack
                Spacer()
                Spacer()
            }
        }
    }
    
    var title: some View {
        Text("Tips and Tricks")
            .font(.semibold44PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var buttonsStack: some View {
        VStack {
            jam5Button
            bass50Button
            vehicleKitButton
        }
    }
    
    var jam5Button: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.jam5TandT)
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("JAM5")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var bass50Button: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("BASS50")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var vehicleKitButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Vehicle Kit")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
}

struct TipsAndTricksView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        TipsAndTricksView(settingsPath: $path)
    }
}
