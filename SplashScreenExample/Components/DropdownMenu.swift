//
//  DropDownMenu.swift
//  DropDownMenuTestingApp
//
//  Created by Kenneth Adams on 5/11/23.
//

import SwiftUI

struct DropdownMenu: View {
//    Used to show or hide drop-down menu options
    @State private var isOptionsPresented: Bool = false
    
//    Used to bind user selection
    @Binding var selectedOption: DropdownMenuOption?
    
    let placeholder: String
    let options: [DropdownMenuOption]
    var body: some View {
        Button(action: {
            self.isOptionsPresented.toggle()
        }) {
            HStack {
                Text(selectedOption == nil ? placeholder : selectedOption!.option)
                    .fontWeight(.medium)
                    .foregroundColor(selectedOption == nil ? .gray : .black)
                Spacer()
                Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
            }
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 4)
                .stroke(.gray, lineWidth: 2)
        }
        .overlay(alignment: .top) {
            VStack {
                if self.isOptionsPresented {
                    Spacer(minLength: 64)
                    DropdownMenuList(options: self.options, onSelectedAction: { option in
                        self.isOptionsPresented = false
                        self.selectedOption = option
                    })
                }
            }
        }
        .padding(.horizontal)
        .padding( .bottom, self.isOptionsPresented ? CGFloat(self.options.count * 32 ) > 160
                  ? 192
                  : CGFloat(self.options.count * 32) + 32
                  : 0
        )
    }
}

struct DropdownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenu(selectedOption: .constant(nil),
                     placeholder: "Select your month",
                     options: DropdownMenuOption.testAllMonths)
    }
}
