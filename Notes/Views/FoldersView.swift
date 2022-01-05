//
//  FoldersView.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import SwiftUI

struct FoldersView: View {
    let twoColumnGrid = [GridItem(.flexible())]
    let cellModels = [
        WideCellModel(headerColour: .blue, headerText: "iCloud"),
        WideCellModel(headerColour: .yellow, headerText: "Local"),
        WideCellModel(headerColour: .red, headerText: "Mail"),
    ]
    @State var searchbarText = ""

    
    var body: some View {
        ZStack {
            Color("bgGray")
                .edgesIgnoringSafeArea([.top, .bottom])
            VStack {
                Spacer()
                NavigationView {
                    ZStack {
                        Color("bgGray").edgesIgnoringSafeArea(.all)
                        LazyVGrid(columns: twoColumnGrid, spacing: 20) {
                            ForEach(cellModels, id: \.self) { item in
                                NavigationLink(destination: ContentView()) {
                                    WideCell(item)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding()
                        .navigationTitle("Folders")
                        .foregroundColor(.blue)
                        .searchable(text: $searchbarText)
                        .frame(maxHeight: 500, alignment: .top)
                        .background(Color("bgGray"))
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FoldersView_Previews: PreviewProvider {
    static var previews: some View {
        FoldersView()
    }
}
