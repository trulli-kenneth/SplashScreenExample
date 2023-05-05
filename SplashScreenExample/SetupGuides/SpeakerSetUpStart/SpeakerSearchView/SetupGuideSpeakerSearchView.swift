//
//  SetupGuideSpeakerSearchView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/27/23.
//

import SwiftUI

struct SetupGuideSpeakerSearchView: View {
    @StateObject var viewModel: SetupGuideSpeakerSearchViewViewModel
    @Binding var path: NavigationPath
    @State var isDone: Bool = false

    var canNavigateNow: Bool {
        return isDone
    }
    
    var body: some View {
            ZStack {
                Color.trulliGold
                    .ignoresSafeArea()
                VStack{
                        Image("Unknown")
                            .scaledToFit()
                        loadAnimation
                            .frame(width: 150, height: 150)
                            .task {
                                try? await getDataFromAPI()
                                try? await Task.sleep(for: Duration.seconds(1))
                                isDone.toggle()
                                path.append(GreaterViewOptions.speakerSetUpStepOne)
                            }
                }
            }
        .navigationBarBackButtonHidden()
    }
    
    var loadAnimation: some View {
        HStack(alignment: .center){
            VStack(alignment: .center, spacing: 10) {
                LoadingAnimatedView(isDone: $isDone)
            }
        }
    }
    
    var navigationLink: some View {
        NavigationLink(value: isDone) { EmptyView() }
    }
    
    func getDataFromAPI() async throws {
        let googleURL = URL(string: "https://www.google.com")!
        let (_, response) = try await URLSession.shared.data(from:googleURL)
        print(response as? HTTPURLResponse)
    }
}

struct SetupGuideSpeakerSearchView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
//        SetupGuideSpeakerSearchView(path: $path, viewModel: SetupGuideSpeakerSearchViewViewModel())
        SetupGuideSpeakerSearchView( viewModel: SetupGuideSpeakerSearchViewViewModel(), path: $path)
//        SetupGuideSpeakerSearchView(viewModel: SetupGuideSpeakerSearchViewViewModel())
    }
}
