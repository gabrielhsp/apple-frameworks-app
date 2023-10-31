//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 30/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks, id: \.id) { framework in
                FrameworkTitleView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
