//
//  ContentView.swift
//  ZoomAspectRatio
//
//  Created by Ramill Ibragimov on 17.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var zoomed = false
    var body: some View {
        Image("dims")
        .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture {
                self.zoomed.toggle()
        }.animation(.easeInOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
