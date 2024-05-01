//
//  RatingView.swift
//  airbnb_beta
//
//  Created by VincentZhou on 2024/2/22.
//

import SwiftUI

struct RatingView: View {
    let rating:Float
    let reviewer:Int
    
    var body: some View {
        HStack(spacing:2){
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            Image(systemName: "star.fill")
            
            Text(String(rating))
            
            Text(" - ")
            
            Text(String(reviewer)+" 次陪伴")
                .underline()
                .fontWeight(.semibold)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView(rating: 4.86,reviewer: 28)
}
