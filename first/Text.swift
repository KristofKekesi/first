//
//  Text.swift
//  first
//
//  Created by Kristof Kekesi on 04/07/2021.
//
import SwiftUI

struct TextPage: View {
    var body: some View {
        ScrollView {
            // .font
            VStack(alignment: .leading) {
                Text(".font").font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                VStack(alignment: .leading) {
                Group
                {
                    Text("Large Title").font(.largeTitle)
                    Text("Title").font(.title)
                    Text("Title 2").font(.title2)
                    Text("Title 3").font(.title3)
                    Divider().frame(width: 200.0)
                }
                    Group {
                    Text("Headline").font(.headline)
                    Text("Subheadline").font(.subheadline)
                        Divider().frame(width: 200.0)
                    }
                    Group {
                        Text("Callout").font(.callout)
                        Divider().frame(width: 200.0)
                        Text("Caption").font(.caption)
                        Text("Caption 2").font(.caption2)
                        Divider().frame(width: 200.0)
                    }
                    Text("Foot note").font(.footnote)
                    Divider().frame(width: 200.0)
                    Text("None").font(.none)
                }.padding().background(Color.white)
                .cornerRadius(6.0)
            }
            Text("Made with SwiftUI").font(.footnote)
        }.navigationTitle("Text")
    }
}

struct TextPage_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
