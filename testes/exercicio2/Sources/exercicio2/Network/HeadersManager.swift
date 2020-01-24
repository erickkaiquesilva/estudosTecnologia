//
//  HeadersManager.swift
//  exercicio2
//
//  Created by Erick Kaique Da Silva on 22/11/19.
//

import Foundation

public struct HeadersManager {

    static var defaultHeaders: [String: String] {
        return ["Content-Type": "application/json",
                "OS": DeviceHelper.systemName,
                "OS_Release": DeviceHelper.systemVersion,
                "Model": DeviceHelper.model,
                "Brand": DeviceHelper.brand,
                "Version_Code": DeviceHelper.versionCode,
                "Version_Name": DeviceHelper.versionName,
                "Device-Id": DeviceHelper.fingerprint
        ]
    }
}
