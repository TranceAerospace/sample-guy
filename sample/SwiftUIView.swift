//
//  SwiftUIView.swift
//  sample
//
//  Created by Mark Trance on 4/18/23.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var model: SampleModel
    
    var body: some View {
        HStack {
            Text(model.title)
            Image(systemName: model.imageName)
            Toggle(isOn: $model.isToggled) {
                Text(model.isToggled ? "true" : "false")
            }
        }
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//   static let sampleModel = SampleModel(title: "Stuff", imageName: "gear", isToggled: false)
//
//    static var previews: some View {
//        SwiftUIView(model: .constant(sampleModel))
//    }
//}
