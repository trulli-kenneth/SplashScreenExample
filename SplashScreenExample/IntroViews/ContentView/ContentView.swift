//
//  ContentView.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sheetManager: SheetManager
    @StateObject var viewModel: ContentViewViewModel
    @State var privacyPolicyChecked: Bool = false
    @State var bluetoothPolicyChecked: Bool = false
    @State var locationsPolicyChecked: Bool = false
    @State var notificationsPolicyChecked: Bool = false
    @State var apprunningPolicyChecked: Bool = false
    @State var isGoingToNewView = false
    @Binding var path: NavigationPath
    private var areAllChecked: Bool {
        return privacyPolicyChecked && bluetoothPolicyChecked && locationsPolicyChecked && notificationsPolicyChecked && apprunningPolicyChecked
    }
    
    var body: some View {
            ZStack {
                Color(.trulliGold)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    headerStatement
                    Spacer()
                    VStack {
                        privacyPolicy
                        bluetoothPolicy
                        locationsPolicy
                        notificationsPolicy
                        apprunningPolicy
                    }
                    Spacer()
                    Spacer()
                    continueButton
                }
            }
            .popup(with: sheetManager)
//            .navigationDestination(for: WelcomeScreenViewViewModel.self) { model in
//                WelcomeScreenView(viewModel: model, path: $path)
//            }
            .navigationBarBackButtonHidden()
    }
    
    var continueButton: some View {
        Button(action: {
            print("pressed")
            print(path)
            path.append(GreaterViewOptions.whatIsNewView)
//            path.append(WelcomeScreenViewViewModel())
        }) {
            Text("CONTINUE")
                .foregroundColor(.white)
        }
//        .disabled(!self.areAllChecked)
        .padding()
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .padding(.bottom, 32)
    }
    
    var headerStatement: some View {
        Text("To continue using this app, please agree to the following requirements: but theres prolly more")
            .font(Font.semibold14PN())
            .padding()
            .padding(.top, 32)
    }
    
    var privacyPolicy: some View {
        CheckboxField(id: PolicyType.privatePolicy.rawValue,
                      label: "Private Policy",
                      size: 14,
                      textSize: 14,
                      isLink: true,
                      callback: {
            self.privacyPolicyChecked.toggle()
        },
                      otherAction: {
            print("Private Policy pressed")
        })
        .padding()
    }
    
    var bluetoothPolicy: some View {
        CheckboxField(id: PolicyType.bluetoothPolicy.rawValue,
                      label: "Bluetooth",
                      size: 14,
                      textSize: 14,
                      callback: {
            self.bluetoothPolicyChecked.toggle()
        },
                      otherAction: {
            withAnimation {
                sheetManager.present(with: SheetManager.Config.init(systemName: "info",
                                                                    title: "Bluetooth Policy",
                                                                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                                                    type: .popupAlert))
            }
        })
        .padding()
    }
    
    var locationsPolicy: some View {
        CheckboxField(id: PolicyType.locationPolicy.rawValue,
                      label: "Location",
                      size: 14,
                      textSize: 14,
                      callback: {
            self.locationsPolicyChecked.toggle()
        },
                      otherAction: {
            withAnimation {
                sheetManager.present(with: SheetManager.Config.init(systemName: "info",
                                                                    title: "Location Policy",
                                                                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                                                    type: .popupAlert))
            }
        })
        .padding()
    }
    
    var notificationsPolicy: some View {
        CheckboxField(id: PolicyType.notificationPolicy.rawValue,
                      label: "Notifications",
                      size: 14,
                      textSize: 14,
                      callback: {
            self.notificationsPolicyChecked.toggle()
        },
                      otherAction: {
            withAnimation {
                sheetManager.present(with: SheetManager.Config.init(systemName: "info",
                                                                    title: "Notification Policy",
                                                                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", type: .popupAlert))
            }
        })
        .padding()
    }
    
    var apprunningPolicy: some View {
        CheckboxField(id: PolicyType.appRunningInBackground.rawValue,
                      label: "App Running in Background",
                      size: 14,
                      textSize: 14,
                      callback: {
            self.apprunningPolicyChecked.toggle()
        },
                      otherAction: {
            withAnimation {
                sheetManager.present(with: SheetManager.Config.init(systemName: "info",
                                                                    title: "App Running in Background Policy",
                                                                    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                                                    type: .popupAlert))
            }
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        ContentView(viewModel: ContentViewViewModel(), path: $path)
            .environmentObject(SheetManager())
    }
}
