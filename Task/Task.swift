//
//  Task.swift
//  Task
//
//  Created by Joseph Hansen on 7/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData


class Task: NSManagedObject {
    
    convenience init?(name: String, notes: String? = nil, due: NSDate? = nil, isComplete: Bool, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        guard let entity = NSEntityDescription.entityForName("Task", inManagedObjectContext: context) else {return nil}
        
        
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
        self.notes = notes
        self.due = due
        self.isComplete = isComplete
        
        
        // set properties here
    }

// Insert code here to add functionality to your managed object subclass

}
