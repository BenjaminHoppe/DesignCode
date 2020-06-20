//
//  DataStore.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-06-20.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
