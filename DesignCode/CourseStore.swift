//
//  CourseStore.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-06-20.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI
import Contentful

let client = Client(spaceId: "xdv68c28p3ti", accessToken: "htsCgPs3u_0yzddGF8AtXct5WZeDVkrXASqN5tsp1eY")

func getArray() {
    let query = Query.where(contentTypeId: "course")
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
}
