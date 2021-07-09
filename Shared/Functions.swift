//
//  Functions.swift
//  SwiftUIApp
//
//  Created by Wayne Dixon on 7/9/21.
//

import Foundation

func getURLs(shuffle: Bool = false) -> [URL]
{
    var urls = [URL]()
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-crazy-ones.png")!)
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-halo.png")!)
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-orange-gradient.png")!)
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-psychedelic.png")!)
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-sketch.png")!)
    urls.append(URL(string: "http://wwritelite.app/images/icons/wwritelite-sun.png")!)
    
    if(shuffle == true) {
        urls.shuffle()
    }

    return urls
}
