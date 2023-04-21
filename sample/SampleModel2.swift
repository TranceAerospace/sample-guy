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
        //@Published var description: String
    @Published var viewToCall: destination
    
    
    init(title: String, imageName: String, isToggled: Bool, destination: destination) {
        self.title = title
        self.imageName = imageName
        self.isToggled = isToggled
            //self.description = description
        self.viewToCall = destination
    }
}

extension SampleModel2 {
    static let examples2: [SampleModel2] = [
        .init(title: "Notification1", imageName: "gear", isToggled: false, destination: .detail),
        .init(title: "Notification2", imageName: "gear", isToggled: true, destination: .settings),
        //.init(title: "Notification3", imageName: "gear", isToggled: false, description: "Description for 3rd notification"),
        
        
    ]
}


enum destination {
    case detail
    case settings
    
    @ViewBuilder var destinationView: some View {
        switch self {
            case .detail: DetailView()
            case .settings: SettingsView()
        }
    }
}
