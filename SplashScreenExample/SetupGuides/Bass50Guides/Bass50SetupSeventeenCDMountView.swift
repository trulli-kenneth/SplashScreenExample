//
//  Bass50SetupSeventeenCDMountView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50SetupSeventeenCDMountView: View {
    var mountType: Mountype
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack(spacing: 08) {
                switch mountType {
                case .cdMount:
                    Text("CD Mount installation")
                        .font(.semibold40PN())
                        .multilineTextAlignment(.center)
                        .padding()
                case .ventMount:
                    Text("Dash Mount installation")
                        .font(.semibold40PN())
                        .multilineTextAlignment(.center)
                        .padding()
                case .dashMount:
                    Text("Vent Mount installation")
                        .font(.semibold40PN())
                        .multilineTextAlignment(.center)
                        .padding()
                }
                Spacer()
                Image("Unknown")
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding([.leading, .trailing])
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

struct Bass50SetupSeventeenCDMountView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50SetupSeventeenCDMountView(mountType: .cdMount)
    }
}
