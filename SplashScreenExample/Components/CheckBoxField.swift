//
//  CheckBoxField.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/27/23.
//

import SwiftUI

//MARK:- Checkbox Field
struct CheckboxField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: Int
    let isLink: Bool
    let callback: ()-> Void
    let otherAction: () -> Void
    
    init(
        id: String,
        label:String,
        size: CGFloat = 10,
        color: Color = Color.black,
        textSize: Int = 14,
        isLink: Bool = false,
        callback: @escaping ()->Void,
        otherAction: @escaping () -> Void
    ) {
        self.id = id
        self.label = label
        self.size = size
        self.color = color
        self.textSize = textSize
        self.isLink = isLink
        self.callback = callback
        self.otherAction = otherAction
    }
    
    @State var isMarked:Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Button(action:{
                self.isMarked.toggle()
                self.callback()
//                self.otherAction()
            }) {
                Image(systemName: self.isMarked ? "checkmark.square" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                    .foregroundColor(Color.black)
            }
                Button(action: {
                    self.otherAction()
                }) {
                    if isLink {
                        Link(destination: URL(string: "https://trulliaudio.com/pages/privacy")!, label:{
                            Text(label)
                                .font(Font.system(size: size))
                                .underline()
                        } )
                        Spacer()
                    } else {
                        Text(label)
                            .font(Font.system(size: size))
                            .underline()
                        Spacer()
                    }
                }
        }.foregroundColor(self.color)
    }
}
enum PolicyType: String {
    case privatePolicy
    case bluetoothPolicy
    case locationPolicy
    case notificationPolicy
    case appRunningInBackground
}

//struct ContentView: View {
//    var body: some View {
//        HStack{
//            Text("Gender")
//                .font(Font.headline)
//            VStack {
//                CheckboxField(
//                    id: PolicyType.privatePolicy.rawValue,
//                    label: PolicyType.privatePolicy.rawValue,
//                    size: 14,
//                    textSize: 14,
//                    callback: checkboxSelected
//                )
//                CheckboxField(
//                    id: PolicyType.privatePolicy.rawValue,
//                    label: PolicyType.privatePolicy.rawValue,
//                    size: 14,
//                    textSize: 14,
//                    callback: checkboxSelected
//                )
//            }
//        }
//        .padding()
//    }
//    
//    func checkboxSelected(id: String, isMarked: Bool) {
//        print("\(id) is marked: \(isMarked)")
//    }
//}

