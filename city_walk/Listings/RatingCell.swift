//
//  RatingCell.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/6.
//

import SwiftUI

struct RatingCell: View {
    
    // @Published
    
    let post: Post
    
    var profile_img = "Profile_customer"
    
    init(post: Post){
        self.post = post
    }
    
    var body: some View {
        
        
        
        HStack(){
            VStack(){
                Text(post.body)
                    .frame(maxHeight: 70)
                    .font(.body)
                    .foregroundStyle(.black)
                
                HStack(){
                    Spacer()
                        .frame(width: 20)
                    
                    // avatar
                    Image(profile_img)
                        .resizable()
                        .frame(maxWidth: 30, maxHeight: 30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(5)
                    
                    
                    
                    Text("customer"+"                  ")
                        .multilineTextAlignment(.leading)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                        .frame(width: 20)
                    
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        
                        Text("4.48")
                    }
                    
                    Spacer()
                        .frame(width: 20)
                }
            }
            
            
        }
    }
}

#Preview {
    RatingCell(post: Post(id: NSUUID().uuidString, title:"title preview",body:"body preview"))
}
