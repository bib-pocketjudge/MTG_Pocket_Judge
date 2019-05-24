//
//  Rulings.swift
//  MTG_Pocket_Judge
//
//  Created by Adrian Ledwinka / PBS2H17A on 5/24/19.
//  Copyright © 2019 Adrian Ledwinka / PBS2H17A. All rights reserved.
//

import Foundation

class Rulings: Codable {
    let object: String
    let hasMore: Bool
    let data: [Datum]
    
    enum CodingKeys: String, CodingKey {
        case object
        case hasMore = "has_more"
        case data
    }
    
    init(object: String, hasMore: Bool, data: [Datum]) {
        self.object = object
        self.hasMore = hasMore
        self.data = data
    }
}

// MARK: - Datum
class Datum: Codable {
    let object, oracleID, source, publishedAt: String
    let comment: String
    
    enum CodingKeys: String, CodingKey {
        case object
        case oracleID = "oracle_id"
        case source
        case publishedAt = "published_at"
        case comment
    }
    
    init(object: String, oracleID: String, source: String, publishedAt: String, comment: String) {
        self.object = object
        self.oracleID = oracleID
        self.source = source
        self.publishedAt = publishedAt
        self.comment = comment
    }
}
