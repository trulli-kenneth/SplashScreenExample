//
//  GreaterViewOptions.swift
//  SplashScreenExample
//
//  Created by Kenneth Adams on 3/6/23.
//

import Foundation
import SwiftUI

enum GreaterViewOptions {
    case whatIsNewView
    case contentView
    case speakerSetUpStart
    case speakerSetUpStepOne
    case speakerSetUpStepTwo
    case jam5ConnectionSuccessfull
    case firmwareUpdateView
    case jamRegisterView
    
    @ViewBuilder func view(_ path: Binding<NavigationPath>, doneOnboarding: Binding<Bool>) -> some View{
               switch self{
               case .whatIsNewView:
                   WelcomeScreenView(viewModel: WelcomeScreenViewViewModel(), path: path )
               case .contentView:
                   ContentView(viewModel: ContentViewViewModel(), path: path )
                       .environmentObject(SheetManager())
               case .speakerSetUpStart:
                   SetupGuideSpeakerSearchView( viewModel: SetupGuideSpeakerSearchViewViewModel(), path: path)
//                   SetupGuideSpeakerSearchView(viewModel: SetupGuideSpeakerSearchViewViewModel())
               case .speakerSetUpStepOne:
                   SetupGuideSpeakerConnectionStepOneView(path: path)
               case .speakerSetUpStepTwo:
                   SetupGuideSpeakerConnectionStepTwoView(path: path)
               case .jam5ConnectionSuccessfull:
                   JamConnectionSuccessfulView(path: path)
               case .firmwareUpdateView:
                   FirmwareUpdateView(path: path)
               case .jamRegisterView:
                   JamRegisterView(path: path, isDoneOnboarding: doneOnboarding)
               }
           }
}

enum JamOrBassFlow {
    case jam5Flow
    case BassFlow
}

enum Jam5Flow {
    case jam5StepOne
}

enum Bass50Flow {
    case bass50StepOne
}
