//
//  RecommandCell.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/2.
//

import SwiftUI

struct RecommandCell: View {
    
    var profile_img = "Profile"
    
    var body: some View {
        HStack(){
            VStack(){
                Text("想要来东京的看这里     ")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.custom("Arial",size:25))
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                
                Spacer()
                    .frame(height: 5)
                
                Text("第一次去东京的集美，不知道怎么玩？这10大景点收藏起来可以直接冲啦！迪士尼乐园被称为亚洲第一游乐园，规模十分宏大......")
                    .frame(maxHeight: 70)
                    .font(.body)
                    .foregroundStyle(.black)
                
                HStack(){
                    // avatar
                    Image(profile_img)
                        .resizable()
                        .frame(maxWidth: 30, maxHeight: 30)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(5)
                    
                    
                    
                    Text("Hippo"+"                  ")
                        .multilineTextAlignment(.leading)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                        .frame(width: 100)
                }
                
            }
            .padding()
            
            Spacer()
                .frame(width: 18)
            
            VStack(){
                
                Text("$ 200")
                    .foregroundStyle(.red)
                
                Spacer()
                    .frame(height: 10)
                
                Text("小时")
                    .foregroundStyle(.black)
                
                Spacer()
                    .frame(height: 100)
            }
            .padding()
            
            
        }
    }
}

#Preview {
    RecommandCell()
}
