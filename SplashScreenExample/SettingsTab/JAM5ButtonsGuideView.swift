//
//  JAM5ButtonsGuideView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/2/23.
//

import SwiftUI

struct JAM5ButtonsGuideView: View {
    @Binding var settingsPath: NavigationPath
    var body: some View {
        ZStack {
            Color.trulliGold
                .ignoresSafeArea()
            VStack {
                Text("JAM5 Button Guides")
                    .font(.semibold40PN())
             scrollView
            }
        }
    }
    
    var divider: some View {
        Divider()
                .frame(height: 4)
                .overlay(Color("TrulliBlack").opacity(0.5))
                .padding()
    }
    
    var scrollView: some View {
        ScrollView {
            basicControlsDropDown
            divider
            dualJAM5DropDown
            divider
            advancedControlsDropDown
            divider
            disclaimerView
        }
    }
    
    var basicControlsDropDown: some View {
        DisclosureGroup("Basic Controls") {
                     VStack {
                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed mauris sit amet ex finibus suscipit. Nullam dapibus pulvinar eros, eget fringilla enim finibus ac. Nunc tempor sem in vehicula placerat. Nam vitae fermentum nisl. Proin dictum ligula vel interdum hendrerit. Curabitur maximus sollicitudin vehicula. Maecenas vestibulum vehicula viverra. Mauris vel dolor lorem. Nullam felis nulla, cursus sit amet nunc nec, venenatis mollis risus. Integer ut semper purus, a ullamcorper sem. Proin mattis facilisis est at molestie. Morbi lobortis hendrerit sapien sed fringilla. In volutpat nec libero ut consequat. Fusce placerat lectus odio, ac facilisis dolor egestas ac. Vestibulum porta elit et porttitor tincidunt. Ut imperdiet consectetur nunc sit amet scelerisque. ")
                     }
                 }.padding()
            .foregroundColor(.black)
    }
    
    var dualJAM5DropDown: some View {
        DisclosureGroup("Dual JAM5 Stereo") {
                     VStack {
                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed mauris sit amet ex finibus suscipit. Nullam dapibus pulvinar eros, eget fringilla enim finibus ac. Nunc tempor sem in vehicula placerat. Nam vitae fermentum nisl. Proin dictum ligula vel interdum hendrerit. Curabitur maximus sollicitudin vehicula. Maecenas vestibulum vehicula viverra. Mauris vel dolor lorem. Nullam felis nulla, cursus sit amet nunc nec, venenatis mollis risus. Integer ut semper purus, a ullamcorper sem. Proin mattis facilisis est at molestie. Morbi lobortis hendrerit sapien sed fringilla. In volutpat nec libero ut consequat. Fusce placerat lectus odio, ac facilisis dolor egestas ac. Vestibulum porta elit et porttitor tincidunt. Ut imperdiet consectetur nunc sit amet scelerisque. ")
                     }
                 }.padding()
            .foregroundColor(.black)
    }
    
    var advancedControlsDropDown: some View {
        DisclosureGroup("Advanced Controls") {
                     VStack {
                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed mauris sit amet ex finibus suscipit. Nullam dapibus pulvinar eros, eget fringilla enim finibus ac. Nunc tempor sem in vehicula placerat. Nam vitae fermentum nisl. Proin dictum ligula vel interdum hendrerit. Curabitur maximus sollicitudin vehicula. Maecenas vestibulum vehicula viverra. Mauris vel dolor lorem. Nullam felis nulla, cursus sit amet nunc nec, venenatis mollis risus. Integer ut semper purus, a ullamcorper sem. Proin mattis facilisis est at molestie. Morbi lobortis hendrerit sapien sed fringilla. In volutpat nec libero ut consequat. Fusce placerat lectus odio, ac facilisis dolor egestas ac. Vestibulum porta elit et porttitor tincidunt. Ut imperdiet consectetur nunc sit amet scelerisque. ")
                     }
                 }.padding()
            .foregroundColor(.black)
    }
    
    var disclaimerView: some View {
        HStack{
            VStack(alignment: .leading) {
                Text("Disclaimer")
                    .font(.size16PN())
                    .padding(.leading)
                    .padding(.bottom)
                Text("This button guide will stay updated with the latest JAM5 firmware and may not represent the controls of a JAM5 that is not up to date")
                    .font(.size16PN())
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                    .padding(.bottom)
                Text("Need help?")
                    .font(.size16PN())
                    .padding(.leading)
            }
            Spacer()
        }
    }
}

struct JAM5ButtonsGuideView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        JAM5ButtonsGuideView(settingsPath: $path)
    }
}
