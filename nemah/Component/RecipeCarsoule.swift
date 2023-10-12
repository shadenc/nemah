//
//  RecipeCarsoule.swift
//  nemah
//
//  Created by Bsmah Ali on 26/03/1445 AH.
//

import SwiftUI

struct RecipeCarsoule: View {
    @State private var recipe: Recipe? = nil
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    private let screenSize = UIScreen.main.bounds
    let recipe: [Recipe]
    
    init(recipes: [Recipe]) {
        self.recipes = recipes
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.secondary)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color.primary)
    }
    var body: some View {VStack(spacing:0) {
        TabView(selection: $currentIndex){
            ForEach(0..<recipe.count, id: \.self){index in
                Button(action:{
                    withAnimation{
                        self.recipe = recipe[index]
                    }
                }){
                    RecipeCarouselCard(product: recipes[index])
                        .frame(width: (screenSize.width - 24))
                        .shadow(color: .gray.opacity(0.1), radius: 3, x: 1, y: 2)
                }
                .tag(index)
            }
        }
        .frame(height: 270)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onReceive(timer) { input in
            animateCarousel()
        }
    }
}
func animateCarousel(){
    if currentIndex <= 3 {
        withAnimation{
        currentIndex += 1
        }
    } else {
        withAnimation{
        currentIndex = 0
        }
    }
}
}


struct RecipeCarousel_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCarousel(recipes: Recipe.sampleRecipe)
    }
}
