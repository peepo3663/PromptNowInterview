//
//  PNWeatherTableViewCellViewModel.swift
//  Prompt Now Interview
//
//  Created by Peter Beans on 1/11/23.
//

import Foundation

final class PNWeatherTableViewCellViewModel {
    var date: String
    var weatherName: String
    
    init?(with date: String, weatherName: String) {
        self.date = date
        self.weatherName = weatherName
    }
}
