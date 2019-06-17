//
//  ViewController.swift
//  MTG_Pocket_Judge
//
//  Created by Adrian Ledwinka / PBS2H17A on 5/24/19.
//  Copyright © 2019 Adrian Ledwinka / PBS2H17A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This url will be provided by the user via a search input.
        let jsonTestUrl = "https://api.scryfall.com/cards/named?exact=doomsday"
        
        guard let url = URL(string: jsonTestUrl) else { return }
        
        URLSession.shared.dataTask(with: url)
        { (data,response, err) in
            
            guard let data = data else { return }
            
            do
            {
                /*Get card information here*/
                let card = try JSONDecoder().decode(Card.self, from:data)
                /*
                 let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                 let doomsday = Card(from: json)
                 print(doomsday)
                 */
                
                print(card.rulingsURI+"\n--\n")
                
                let rulingsUri = card.rulingsURI as String
                
                guard let rulings_uri = URL(string: rulingsUri) else {return}
                
                URLSession.shared.dataTask(with: rulings_uri)
                { (data,response, err) in
                    
                    guard let data = data else { return }
                    
                    do
                    {
                        /*Get rulings information here*/
                        let rulings = try JSONDecoder().decode(Rulings.self, from:data)
                        /*
                         let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                         let doomsday = Card(from: json)
                         print(doomsday)
                         */

                        print(rulings.data[0].comment+"\n--\n")
                        
                    }
                    catch let jsonErr
                    {
                        print("Error serializing json:",jsonErr)
                    }
                    
                    }.resume()
            }
            catch let jsonErr
            {
                print("Error serializing json:",jsonErr)
            }
            
            }.resume()
        
        
        /*
        let test : Card
        test = getCard(searchInput: "doomsday")
        
        print(test.name)

        print("end")
        */
    }

    /*
    func getCard(searchInput:String) -> Card {
        
        var thisCard : Card
        
        print("reached 0")
        
        let jsonCardSearchUrl = "https://api.scryfall.com/cards/named?exact="+searchInput
        
        print("reached 1")
        
        guard let url = URL(string: jsonCardSearchUrl) else {}
        
        print(url)
        
        URLSession.shared.dataTask(with: url)
        { (data,response, err) in
            
            print("reached 2")
            
            guard let data = data else { return }
            
            print("reached 3")
            
            do
            {
                thisCard = try JSONDecoder().decode(Card.self, from:data)
            }
            catch let jsonErr
            {
                print("Error serializing json:",jsonErr)
            }
        }.resume()
        return thisCard
    }
    */
    /*
     
     //This url will be provided by the user via a search input.
     let jsonTestUrl = "https://api.scryfall.com/cards/named?exact=doomsday"
     
     guard let url = URL(string: jsonTestUrl) else { return }
     
     URLSession.shared.dataTask(with: url)
     { (data,response, err) in
     
     guard let data = data else { return }
     
     do
     {
     let card = try JSONDecoder().decode(Card.self, from:data)
     /*
     let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
     let doomsday = Card(from: json)
     print(doomsday)
     */
     print(card.rulingsURI)
     
     let rulingsUri = card.rulingsURI as String
     
     guard let rulings_uri = URL(string: rulingsUri) else {return}
     
     URLSession.shared.dataTask(with: rulings_uri)
     { (data,response, err) in
     
     guard let data = data else { return }
     
     do
     {
     let rulings = try JSONDecoder().decode(Rulings.self, from:data)
     /*
     let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
     let doomsday = Card(from: json)
     print(doomsday)
     */
     print(rulings.data[0].comment)
     
     }
     catch let jsonErr
     {
     print("Error serializing json:",jsonErr)
     }
     
     }.resume()
     }
     catch let jsonErr
     {
     print("Error serializing json:",jsonErr)
     }
     
     }.resume()
     
 */

}

