//
//  AmountView.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 27/11/2022.
//

import SwiftUI

struct AmountView: View {
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {}) {
                Text("-")
                    .font(.title)
                    .foregroundColor(.trout)
                    .frame(width: 34, height: 34)
                    .padding(5)
                    .background(Color.lightGrey)
                    .cornerRadius(10)
            }
            
            Text("1")
                .font(.title2)
                .fontWeight(.medium)
            
            Button(action: {}) {
                Text("+")
                    .font(.title)
                    .foregroundColor(.trout)
                    .frame(width: 34, height: 34)
                    .padding(5)
                    .background(Color.lightGrey)
                    .cornerRadius(10)
            }
            
        }
    }
}
