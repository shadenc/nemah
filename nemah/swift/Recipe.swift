//
//  Recipe.swift
//  nemahUITests
//
//  Created by Bsmah Ali on 26/03/1445 AH.
//

import Foundation
struct Recipe: Identifiable, Codable, Hashable {
    var id: Int
    var title: String
    var image: String

}


extension Recipe {
    static var sampleRecipe: [Recipe] {
        return [Recipe(id: 1, title: "Enjoy shopping with low cost", image: "norecipe")]
    }
}
