//
//  APIResponse.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import Foundation

struct APIResponse: Codable {
    let articles: [Article]
}
