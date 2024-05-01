//
//  GuiderDetailView.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/2.
//

import SwiftUI

struct GuiderDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var profile_img = "Profile"
    
    var body: some View {
        //NavigationStack
        //{
            ScrollView{
                
                Spacer()
                    .frame(height:100)
                
                
                VStack{
                    HStack{
                        Image(profile_img)
                            .resizable()
                            .frame(maxWidth: 70, maxHeight: 70)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(1)
                        
                        // name
                        Text("Hippo"+"                  ")
                            .multilineTextAlignment(.leading)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        
                        Spacer()
                            .frame(width:100)
                        
                        Button{
                            
                        } label: {
                            Text("关注")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 60, height:30)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    
                    HStack{
                        VStack{
                            
                            
                            Spacer()
                                .frame(height: 13)
                            
                            // signature
                            Text("在东京留学生一枚，户外，穿搭，时尚 \n 从事体育相关行业")
                                .foregroundStyle(.gray)
                        }
                        .padding(40)
                        
                        Spacer()
                            
                    }
                    
                    HStack{
                        Spacer()
                            .frame(width:30)
                        
                        RatingView(rating: 4.67, reviewer: 30)
                        
                        Spacer()
                    }
                    
                    
                }
                
                
                
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            RecommandCell()
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .background(Color("LightBackground"))
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                }
                .padding()
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
                .background(Color("LightBackground"))
            }
            
        //}
        
    }
}

#Preview {
    GuiderDetailView()
}
