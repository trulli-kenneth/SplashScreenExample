//
//  SettingsTabView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/26/23.
//

import SwiftUI
enum AppSettingsPathways {
    case appSettings
    case buttonGuides
    case jam5BG
    case bass50BG
    case vehicleKitBG
    case tipsAndTricks
    case jam5TandT
    case bass50TandT
    case vehicleKitTandT
    case troubleshootingGuides
    case jam5TG
    case bass50TG
    case vehicleKitTG
    case contactUS
@ViewBuilder func view(_ path: Binding<NavigationPath>) -> some View{
    switch self {
    case .appSettings:
        AppSettingsView(settingsPath: path)
    case .buttonGuides:
        ButtonGuidesView(settingsPath: path)
    case .jam5BG:
        JAM5ButtonsGuideView(settingsPath: path)
    case .bass50BG:
        JAM5ButtonsGuideView(settingsPath: path)
    case .vehicleKitBG:
        JAM5ButtonsGuideView(settingsPath: path)
    case .tipsAndTricks:
        TipsAndTricksView(settingsPath: path)
    case .jam5TandT:
        JAM5TipsAndTricksView(settingsPath: path)
    case .bass50TandT:
        JAM5TipsAndTricksView(settingsPath: path)
    case .vehicleKitTandT:
        JAM5TipsAndTricksView(settingsPath: path)
    case .troubleshootingGuides:
        TroubleShootingGuidesView(settingsPath: path)
    case .jam5TG:
        JAM5TroubleShootingGuideView(settingsPath: path)
    case .bass50TG:
        JAM5TroubleShootingGuideView(settingsPath: path)
    case .vehicleKitTG:
        JAM5TroubleShootingGuideView(settingsPath: path)
    case .contactUS:
        ContactUsView(settingsPath: path)
    }
}
}
struct SettingsTabView: View {
    @State var settingsPath: NavigationPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $settingsPath){
            ZStack{
                Color.trulliGold
                    .ignoresSafeArea()
                VStack {
                    Text("Settings")
                        .font(.semibold44PN())
                        .foregroundColor(Color.trulliBlack)
                        .offset(x: 0, y: 8)
                    Spacer()
                    
                    VStack {
                        appSettingsButton
                        buttonGuidesButton
                        tipsAndTricksButton
                        troubleshootingGuidesButton
                        faqButton
                        contactUsButton
                        registerProductButton
                    }
                }
            }
            .navigationDestination(for: AppSettingsPathways.self){ option in
                option.view($settingsPath)
            }
        }
    }
    
    var appSettingsButton: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.appSettings)
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("App Settings")
                    .multilineTextAlignment(.leading)
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var buttonGuidesButton: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.buttonGuides)
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Button Guides")
                    .multilineTextAlignment(.leading)
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var tipsAndTricksButton: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.tipsAndTricks)

        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Tips and Tricks")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var troubleshootingGuidesButton: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.troubleshootingGuides)

        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Troubleshooting Guide")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var faqButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("FAQ")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var contactUsButton: some View {
        Button(action: {
            settingsPath.append(AppSettingsPathways.contactUS)
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Contact US")
                    .multilineTextAlignment(.leading)
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing])
    }
    
    var registerProductButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Register Product")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding([.leading, .trailing, .bottom])
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SettingsTabView(settingsPath: path)
    }
}
