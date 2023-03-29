//
//  Bass50Setup13FailedView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/23/23.
//

import SwiftUI

struct Bass50Setup13FailedView: View {
    var body: some View {
        ZStack {
            Color(.trulliGold)
                .ignoresSafeArea()
            VStack {
                Text("Remote connection unsuccessful")
                    .font(.semibold40PN())
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("Unknown")
                    .padding(.bottom)
                Text("Please hold [button combination] to force the connection, then tap Try Again")
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    print("Navigate")
                } ) {
                    Text("Enter Settings")
                        .frame(width: 300, height: 50)
                        .foregroundColor(.white)
                        .background( Color.orange.opacity(0.7))
                        .padding()
                }
                Text("Contact Support")
                    .font(Font.size12PN())
                    .underline()
            }
        }
    }
}

struct Bass50Setup13FailedView_Previews: PreviewProvider {
    static var previews: some View {
        Bass50Setup13FailedView()
    }
}
