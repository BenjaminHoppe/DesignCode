//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Benjamin Hoppe on 2020-05-14.
//  Copyright © 2020 Benjamin Hoppe. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[1]
    var body: some View {
        List {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
    .listStyle(DefaultListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
