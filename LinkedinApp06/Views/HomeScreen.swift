//
//  HomeScreen.swift
//  LinkedinApp06
//
//  Created by Beatriz Enríquez on 31/01/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
