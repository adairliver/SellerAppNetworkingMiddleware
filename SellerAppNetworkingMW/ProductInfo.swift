//
//  ProductInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ProductInfo: Mappable {
    
    public var ratingCount: Float?
    public var images: Images?
    public var promoPrice: Float?
    public var minimumListPrice: Float?
    public var firstLevelParent: String?
    public var ratingDetails: RatingDetails?
    public var maximumPromoPrice: Float?
    public var shortDescription: String?
    public var minimumPromoPrice: Float?
    public var maximumListPrice: Float?
    public var type: String?
    public var productId: String?
    public var itrElegibility: Int?
    public var longDescription: String?
    public var avgRating: Float?
    public var defaultSkuId: String?
    public var eddInfo: EddInfo?
    public var promotions: Promotions?
    public var displayName: String?
    public var flags: [Flags]?
    public var gwp: Gwp?
    public var salePrice: Float?
    public var listPrice: Float?
    public var videoLink: String?
    public var dynamicAttributes: [DynamicAttributes]?
    public var userManual: String?
    public var refundPolicy: String?
    public var promotionLabel: String?
    public var department: String?
    public var isGRConversionEligible: Bool?
    //PDP 3
    public var isMarketPlace: Bool?
    public var listPriceMin: String?
    public var listPriceMax: String?
    public var finalPriceMin: String?
    public var finalPriceMax: String?
    public var priceRangeFlag: Bool?

    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        ratingCount <- map["ratingCount"]
        images <- map["images"]
        promoPrice <- map["promoPrice"]
        minimumListPrice <- map["minimumListPrice"]
        firstLevelParent <- map["firstLevelParent"]
        ratingDetails <- map["ratingDetails"]
        maximumPromoPrice <- map["maximumPromoPrice"]
        shortDescription <- map["shortDescription"]
        minimumPromoPrice <- map["minimumPromoPrice"]
        maximumListPrice <- map["maximumListPrice"]
        type <- map["type"]
        productId <- map["productId"]
        itrElegibility <- map["itrElegibility"]
        longDescription <- map["longDescription"]
        avgRating <- map["avgRating"]
        defaultSkuId <- map["defaultSkuId"]
        eddInfo <- map["eddInfo"]
        promotions <- map["promotions"]
        displayName <- map["displayName"]
        flags <- map["flags"]
        gwp <- map["gwp"]
        salePrice <- map["salePrice"]
        listPrice <- map["listPrice"]
        videoLink <- map["videoLink"]
        dynamicAttributes <- map["dynamicAttributes"]
        userManual <- map["userManual"]
        refundPolicy <- map["refundPolicy"]
        promotionLabel <- map["promotionLabel"]
        department <- map["department"]
        isGRConversionEligible <- map["isGRConversionEligible"]
        // PDP 3
        //isMarketPlace <- map["isMarketPlace"]
        switch map["isMarketPlace"].currentValue{
        case (let v as String)  : isMarketPlace = Bool(v)
        case (let v as Bool)    : isMarketPlace = v
        default                 : debugPrint("You should add another kind of data")
        }
        listPriceMin                <- map ["listPriceMin"]
        listPriceMax                <- map ["listPriceMax"]
        finalPriceMin               <- map ["finalPriceMin"]
        finalPriceMax               <- map ["finalPriceMax"]
        priceRangeFlag              <- map ["priceRangeFlag"]
    }
    
}
