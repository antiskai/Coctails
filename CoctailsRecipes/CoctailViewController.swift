//
//  CoctailViewController.swift
//  CoctailsRecipes
//
//  Created by s.k.a.i on 14/08/2020.
//  Copyright © 2020 s.k.a.i. All rights reserved.
//

import UIKit

class CoctailViewController: UIViewController {
    
    var picture: UIImage?
    var coctailName: String?
    var recipe: String?
    
    @IBOutlet weak var coctailNameLabel: UILabel!
    @IBOutlet weak var coctailPictureLabel: UIImageView!
    @IBOutlet weak var recipeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(share))
        
        coctailNameLabel.text = coctailName
        coctailPictureLabel.image = picture
        recipeLabel.text = recipe
    }
   
    

    
    @objc func share() {
        guard let image = coctailPictureLabel.image else { return }
        guard let name = coctailNameLabel.text else { return }
        guard let recipe = recipeLabel.text else { return }
        
        let vc = UIActivityViewController(activityItems: [image, name, recipe], applicationActivities: nil)
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
}
