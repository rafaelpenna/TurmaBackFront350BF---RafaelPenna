//
//  ModelGitGarage.swift
//  Teste API
//
//  Created by Rafael Penna on 21/04/23.
//

import Foundation

public struct DriversModel: Decodable {
    public let data: DriversData

    private enum CodingKeys: String, CodingKey {
        case data = "MRData"
    }
}

public struct DriversData: Codable {
    public let series: String
    public let url: String
    public let limit: String
    public let offset: String
    public let total: String
    public let standingsTable: StandingsTable

    private enum CodingKeys: String, CodingKey {
        case series
        case url
        case limit
        case offset
        case total
        case standingsTable = "StandingsTable"
    }
}

public struct StandingsTable: Codable {
    public let season: String?
    public let standingsList: [StandingsLists]

    private enum CodingKeys: String, CodingKey {
        case season
        case standingsList = "StandingsLists"
    }
}

public struct StandingsLists: Codable {
    public let season: String?
    public let driversStandings: [DriverStandings]

    private enum CodingKeys: String, CodingKey {
        case season
        case driversStandings = "DriverStandings"
    }
}

public struct DriverStandings: Codable {
    public let position: String
    public let points: String
    public let driver: Driver
    
    private enum CodingKeys: String, CodingKey {
        case position
        case points
        case driver = "Driver"
    }
}

public struct Driver: Codable {
    public let driverId: String
    public let code: String
    public let givenName: String
    public let familyName: String
    public let dateOfBirth: String
    public let nationality: String
    
    private enum CodingKeys: String, CodingKey {
        case driverId
        case code
        case givenName
        case familyName
        case dateOfBirth
        case nationality
    }
}
