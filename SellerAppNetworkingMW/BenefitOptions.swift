//
//  BenefitOptions.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 28/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class BenefitOptions: Mappable{
    
    public var items: [MWItems]?
    public var option: Int?
    public var optionPrice: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        items <- map["items"]
        option <- map["option"]
        optionPrice <- map["optionPrice"]
    }
}
