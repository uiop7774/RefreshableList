//
//  CustomList.swift
//  RefreshableList
//
//  Created by James on 2019/12/10.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation
import SwiftUI
/*
struct myLable: UIViewRepresentable {
    
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<myLable>) -> UILabel {
        let myLabel = UILabel()
        myLabel.text = text
        return myLabel
    }
    
    func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<myLable>) {
        //
    }
}
 */


struct myScrollView: UIViewRepresentable{
    
    var text_1: String
    //var text_2: String
    
    var cell_1: ArticleCell
    //var cell_2: ArticleCell
    
    
    class Coordinator: NSObject, UIScrollViewDelegate{
        
        var control: myScrollView
        
        init(_ control: myScrollView) {
            self.control = control
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("sucesss")
        }
        
        @objc func handleRefresh(sender: UIRefreshControl){
            print("done")
            sender.endRefreshing()
        }
        
    }
     
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
        
    func makeUIView(context: UIViewRepresentableContext<myScrollView>) -> UIScrollView {
        
        let control = UIScrollView()
        
        
        
        control.refreshControl = UIRefreshControl()
        control.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefresh), for: .valueChanged)
        
        // Simply to give some content to see in the app
        //let mainScrollView = UIScrollView(frame:  CGRect(x: 0, y: 0, width: 200, height: 200))
        
        let myLabel_1 = UILabel(frame:  CGRect(x: 0, y: 0, width: 300, height: 50))
        myLabel_1.text = text_1
        control.addSubview(myLabel_1)
        
        cell_1.addTitle()
        cell_1.addContent()
        control.addSubview(cell_1)
        
        
        //let myLabel_2 = UILabel(frame:  CGRect(x: 0, y: 0, width: 300, height: 50))
        //myLabel_2.text = text_2
        //control.addSubview(myLabel_2)
        
        /*
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        label.text = "Scroll View Content"
        control.addSubview(label)
        */

        return control
        
    }
    
    func updateUIView(_ uiView: UIScrollView, context: UIViewRepresentableContext<myScrollView>) {
        //
    }
    
    
}
