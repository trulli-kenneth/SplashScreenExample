//
//  SoundPresetCreationLocationsView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 4/14/23.
//

import SwiftUI

struct SoundPresetCreationLocationsView: View {
    @Binding var homePath: NavigationPath
    
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                title
                Spacer()
                buttonsScrollView
            }
        }
    }
    
    var title: some View {
        Text("Where is your BASS50 located?")
            .multilineTextAlignment(.center)
            .font(.semibold36PN())
    }
    
    var buttonsScrollView: some View {
        ScrollView {
            VStack {
             openTrunkButton
             closedTrunkButton
             backSeatRegionButton
             frontSeatRegionButton
             indoorHardButton
             indoorCarpetButton
             outdoorQuietButton
             outdoorLoudButton
             soundPlacementGuideButton
            }
        }
    }
    
    var openTrunkButton: some View {
        Button(action: {
            homePath.append(HomeViewOptions.soundSuccess)
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Open trunk (Hatchback or SUV)")
                    .multilineTextAlignment(.leading)
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var closedTrunkButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Closed trunk (Sedan)")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var backSeatRegionButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Back seat region")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var frontSeatRegionButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Front seat region")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var indoorHardButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Indoors: hard surface")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var indoorCarpetButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Indoors: carpet or padded surface")
                    .multilineTextAlignment(.leading)
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var outdoorQuietButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Outdoors: 20-100 Hz")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var outdoorLoudButton: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: "car")
                    .font(.size52PN())
                    .padding()
                Text("Outdoors: 35-250 Hz")
                    .font(.semibold24PN())
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .background(.gray)
        .padding()
    }
    
    var soundPlacementGuideButton: some View {
        Button(action:{
            homePath.append(HomeViewOptions.soundGuides)
           
        }) {
            Text("Learn more about how placement affects sound")
                .font(Font.size20PN())
                .foregroundColor(.black)
                .padding()
                .multilineTextAlignment(.center)
                .underline()
        }
    }
}

struct SoundPresetCreationLocationsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        SoundPresetCreationLocationsView(homePath: $path)
    }
}
