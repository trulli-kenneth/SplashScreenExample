//
//  HomeView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/9/23.
//

import SwiftUI

enum HomeViewOptions {
    case soundSettings
    
}

struct HomeView: View {
//    @EnvironmentObject var sheetManager: SheetManager
    @State var isPlaying: Bool = false
    @State private var volumeLevel: Double = 0
    @State private var bassLevel: Double = 0
    @State var homePath: NavigationPath = NavigationPath()
    
    var body: some View {
//        NavigationStack(path: $homePath) {
            ZStack {
                Color(.trulliGold)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Text("Connected Speakers")
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                    }
                    speakerCardsView
                    // TODO: Music controls and slider
                    controlsView
                }
            }
//            .popup(with: sheetManager) {
//                print("pressed")
//            }
            .navigationBarBackButtonHidden(true)
//        }
    }
    
    var speakerCardsView: some View {
        // TODO: wrap in scroll view
//        SpeakerCardView(didPressSoundButton: {
//            sheetManager.present(with: .init(systemName: "info",
//                                             title: "AIDS",
//                                             content: "Butthole sex",
//                                             type: .soundProfileList))
//        })
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                SpeakerCardView(didPressSoundButton: {
                    
                    withAnimation {
//                        sheetManager.present(with: .init(systemName: "info",
//                                                         title: "AIDS",
//                                                         content: "Butthole sex",
//                                                         type: .soundProfileList))
                    }
                })
                .frame(minWidth: 325 )
                
                AddSpeakerCardView(didPressSoundButton: {
                    print("Go to new speaker detection")
                })
                .frame(minWidth: 325 )
            }
        }
    }
    
    var controlsView: some View {
        VStack{
            playForwardBackRow
            slidersView
        }
        .background(background)
        .padding(.horizontal)
    }
    
    var playForwardBackRow: some View {
        HStack{
            // play, back, and forward buttons
            backButton
            playButton
            forwardButton
        }
        .padding(.top)
    }
    
    var playButton: some View {
        isPlaying ?  Button(action: {
            print("pause prssed")
            isPlaying.toggle()
         }) {
             Image("Icon_LM_Pause")
         }
         .padding(.horizontal)
        : Button(action: {
            print("play pressed")
             isPlaying.toggle()
         }) {
             Image("Icon_LM_Play")
         }.padding(.horizontal)
    }
    
    var backButton: some View {
        Button(action: {
            print("Back pressed")
        }) {
            Image("Icon_LM_Track_Back")
        }
        .padding(.trailing)
    }
    
    var forwardButton: some View {
        Button(action: {
             print("Forward pressed")
         }) {
             Image("Icon_LM_Track_Forward")
         }
         .padding(.leading)
    }
    
    var slidersView: some View {
        // alternates between just volume and volume + bass depending on speaker type
        VStack{
            HStack{
               // Volume slider
                Image("Icon_LM_Volume")
                Slider(value: $volumeLevel, in: -50...50){ didChange in
                    print("Did Change Volume: \(didChange)")
                }
                .tint(Color.red)
                    .padding(.trailing)
                
            }
            .padding([.top,.trailing, .leading])
            HStack{
                // Bass slider
                Image("Icon_LM_Bass")
                Slider(value: $bassLevel, in: -50...50) { didChange in
                    print("Did Change Bass: \(didChange)")
                }
                    .tint(Color.red)
                    .padding(.trailing)
            }
            .padding()
        }
        .overlay(alignment: .bottomTrailing){
            Button(action: {
                
            }){
                Image("Slider_Lock")
            }
            .padding(.leading)
            .offset(x: -08, y: -36)
        }
        // needs overlay for lock
    }
    
    var background: some View {
        RoundedCorners(color: .white,
                       tl: 8,
                       tr: 8,
                       bl: 8,
                       br: 8)
        .shadow(color: .black.opacity(0.2),
                radius: 3)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SheetManager())
    }
}
