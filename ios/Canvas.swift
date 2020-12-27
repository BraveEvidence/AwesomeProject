//
//  Canvas.swift
//  AwesomeProject
//
//  Created by Pritish Sawant on 27/12/20.
//

import Foundation

@objc(Canvas)
class Canvas: RCTViewManager {
  override func view() -> UIView! {
    return CanvasView()
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
