//
//  IBeacon.swift
//  KMART
//
//  Created by Nindi Gill on 16/2/21.
//

import Foundation

struct IBeacon: Codable {
    // swiftlint:disable:next identifier_name
    var id: Int = -1
    var name: String = ""
    var dictionary: [String: Any] {
        [
            "id": id,
            "name": name
        ]
    }
}