//
//  SecondaryButtonWhite.swift
//  Refs
//
//  Created by Екатерина Никифорова on 27.03.2024.
//

import SwiftUI

struct SecondaryButtonWhite: View {
    var text: String
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            Text(text).frame(maxWidth: .infinity).font(.custom("Fugue-Regular", size: 20))
                .foregroundColor(Color.white)
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.lightGray.opacity(0.0))
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 1)
                    )
        }
    }
}

struct SecondaryButtonWhiteSmall: View {
    var text: String
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            Text(text).frame(maxWidth: .infinity).font(.custom("Fugue-Regular", size: 15))
                .foregroundColor(Color.white)
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.lightGray.opacity(0.0))
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 1)
                    )
        }
    }
}
