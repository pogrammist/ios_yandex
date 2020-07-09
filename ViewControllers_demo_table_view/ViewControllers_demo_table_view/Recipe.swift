//
//  RecipeCategory.swift
//  ViewControllers_demo_table_view
//
//  Created by user on 04.07.2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

struct RecipeCategory {
    var title: String
    var recipes: [Recipe]
}

struct Recipe {
    var photo: UIImage?
    var title: String
    var ingresients: String
}

extension RecipeCategory {
    static var allRecipes: [RecipeCategory] {
        return [
            RecipeCategory(title: "Супы", recipes: [
                Recipe(photo: UIImage(named: "soup-1"),
                       title: "Суп Харчо",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
                Recipe(photo: UIImage(named: "soup-2"),
                       title: "Любимый Суп",
                       ingresients: "куриные окорочка, картофель, помидоры, лук репчатый, сметана, зелень, масло растительное, соль, перец, вода"),
                
                Recipe(photo: UIImage(named: "soup-3"),
                       title: "Куриный суп с плавленным сыром",
                       ingresients: "куриное филе, сыр плавленный, вермишель, картофель, лук репчатый, морковь, зелень, масло сливочное"),
                
                Recipe(photo: UIImage(named: "soup-1"),
                       title: "Шурпа из говядины",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
            ]),
            RecipeCategory(title: "Каши", recipes: [
                Recipe(photo: UIImage(named: "soup-2"),
                       title: "Суп Харчо",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
                Recipe(photo: UIImage(named: "soup-3"),
                       title: "Любимый Суп",
                       ingresients: "куриные окорочка, картофель, помидоры, лук репчатый, сметана, зелень, масло растительное, соль, перец, вода"),
                
                Recipe(photo: UIImage(named: "soup-1"),
                       title: "Куриный суп с плавленным сыром",
                       ingresients: "куриное филе, сыр плавленный, вермишель, картофель, лук репчатый, морковь, зелень, масло сливочное"),
                
                Recipe(photo: UIImage(named: "soup-2"),
                       title: "Шурпа из говядины",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
            ]),
            RecipeCategory(title: "Салаты", recipes: [
                Recipe(photo: UIImage(named: "soup-3"),
                       title: "Суп Харчо",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
                Recipe(photo: UIImage(named: "soup-1"),
                       title: "Любимый Суп",
                       ingresients: "куриные окорочка, картофель, помидоры, лук репчатый, сметана, зелень, масло растительное, соль, перец, вода"),
                
                Recipe(photo: UIImage(named: "soup-2"),
                       title: "Куриный суп с плавленным сыром",
                       ingresients: "куриное филе, сыр плавленный, вермишель, картофель, лук репчатый, морковь, зелень, масло сливочное"),
                
                Recipe(photo: UIImage(named: "soup-3"),
                       title: "Шурпа из говядины",
                       ingresients: "курица, рис, чеснок, масло сливочное, лук репчатый, морковь, томат-паста, зелень, соль"),
                
            ])
        ]
    }
}
