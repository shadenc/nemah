//
//  RecipeCarouselCard.swift
//  nemah
//
//  Created by Bsmah Ali on 26/03/1445 AH.
//

import SwiftUI

struct RecipeCarouselCard: View {
    let recipe:Recipe
    var body: some View {  ZStack{
        HStack {
            VStack(alignment: .leading) {
                VStack {
                    Image("\(recipe.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                }.padding(20)
            }.foregroundColor(.white)
            Spacer()
        }
    }.frame(height: 200)
    .shadow(color: .gray.opacity(0.1), radius: 4, x: 1, y: 2)
}
}

struct RecipeCarouselCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCarouselCard(recipe: Recipe.sampleRecipe[0])
    }
}
