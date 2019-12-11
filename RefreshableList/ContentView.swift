//
//  ContentView.swift
//  RefreshableList
//
//  Created by James on 2019/12/10.
//  Copyright © 2019 James. All rights reserved.
//

import SwiftUI

/*
var myatricle = Article(title: "title", author: "ANDY", data: "data", content: "content")
let rawTest1 = Article(title: "omae wa", author: "black", data: "2019/12/4", content: "幹林涼")
let rawTest2 = Article(title: "mou shindeiru", author: "dick", data: "2019/12/4", content: "老雞掰")
struct ArticleNewRow: View {
    var myatricle : Article
    var body: some View {
        HStack {
            Text("alahuagua")
            Text(myatricle.title)
            
        }
    }
}
 */

let rawTest1 = ArticleCell(title: "fucckkkrrert", content: "blackDick as long as you want, as hard as you desire")


struct ContentView: View {
    
    
    //@State var val = [rawTest1, rawTest2]
    @State private var isShowing = false
    
    var body: some View {
        /*
        ScrollView {
            VStack(spacing: 5) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        //.foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 400, height: 200)
                        .background(Color.gray)
                }
            }
        }
        */
        
        
        myScrollView(text_1: "what????", cell_1: rawTest1)
        
        
        /*
        VStack {
            myLable(text:"fuckkkk")
        }
        */
        
        
        
        
        
        
        /*
        List {
            Text("item 1")
            Text("item 2")
        }
        .background(PullToRefresh(action: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.isShowing = false
            }
        }, isShowing: $isShowing))
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
