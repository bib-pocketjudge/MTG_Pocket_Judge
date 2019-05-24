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
        // Do any additional setup after loading the view.
        
        let jsonTestUrl = "https://api.scryfall.com/cards/named?exact=doomsday"
        
        guard let url = URL(string: jsonTestUrl) else { return }
        
        URLSession.shared.dataTask(with: url)
        { (data,response, err) in
            
            guard let data = data else { return }
            
//            let dataAsString = String(data: data, encoding: .utf8)
            
 //           print(dataAsString)
            
            do
            {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                //let doomsday = Card(json)
            }
            catch let jsonErr
            {
                print("Error serializing json:",jsonErr)
            }
            
        }.resume()
    }

    //Commit git

}

