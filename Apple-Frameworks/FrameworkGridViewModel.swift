//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 03/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}
