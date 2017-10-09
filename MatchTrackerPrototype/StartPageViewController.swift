//
//  StartPageViewController.swift
//  MatchTrackerPrototype
//
//  Created by matt on 10/9/17.
//  Copyright © 2017 matt. All rights reserved.
//

import UIKit

class StartPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
    }

    @IBAction func newMatchPressed(_ sender: Any) {
        performSegue(withIdentifier: "newMatchSegue", sender: nil);
    }
    
    @IBAction func addOpponentPressed(_ sender: Any) {
        performSegue(withIdentifier: "addOpponentSegue", sender: nil);
    }
    
    @IBAction func viewStatsPressed(_ sender: Any) {
        performSegue(withIdentifier: "viewStatsSegue", sender: nil);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(": : : : : : : : :Preparing for segue.");
    }
}
