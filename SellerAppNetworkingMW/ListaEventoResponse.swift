//
//  ListaEventoResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ListaEventoResponse: Mappable {
    
    var tienda: String?
    var listaDirecciones: [ListaDirecciones]?
    var fechaEvento: String?
    var listaFestejados: [ListaFestejados]?
    var listaArticulos: [ListaArticulos]?
    var tipoMesa: Float?
    var comentarios: String?
    var numEvento: String?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        tienda <- map["tienda"]
        listaDirecciones <- map["listaDirecciones"]
        fechaEvento <- map["fechaEvento"]
        listaFestejados <- map["listaFestejados"]
        listaArticulos <- map["listaArticulos"]
        tipoMesa <- map["tipoMesa"]
        comentarios <- map["comentarios"]
        numEvento <- map["numEvento"]
    }
    
}
