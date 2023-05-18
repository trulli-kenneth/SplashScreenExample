//
//  DropdownMenuList.swift
//  DropDownMenuTestingApp
//
//  Created by Kenneth Adams on 5/11/23.
//

import SwiftUI

struct DropdownMenuList: View {
//    the dropdown menu list options
    let options: [DropdownMenuOption]
//    an action called when user select an option
    let onSelectedAction: (_ option: DropdownMenuOption) -> Void
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 02) {
                ForEach(options) { option in
                    DropdownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
                }
            }
        }
        .frame(height: CGFloat(self.options.count * 32 ) > 160 ? 160 : CGFloat(self.options.count * 32))
        .padding(.vertical, 04)
        .overlay {
            RoundedRectangle(cornerRadius: 04)
                .stroke(.gray, lineWidth: 02)
        }
    }
}

struct DropdownMenuList_Previews: PreviewProvider {
    static var previews: some View {
        DropdownMenuList(options: DropdownMenuOption.testAllMonths, onSelectedAction: { _ in })
    }
}
