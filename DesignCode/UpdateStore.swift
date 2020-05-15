//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-05-14.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
