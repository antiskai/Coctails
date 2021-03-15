//
//  CoctailModel.swift
//  CoctailsRecipes
//
//  Created by s.k.a.i on 14/08/2020.
//  Copyright © 2020 s.k.a.i. All rights reserved.
//

import Foundation
import UIKit

struct Coctail {
    var pic: UIImage
    var name: String
    var recipe: String
}

var coctailsList = [Coctail(pic: UIImage(named: "cuba")!, name: "Cuba Libre", recipe: """
                    1. White Rum
                    2. Lime Juice
                    3. Cola
                    """),
                    Coctail(pic: UIImage(named: "manh")!,name:"Manhattan", recipe: """
                    1. Rye Whiskey
                    2. Sweet Vermouth
                    3. Angostura Bitters
                    """),
                    Coctail(pic: UIImage(named: "whsour")!,name:"Whiskey Sour", recipe: """
                    1. Bourbon
                    2. Lemon Juice
                    3. Sugar Syrup
                    """),
                    Coctail(pic: UIImage(named: "bayb")!,name:"Bay Breeze", recipe: """
                    1. Vodka
                    2. Cranberry Juice
                    3. Pineapple Juice
                    """),
                    Coctail(pic: UIImage(named: "daiq")!,name:"Daiquiri", recipe: """
                    1. White Rum
                    2. Lime Juice
                    3. Sugar Syrup
                    """),
                    Coctail(pic: UIImage(named: "pinac")!,name:"Pina Colada", recipe: """
                    1. White Rum
                    2. Pineapple Juice
                    3. Coconut Cream
                    """),
                    Coctail(pic: UIImage(named: "seab")!,name:"Sea Breeza", recipe: """
                    1. Vodka
                    2. Cranberry juice
                    3. Grapefruit juice
                    """),
                    Coctail(pic: UIImage(named: "sunrise")!,name:"Tequila Sunrise", recipe: """
                    1. Tequila
                    2. Grenadine
                    3. Orange Juice
                    """),
                    Coctail(pic: UIImage(named: "margarita")!,name:"Margarita", recipe: """
                    1. Tequila
                    2. Lime Juice
                    3. Cointreau
                    """),
                    Coctail(pic: UIImage(named: "mojito")!,name:"Mojito", recipe: """
                    1. White Rum
                    2. Lime Juice
                    3. Sugar Syrup
                    4. Mint Leaves
                    5. Soda
                    """),
                    Coctail(pic: UIImage(named: "oldf")!,name:"Old Fashioned", recipe: """
                    1. Bourbon
                    2. Angostura Bitters
                    3. Water
                    4. Sugar Cube
                    """),
                    Coctail(pic: UIImage(named: "b52")!,name:"B52", recipe: """
                    1. Grand Marnier
                    2. Coffee Liqueur
                    3. Baileys Irish Cream liqueur
                    """)]


