//
//  FavButton.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 27/11/2022.
//

import SwiftUI

struct FavButton: View {
    var height = UIScreen.main.bounds.height
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "heart")
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 20)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        }
    }
}
