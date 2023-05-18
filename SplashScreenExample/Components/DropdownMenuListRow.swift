//
//  DropdownMenuListRow.swift
//  DropDownMenuTestingApp
//
//  Created by Kenneth Adams on 5/11/23.
//

import SwiftUI

struct DropdownMenuListRow: View {
    let option: DropdownMenuOption
//    an action called when user select an option
    let onSelectedAction: (_ option: DropdownMenuOption) -> Void
        
    var body: some View {
        Button(action: {
            self.onSelectedAction(option)
        }) {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundColor(.black)
        .padding(.vertical, 04)
        .padding(.horizontal)
    }
}

struct DropdownMenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuListRow(option: DropdownMenuOption.testSingleMonth, onSelectedAction: { _ in })
    }
}
