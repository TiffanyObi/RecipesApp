//
//  ViewController.swift
//  RecipesApp
//
//  Created by Tiffany Obi on 10/29/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets:
    
    @IBOutlet weak var recipeImage: UIImageView!
    


    @IBOutlet weak var recipeName: UILabel!
    
    
    
    @IBOutlet weak var recipeDescription: UITextView!
    
     let arrayOfRecipes = Recipe.getRecipes()
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        updateRecipeAtIndex(index: 0)
               }
    
    
    @IBAction func recipeChange(_ recipeFinder: UIButton) {
    
        updateRecipeAtIndex(index:recipeFinder.tag)
        
    }
    
    // recipeDate
    
    
    
    func updateRecipeAtIndex(index: Int) {
        let recipe = arrayOfRecipes[index] // value of index , ex: 0,1,2
       
        //update IU element using the current Recipe instance above
        recipeImage.image = recipe.image
        recipeName.text = recipe.name
        
    }
    
    
    
}

