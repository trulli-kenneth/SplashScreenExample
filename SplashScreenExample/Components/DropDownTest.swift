//
//  DropDownTest.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 5/11/23.
//

import SwiftUI

struct DropDownTest: View {
    @State var newName: String = ""

    var body: some View {
        VStack {
            Text("TESTING")
                .font(.semibold36PN())
            Spacer()
            TextField("Bob", text: $newName)
                .frame(width: 320, height: 56)
                .background(
                    Color.white
                )
                .font(.size40PN())
                .padding()
            TextField("Bob", text: $newName)
                .frame(width: 320, height: 56)
                .background(
                    Color.white
                )
                .font(.size40PN())
                .padding()
            TextField("Bob", text: $newName)
                .frame(width: 320, height: 56)
                .background(
                    Color.white
                )
                .font(.size40PN())
                .padding()
            DropdownMenu(selectedOption: .constant(nil),
                         placeholder: "Select your State",
                         options: DropdownMenuOption.testAllMonths)
            .zIndex(01)
            Spacer()
        }
    }
}

struct DropDownTest_Previews: PreviewProvider {
    static var previews: some View {
        DropDownTest()
    }
}
