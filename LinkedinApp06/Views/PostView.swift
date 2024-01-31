//
//  PostView.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI

var postData: [PostModel] = [
    .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
    .init(id: 2, image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
    .init(id: 3, image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
    .init(id: 4, image: "4", title: "Intel", followers: 1234, profileImage: "04"),
    .init(id: 5, image: "5", title: "HP", followers: 567, profileImage: "05"),
    .init(id: 6, image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
    
    ]
var socialView: [SocialModel] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack(alignment: .center){
                ForEach(postData, id: \.id) { post in
                    PostCardView(data: post)
                    HStack(alignment:.center, spacing: 45){
                        ForEach(socialView, id: \.id) {
                            social in
                            VStack{
                                Image(systemName: social.image)
                                Text(social.title)
                            }
                            .foregroundStyle(.black.opacity(0.8))
                            .font(.subheadline)
                        }
                    }.padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    PostView()
}
