//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 02/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    print("Dismiss button")
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print(framework.urlString)
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
