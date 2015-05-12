//
//  MovieData.swift
//  MyApp
//
//  Created by Audrey Li on 5/12/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation
import ALFramework

class MovieConfig: NSObject {
    var images: NSDictionary = [:]
    var profileSizes:[String] = []
    var changeKeys:[String] = []
    func getImageSizesObject() -> MovieConfigImages {
        let imagesSizes = MovieConfigImages.fromJSON(images)
        return imagesSizes
    }
    
}

class MovieConfigImages:NSObject {
    var backdropSizes:[String] = []
    var logoSizes:[String] = []
    var posterSizes:[String] = []
    var profileSizes:[String] = []
    var stillSizes:[String] = []
    var baseUrl:String = ""
    var secureBaseUrl:String = ""
}

class Movie: NSObject {
    var id: Int = 0
    var originalTitle = ""
    var releaseDate = ""
    var posterPath = ""
    var title = ""
    var voteAverage:Float = 0
    var voteCount:Int = 0
    func getPosterURL() -> String {
        return ALFrameworkConfig.TMDBImageURL + posterPath
    }
    
}