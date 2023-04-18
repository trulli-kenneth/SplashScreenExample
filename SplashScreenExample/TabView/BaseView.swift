//
//  BaseView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/9/23.
//

import SwiftUI

struct BaseView: View {
    @StateObject var appState = AppState()
    @EnvironmentObject var sheetManager: SheetManager
    var body: some View {
        TabView(selection: $appState.selectedTab) {
             HomeView()
                .environmentObject(sheetManager)
                 .tag(ContentViewTab.home)
                 .tabItem {
                     Label("Home", systemImage: "house.fill")
                         .background(
                            Color.gray
                         )
                 }

             SettingsView()
                 .tag(ContentViewTab.settings)
                 .tabItem {
                     Label("Settings", systemImage: "gearshape.fill")
                 }
         }
         .environmentObject(appState)
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}

class AppState: ObservableObject {
    @Published var selectedTab: ContentViewTab = .home
    @Published var homeNavigation: [HomeNavDestination] = []
    @Published var settingsNavigation: [SettingsNavDestination] = []
}

enum ContentViewTab {
    case home
    case settings
}

enum HomeNavDestination {
    case details
    case otherDetails
    case speakerSetting
}

enum SettingsNavDestination {
    case otherDetails
}

struct MyHomeView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        NavigationStack(path: $appState.homeNavigation) {
            VStack {
                Text("127.0.0.1")
                
                NavigationLink(value: HomeNavDestination.details) {
                    Text("Open details")
                }
                .padding()
            }
            .padding()
            .navigationTitle("Home")
            .navigationDestination(for: HomeNavDestination.self) { destination in
                switch destination {
                case .details:
                    DetailsView()
                    
                case .otherDetails:
                    OtherDetailsView()
                case .speakerSetting:
                    Text("Let's do it")
                }
            }
        }
    }
}

struct SettingsView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        NavigationStack(path: $appState.settingsNavigation) {
            List {
                Section {
                    NavigationLink(value: SettingsNavDestination.otherDetails) {
                        Text("Open other details")
                    }
                }

                Section {
                    ForEach(0..<20) { index in
                        Text("\(index)")
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: SettingsNavDestination.self) { destination in
                switch destination {
                case .otherDetails:
                    OtherDetailsView()
                }
            }
        }
    }
}

struct DetailsView: View {
    var body: some View {
        VStack {
            Text("Details")

            NavigationLink(value: HomeNavDestination.otherDetails) {
                Text("Open other details")
            }
        }
        .padding()
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherDetailsView: View {
    var body: some View {
        VStack {
            Text("Other Details")
        }
        .padding()
        .navigationTitle("Other Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

