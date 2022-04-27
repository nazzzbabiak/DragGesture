//
//  ContentView.swift
//  DragGesture
//
//  Created by Nazar Babyak on 25.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDragging = false
    @State private var position = CGSize.zero
    
    var body: some View {
        ZStack {
            Image(isDragging ? "aaa" : "bbb")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .animation(.spring(response: 0.9, dampingFraction: 0.2, blendDuration: 0.9))
            VStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.white)
                        .frame(width: 200)
                        .offset(x: position.width, y: position.height)

                    Circle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.yellow)
                        .frame(width: 180)
                        .offset(x: position.width, y: position.height)

                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.red)
                        .frame(width: 160)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.orange)
                        .frame(width: 140)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.blue)
                        .frame(width: 120)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.green)
                        .frame(width: 100)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.indigo)
                        .frame(width: 80)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.purple)
                        .frame(width: 60)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.mint)
                        .frame(width: 40)
                        .offset(x: position.width, y: position.height)
                    Circle()
                        .stroke(lineWidth: 5)

                        .foregroundColor(.cyan)
                        .frame(width: 20)
                        .offset(x: position.width, y: position.height)
//                    RoundedRectangle(cornerRadius: 25, style: .continuous)
//                        .padding()
//                        .foregroundColor(.white)
//                        .frame(width: 200, height: 300)
//                        .offset(x: position.width, y: position.height)
//                        .background(LinearGradient(colors:  [.red,.purple], startPoint: .top, endPoint: .bottom))
//                        .cornerRadius(25)
                        
                }
                
                .animation(.spring(response: 0.6, dampingFraction: 0.4))
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            position = value.translation
                            isDragging = true
                        })
                        .onEnded({ value in
                           // position = .zero
                            isDragging = false
                        }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
