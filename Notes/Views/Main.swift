//
//  Main.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-05.
//

import SwiftUI

struct Main: View {
    
    
    // Hack for changing navigation bar appearance
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color.blue)]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.blue)]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("bgGray")
                .edgesIgnoringSafeArea([.top, .bottom])
            VStack {
                FoldersView()
                HStack {
                    Image(systemName: "folder.badge.plus")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                        .font(.system(size: 35))
                    Spacer()
                    Text("New Note")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .padding(.top, 8)
                    Image(systemName: "square.and.pencil")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                        .font(.system(size: 35))
                }
                .padding([.leading, .trailing, .top], 30)
                .frame(alignment: .bottom)
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
