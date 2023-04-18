    //
    //  ContentView.swift
    //  sample
    //
    //  Created by Mark Trance on 4/18/23.
    //

import SwiftUI

struct ContentView: View {
    
    @State private var sampleModel = SampleModel.examples
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0..<sampleModel.count, id: \.self) { i in
                        SwiftUIView(model: $sampleModel[i])
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
