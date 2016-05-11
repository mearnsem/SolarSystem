//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Emily Mearns on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var distanceFromSunLabel: UILabel!
    
    var planet: Planet?
    
    func updateWithPlanet(planet: Planet) {
        title = planet.name
        diameterLabel.text = "\(planet.diameter) km"
        dayLengthLabel.text = "\(planet.dayLength) hours"
        distanceFromSunLabel.text = "\(planet.millionKMsFromSun) million km"
        planetImageView.image = UIImage(named: planet.imageName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let planet = planet {
            updateWithPlanet(planet)
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
