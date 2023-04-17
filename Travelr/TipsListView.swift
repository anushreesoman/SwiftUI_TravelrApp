//
//  TipsListView.swift
//  Travelr
//
//  Created by Anushree Soman on 4/17/23.
//

import SwiftUI

struct TipsListView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(tip.text,systemImage: "quote.bubble")
            } else {
                Text(tip.text)
            }
        }
    }
}

struct TipsListView_Previews: PreviewProvider {
    static var previews: some View {
        TipsListView()
    }
}
