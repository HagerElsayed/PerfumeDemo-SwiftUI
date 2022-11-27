//
//  View+Extension.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 24/11/2022.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
