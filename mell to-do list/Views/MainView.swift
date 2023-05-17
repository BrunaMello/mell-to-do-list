//
//  ContentView.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import SwiftUI

struct MainView: View {
    
    //verify if the user is sign in
    @StateObject var viewModel = MainViewViewModel()
    
    
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
                    
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


