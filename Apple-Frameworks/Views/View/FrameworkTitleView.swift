//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 30/10/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        let framework = MockData.frameworks.first!
        
        FrameworkTitleView(framework: framework)
    }
}
