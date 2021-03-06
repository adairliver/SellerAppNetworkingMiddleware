//
//  StackBanners.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class StackBanners: Mappable{
    var image: String?
    var redirectsTo: String?
    var type: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        image <- map["image"]
        redirectsTo <- map["redirectsTo"]
        type <- map["type"]
    }
}
