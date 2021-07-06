//
//  Colors.swift
//  first
//
//  Created by Kristof Kekesi on 06/07/2021.
//

import SwiftUI

struct ColorsPage: View {
    let colors: [Color] = [.pink, .red, .orange, .yellow, .green, .blue, .purple, .gray, .black, .white, .clear]
    
    var body: some View {
        ScrollView {
            // Defaults
            VStack(alignment: .leading) {
                Text("Defaults").font(.title)
                    .padding([.leading, .top])
                VStack(alignment: .leading) {
                    ForEach(colors, id: \.self) { color in
                        if color == .white || color == .clear {
                            HStack {
                                VStack {}.frame(width: 20, height: 20).background(color).overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                            Text(color.description.capitalized)
                                .padding(.leading).font(.subheadline)
                            }.padding(.top)
                        } else {
                            HStack {
                            VStack {}.frame(width: 20, height: 20).background(color).cornerRadius(6)
                            Text(color.description.capitalized)
                                .padding(.leading).font(.subheadline)
                            }.padding(.top)
                        }
                    }.padding(.bottom)
                    Divider().frame(width: 200.0)
                        Text("Made with SwiftUI").font(.footnote)
                }.padding([.leading, .trailing, .bottom]).background(Color.white)
                .cornerRadius(6).padding([.leading, .trailing, .bottom])
            }.frame(maxWidth: .infinity)
        }.navigationTitle("Colors")
    }
}

struct ColorsPage_Previews: PreviewProvider {
    static var previews: some View {
        ColorsPage()
    }
}
