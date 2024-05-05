//
//  RatingView.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/6.
//

import SwiftUI

struct RatingDetailView: View {
    
    @StateObject var viewModel = RatingViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(viewModel.posts) { post in
                    RatingCell(post:post)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .background(Color("LightBackground"))
                        .cornerRadius(10)
                        .padding(5)
                }
                
                Text("这回真没了。")
                    .frame(height: 200)
            }
        }
        .overlay(alignment: .top) {
            HStack{
                // dismiss
                VStack(){
                    Spacer()
                        .frame(height: 13)
                    // dismiiss btn
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                    }
                }
                .padding(20)
                
                //Text("overlay")
                
                Spacer()
                    .frame(width:350)
            }
            .frame(width: 500 ,height:50)
            .background(Color("OverlayBackground"))
        }
    }
}

#Preview {
    RatingDetailView()
}
