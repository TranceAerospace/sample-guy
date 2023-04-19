    //
    //  ContentView.swift
    //  sample
    //
    //  Created by Mark Trance on 4/18/23.
    //

import SwiftUI

struct ContentView: View {
    
    var sampleModels = ModelStore()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(sampleModels.allModels) { item in
                        SwiftUIView(model: item)
                    }
                }
                .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
