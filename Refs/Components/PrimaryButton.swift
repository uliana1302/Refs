//
//  PrimaryButton.swift
//  Refs
//
//  Created by Екатерина Никифорова on 18.02.2024.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            Text(text).frame(maxWidth: .infinity).font(.custom("Fugue-Regular", size: 20))
        }.foregroundColor(Color.white)
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.mainBlue)
            .cornerRadius(30)
    }
}

struct PrimaryButtonSmall: View {
    var text: String
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            Text(text).frame(maxWidth: .infinity).font(.custom("Fugue-Regular", size: 15))
        }.foregroundColor(Color.white)
            .padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.mainBlue)
            .cornerRadius(30)
    }
}
