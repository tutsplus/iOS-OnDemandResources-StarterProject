//
//  DetailViewController.swift
//  ODR Introduction
//
//  Created by Davis Allie on 26/09/2015.
//  Copyright © 2015 tutsplus. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    var tagToLoad: String!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.displayImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayImages() {
        if colorTags.contains(tagToLoad) {
            image1.image = UIImage(named: tagToLoad + " Circle")
            image2.image = UIImage(named: tagToLoad + " Square")
            image3.image = UIImage(named: tagToLoad + " Star")
            image4.image = UIImage(named: tagToLoad + " Hexagon")
        } else if shapeTags.contains(tagToLoad) {
            image1.image = UIImage(named: "Red " + tagToLoad)
            image2.image = UIImage(named: "Blue " + tagToLoad)
            image3.image = UIImage(named: "Green " + tagToLoad)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
