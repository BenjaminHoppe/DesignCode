//
//  PostList.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-06-20.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .onAppear {
                Api().getPosts { (posts) in
                    self.posts = posts
                }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
