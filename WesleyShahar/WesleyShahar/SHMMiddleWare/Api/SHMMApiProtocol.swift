//
//  SHMMApiProtocol.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation


public protocol SHMMApiProtocol: class {
    
    func didReceiveHybridApi(request: SHMMApiRequest)
}
