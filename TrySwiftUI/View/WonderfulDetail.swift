//
//  WonderfulDetail.swift
//  TrySwiftUI
//
//  Created by Admin on 07/06/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import SwiftUI

struct WonderfulDetail: View {
    let wonder: Wonder
    @State private var favorited = false
    @State private var zoomed = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Image(wonder.imageName)
                    .resizable()
                    .aspectRatio(contentMode: zoomed ? .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            self.zoomed.toggle()
                        }
                }
                VStack {
                    HStack {
                        Text("tap to image to zoom or tap star to add favorites")
                            .padding(4)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: favorited ? "star.fill" : "star").onTapGesture {
                            withAnimation {
                                self.favorited.toggle()
                            }
                        }
                    }.padding(.horizontal, 16)
                    Text(wonder.description).padding(16)
                }.frame(width: UIScreen.main.bounds.width)
            }
            .frame(width: UIScreen.main.bounds.width)
            .navigationBarTitle(Text(wonder.name), displayMode: .inline)
        }
    }
}

#if DEBUG
struct WonderfulDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { WonderfulDetail(wonder: wonderfulData[0]) }
    }
}
#endif
