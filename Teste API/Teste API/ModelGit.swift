//
//  ModelGit.swift
//  Teste API
//
//  Created by Rafael Penna on 19/04/23.
//

import Foundation

public struct Pilot: Codable {
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
    public let driverTable: DriverTable

    private enum CodingKeys: String, CodingKey {
        case series
        case url
        case limit
        case offset
        case total
        case driverTable = "DriverTable"
    }
}

public struct DriverTable: Codable {
    public let season: String?
    public let drivers: [Drivers]

    private enum CodingKeys: String, CodingKey {
        case season
        case drivers = "Drivers"
    }
}

public struct Drivers: Codable {
    public let driverId: String
    public let permanentNumber: String
    public let code: String
    public let url: String
    public let givenName: String
    public let familyName: String
    public let dateOfBirth: String
    public let nationality: String
    
    private enum CodingKeys: String, CodingKey {
        case driverId
        case permanentNumber
        case code
        case url
        case givenName
        case familyName
        case dateOfBirth
        case nationality
    }
}

