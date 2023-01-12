//
//  ContentView.swift
//  Prompt Now Interview
//
//  Created by Peter Beans on 1/11/23.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        List {
//            ForEach(0...8) { _ in
//
//            }
//        }
//    }
//}

struct CellView: View {
    private let date: String
    private let image: Image?
    private let weatherName: String
    
    init?(date: String, weatherName: String, image: Image?) {
        self.date = date
        self.weatherName = weatherName
        self.image = image
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 8) {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                        } label: {
                            Text("Show More")
                                .padding(10)
                                .bold()
                        }
                        .tint(Color.white)
                        .background(Color.orange)
                        .cornerRadius(8)
                    }
                    .padding([.trailing], 8)
                }
                .padding([.top, .bottom], 8)
            }
        }
        .padding(8)
        .background(Color.blue)
        .cornerRadius(8)
        .shadow(radius: 4, x: 2, y: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
