//
//  AppSettingsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/27/23.
//

import SwiftUI

struct AppSettingsView: View {
    @State var isDeviceDefaulPressed: Bool = false
    @State var isLightModePressed: Bool = false
    @State var isDarkModePressed: Bool = false
    @Binding var settingsPath: NavigationPath
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("App Settings")
                    .font(.semibold44PN())
                Spacer()
                lightingModeRow
                divider
                latestAppVersionSection
                divider
                installedAppVersionSection
                Spacer()
            }
            
        }
    }
    
    var divider: some View {
        Divider()
                .frame(height: 4)
                .overlay(Color("TrulliBlack").opacity(0.5))
                .padding()
    }
    
    var lightingModeRow: some View {
        HStack {
            VStack{
                Image("Unknown")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 72)
//                        Spacer(04)
                Text("Device Default")
                Button(action: {
                    print("boobs")
                    if isDarkModePressed {
                        isDarkModePressed.toggle()
                    }
                    if isLightModePressed{
                        isLightModePressed.toggle()
                    }
                    if isDarkMode {
                        isDarkMode.toggle()
                    }
                    isDeviceDefaulPressed.toggle()
                }) {
                
                }
                .frame(width: 16, height: 16)
                .buttonStyle(CircleStyle(isButtonToggled: $isDeviceDefaulPressed))
                .scaledToFit()
            }
            .frame(width: 144)
            VStack{
                Image("Unknown")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 72)
//                        Spacer(04)
                Text("Light Mode")
                Button(action: {
                    print("boobs")
                    if isDarkModePressed {
                        isDarkModePressed.toggle()
                    }
                    if isDeviceDefaulPressed {
                        isDeviceDefaulPressed.toggle()
                    }
                    if isDarkMode {
                        isDarkMode.toggle()
                    }
                    isLightModePressed.toggle()
                }) {
                
                }
                .frame(width: 16, height: 16)
                .buttonStyle(CircleStyle(isButtonToggled: $isLightModePressed))
                .scaledToFit()
            }
            .frame(width: 144)
            VStack{
                Image("Unknown")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 72)
//                        Spacer(04)
                Text("DarkMode")
                Button(action: {
                    print("boobs")
                    if isDeviceDefaulPressed {
                        isDeviceDefaulPressed.toggle()
                    }
                    if isLightModePressed {
                        isLightModePressed.toggle()
                    }
                    isDarkMode.toggle()
                    isDarkModePressed.toggle()
                }) {
                
                }
                .frame(width: 16, height: 16)
                .buttonStyle(CircleStyle(isButtonToggled: $isDarkModePressed))
                .scaledToFit()
            }
            .frame(width: 144)
        }
    }
    var latestAppVersionSection: some View {
        HStack{
            VStack(alignment: .leading) {
                Text("Latest App Version")
                    .font(.semibold20PN())
                    .padding(.leading)
                    .padding(.bottom)
                Text("2.0.0")
                    .font(.size24PN())
                    .padding(.leading)
                    .padding(.bottom)
                Text("Release date April 12, 2023")
                    .font(.size20PN())
                    .padding(.leading)
            }
            Spacer()
        }
        .padding(.leading)
    }
    
    var installedAppVersionSection: some View {
        HStack{
            VStack(alignment: .leading) {
                Text("Latest App Version")
                    .font(.semibold20PN())
                    .padding(.leading)
                    .padding(.bottom)
                Text("2.0.0")
                    .font(.size24PN())
                    .padding(.leading)
                    .padding(.bottom)
                Text("Release date April 12, 2023")
                    .font(.size20PN())
                    .padding(.leading)
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct AppSettingsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        AppSettingsView(settingsPath: $path)
    }
}
