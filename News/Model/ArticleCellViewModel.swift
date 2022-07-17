//
//  ArticleCellViewModel.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import Foundation
import UIKit

class ArticleCellViewModel {
    let title: String
    let body: String
    let imageURL: URL?
    var imageData: Data? = nil
    
    init(title: String, body: String, imageURL: URL?) {
        self.title = title
        self.body = body
        self.imageURL = imageURL
    }
}

