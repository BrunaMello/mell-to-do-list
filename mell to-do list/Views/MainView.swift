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
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


