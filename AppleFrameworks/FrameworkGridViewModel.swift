//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by ADIL RAMZAN on 30/07/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}
