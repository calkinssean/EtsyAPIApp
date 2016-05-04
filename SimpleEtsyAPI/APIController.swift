//
//  APIController.swift
//  SimpleEtsyAPI
//
//  Created by Sean Calkins on 5/4/16.
//  Copyright © 2016 Sean Calkins. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String:AnyObject]
typealias JSONArray = [JSONDictionary]

class APIController {
    
    func apiCall() {
        
        let urlString = "https://openapi.etsy.com/v2/listings/263772400/images?api_key=m1nbs2uj0plkg24zbhbky1y7"
        
        if let url = NSURL(string: urlString) {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) in
                
                if error != nil {
                    
                    debugPrint("There was an error dataTaskWithURL")
                    
                } else {
                    
                    if let data = data {
                        
                        do {
                            
                            if let dict = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                            }
                            
                        } catch {
                            
                        }
                        
                    }
                    
                }
                
            })
            
            task.resume()
        }
    }
}