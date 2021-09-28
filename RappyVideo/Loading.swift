//
//  Loading.swift
//  RappyVideo
//
//  Created by MacBook Pro on 25/9/21.
//

import Foundation
import SKActivityIndicatorView


public class Loading{
    

    public init(){
    
    }
    
    public static func show(){
        SKActivityIndicator.spinnerColor(UIColor(named: "Rojo")!)
        SKActivityIndicator.statusTextColor(UIColor(named: "Rojo")!)
        SKActivityIndicator.show("Loading...", userInteractionStatus: false)
    }
    
    public static func hide(){
        SKActivityIndicator.dismiss()
    }
    

}
