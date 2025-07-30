//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by ADIL RAMZAN on 30/07/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    var body: some View {
        VStack() {
            
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework:framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
//                if let url = URL(string: framework.urlString) {
//                    UIApplication.shared.open(url)
//                }
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework)
//}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}

