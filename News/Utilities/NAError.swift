//
//  NAError.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import Foundation

enum NAError: String, Error {
    case invalidKeyword = "This keyword created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this article. Please try again."
    case alreadyInFavorites = "You've already favorited this article."
}
