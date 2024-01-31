//
//  InvitationView.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01")

struct InvitationView: View {
    var data: NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image("\(data.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70, alignment: .leading)
            VStack(alignment: .leading){
                Text(data.name)
                    .font(.body)
                Text(data.position)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                Text("⚭ \(data.mutual) mutual conections")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundStyle(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundStyle(.blue.opacity(0.8))
                
            }.padding(.horizontal)
            
        }
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal)
    }
}

#Preview {
    InvitationView(data: sampleData)
}
