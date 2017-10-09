//
//  AddOpponentViewController.swift
//  MatchTrackerPrototype
//
//  Created by matt on 10/9/17.
//  Copyright © 2017 matt. All rights reserved.
//

import UIKit
import CoreData

class AddOpponentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    @IBAction func addOpponentPressed(_ sender: Any) {
        let context = CoreDataHelper.GetContext();
        let opponent = Opponent(context: context);
        opponent.name = "NEW OPPONENT";
        CoreDataHelper.SaveContext();
    }
    
    @IBAction func testPressed(_ sender: Any) {
        let context = CoreDataHelper.GetContext();
        do {
            let opponents:[Opponent] = try context.fetch(Opponent.fetchRequest());
            print("There are \(opponents.count) opponents in core data.");
            for opponent in opponents {
                print(opponent.name!);
            }
        } catch {
            print(": : : : Opponent.fetchRequest() failed, or printing them failed.");
        }
    }
}
