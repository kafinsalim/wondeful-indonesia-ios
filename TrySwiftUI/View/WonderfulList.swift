//
//  WonderList.swift
//  TrySwiftUI
//
//  Created by Admin on 07/06/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import SwiftUI

struct WonderfulList: View {
    var wonders: [Wonder] = wonderfulData
    
    fileprivate func extractedFunc() -> NavigationLink<Text, Profile> {
        return NavigationLink(destination: Profile()) {
            Text("about")
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                List(wonders) { wonder in
                    WonderfulItem(wonder: wonder)
                }
            }.navigationBarTitle(Text("Wonderful Indonesia"))
                .navigationBarItems(
                    trailing: extractedFunc()
            )
        }
    }
}

struct WonderfulList_Previews: PreviewProvider {
    static var previews: some View {
        WonderfulList(wonders: wonderfulData)
    }
}

struct WonderfulItem: View {
    let wonder: Wonder
    
    var body: some View {
        NavigationLink(destination: WonderfulDetail(wonder: wonder)) {
            Image(wonder.thumbnailName).cornerRadius(16).padding(10)
            VStack(alignment: .leading) {
                Text(wonder.name)
                Text(wonder.branding)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
