//
//  SearchBarView.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50)
            // Search Bar
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.4))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.gray)
                        Spacer()
                    }.padding()
                )
            //Message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

#Preview {
    SearchBarView()
}
