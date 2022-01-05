//
//  NarrowCellModel.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import Foundation
import SwiftUI

struct NarrowCellModel: Codable, Hashable{
    
    var titleColour: Color
    var titleText: String
    var iconName: String
    var iconColour: Color
    var notes: [Note] = []
    var notesCount: Int = 0
    init(titleColour: Color = Color("lightGray"), titleText: String = "Notes", iconName: String = "folder.fill", iconColour: Color = .blue) {
        self.titleColour = titleColour
        self.titleText = titleText
        self.iconName = iconName
        self.iconColour = iconColour
        self.notesCount = notes.count
    }
}
