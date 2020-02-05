//
//  Armadillo.swift
//  Armadillo
//
//  Created by stephan rollins on 2/1/20.
//  Copyright © 2020 OmniStack. All rights reserved.
//

import Foundation
import CoreData

public class Armadillo: NSManagedObject, Identifiable
{
    @NSManaged public var account: String?
    @NSManaged public var createdAt: Date?
    @NSManaged public var email: String?
    @NSManaged public var id: UUID?
    @NSManaged public var lastpw: String?
    @NSManaged public var pw: String?
    @NSManaged public var username: String?
}

extension Armadillo {
    static func getArmadillo() -> NSFetchRequest<Armadillo> {
        let request : NSFetchRequest<Armadillo> = Armadillo.fetchRequest() as! NSFetchRequest<Armadillo>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}

































