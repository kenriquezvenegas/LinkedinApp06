//
//  ProfileView.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Event")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileView()
}
