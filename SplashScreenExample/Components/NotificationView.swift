//
//  NotificationView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/5/23.
//

import SwiftUI

struct NotificationView: View {
    let config: SheetManager.Config
    let didClose: () -> Void
    let notificationButtonDidPress: () -> Void
    var body: some View {
        VStack(spacing: .zero) {
            icon
            title
            content
            actionButton
                .padding(.top)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .multilineTextAlignment(.center)
        .background(background)
        .overlay(alignment: .topTrailing) {
            closeButton
        }
        .transition(.move(edge: .bottom))
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(config: .init(systemName: "xmark",
                                       title: "Text Here",
                                       content: "Lorem Impsum",
                                       type: .popupAlert)){} notificationButtonDidPress: {}
            .padding()
            .background(.blue)
            .previewLayout(.sizeThatFits)
    }
}

private extension NotificationView {
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
    
    var actionButton: some View {
        Button(action: {
           notificationButtonDidPress()
        } ) {
            Text("Close")
                .frame(width: 240, height: 50)
                .foregroundColor(.white)
                .background( Color.buttonColorRed)
                .padding()
        }
    }
    
    var icon: some View {
        Image(systemName: config.systemName)
            .symbolVariant(.circle.fill)
            .font(
                .system(size: 50,
                        weight: .bold,
                        design: .rounded)
            )
            .foregroundStyle(.blue)
    }
    
    var title: some View {
        Text(config.title)
            .font(
                .system(size: 30,
                        weight: .bold,
                        design: .rounded)
            )
            .padding()
    }
    
    var content: some View {
        Text(config.content)
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
    }
    
    var background: some View {
        RoundedCorners(color: .white,
                       tl: 10,
                       tr: 10,
                       bl: 0,
                       br: 0)
        .shadow(color: .black.opacity(0.2),
                radius: 3)
    }
    
}
