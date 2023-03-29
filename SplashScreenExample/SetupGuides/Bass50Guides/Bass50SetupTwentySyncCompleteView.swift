//
//  Bass50SetupTwentySyncCompleteView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/24/23.
//

import SwiftUI

struct Bass50SetupTwentySyncCompleteView: View {
    @State private var volumeLevel: Double = 0
    @State private var bassLevel: Double = 0
    @State private var bassON: Bool = true
    
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Sync Complete")
                    .font(.semibold44PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Text("Experience the difference bass makes by toggling it off and on. When you're ready, tap 'CONTINUE'")
                    .font(.size16PN())
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding([.leading, .trailing])
                Spacer()
                
                HStack {
                    Text("BASS OFF")
                        .font(.semibold32PN())
                        .multilineTextAlignment(.center)
                        .padding()
                    Toggle("", isOn: $bassON)
                        .labelsHidden()
                        .padding()
                    Text("BASS ON")
                        .font(.semibold32PN())
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                Spacer()
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
                Button(action: {
                 
                    print("Navigate")
                } ) {
                    Text("CONTINUE")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.orange.opacity(0.7))
                        .padding()
                }
            }
        }
    }
}

struct Bass50SetupTwentySyncCompleteView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupTwentySyncCompleteView()
    }
}
