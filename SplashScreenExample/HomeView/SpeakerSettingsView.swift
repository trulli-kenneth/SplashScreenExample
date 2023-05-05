//
//  SpeakerSettingsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/6/23.
//

import SwiftUI

struct SpeakerSettingsView: View {
    @Binding var homePath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                speakerName
                Spacer()
                speakerImageAndStats
                Spacer(minLength: 16)
                speakerSettingsButton
                firmwareUpdateButton
                resetSpeakerButton
                
            }
        }
    }
    
    var speakerName: some View {
        HStack {
            Text("Speaker Name")
                .font(.size36PN())
        }
        .padding(.bottom)
    }
    
    var speakerImageAndStats: some View {
        VStack {
            Image("Unknown")
                .padding()
            HStack(alignment: .center, spacing: 08 ) {
                batterySection
                Spacer()
                temperatureSection
                Spacer()
                bluetoothSection
            }
        }
    }
    
    var batterySection: some View {
        VStack{
            Image(systemName: "battery.25")
                .resizable()
                .scaledToFit()
                .frame(width: .none, height: 20)
            Text("25%")
            Text("Battery Remaining")
                .font(.size12PN())
        }
        .padding(.leading)
    }
    
    var temperatureSection: some View {
        VStack{
            Image(systemName: "thermometer")
                .resizable()
                .scaledToFit()
                .frame(width: .none, height: 20)
            Text("70")
            Text("Fahrenheit")
                .font(.size12PN())
                .fixedSize()
        }
        .padding(.trailing)
    }
    
    var bluetoothSection: some View {
        VStack{
            Image(systemName: "battery.25")
                .resizable()
                .scaledToFit()
                .frame(width: .none, height: 20)
            Text("25%")
            Text("Battery Remaining")
                .font(.size12PN())
        }
        .padding(.trailing)
    }
    
    var speakerSettingsButton: some View {
        Button(action: {
            homePath.append(HomeViewOptions.soundSetting)
        }) {
            HStack{
               Image(systemName: "music.note")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(height: 28)
                    .padding()
                Text("Sound Settings")
                    .foregroundColor(.black)
                    .font(.size28PN())
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
                    .padding(.trailing)
            }
        }
        .background(
            RoundedCorners(color: .white,
                           tl: 10,
                           tr: 10,
                           bl: 10,
                           br: 10)
            .shadow(color: .black.opacity(0.2),
                    radius: 3)
        )
        .padding([.leading, .trailing])
    }
    
    var firmwareUpdateButton: some View {
        Button(action: {
            
        }) {
            HStack{
               Image(systemName: "music.note")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(height: 28)
                    .padding()
                Text("Update available")
                    .foregroundColor(.black)
                    .font(.size28PN())
                    
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
                    .padding(.trailing)
            }
        }
        .background(
            RoundedCorners(color: .white,
                           tl: 10,
                           tr: 10,
                           bl: 10,
                           br: 10)
            .shadow(color: .black.opacity(0.2),
                    radius: 3)
        )
        .padding([.trailing, .leading])
    }
    
    var resetSpeakerButton: some View {
        Button(action: {
            
        }) {
            HStack{
               Image(systemName: "eraser")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(height: 28)
                    .padding()
                Text("Reset Speaker")
                    .foregroundColor(.black)
                    .font(.size28PN())
                    
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
                    .padding(.trailing)
            }
        }
        .background(
            RoundedCorners(color: .white,
                           tl: 10,
                           tr: 10,
                           bl: 10,
                           br: 10)
            .shadow(color: .black.opacity(0.2),
                    radius: 3)
        )
        .padding([.trailing, .leading])
    }
}

struct SpeakerSettingsView_Previews: PreviewProvider {
    
    @State static var path = NavigationPath()
    static var previews: some View {
        SpeakerSettingsView(homePath: $path)
    }
}
