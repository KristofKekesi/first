//
//  ProgressView.swift
//  first
//
//  Created by Kristof Kekesi on 04/07/2021.
//

import SwiftUI

struct ProgressViewPage: View {
    @State private var progress:Float = 20.0;
    @State private var progressTotal: Float = 100.0;
    
    var body: some View {
        ScrollView {
            // value
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("value").font(.title).padding(.leading)
                .multilineTextAlignment(.leading)
                HStack {
                    ProgressView(value: progress, total: progressTotal)
                        Button("+") {
                            if progress < progressTotal {
                                progress += 10
                            }
                    }
                }.padding()
                .background(Color.white)
                .cornerRadius(6.0)
                }
                    Text("Reset").onTapGesture {
                        progress = 20.0;
                    }
                    .multilineTextAlignment(.center)
                Text("Made with SwiftUI").font(.footnote).padding(.top)
            }.padding()
        }.navigationTitle("ProgressView")
        }
    }

struct ProgressViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewPage()
    }
}
