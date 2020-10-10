//
//  SHMMApiRequest.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

public class SHMMApiRequest {
    
    public var command: String?
    
    public var param: [String: Any]?
    
    public var callBack: (([String: Any]) -> Void)?
}
