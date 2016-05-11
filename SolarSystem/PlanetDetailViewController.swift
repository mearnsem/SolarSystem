//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Emily Mearns on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var diameter: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    @IBOutlet weak var millionsFromSun: UILabel!
    
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
        }
    }
    
    
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        diameter.text = "\(planet.diameter)"
        millionsFromSun.text = "\(planet.millionKMsFromSun)"
        dayLength.text = "\(planet.dayLength)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
