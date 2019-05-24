//
//  Card.swift
//  MTG_Pocket_Judge
//
//  Created by Adrian Ledwinka / PBS2H17A on 5/24/19.
//  Copyright © 2019 Adrian Ledwinka / PBS2H17A. All rights reserved.
//

import Foundation

class Card : Codable
{
    let object, id, oracleID: String
    let multiverseIDS: [Int]
    let mtgoID, mtgoFoilID, tcgplayerID: Int
    let name, lang, releasedAt: String
    let uri, scryfallURI: String
    let layout: String
    let highresImage: Bool
    let imageUris: ImageUris
    let manaCost: String
    let cmc: Int
    let typeLine, oracleText: String
    let colors, colorIdentity: [String]
    let legalities: Legalities
    let games: [String]
    let reserved, foil, nonfoil, oversized: Bool
    let promo, reprint: Bool
    let welcomeSet, setName: String
    let setURI, setSearchURI, scryfallSetURI, rulingsURI: String
    let printsSearchURI: String
    let collectorNumber: String
    let digital: Bool
    let rarity, watermark, illustrationID, artist: String
    let borderColor, frame: String
    let fullArt, storySpotlight: Bool
    let edhrecRank: Int
    let prices: Prices
    let relatedUris: RelatedUris
    let purchaseUris: PurchaseUris
    
    enum CodingKeys: String, CodingKey {
        case object, id
        case oracleID = "oracle_id"
        case multiverseIDS = "multiverse_ids"
        case mtgoID = "mtgo_id"
        case mtgoFoilID = "mtgo_foil_id"
        case tcgplayerID = "tcgplayer_id"
        case name, lang
        case releasedAt = "released_at"
        case uri
        case scryfallURI = "scryfall_uri"
        case layout
        case highresImage = "highres_image"
        case imageUris = "image_uris"
        case manaCost = "mana_cost"
        case cmc
        case typeLine = "type_line"
        case oracleText = "oracle_text"
        case colors
        case colorIdentity = "color_identity"
        case legalities, games, reserved, foil, nonfoil, oversized, promo, reprint
        case welcomeSet = "set"
        case setName = "set_name"
        case setURI = "set_uri"
        case setSearchURI = "set_search_uri"
        case scryfallSetURI = "scryfall_set_uri"
        case rulingsURI = "rulings_uri"
        case printsSearchURI = "prints_search_uri"
        case collectorNumber = "collector_number"
        case digital, rarity, watermark
        case illustrationID = "illustration_id"
        case artist
        case borderColor = "border_color"
        case frame
        case fullArt = "full_art"
        case storySpotlight = "story_spotlight"
        case edhrecRank = "edhrec_rank"
        case prices
        case relatedUris = "related_uris"
        case purchaseUris = "purchase_uris"
    }
    
