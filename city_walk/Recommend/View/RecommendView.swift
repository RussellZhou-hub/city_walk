//
//  RecommendView.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/2.
//

import SwiftUI

struct RecommendView: View {
    @State private var showDestinationSearchView = false
    //@StateObject var viewModel = RecommandViewModel()
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            }
            else{
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
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
                        }
                    }
                    .padding()
                    }
                .navigationDestination(for: Int.self){ listing in
                    ThreadView()
                        .navigationBarBackButtonHidden()
                
                    }
                
                }
        
            }
        
        }
    }


#Preview {
    RecommendView()
}
