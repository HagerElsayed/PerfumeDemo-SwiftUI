//
//  RoundedCorner.swift
//  PerfumeDemo-SwiftUI
//
//  Created by Hager Elsayed on 24/11/2022.
//

import SwiftUI

// coded this in prev video before
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
