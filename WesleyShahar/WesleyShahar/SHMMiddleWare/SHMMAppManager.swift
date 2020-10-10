//
//  SHMMAppManager.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/10/10.
//

import Foundation

// 完成度99%

public class SHMMAppManager {
    
    public static let shared = SHMMAppManager()
    
    private var apps: [SHMMApp] = []
    
    private init () {
        
    }
}


extension SHMMAppManager {
    
    public func add(app: SHMMApp) {
        apps.append(app)
    }
    
    public func remove(app: SHMMApp) {
        guard !apps.isEmpty else {
            return
        }
        let unkownIndex = -1
        var deleteIndex = unkownIndex
        for (index, item) in apps.enumerated() {
            if item == app {
                deleteIndex = index
            }
        }
        guard deleteIndex != unkownIndex else {
            return
        }
        apps.remove(at: deleteIndex)
        
        if apps.count <= 0 {
            clearnAndPrepareQuit()
        }
    }
    
    public func isAppRunning(appId: String) -> Bool {
        for item in apps {
            if item.appInfo.appId == appId {
                return true
            }
        }
        return false
    }
    
    public func currentLaunchApp() -> SHMMApp? {
        return apps.last
    }
    
    private func clearnAndPrepareQuit() {
        // 清理所有 loading框
        // loadingview removeall
        
        // 注销 schema 拦截
//        URLProtocol wk_unregisterScheme wdfile
    }
}
