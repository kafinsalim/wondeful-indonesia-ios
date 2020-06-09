//
//  Profile.swift
//  TrySwiftUI
//
//  Created by Admin on 07/06/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
                Image("me").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .shadow(radius: 16)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                Text("Kafin Salim")
                    .font(.title)
                    .padding(.vertical, 8)
                Text("Software Engineer, Bandung")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 64)
                Text("find out more on:").font(.subheadline)
                    .font(.subheadline).padding(.bottom, 24)
                
                HStack {
                    Text("Linkedin")
                        .foregroundColor(.blue)
                        .padding(.horizontal, 32)
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://www.linkedin.com/in/kafinsalim")!)
                    }
                    Spacer()
                    Text("Github")
                        .foregroundColor(.blue)
                        .padding(.horizontal, 32)
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://github.com/kafinsalim")!)
                    }
                }.padding(.horizontal, 48).padding(.bottom, 32)
                
                HStack {
                    Text("Twitter").foregroundColor(.blue)
                        .padding(.horizontal, 32)
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://twitter.com/kafinsalim")!)
                    }
                    Spacer()
                    Text("Blog").foregroundColor(.blue)
                        .padding(.horizontal, 32)
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://kafinsalim.xyz")!)
                    }
                }.padding(.horizontal, 48)
                
                Spacer()
            }
        }.navigationBarTitle(Text("About Developer"), displayMode: .inline)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
