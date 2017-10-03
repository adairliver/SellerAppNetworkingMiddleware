//
//  Benefits.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Benefits: Mappable{
    public var externas: [BenefitOptions]?
    public var liverpool: [BenefitOptions]?
    public var generales: [BenefitOptions]?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        externas <- map["externas"]
        liverpool <- map["liverpool"]
        generales <- map["generales"]
    }
}