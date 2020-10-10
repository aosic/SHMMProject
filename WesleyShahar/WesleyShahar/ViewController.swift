//
//  ViewController.swift
//  WesleyShahar
//
//  Created by aoxingkui on 2020/9/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


public class Algorithm {
    /// MA: 简单移动平均
    
    
    /// SMA 加权移动平均: Y=(M*X+(N-M)*Y')/N
    /// - Parameters:
    ///   - last: 上一次sma
    ///   - x: 观察值
    ///   - n: 观察周期
    ///   - m: 观察权重 默认为1
    /// - Returns: 本次sma
    static public func sma(_ last: Double, x: Double, n: Double, m: Double = 1) -> Double {
        return (m * x + (n - m) * last) / n
    }
    
    /// EMA指数平滑移动平均: Y = (X*2 + Y'*(N-1)) / (N+1)
    /// EMA(X, N) = SMA(X, N+1, 2)
    /// - Parameters:
    ///   - last: 上一次ema
    ///   - x: 观察值
    ///   - n: 观察周期
    /// - Returns: 本次ema
    static public func ema(_ last: Double, x: Double, n: Double) -> Double {
        return sma(last, x: x, n: n + 1, m: 2)
    }
    
    /// DMA: 动态移动平均
    ///  DMA(X, A)  Y = A * X + (1-A) * Y'
    /// - Parameters:
    ///   - last: 上一次dma
    ///   - x: 收盘价
    ///   - a: 换手率 必须小于1
    /// - Returns: 本次dma
    static public func dma(_ last: Double, x: Double, a: Double) -> Double {
        return (a * x + (1.0 - a) * last)
    }
}
