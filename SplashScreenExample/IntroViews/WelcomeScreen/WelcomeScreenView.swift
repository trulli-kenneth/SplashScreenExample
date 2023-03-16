//
//  WelcomeScreenView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/7/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    private let configCollection: [SheetManager.Config] = [SheetManager.Config.init(systemName: "Unknown",
                                                                                    title: "BASS50 Support",
                                                                                    content: "Guided setup and advanced controls allow you to bring bass anywhere", type: .popupAlert),
                                                           SheetManager.Config.init(systemName: "Unknown",
                                                                                    title: "Quick Sound Profile Switching",
                                                                                    content: "At home or on the go, match your speaker's sound to your environment in seconds", type: .popupAlert),
                                                           SheetManager.Config.init(systemName: "Unknown",
                                                                                    title: "Music Control",
                                                                                    content: "Easily control the playback, volume, and bass gain of your music", type: .popupAlert)]
    var isNotLastPhoto: Bool {
        return currentIndex < 2
    }
    let numberOfTabs = 3
    @State var currentIndex = 0
    @State var isGoingToNewView: Bool = false
    @StateObject var viewModel: WelcomeScreenViewViewModel
    @Binding var path: NavigationPath

    var body: some View {
            ZStack {
                Color(.trulliGold)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 8) {
                    header
                    Spacer()
                    tabView
                    Spacer()
                    Spacer()
                    nextButton
                    closeButton
                }
            }
            .navigationDestination(for: SetupGuideSpeakerSearchViewViewModel.self) { model in
                SetupGuideSpeakerSearchView(viewModel: model, path: $path )
//                SetupGuideSpeakerSearchView(viewModel: model)
//                Text("Balls are shown")
            }
        .navigationBarBackButtonHidden()
    }
    
    var header: some View {
        Text("What's New")
            .font(Font.semibold24PN())
    }
    
    var tabView: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<numberOfTabs) { num in
                WelcomeScreenTabbedView(config: configCollection[num])
            }
        }.tabViewStyle(PageTabViewStyle())
    }
    
    var nextButton: some View {
        Button(action: {
            if isNotLastPhoto {
                withAnimation {
                    currentIndex = currentIndex + 1
                }
            } else {
//                path.append(GreaterViewOptions.speakerSetUpStart)
            }
        }) {
            Text(isNotLastPhoto ? "NEXT" : "Continue")
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200)
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .padding(.top, 32)
    }
    
    var closeButton: some View {
        Button(action: {
            path.append(SetupGuideSpeakerSearchViewViewModel())
        }) {
            Text("Close")
                .foregroundColor(Color.orange)
                .underline()
        }
        .padding()
        .frame(width: 200)
        .foregroundColor(Color.orange)
        .clipShape(Capsule())
    }
    
}

struct WelcomeScreenView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        WelcomeScreenView(viewModel: WelcomeScreenViewViewModel(), path: $path)
    }
}

struct TestView: View {
    @StateObject var viewModel: TestViewViewModel
//    @Binding var path: NavigationPath
    var body: some View {
        Text("Fuck off mate")
    }
}

class TestViewViewModel: ObservableObject, Hashable {
    var shown: Bool = false
    
    static func == (lhs: TestViewViewModel, rhs: TestViewViewModel) -> Bool {
        return lhs === rhs
    }
    
    func hash(into hasher: inout Hasher) {
//        hasher.combine(bytes: <#UnsafeRawBufferPointer#>)
        print("No")
    }
    
}
