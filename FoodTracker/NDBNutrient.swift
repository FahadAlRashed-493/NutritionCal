//
//  NDBNutrient.swift
//  
//
//  Created by Omar Albeik on 19/11/15.
//
//

import Foundation
import CoreData


class NDBNutrient: NSManagedObject {

	@NSManaged var id: NSNumber?
	@NSManaged var name: String?
	@NSManaged var unit: String?
	@NSManaged var value: NSNumber?
	
	@NSManaged var item: NDBItem
	
	override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
		super.init(entity: entity, insertIntoManagedObjectContext: context)
	}
	
	init(item: NDBItem, dictionary: [String : AnyObject], context: NSManagedObjectContext) {
		let entity = NSEntityDescription.entityForName("NDBNutrient", inManagedObjectContext: context)!
		super.init(entity: entity, insertIntoManagedObjectContext: context)
		
		self.id = (dictionary["nutrient_id"] as! Int)
		self.name = (dictionary["name"] as! String)
		self.unit = (dictionary["unit"] as! String)
		self.value = (dictionary["value"] as! Double)
		self.item = item
		
	}
	
}
