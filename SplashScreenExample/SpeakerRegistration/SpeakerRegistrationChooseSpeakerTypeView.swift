//
//  SpeakerRegistrationChooseSpeakerTypeView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/12/23.
//

import SwiftUI

struct SpeakerRegistrationChooseSpeakerTypeView: View {
    @State var isBass50Marked: Bool = false
    @State var isJam5Marked: Bool = false
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("Speaker Registration")
                    .font(.semibold36PN())
                Spacer()
                Text("Proceed with registration of these speaker(s)?")
                    .multilineTextAlignment(.center)
                    .font(.size20PN())
                    .padding(.horizontal)
                
                Spacer()
                bass50Button
                jam5Button
                Spacer()
                continueButton
            }
        }
    }
    
    var bass50Button: some View {
        Button(action: {
            self.isBass50Marked.toggle()
//                    homePath.append(HomeViewOptions.soundSuccess)
        }) {
            HStack {
                Image(systemName: self.isBass50Marked ? "checkmark.square" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("TrulliBlack"))
                VStack(alignment: .leading) {
                    Text("BASS50")
                        .multilineTextAlignment(.leading)
                        .font(.semibold20PN())
                        .foregroundColor(.white)
                    Text("SN: xxxxxxxxxxxxxxxx")
                        .foregroundColor(.white)
                }
                .padding(.leading)
                Spacer()
            }
        }
        .foregroundColor(Color("TrulliBlack"))
        .padding()
        .background(.gray)
        .padding()
    }
    
    var jam5Button: some View {
        Button(action: {
            self.isJam5Marked.toggle()
//                    homePath.append(HomeViewOptions.soundSuccess)
        }) {
            HStack {
                Image(systemName: self.isJam5Marked ? "checkmark.square" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("TrulliBlack"))
                VStack(alignment: .leading) {
                    Text("JAM5")
                        .multilineTextAlignment(.leading)
                        .font(.semibold20PN())
                        .foregroundColor(.white)
                    Text("SN: xxxxxxxxxxxxxxxx")
                        .foregroundColor(.white)
                }
                .padding(.leading)
                Spacer()
            }
        }
        .foregroundColor(Color("TrulliBlack"))
        .padding()
        .background(.gray)
        .padding()
    }
    
    var continueButton: some View {
        Button(action: {
//            homePath.removeLast(homePath.count)
        } ) {
            Text("Continue")
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed )
                .padding()
        }
    }
}

struct SpeakerRegistrationChooseSpeakerTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerRegistrationChooseSpeakerTypeView()
    }
}
