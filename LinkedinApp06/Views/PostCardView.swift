//
//  PostCardView.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI




let samplePostData = PostModel(id: 1, image: "02", title: "Hitesh Choudhary", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostModel
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            HStack(alignment:.center){
                Image("\(data.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
