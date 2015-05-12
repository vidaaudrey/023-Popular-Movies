//
//  GeneralExtensionsNew.swift
//  Apple Watch App
//
//  Created by Audrey Li on 5/12/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation

//operator infix <=> {}
//
//@infix func <=><T: Comparable> (left: T, right: T) -> Int {
//    if left < right { return -1 }
//    if left > right { return  1 }
//    return 0
//}
public enum Result<T, U> {
    case Response(() -> T)
    //  case Response(@auto_closure () -> T)
    case Error(() -> U)
}
//And calling your completion block just becomes a matter of wrapping your return value in a closure:
//if let errorOccurred = error {
//    completion(Result.Error({errorOccurred}))
//}
//And, finally, inside that block, accessing the enum’s value just entails executing that block instead of accessing the variable directly:
//showAlertWithTitle("Error Loading Scores", message:error().localizedDescription)

// use NSDate().dateFromString("2015-02-04 23:29:28", format:  "yyyy-MM-dd HH:mm:ss") 

public extension NSDate {
    func dateFromString(date: String, format: String) -> NSDate {
        let formatter = NSDateFormatter()
        let locale = NSLocale(localeIdentifier: "en_US_POSIX")
        
        formatter.locale = locale
        formatter.dateFormat = format
        
        return formatter.dateFromString(date)!
    }
}
