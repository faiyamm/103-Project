//
//  ShoppingListView.swift
//  103-Project
//
//  Created by Fai on 10/12/25.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Eggs", "Milk", "Butter"]
    @State private var newItem: String = ""
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    List {
                        ForEach(shoppingList, id: \.self) { item in
                            Text(item)
                                .foregroundColor(.primary)
                        }
                    }
                    
                    HStack {
//                        Spacer()
                        TextField("Add New Item", text: $newItem)
                            .textFieldStyle(.plain)
                            .padding(.horizontal, 15)
                            .frame(height: 50)
                            .background(Color(.secondarySystemBackground))
                            .foregroundColor(.primary)
                            .cornerRadius(25)
                            
                        Button(action: {
                            // if empty dont append
                            if newItem.isEmpty { return }
                            
                            shoppingList.append(newItem)
                            newItem = ""
                        }) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.black)
                                .padding(15)
                                .background(Color(Color.white))
                                .cornerRadius(99)
                        }
                        .frame(width: 50, height: 50)
                    }
                    .padding()
                    .background(Color(.systemBackground))
                }
                .background(Color(.systemBackground))
            }
            
            .navigationBarTitle("Shopping App", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort A-Z") {
                        shoppingList.sort(by: <)
                    }
                    Button("Sort Z-A") {
                        shoppingList.sort(by: >)
                    }
                }
                label : {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                        .foregroundColor(.primary)
                }
            }
        }
    }
}

#Preview {
    ShoppingListView()
}
