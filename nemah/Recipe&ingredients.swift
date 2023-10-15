//
//  Recipe&ingredients.swift
//  nemah
//
//  Created by Bsmah Ali on 24/03/1445 AH.
//

import SwiftUI

struct Recipe_ingredients: View {
    @State private var selection: Int = 0

    var body: some View {
        NavigationView {
            ZStack {
                Color("BG").ignoresSafeArea()
          
                VStack {
                    Picker("Select a View", selection: $selection) {
                        Text("Recipes").tag(0)
                        Text("Ingredients").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    Spacer()

                    if selection == 0 {
                        RecipesView()
                    } else {
                        IngredientsView()
                    }
                }
            }
        }
    }
}

struct IngredientsView: View {
    var body: some View {
        Text("Ingredients Page")
    }
}

struct RecipesView: View {
    @State private var currentPage = 0
    @State private var isRecipeSheetPresented: Bool = false

    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(0..<3, id: \.self) { index in
                ZStack {
                   
                    Button(action: {
                        isRecipeSheetPresented = true
                    }) {
                        Image(recipeImages[currentPage])
                            .resizable()
                            .frame(width: 360, height: 600)
                            .cornerRadius(15).overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.button, lineWidth: 3))
                            .padding()
                    }
                }
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .sheet(isPresented: $isRecipeSheetPresented) {
            RecipeSheet(isPresented: $isRecipeSheetPresented)
        }
    }
}

struct RecipeSheet: View {
    @Binding var isPresented: Bool

    var body: some View {
        ZStack {
            Image("rec")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            ScrollView {
                VStack {
                    Text("Kabsa Recipe")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.blue) // GB color
                        .padding()

                    // Ingredients and Instructions
                    Group {
                        Text("Ingredients:")
                            .font(.headline)
                            .foregroundColor(.blue) // GB color
                            .multilineTextAlignment(.leading)
                            .padding(.top)

                        Text("1 onion, chopped\n1 tablespoon oil\n1 pound boneless, skinless chicken breasts, cut into bite-sized pieces\n1 teaspoon salt\n1/2 teaspoon black pepper\n1/4 teaspoon red pepper flakes\n1 (14.5 ounce) can diced tomatoes, undrained\n1 bay leaf\n2 cups water\n1 bouillon cube\n1 cup rice")
                            .font(.system(size: 18))
                            .foregroundColor(.gray) // GB color
                            .padding()

                        Text("Instructions:")
                            .font(.headline)
                            .foregroundColor(.blue) // GB color
                            .padding(.top)

                        Text("1. In a pot over medium heat, sauté the onion in oil until softened.\n2. Add the chicken, spices, and hot pepper to the pot and cook for 5 minutes, or until the chicken is browned.\n3. Add all remaining ingredients to the pot and bring to a boil.\n4. Reduce heat to low, cover the pot, and simmer for 25 minutes, or until the rice is cooked through.\n5. Serve immediately")
                            .font(.system(size: 18))
                            .foregroundColor(.gray) // GB color
                            .padding()
                    }

                    // Tips
                    Text("Tips:")
                        .font(.headline)
                        .foregroundColor(.blue) // GB color
                        .padding(.top)

                    Text("- For a more flavorful dish, you can brown the chicken in a separate pan before adding it to the pot.\n- You can also add other vegetables to the dish, such as carrots, potatoes, or peas.")
                        .font(.system(size: 18))
                        .foregroundColor(.gray) // GB color
                        .padding()

                    Spacer() // Add Spacer to push the "Back" button to the bottom

                    Button(action: {
                        isPresented = false
                    }) {
                        Text("Back")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    .padding(.bottom) // Add padding to the "Back" button
                }
            }
        }
    }
}

let recipeImages = ["kabsa", "marasee2", "kabda"] // Replace with your image names



#Preview {
    Recipe_ingredients()
}
