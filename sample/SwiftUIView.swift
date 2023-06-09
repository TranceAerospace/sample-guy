    //
    //  SwiftUIView.swift
    //  sample
    //
    //  Created by Mark Trance on 4/18/23.
    //

import SwiftUI

struct SwiftUIView: View {
    @State var model: SampleModel2
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(model.title)
                Image(systemName: model.imageName)
                Toggle(isOn: $model.isToggled) {
                    Text(model.isToggled ? "true" : "false")
                }
            }
            
            NavigationLink {
                model.viewToCall.destinationView
            } label: {
                Text("Click for more")
            }
            
        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static let newModel = SampleModel2(title: "Stuff", imageName: "gear", isToggled: false, destination: .detail)
    
    static var previews: some View {
        SwiftUIView(model: newModel)
    }
}
