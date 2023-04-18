//
//  SampleModel.swift
//  sample
//
//  Created by Mark Trance on 4/18/23.
//

import Foundation

struct SampleModel {
    let title: String
    let imageName: String
    var isToggled: Bool
}

extension SampleModel {
    static let examples: [SampleModel] = [
        .init(title: "Notification1", imageName: "gear", isToggled: false),
        .init(title: "Notification2", imageName: "gear", isToggled: true),
        .init(title: "Notification3", imageName: "gear", isToggled: false)
    
    ]
}
