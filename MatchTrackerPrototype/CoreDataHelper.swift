//
//  CoreDataHelper.swift
//  MatchTrackerPrototype
//
//  Created by matt on 10/9/17.
//  Copyright © 2017 matt. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CoreDataHelper
{
    static func GetContext() -> NSManagedObjectContext
    {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext;
    }
    
    static func SaveContext()
    {
        (UIApplication.shared.delegate as! AppDelegate).saveContext();
    }
}
