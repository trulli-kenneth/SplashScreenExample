//
//  SpeakerCardView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/9/23.
//

import SwiftUI

struct SpeakerCardView: View {
    let didPressSoundButton: () -> Void
    let didPressSpeaker: () -> Void
    var body: some View {
        VStack {
            speakerType
                .padding(.top)
            firmwareAlert
            speakerImage
            batteryAndBluetooth
            soundSettingButton
        }
        .background(background)
//        .frame(height: 350 )
        .padding()
        .overlay(alignment: .topTrailing) {
            Button(action: {
                didPressSpeaker()
            }) {
                Image(systemName: "chevron.forward")
                    .foregroundColor(.black)
            }
            .offset(x: -34, y: 34)
        }
    }
    
    var speakerType: some View {
        HStack {
            Text("Speaker Type")
            Spacer()
        }.padding(.leading)
    }
    
    var firmwareAlert: some View {
        HStack {
            Circle()
                .frame(width: 10)
                .foregroundColor(Color.buttonColorRed)
            Text("Firmware Update Available")
                .font(Font.size12PN())
            Spacer()
        }.padding(.leading)
    }
    
    var speakerImage: some View {
        Image("Unknown")
            .scaledToFit()
            .frame(minWidth: 200)
            .padding()
    }
    
    var batteryAndBluetooth: some View {
        HStack {
            Image(systemName: "battery.25")
            Text("75%")
                .font(Font.size12PN())
            Divider()
                .frame(height: 8)
                .foregroundColor(.black)
            Image("BT_Status")
                .frame(height: 08)
        }
    }
    
    var background: some View {
        RoundedCorners(color: Color.trulliWhite,
                       tl: 08,
                       tr: 08,
                       bl: 08,
                       br: 08)
        .shadow(color: .black.opacity(0.2),
                radius: 3)
    }
    
    var soundSettingButton: some View {
        Button(action: {
            didPressSoundButton()
        }) {
            HStack {
                Image(systemName: "music.note")
                    .foregroundColor(Color.trulliBlack)
                    .padding(.leading)
                VStack(alignment: .leading) {
                    Text("Sound")
                        .foregroundColor(Color.trulliBlack)
                    Text("Name of Sound")
                        .foregroundColor(Color.trulliBlack)
                }
                .padding(.leading)
                Spacer()
                Image("Forward_Arrow")
                    .padding(.trailing)
            }
        }
        .background(Color(.trulliGold))
        .clipShape(Capsule())
        .padding()
    }
}

struct SpeakerCardView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerCardView(didPressSoundButton: {}, didPressSpeaker: {})
    }
}
