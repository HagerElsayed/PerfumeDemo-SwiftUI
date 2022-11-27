//
//  DetailsView.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 27/11/2022.
//

import SwiftUI

struct DetailItem: View {
    var title: String
    var value: String
    var body: some View {
        VStack {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text(value)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.perfumeAccentColor)
        .cornerRadius(20)
        
        
    }
}
