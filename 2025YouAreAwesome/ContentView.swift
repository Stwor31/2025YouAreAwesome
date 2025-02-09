//
//  ContentView.swift
//  2025YouAreAwesome
//
//  Created by Steph on 8/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var messageArray = ["You are fabulous", "Look at you go", "You are Awesome"]
    
//    @State private var imageName = ["image0","image1","image2","image3","image4","image5","image6","image7","image8","image9","image10"]
    
    @State private var imageName = ""
    
    @State private var imageNumber = 0
    @State private var message = ""

    
    var body: some View {
        VStack {
            Spacer()
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .foregroundStyle(.indigo)
            Spacer()
            Button("Show message ") {
//                imageNumber+=1
//                message = messageArray.randomElement() ?? ("No message in array")
//                if imageNumber == imageName.count {
//                    imageNumber = 0
//                }
                imageName = "image\(Int.random(in: 0...9))"
                message = messageArray[Int.random(in: 0..<messageArray.count-1)]
                imageNumber = (Int.random(in: 0...9))
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
            
            }
        .padding()
        }
    
}


#Preview {
    ContentView()
}
