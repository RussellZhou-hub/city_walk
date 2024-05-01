//
//  GuiderDetailTabView.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/2.
//

import SwiftUI

struct GuiderDetailTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            GuiderDetailView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab==0 ? .fill : .none)
                        Text("发布的")
                    }
                }
                .onAppear { selectedTab = 0}
                .tag(0)
            
            Text("评价")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab==1 ? .fill : .none)
                        Text("评价")
                    }
                }
                .onAppear { selectedTab = 1}
                .tag(1)
        }
    }
}

#Preview {
    GuiderDetailTabView()
}
