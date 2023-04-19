//
//  DetailView.swift
//  sample
//
//  Created by Mark Trance on 4/18/23.
//

import SwiftUI

struct DetailView: View {
    let passedText: String
    
    var body: some View {
        Text(passedText)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(passedText: "This is some text")
    }
}
