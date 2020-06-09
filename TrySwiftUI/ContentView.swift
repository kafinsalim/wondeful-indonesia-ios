//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Admin on 30/05/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Text("Hello World!").font(.title).foregroundColor(.orange)
            List {
                Text("im a list!")
                Text("im a list!")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Im A Button")
                }
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/36.0/*@END_MENU_TOKEN@*/)
                HStack {
                    Text("Horizon").foregroundColor(.red)
                    Text("Horizon").foregroundColor(.green)
                    Spacer()
                    Text("Horizon").foregroundColor(.blue)
                }

            }
            Text("Good bye World!")
        }.padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
