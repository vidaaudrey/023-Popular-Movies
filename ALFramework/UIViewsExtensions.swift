//
//  ViewExtensions.swift
//  TestDeleteLater
//
//  Created by Audrey Li on 5/11/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation
import UIKit

public extension UITableViewCell {
    
   public func loadInfo(info: NSDictionary) {
        let propertyNames = self.propertyNames()
        let labels: [String] = propertyNames.filter { (name: String) -> Bool in
            return name.hasSuffix("Label")
        }
        for label in labels {
            let propertyName = (label + "$$$").stringByReplacingOccurrencesOfString("Label$$$", withString: "")
            if let value: AnyObject = info[propertyName] {
                let l: UILabel? = valueForKey(label) as! UILabel?
                if l != nil {
                    l!.text = "\(value)"
                }
            }
        }
    }
}
