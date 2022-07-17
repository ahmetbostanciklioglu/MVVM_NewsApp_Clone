//
//  Date+Ext.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import Foundation

extension Date {
    
    func convertToMonthDayYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.string(from: self)
    }
}
