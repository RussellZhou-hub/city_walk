//
//  MainTabView.swift
//  TikTok
//
//  Created by VincentZhou on 2024/2/17.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            RecommendView()
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab==0 ? .fill : .none)
                        Text("Recommend")
                    }
                }
                .onAppear { selectedTab = 0}
                .tag(0)
            
            Text("盲盒")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab==1 ? .fill : .none)
                        Text("Random")
                    }
                }
                .onAppear { selectedTab = 1}
                .tag(1)
            
            Text("Upload Post")
                .tabItem { Image(systemName: "plus") }
                .onAppear { selectedTab = 2}
                .tag(2)
            
            Text("消息界面")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selectedTab==3 ? .fill : .none)
                        Text("Message")
                    }
                }
                .onAppear { selectedTab = 3}
                .tag(3)
            
            Text("我的空间")
                .tabItem {
                    VStack {
                        Image(systemName: selectedTab==4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab==3 ? .fill : .none)
                        Text("MySpace")
                    }
                }
                .onAppear { selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
