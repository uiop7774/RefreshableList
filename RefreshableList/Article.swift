//
//  Article.swift
//  RefreshableList
//
//  Created by James on 2019/12/11.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation
import SwiftUI

struct Article: Hashable, Codable, Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var data: String
    var content: String
}
