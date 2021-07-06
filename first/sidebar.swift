//
//  sidebar.swift
//  first
//
//  Created by Kristof Kekesi on 05/07/2021.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                //Caption
                Text("SwiftUI")
                //Navigation links
                //Replace "ContentView" with your destination
                Group{
                    NavigationLink(destination: TextPage()) {
                        Label("Text", systemImage: "keyboard")
                    }
                    NavigationLink(destination: ProgressViewPage()) {
                        Label("ProgressView", systemImage: "clock")
                    }
                    NavigationLink(destination: ColorsPage()) {
                        Label("Colors", systemImage: "pencil")
                    }
                    NavigationLink(destination: TextPage()) {
                        Label("SF Symbol", systemImage: "rotate.3d")
                    }
                }
                Spacer()
                //Divider also looks great!
                Divider()
                NavigationLink(destination: TextPage()) {
                    Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Explore")
            //Set Sidebar Width (and height)
            .frame(minWidth: 150, idealWidth: 250, maxWidth: 300)
            .toolbar{
                //Toggle Sidebar Button
                ToolbarItem(placement: .navigation){
                    Button(action: toggleSidebar, label: {
                        Image(systemName: "sidebar.left")
                    })
                }
            }
            //Default View on Mac
            TextPage()
        }
    }
}

// Toggle Sidebar Function
func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
