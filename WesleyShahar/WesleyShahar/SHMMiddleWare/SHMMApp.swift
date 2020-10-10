//
//  SHMMApp.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation
import UIKit

// 完成度 5%

public class SHMMApp: Equatable {
    
    var appInfo: SHMMAppInfo!
    
    public static func == (lhs: SHMMApp, rhs: SHMMApp) -> Bool {
        return lhs.appInfo == rhs.appInfo
    }
    
    public init(appInfo: SHMMAppInfo) {
        self.appInfo = appInfo
    }
    
    var manager: SHMMAppManager?
    
}

extension SHMMApp {
    
    public func startApp(entrance: UINavigationController, completion: (() -> Void)?) {
        
    }
    
    public func stopApp() {
        
    }
    
    public func onAppEnterForeground() {
        
    }
    
    public func onAppEnterBackground() {
        
    }
    
    public func isAppRoot(page: UIViewController) -> Bool {
        return false
    }
}
