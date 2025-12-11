//
//  FavMovieView.swift
//  103-Project
//
//  Created by Fai on 10/12/25.
//

import SwiftUI

struct FavMovieView: View {
    @State private var movieList: Set<String> = ["Dune", "Shrek", "Inception", "Toy Story"]
    @State private var movie: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    List {
                        ForEach(Array(movieList), id: \.self) { movie in
                            Text(movie)
                        }
                    }
                    
                    HStack {
//                        Spacer()
                        TextField("Add a New Movie", text: $movie)
                            .textFieldStyle(.plain)
                            .padding(.horizontal, 15)
                            .frame(height: 50)
                            .background(Color(.secondarySystemBackground))
                            .foregroundColor(.primary)
                            .cornerRadius(25)
                            
                        Button(action: addMovie) {
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
            
            .navigationBarTitle("🍿 Movie List", displayMode: .inline)
            
            .toolbar {
                Button(action: {
                    // sorting logic goes here
                }) {
                    Label("Sort", systemImage: "arrow.up.arrow.down.circle")
                }
            }
        }
        .alert("Duplicated Movie", isPresented: $showAlert) {
            Button("OK", role: .cancel) {
                showAlert = false
            }
        } message: {
            Text("This movie is already in your list.")
        }
    }
    
    // logic
    
    
    func addMovie() {
        /*
         1. Clean data -> remove spaces
         2. If there's not a movie name, then stop func and exit.
         3. Check duplicate movies
         */
        let trimmedMovie = movie.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedMovie.isEmpty else { return }
        
        if movieList.contains(trimmedMovie) {
            // display alert
            showAlert = true
        } else {
            // add value to set
            movieList.insert(trimmedMovie)
        }
        
        movie = ""
    }
}

#Preview {
    FavMovieView()
}
