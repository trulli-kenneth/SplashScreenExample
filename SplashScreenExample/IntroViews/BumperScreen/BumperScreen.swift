//
//  BumperScreen.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/25/23.
//

import SwiftUI
import Lottie

struct BumperScreen: View {
    @State var show = false
    @State var isDone: Bool = false
    @State var doneLoading = false
    @State private var path = NavigationPath()
    @State private var isDoneOnboarding = false
    @StateObject var viewModel: BumperScreenViewModel
    @StateObject var sheetManager = SheetManager()
    
    init(viewModel: @autoclosure @escaping () -> BumperScreenViewModel) {
        self._viewModel = .init(wrappedValue: viewModel())
    }
    
    var body: some View {
        if isDoneOnboarding {
            HomeView()
                .environmentObject(sheetManager)
        } else {
            NavigationStack(path: $path) {
                ZStack {
                    Color(.trulliGold)
                        .ignoresSafeArea()
                    VStack {
                        if show {
                            Spacer()
                            loadAnimation
                                .frame(width: 150, height: 150)
                                .task {
                                    try? await viewModel.getDataFromAPI()
                                    try? await Task.sleep(for: Duration.seconds(1))
                                    path.append(ContentViewViewModel())
                                    doneLoading.toggle()
                                    show.toggle()
                                    print("Done")
                                }
                            Spacer()
                        } else if doneLoading {
                            EmptyView()
                        } else {
                            launchAnimation
                        }
                    }
                    .navigationDestination(for: ContentViewViewModel.self) { model in
                        ContentView(viewModel: model, path: $path)
                            .environmentObject(sheetManager)
                    }
                }
            }
        }
    }
    
    var launchAnimation: some View {
        viewModel.makeAnimatedView(show: $show)
    
    }
    
    var loadAnimationNoIndicator: some View {
        HStack(alignment: .center){
            VStack(alignment: .center, spacing: 10) {
                Image("TrulliLogo")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
    
    var loadAnimation: some View {
        HStack(alignment: .center){
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                Image("TrulliLogo")
                    .resizable()
                LoadingAnimatedView(isDone: $isDone)
                    
            }
        }
    }
}

struct MyBaseView: View {
    @StateObject var manager: SheetManager
    
    var body: some View {
        HomeView()
            .environmentObject(manager)
    }
}

extension UIColor {
    static let trulliGold: UIColor = UIColor(red: 238/255, green: 233/255, blue: 220/255, alpha: 1.0)
}

struct LoadingAnimatedView: UIViewRepresentable {
    @Binding var isDone: Bool
    
    func makeUIView(context: Context) -> some UIView {
        let view = LottieAnimationView(name: "Loading_Wheel_360x40", bundle: Bundle.main)
        // on Complete..
        view.loopMode = .loop
        view.play { (status) in
            if status {
                //toggle
                withAnimation(.interactiveSpring(response: 0.7,dampingFraction: 0.8,blendDuration: 0.8)) {
//                    isDone.toggle()
                    view.play()
                }
            }
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}

struct AnimatedView: UIViewRepresentable {
    @Binding var show: Bool
    @StateObject var viewModel: AnimatedViewViewModel
    
    init(show: Binding<Bool>,
         viewModel: @autoclosure @escaping () -> AnimatedViewViewModel) {
        self._viewModel = .init(wrappedValue: viewModel())
        self._show = show
    }
    
    
    func makeUIView(context: Context) -> LottieAnimationView {
        let view = LottieAnimationView(name: "Bumper_Animation_Black_v2", bundle: Bundle.main)
        // on Complete..
        view.play { (status) in
            if status {
                //toggle
                withAnimation(.interactiveSpring(response: 0.7,dampingFraction: 0.8,blendDuration: 0.8)) {
                    show.toggle()
                    viewModel.isDoneShowing(true)
                }
            }
        }
        return view
    }
    
    func updateUIView(_ uiView: LottieAnimationView, context: Context) {
        
    }
}

class AnimatedViewViewModel: ObservableObject {
    typealias isDoneShowingCompletion = (Bool) -> Void
    var isDoneShowing: isDoneShowingCompletion
    
    
    init(isDoneShowing: @escaping isDoneShowingCompletion) {
        self.isDoneShowing = isDoneShowing
    }

}
