//
//  UpperTabView.swift
//  city_walk
//
//  Created by VincentZhou on 2024/3/2.
//

import SwiftUI

struct UpperTabView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack{
            switch viewRouter.currentPage {
                                case .home:
                                    Text("View 1")
                                case .my:
                                    Text("View 2")
            }
            Spacer()
            ZStack {
                    HStack {
                                    
                    }
                                
                }
        }
    }
}

#Preview {
    UpperTabView(viewRouter: ViewRouter())
}
