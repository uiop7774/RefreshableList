//
//  ArticleRow.swift
//  RefreshableList
//
//  Created by James on 2019/12/11.
//  Copyright © 2019 James. All rights reserved.
//

import SwiftUI

struct ArticleRow: View {
    
    // var article : Article
    
    
    var body: some View {
        
        VStack(spacing: 5) {
            ForEach(0..<10) {
                Text("Item \($0)")
                    //.foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 400, height: 200)
                    .background(Color.gray)
            }
        }
        
        /*
        HStack {
            Text("balabala")
        }
        */
    }
}
