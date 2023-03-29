//
//  Bass50SetupManualSyncView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/27/23.
//

import SwiftUI

struct Bass50SetupManualSyncView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Manual Sync")
                    .font(.semibold40PN())
                Text("Tap the plus and minus buttons to adjust the sync latency until it sounds good to your ear")
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                VStack(spacing: 10) {
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "minus")
                                .font(.size28PN())
                        }
                        Spacer()
                        Text("100 MS")
                            .font(.size28PN())
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus")
                                .font(.size28PN())
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "minus")
                                .font(.size28PN())
                        }
                        Spacer()
                        Text("10 MS")
                            .font(.size28PN())
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus")
                                .font(.size28PN())
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "minus")
                                .font(.size28PN())
                        }
                        Spacer()
                        Text("1 MS")
                            .font(.size28PN())
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus")
                                .font(.size28PN())
                        }
                        Spacer()
                    }
                }
                Spacer()
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

struct Bass50SetupManualSyncView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupManualSyncView()
    }
}
