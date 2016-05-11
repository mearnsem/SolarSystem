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
        diameterLabel.text = "Diameter is \(planet.diameter)"
        dayLengthLabel.text = "Day length is \(planet.dayLength)"
        distanceFromSunLabel.text = "\(planet.millionKMsFromSun) from the Sun"
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
