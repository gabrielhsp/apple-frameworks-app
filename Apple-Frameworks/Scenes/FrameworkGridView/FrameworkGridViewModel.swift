//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Gabriel Pereira on 03/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
