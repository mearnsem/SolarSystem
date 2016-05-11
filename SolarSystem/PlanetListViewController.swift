//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Emily Mearns on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return PlanetController.planets.count
    
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        
        let planet = PlanetController.planets[indexPath.row]

        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"

        return cell
    }

    
    // MARK: - Navigation
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPlanetDetail" {
            if let detailViewController = segue.destinationViewController as? PlanetDetailViewController,
                let selectedIndex = self.tableView.indexPathForSelectedRow?.row {
                    
                let planet = PlanetController.planets[selectedIndex]
                detailViewController.planet = planet
                    }
                }
            }
        }
 


