//
//  CommonData.swift
//  Apple Watch App
//
//  Created by Audrey Li on 5/11/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation


public enum Unit: CGFloat, Printable {
    case mm = 5.7 //
    case inch = 144.9 // 144.9 point in 1 inch
    case cm = 0.57
    case point = 1
    public var description: String {
        get {
            switch self {
            case mm: return "mm"
            case inch: return "inch"
            case cm:  return "cm"
            case point: return "point"
            }
        }
    }
}

public enum Position: String {
    case topLeft = "topLeft"
    case topRight = "topRight"
    case leftTop = "leftTop"
    case leftBottom = "leftBottom"
    case rightTop = "rightTop"
    case rightBottom =  "rightBottom"
    case bottomLeft = "bottomLeft"
    case bottomRight = "bottomRight"
    case topCenter = "topCenter"
    case bottomCenter = "bottomCenter"
    case leftCenter = "leftCenter"
    case rightCenter = "rightCenter"
}
public enum StringAlignment {
    case LeftTop
    case CenterTop
    case RightTop
    case LeftCenter
    case Center
    case RightCenter
    case LeftBottom
    case CenterBottom
    case RightBottom
}