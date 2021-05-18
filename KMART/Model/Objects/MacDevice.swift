//
//  MacDevice.swift
//  KMART
//
//  Created by Nindi Gill on 15/2/21.
//

import Foundation

struct MacDevice: Codable {
    // swiftlint:disable:next identifier_name
    var id: Int = -1
    var name: String = ""
    var serialNumber: String = ""
    let general: General
    var lastCheckIn: Double = -1
    var lastInventory: Double = -1
    var building: String = ""
    var department: String = ""
    var dictionary: [String: Any] {
        [
            "id": id,
            "name": name,
            "serial_number": serialNumber
        ]
    }

    struct General: Codable {
        let remoteManagement: RemoteManagement
    
        enum CodingKeys: String, CodingKey {
            case remoteManagement = "remote_management"
        }
    }
    
    struct RemoteManagement: Codable {
        var managed: Bool = false
    }
}
