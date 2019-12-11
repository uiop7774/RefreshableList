//
//  ArticleCell.swift
//  RefreshableList
//
//  Created by James on 2019/12/11.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation
import SwiftUI

class ArticleCell: UIView {
    
    /*
    var center_X: Int
    var center_Y: Int
    */
    
    var title: String
    var content: String
    
    init(title:String, content:String) {
        
        print("in")
        self.title = title
        self.content = content
        
        super.init(frame: CGRect(x:0 ,y: 0, width: 380, height: 200))
        self.backgroundColor = UIColor.red
        self.center = CGPoint(x: 205, y: 150)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onLabelTap(tapGestureRecognizer:)) )
        self.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addTitle(){
        
        let textLabel = UILabel()
        textLabel.frame = CGRect(x:0, y: 0, width: 340, height: 50)
        textLabel.center = CGPoint(x: 190, y: 30)
        textLabel.text = title
        textLabel.textColor = UIColor.black
        textLabel.backgroundColor = UIColor.white
        self.addSubview(textLabel)
        
    }
    
    func addContent(){
        let textLabel = UILabel()
        textLabel.frame = CGRect(x:0, y: 0, width: 340, height: 100)
        textLabel.center = CGPoint(x: 190, y: 125)
        textLabel.text = content
        textLabel.textColor = UIColor.black
        textLabel.backgroundColor = UIColor.white
        self.addSubview(textLabel)
    }
    
    @objc func onLabelTap(tapGestureRecognizer: UITapGestureRecognizer) {
        print("owiejrtoijiodsjiofjoidsjf")
    }
    
}


