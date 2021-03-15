//
//  MainTableViewController.swift
//  CoctailsRecipes
//
//  Created by s.k.a.i on 14/08/2020.
//  Copyright © 2020 s.k.a.i. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Coctails Recipes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipe" {
            
            let coctailVC = segue.destination as! CoctailViewController
            //let cell = sender as! RecipeTableCell
            let index = tableView.indexPathForSelectedRow!
            let coctailListProperty = coctailsList[index.row]
            coctailVC.picture = coctailListProperty.pic
            coctailVC.coctailName = coctailListProperty.name
            coctailVC.recipe = coctailListProperty.recipe
        }
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coctailsList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! RecipeTableCell
        
        let cellObject = coctailsList[indexPath.row]
        cell.coctailNameLabel.text = cellObject.name
        cell.coctailPictureLabel.image = cellObject.pic
        //cell.set(object: cellObject)
        return cell
    }
    
}
