//
//  Movie.swift
//  MoviesLib
//
//  Created by Thiago Monteiro on 11/14/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    
    let title: String
    let categories: String
    let duration: String
    let rating: Double
    let summary: String
    let image: String
    
//    enum MovieDecoder: String, Decodable {
//        case title = "titulo"
//        case categories = "categorias"
//        case duration = "duracao"
//        case rating = "duracao"
//        case summary = "sinopse"
//        case image = "imagem"
//    }
    
    // Propriedade computada
    var ratingFormatted: String {
        "⭐️\(rating)/10"
    }
    
    var smallImage: String {
        "\(image)"
    }
}
