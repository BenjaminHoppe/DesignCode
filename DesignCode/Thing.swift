//
//  Thing.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-05-23.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct Thing: View {
    var body: some View {
        VStack {
            Image("Card3")
            .resizable()
                .frame(width: 80.0, height: 80.0)
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                      }
    }
}

struct Thing_Previews: PreviewProvider {
    static var previews: some View {
        Thing()
    }
}
