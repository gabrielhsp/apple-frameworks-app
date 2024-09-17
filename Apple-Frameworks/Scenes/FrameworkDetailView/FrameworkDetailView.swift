//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 02/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            DismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "Learn More")
//            }
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                                isShowingDetailView: .constant(false)))
    }
}
