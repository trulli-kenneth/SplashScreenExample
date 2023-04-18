//
//  SwiftUIView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 2/9/23.
//

import SwiftUI

struct SoundProfilePopupView: View {
    let config: SheetManager.Config
    let didClose: () -> Void
    let tappedProfile: () -> Void
    
    var body: some View {
        VStack {
            Text("Select a Sound")
                .font(Font.semibold24PN())
                .padding(.bottom)
                
            ForEach(0..<3) { num in
                    Button {
                    
                    } label: {
                        HStack {
                            Text("Sound Name")
                                .foregroundColor(.black)
                                .padding()
                            Spacer()
                            Image("Forward_Arrow")
                                .padding(.trailing)
                        }
                        .background(buttonBackground)
                    }
                    .frame(minWidth: 160, minHeight: 32)
                }
            Button {
                tappedProfile()
            } label: {
                HStack {
                    Text("Sound Name")
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }
                .background(buttonBackground)
            }
            .frame(minWidth: 160, minHeight: 32)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 32)
        .multilineTextAlignment(.center)
        .background(background)
        .overlay(alignment: .topTrailing) {
            closeButton
        }
        .padding(.horizontal)
    }
    
    var closeButton: some View {
        Button {
            didClose()
        } label: {
            Image(systemName: "xmark")
                .symbolVariant(.circle.fill)
                .font(
                    .system(size: 35,
                            weight: .bold,
                            design: .rounded)
                )
                .foregroundStyle(.gray.opacity(0.4))
                .padding(8)
        }
    }
    
    var buttonBackground: some View {
        RoundedCorners(color: Color(.trulliGold),
                       tl: 08,
                       tr: 08,
                       bl: 08,
                       br: 08)
    }
    
    var background: some View {
        RoundedCorners(color: .white,
                       tl: 10,
                       tr: 10,
                       bl: 10,
                       br:10)
        .shadow(color: .black.opacity(0.2),
                radius: 3)
    }
}

struct SoundProfilePopupView_Previews: PreviewProvider {
    static var previews: some View {
        SoundProfilePopupView(config: .init(systemName: "xmark",
                                                       title: "Text Here",
                                            content: "Lorem Impsum",
                                            type: .soundProfileList)) {} tappedProfile: { }
                                   .padding()
                                   .background(.blue)
                                   .previewLayout(.sizeThatFits)
    }
}
