//
//  ContentView.swift
//  Shared
//
//  Created by Wayne Dixon on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var urls = getURLs()
    var body: some View {        
        List {
            ForEach(urls, id: \.self ) { url in
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200, alignment: .center)
                .border(Color.teal)
            }
        }
        .navigationTitle("wwriteLite App Icons")
        .refreshable {
            print("Do your refresh work here")
            await refreshURLs()
        }
    }
    
    func refreshURLs() async {
        urls = getURLs(shuffle: true)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
