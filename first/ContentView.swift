//
//  ContentView.swift
//  first
//
//  Created by Kristof Kekesi on 04/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var progress:Float = 0.0;
    @State private var progressTotal: Float = 100.0;
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
            Text("ProgressView")
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
                VStack(alignment: .center) {
                    Text("Reset").onTapGesture {
                        progress = 0.0;
                    }
                    .multilineTextAlignment(.center)
                }
            }
        }.padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
