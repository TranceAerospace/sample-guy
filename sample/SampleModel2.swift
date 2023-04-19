//
//  SampleModel2.swift
//  sample
//
//  Created by Mark Trance on 4/18/23.
//

import SwiftUI

class SampleModel2: ObservableObject, Identifiable {
    
    @Published var title: String
    @Published var imageName: String
    @Published var isToggled: Bool
    @Published var description: String
    
    init(title: String, imageName: String, isToggled: Bool, description: String) {
        self.title = title
        self.imageName = imageName
        self.isToggled = isToggled
        self.description = description
    }
}

extension SampleModel2 {
    static let examples2: [SampleModel2] = [
        .init(title: "Notification1", imageName: "gear", isToggled: false, description: "Description for first notification"),
        .init(title: "Notification2", imageName: "gear", isToggled: true, description: "Description for 2nd notification"),
        .init(title: "Notification3", imageName: "gear", isToggled: false, description: "Description for 3rd notification"),
     
        
    ]
}