    init(object: String, id: String, oracleID: String, multiverseIDS: [Int], mtgoID: Int, mtgoFoilID: Int, tcgplayerID: Int, name: String, lang: String, releasedAt: String, uri: String, scryfallURI: String, layout: String, highresImage: Bool, imageUris: ImageUris, manaCost: String, cmc: Int, typeLine: String, oracleText: String, colors: [String], colorIdentity: [String], legalities: Legalities, games: [String], reserved: Bool, foil: Bool, nonfoil: Bool, oversized: Bool, promo: Bool, reprint: Bool, welcomeSet: String, setName: String, setURI: String, setSearchURI: String, scryfallSetURI: String, rulingsURI: String, printsSearchURI: String, collectorNumber: String, digital: Bool, rarity: String, watermark: String, illustrationID: String, artist: String, borderColor: String, frame: String, fullArt: Bool, storySpotlight: Bool, edhrecRank: Int, prices: Prices, relatedUris: RelatedUris, purchaseUris: PurchaseUris) {
        self.object = object
        self.id = id
        self.oracleID = oracleID
        self.multiverseIDS = multiverseIDS
        self.mtgoID = mtgoID
        self.mtgoFoilID = mtgoFoilID
        self.tcgplayerID = tcgplayerID
        self.name = name
        self.lang = lang
        self.releasedAt = releasedAt
        self.uri = uri
        self.scryfallURI = scryfallURI
        self.layout = layout
        self.highresImage = highresImage
        self.imageUris = imageUris
        self.manaCost = manaCost
        self.cmc = cmc
        self.typeLine = typeLine
        self.oracleText = oracleText
        self.colors = colors
        self.colorIdentity = colorIdentity
        self.legalities = legalities
        self.games = games
        self.reserved = reserved
        self.foil = foil
        self.nonfoil = nonfoil
        self.oversized = oversized
        self.promo = promo
        self.reprint = reprint
        self.welcomeSet = welcomeSet
        self.setName = setName
        self.setURI = setURI
        self.setSearchURI = setSearchURI
        self.scryfallSetURI = scryfallSetURI
        self.rulingsURI = rulingsURI
        self.printsSearchURI = printsSearchURI
        self.collectorNumber = collectorNumber
        self.digital = digital
        self.rarity = rarity
        self.watermark = watermark
        self.illustrationID = illustrationID
        self.artist = artist
        self.borderColor = borderColor
        self.frame = frame
        self.fullArt = fullArt
        self.storySpotlight = storySpotlight
        self.edhrecRank = edhrecRank
        self.prices = prices
        self.relatedUris = relatedUris
        self.purchaseUris = purchaseUris
    }
}

// MARK: - ImageUris
class ImageUris: Codable {
    let small, normal, large: String
    let png: String
    let artCrop, borderCrop: String
    
    enum CodingKeys: String, CodingKey {
        case small, normal, large, png
        case artCrop = "art_crop"
        case borderCrop = "border_crop"
    }
    
    init(small: String, normal: String, large: String, png: String, artCrop: String, borderCrop: String) {
        self.small = small
        self.normal = normal
        self.large = large
        self.png = png
        self.artCrop = artCrop
        self.borderCrop = borderCrop
    }
}

// MARK: - Legalities
class Legalities: Codable {
    let standard, future, frontier, modern: String
    let legacy, pauper, vintage, penny: String
    let commander, duel, oldschool: String
    
    init(standard: String, future: String, frontier: String, modern: String, legacy: String, pauper: String, vintage: String, penny: String, commander: String, duel: String, oldschool: String) {
        self.standard = standard
        self.future = future
        self.frontier = frontier
        self.modern = modern
        self.legacy = legacy
        self.pauper = pauper
        self.vintage = vintage
        self.penny = penny
        self.commander = commander
        self.duel = duel
        self.oldschool = oldschool
    }
}

// MARK: - Prices
class Prices: Codable {
    let usd, usdFoil, eur, tix: String
    
    enum CodingKeys: String, CodingKey {
        case usd
        case usdFoil = "usd_foil"
        case eur, tix
    }
    
    init(usd: String, usdFoil: String, eur: String, tix: String) {
        self.usd = usd
        self.usdFoil = usdFoil
        self.eur = eur
        self.tix = tix
    }
}

// MARK: - PurchaseUris
class PurchaseUris: Codable {
    let tcgplayer, cardmarket, cardhoarder: String
    
    init(tcgplayer: String, cardmarket: String, cardhoarder: String) {
        self.tcgplayer = tcgplayer
        self.cardmarket = cardmarket
        self.cardhoarder = cardhoarder
    }
}

// MARK: - RelatedUris
class RelatedUris: Codable {
    let gatherer: String
    let tcgplayerDecks: String
    let edhrec, mtgtop8: String
    
    enum CodingKeys: String, CodingKey {
        case gatherer
        case tcgplayerDecks = "tcgplayer_decks"
        case edhrec, mtgtop8
    }
    
    init(gatherer: String, tcgplayerDecks: String, edhrec: String, mtgtop8: String) {
        self.gatherer = gatherer
        self.tcgplayerDecks = tcgplayerDecks
        self.edhrec = edhrec
        self.mtgtop8 = mtgtop8
    }
}
