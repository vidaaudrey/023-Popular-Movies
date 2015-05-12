//
//  WKFrameworkConfig.swift
//  Apple Watch App
//
//  Created by Audrey Li on 5/10/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation

public struct ALFrameworkConfig {
    public static let NSUserDefaultSuiteName = "group.com.shomigo.AppleWatchBathCode"
    
    public static let printTitleFont =  UIFont (name: "HelveticaNeue-Bold", size: 20)
    public  static let cuttingBorderColor = UIColor.grayColor()
    static let maskBackgroundColor = UIColor.whiteColor()
    
    
    // Movie Rlated
    public static let OMDBAPIURLPrefix = "http://www.omdbapi.com/?s="
    public static let OMDBAPIKey = "97f4ef30 "
    //example: http://img.omdbapi.com/?i=tt2294629&apikey=97f4ef30
    public static let TMDBConfigurationURL = "http://private-anon-c1d8533ce-themoviedb.apiary-mock.com/3/configuration"
    public static let TMDBURLUpcoming = "http://api.themoviedb.org/3/movie/upcoming?api_key="
    public static let TMDBURLLatest = "http://api.themoviedb.org/3/movie/latest?api_key="
    public static let TMDBURLNowPlaying = "http://api.themoviedb.org/3/movie/now_playing?api_key="
    public static let TMDBURLPopular = "http://api.themoviedb.org/3/movie/popular?api_key="
    public static let TMDBURLTopRated = "http://api.themoviedb.org/3/movie/top_rated?api_key="
    public static let TMDBImageURL = "http://image.tmdb.org/t/p/w300"
    public static let TMDBKey = "87380c54ae472259aade42db22a24d89"
 
    
    //Google Place must enable both iOS and Server Key 
    public static let GooglePlaceAPIURLPrefix = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
    public static let GooglePlaceIOSAPIKey = "AIzaSyDsWN2Q2JoVNa8iXWmuaQhxaCXeq0GUxrs"
    public static let GooglePlaceServerAPIKey = "AIzaSyDxJvKhHoWiaW1egwjaS-IJL9tyaSqgxlg"
    public static let GooglePlacePhotoURLPrefix = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference="
    public static let GooglePlaceGetPlaceByIDURLPrefix = "https://maps.googleapis.com/maps/api/place/details/json?placeid="


}
