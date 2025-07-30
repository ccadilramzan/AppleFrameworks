//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by ADIL RAMZAN on 30/07/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    let coloumns : [GridItem] = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())]
    //let coloumns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: coloumns) {
                    ForEach(MockData.frameworks, id: \.self) { framework in
                        FrameworkTitleView(framework: framework)
                        
                            .onTapGesture {
                            print(framework.name)
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .padding()
        }
    }
}
//struct FrameworkGridView: View {
//    @State private var selectedFramework: Framework? = nil
//    @State private var showingDetail = false
//    
//    let columns = Array(repeating: GridItem(.flexible()), count: 3)
//    
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns) {
//                ForEach(MockData.frameworks) { framework in
//                    FrameworkTitleView(framework: framework)
//                        .onTapGesture {
//                            selectedFramework = framework
//                            showingDetail = true
//                        }
//                }
//            }
//        }
//        .sheet(isPresented: $showingDetail) {
//            if let framework = selectedFramework {
//                FrameworkDetailView(framework: framework)
//            }
//        }
//    }
//}




struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView: View {
    
    //let name : String
    //let imageName : String
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
