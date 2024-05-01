//
//  SearchAndFilterBar.swift
//  airbnb_beta
//
//  Created by VincentZhou on 2024/2/21.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("去哪儿?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("定制地点 - 定制时间")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action:{}, label:{
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius:10)
        }
    }
}

#Preview {
    SearchAndFilterBar()
}
