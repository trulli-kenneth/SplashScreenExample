//
//  AddSpeakerCardView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/15/23.
//

import SwiftUI

struct AddSpeakerCardView: View {
    let didPressSoundButton: () -> Void
    
    var body: some View {
        VStack {
            cardTitle
                .padding(.top)
            speakerImage
        }
        .background(background)
//        .frame(height: 350)
        .padding()
    }
    
    var cardTitle: some View {
        Button(action: {
            didPressSoundButton()
        }){
            HStack {
                Text("Add Speaker")
                    .font(Font.semibold24PN())
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "plus")
                    .foregroundColor(.black)
                    .padding(.trailing)
            }.padding(.horizontal)
        }
    }
    
    var firmwareAlert: some View {
        HStack {
            Circle()
                .frame(width: 10)
                .foregroundColor(Color.orange)
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

    
    var background: some View {
        RoundedCorners(color: .trulliWhite,
                       tl: 08,
                       tr: 08,
                       bl: 08,
                       br: 08)
        .shadow(color: .black.opacity(0.2),
                radius: 3)
    }
}

struct AddSpeakerCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddSpeakerCardView(didPressSoundButton: {})
    }
}
