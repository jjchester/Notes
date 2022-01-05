//
//  ContentView.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import SwiftUI

struct ContentView: View {
    
    let twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    let cells = Array(1...5)
    var body: some View {
        ZStack(alignment: .top) {
            Color("bgGray")
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    WideCell()
                    Spacer()
                    ScrollView {
                        LazyVGrid(columns: twoColumnGrid, spacing: 10) {
                            ForEach(cells, id: \.self) { item in
                                NarrowCell()
                            }
                        }
                        .frame(maxHeight: 500, alignment: .bottomLeading)
                    }
                }
                .padding(.horizontal, 32)

//                .frame(maxHeight: 380, alignment: .bottomTrailing)
//                .padding(.bottom, -300)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
