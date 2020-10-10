//
//  SHMMAppInfo.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

public class SHMMAppInfo: Equatable {
    public static func == (lhs: SHMMAppInfo, rhs: SHMMAppInfo) -> Bool {
        let ref = (lhs.appId == rhs.appId) && (lhs.userId == rhs.userId) && (lhs.appPath == rhs.appPath)
        return ref
    }
    
    var appId: String = ""
    
    var userId: String = ""
    
    var appPath: String = ""
    
}
