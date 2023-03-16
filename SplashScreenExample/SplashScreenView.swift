//
//  SplashScreenView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/24/23.
//

import SwiftUI

struct SplashScreenView: View {
    @StateObject var viewModel: SplashScreenViewModel
    
    init(viewModel: @autoclosure @escaping () -> SplashScreenViewModel) {
        _viewModel = .init(wrappedValue: viewModel())
    }
    
    var body: some View {
        if viewModel.isActive {
//            ContentView()
        } else {
            VStack{
                ZStack{
                    Color.brown
                        .ignoresSafeArea()
                    VStack {
                        Image(systemName: "hare.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.red)
                        Text("Epic App 2")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.black.opacity(0.8))
                    }
                    .scaleEffect(viewModel.size)
                    .opacity(viewModel.opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.viewModel.size = 0.9
                            self.viewModel.opacity = 1.0
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.viewModel.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView(viewModel: SplashScreenViewModel(isActiveCompletion: { _ in
        }))
    }
}
