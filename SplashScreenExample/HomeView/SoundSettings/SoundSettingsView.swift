//
//  SoundSettingsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/20/23.
//

import SwiftUI

struct SoundSettingsView: View {
    @State private var hzLevel: Double = 0
    @State private var volumeLevel: Double = 0
    @State private var bassLevel: Double = 0
    @Binding var homePath: NavigationPath
    @EnvironmentObject var sheetManager: SheetManager
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Sound Settings")
                    .font(.semibold40PN())
                    .padding()
                    .padding(.top)
                ScrollView{
                    VStack {
                        soundRowAndButton
                        Divider()
                            .padding([.leading, .trailing])
                        slopeNumber
                        slopeSlider
                        slopeRowAndButton
                        middleTextView
                        slidersView
                        learnMoreAdjustmentBurron
                        syncButtons
                        learnMoreSyncButton
                    }
                }
            }
        }
        .popup(with: sheetManager) {
//            homePath.append(HomeViewOptions.soundPreset)
        }
    }
    
    var soundRowAndButton: some View {
        HStack {
            Button(action: {
                withAnimation {
                    sheetManager.present(with: .init(systemName: "info",
                                                     title: "AIDS",
                                                     content: "Butthole sex",
                                                     type: .soundProfileList))
                }
            }) {
                HStack {
                    Text("Speaker Name")
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                    
                }
                .padding()
            }
            .background(
                Color.gray
            )
            .frame(width: 320)
            .fixedSize()
            .padding([.leading, .top, .bottom])
            Button(action: {
                
            }) {
                Image(systemName: "pencil")
            }
            .padding()
        }
        .padding(.top)
        .overlay(alignment: .topLeading) {
            Text("Active Sound")
                .offset(x: 8, y: 0)
        }
    }
    
    var slopeNumber: some View {
        HStack(alignment: .bottom) {
            Text("80")
                .font(.semibold44PN())
            Text("Hz")
            
        }
    }
    
    var slopeSlider: some View {
        Slider(value: $hzLevel, in: -50...50) { didChange in
            print("Did Change Bass: \(didChange)")
        }
        .frame(width: 360)
        .tint(Color.red)
        .padding(.trailing)
    }
    
    var slopeRowAndButton: some View {
        HStack{
            Text("Slope")
                .padding()
            Button(action: {
                
            }) {
                HStack {
                    Text("12 db (default)")
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                }
                .padding()
                
            }
            .background (
                .gray
            )
            .padding(.trailing)
        }
    }
    
    var middleTextView: some View {
        Text("Raise and lower the volume while adjusting the crossover to hear the difference")
            .padding()
    }
    
    var slidersView: some View {
        VStack{
            HStack{
                // Volume slider
                Image("Icon_LM_Volume")
                Text("Volume")
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
                Text("Bass")
                
                Slider(value: $bassLevel, in: -50...50) { didChange in
                    print("Did Change Bass: \(didChange)")
                }
                .frame(width: 250)
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
    }
    
    var learnMoreAdjustmentBurron: some View {
        Button(action: {
            
        }){
            Text("Tap here to learn more about adjusting your BASS50")
                .underline()
        }
    }
    
    var syncButtons: some View {
        VStack {
            Button(action: {
                
                print("Navigate")
            } ) {
                Text("AUTO SYNC")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background( Color.buttonColorRed)
                    .padding()
            }
            Button(action: {
                
                print("Navigate")
            } ) {
                Text("MANUAL SYNC")
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background( Color.buttonColorRed)
                    .padding()
            }
        }
    }
    
    var learnMoreSyncButton: some View {
        Button(action: {
            
        }){
            Text("Tap here to learn more about syncing your BASS50")
                .underline()
        }
    }
}

struct SoundSettingsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SoundSettingsView(homePath: $path)
            .environmentObject(SheetManager())
    }
}
