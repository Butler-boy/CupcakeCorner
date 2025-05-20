//
//  Order.swift
//  CupcakeCorner
//
//  Created by Jackson Barnes on 20/05/2025.
//

import Foundation

@Observable
class Order: Codable {
//	enum CodingKeys: String, CodingKey {
//		case _type = "type"
//		case _quantity = "quantity"
//		case _specialRequestEnabled = "specialRequestEnabled"
//		case _extraFrosting = "extraFrosting"
//		case _addSprinkles = "addSprinkles"
//		case _name = "name"
//		case _city = "city"
//		case _streetAddress = "streetAddress"
//		case _postCode = "postCode"
//	}
	
	static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
	
	var type = 0
	var quantity = 3
	
	var specialRequestsEnabled = false {
		didSet {
			if specialRequestsEnabled == false {
				extraFrostring = false
				addSprinkles = false
			}
		}
	}
	var extraFrostring = false
	var addSprinkles = false
	
	var name = ""
	var streetAddress = ""
	var city = ""
	var postCode = ""
	
	var hasValidAddress: Bool {
		if name.isEmpty || streetAddress.isEmpty || city.isEmpty || postCode.isEmpty {
			return false
		
		
		return true
	}
	
	var cost: Decimal {
		var cost = Decimal(quantity) * 2
		
		cost += Decimal(type) / 2
		
		if extraFrostring {
			cost += Decimal(quantity)
		}
		
		if addSprinkles {
			cost += Decimal(quantity) / 2
		}
		
		return cost
	}
}
