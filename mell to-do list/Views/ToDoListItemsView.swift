//
//  ToDoListItemsView.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import SwiftUI

struct ToDoListItemsView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
        
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemsView(item: .init(id: "123", title: "Buy food", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
    }
}
