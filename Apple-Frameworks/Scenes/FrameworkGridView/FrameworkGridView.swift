//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 30/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink {
                        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework, isShowingDetailView: .constant(false)))
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
