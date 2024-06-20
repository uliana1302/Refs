//
//  StartS.swift
//  Refs
//
//  Created by Екатерина Никифорова on 29.03.2024.
//

import SwiftUI

struct StartS: View {
    @State private var navigationState: NavigationState = .Auth
    @State private var errorState: ErrorState = .None
    var body: some View {
        VStack {
            switch navigationState {
            case .Auth:
                MainAuthS()
            case .Main:
                MainS(errorState: $errorState)
            }
        }
        .overlay (
            ErrorView(errorState: $errorState)
        )
    }
}
