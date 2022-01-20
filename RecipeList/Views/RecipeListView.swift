//
//  RecipeListView.swift
//  RecipeList
//
//  Created by Mason Garrett on 2022-01-12.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Text("All Recipes")
                    .padding(.top, 40)
                    .font(Font.custom("Avenir Heavy", size: 24))

                ScrollView {
                    LazyVStack (alignment: .leading){
                        ForEach(model.recipies) { r in
                            NavigationLink(destination: RecipeDetailView(recipe: r), label: {
                                HStack(spacing: 20.0){
                                    Image(r.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    
                                    VStack (alignment: .leading) {
                                        Text(r.name)
                                            .foregroundColor(.black)
                                            .font(Font.custom("Avenir Heavy", size: 16))
                                        RecipeHighlightsView(highlights: r.highlights)
                                            .foregroundColor(.black)
                                    }
                                }
                            })
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
