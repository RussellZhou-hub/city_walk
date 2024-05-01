//
//  ListingView.swift
//  airbnb_beta
//
//  Created by VincentZhou on 2024/2/21.
//

import SwiftUI

struct ThreadView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var profile_img = "Profile"
    
    @State private var isPresented = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 8){
            // UPer
            HStack(alignment: .top) {
                
                Spacer()
                    .frame(width:10,height: 13)
                
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
                    .fullScreenCover(isPresented: $isPresented){
                        GuiderDetailTabView()
                    }
                }
                
                // avatar
                VStack(){
                    Spacer()
                        .frame(height: 14)
                    
                    Button(action: {
                        //on clicked
                        isPresented.toggle()
                    }){
                        Image(profile_img)
                            .resizable()
                            .frame(maxWidth: 50, maxHeight: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(1)
                    }
                    
                }
                
                
                
                VStack{
                    Text("Hippo"+"                  ")
                        .multilineTextAlignment(.leading)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                        .frame(height: 13)
                    
                    Text("也许就是这样吧")
                        .foregroundStyle(.gray)
                    
                }
                .padding()
                
                Spacer()
                    .frame(width: 60)
                
                // charging standard
                VStack{
                    Spacer()
                        .frame(height: 18)
                    
                    Text("$ 200")
                        .foregroundStyle(.red)
                    
                    Spacer()
                        .frame(height: 13)
                    
                    Text("小时")
                        .foregroundStyle(.black)
                }
                
                Spacer()
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            // images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            
            VStack(alignment: .leading) {
                Text("想要来东京的看这里")
                    .font(.custom("Arial",size:25))
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                
                Spacer()
                    .frame(height: 20)
                
                Text("第一次去东京的集美，不知道怎么玩？这10大景点收藏起来可以直接冲啦！迪士尼乐园被称为亚洲第一游乐园，规模十分宏大，分陆地和海洋两个部分，有小孩的家长朋友快带自己的孩子去梦幻般的童话世界游玩吧东京国立博物馆是东京规模最大、历史最悠久的博物馆，对日本历史十分感兴趣的朋友可以前去参观游览。浅草寺是东京都最古老的寺庙，是日本现存的具有“江户风格”的民众游乐之地，作为了解日本民族文化的旅游名胜，每年前去参观的游客络绎不绝。")
                    .font(.body)
                    .foregroundStyle(.black)
                
                Button(action: {
                    //on clicked
                    isPresented.toggle()
                }){
                    Text("现在沟通")
                        .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(3)
                }
                .background(Color.green)
                .cornerRadius(6)
                .padding(3)
                .fullScreenCover(isPresented: $isPresented){
                    GuiderDetailView()
                }
            }
            .padding()
        }
        }
}

#Preview {
    ThreadView()
}
