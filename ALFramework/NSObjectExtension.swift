//
//  NSObjectExtension.swift
//  Apple Watch App
//
//  Created by Audrey Li on 5/11/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation

public extension NSObject {
    // Creates an object from a dictionary
   public class func fromJSON(jsonInfo: NSDictionary) -> Self {
        var object = self()
        
        (object as NSObject).load(jsonInfo)
        
        return object
    }
    
    public func load(jsonInfo: NSDictionary) {
        for (key, value) in jsonInfo {
            let keyName = key as! String
            
            if (respondsToSelector(NSSelectorFromString(keyName))) {
                setValue(value, forKey: keyName)
            } else {
                let camelCaseName = underscoreToCamelCase(keyName)
                if (respondsToSelector(NSSelectorFromString(camelCaseName))) {
                    setValue(value, forKey: camelCaseName)
                }
            }
        }
    }
    
    public func asJSON() -> NSDictionary {
        var json:[String:AnyObject] = [:]
        for name in propertyNames() {
            if let value: AnyObject = valueForKey(name) {
                json[name] = value
            }
        }
        return json
    }
    
    public func propertyNames() -> [String] {
        var names: [String] = []
        var count: UInt32 = 0
        // Uses the Objc Runtime to get the property list
        var properties = class_copyPropertyList(classForCoder, &count)
        for var i = 0; i < Int(count); ++i {
            let property: objc_property_t = properties[i]
            if let name:String = NSString(CString: property_getName(property), encoding: NSUTF8StringEncoding) as? String{
                names.append(name)
            }
            
        }
        free(properties)
        return names
    }
    

   private func underscoreToCamelCase(string: String) -> String {
        let items = string.componentsSeparatedByString("_")
        return items.reduce("") { $0.isEmpty ? $1 : $0 + $1.capitalizedString }
    }
}