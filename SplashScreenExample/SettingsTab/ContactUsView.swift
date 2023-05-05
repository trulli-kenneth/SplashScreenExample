//
//  ContactUsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/2/23.
//

import SwiftUI

struct ContactUsView: View {
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
        Text("Troubleshooting Guides")
            .font(.semibold40PN())
            .multilineTextAlignment(.center)
            .padding()
    }
    
    var buttonsStack: some View {
        VStack {
            chatButton
            callButton
            textButton
            emailButton
        }
    }
    
    var chatButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Chat")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var callButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Call")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var textButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Text")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var emailButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Email")
                    .font(.semibold28PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
}

struct ContactUsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        ContactUsView(settingsPath: $path)
    }
}
