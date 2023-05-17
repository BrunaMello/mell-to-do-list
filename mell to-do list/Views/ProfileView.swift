//
//  ProfileView.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
