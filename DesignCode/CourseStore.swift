//
//  CourseStore.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-06-20.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "xdv68c28p3ti", accessToken: "htsCgPs3u_0yzddGF8AtXct5WZeDVkrXASqN5tsp1eY")

func getArray(id: String, completion: @escaping([Entry])-> () ) {
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case.error(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                print(item.fields["title"] as! String)
            }
        }
    }
}
