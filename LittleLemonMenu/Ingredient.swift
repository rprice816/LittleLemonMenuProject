//
//  Ingredient.swift
//  LittleLemonMenu
//
//  Created by russell price on 4/16/23.
//

import Foundation

enum Ingredients: String {
    case spinach = "Fresh Spinach"
    case broccoli = "Broccoli"
    case carrot = "Baby Carrots"
    case pasta = "Angelhair Pasta"
    case tomatoSauce = "Spicy Tomato Sauce"
}

let ingredients = Ingredients.spinach

struct menuItem: Identifiable {
    var id: ObjectIdentifier
    var title: String
    var ingredient = [ingredients]
}
