//
//  TestView.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/23.
//

import SwiftUI

struct DetectScrollPosition: View {
    @State private var scrollPosition: CGPoint = .zero
    @State private var isModal : Bool = false
    @GestureState private var dragOffset: CGFloat = 0
    
    var body: some View {

        NavigationView {
            ScrollView {
                VStack {
                    ForEach((1...50), id: \.self) { row in
                        Text("Row \(row)")
                            .frame(height: 30)
                            .id(row)
                    }
                }
                .background(GeometryReader { geometry in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollPosition = value
                }
            }
            .coordinateSpace(name: "scroll")
            .navigationTitle("Scroll offset: \(scrollPosition.y)")
            .navigationBarTitleDisplayMode(.inline)
        }
        .gesture(
            DragGesture()
                .onChanged({ DragGesture.Value in
                    print(DragGesture.value)
                })
//                .updating($dragOffset) { value, out, _ in
//                    out = value.translation.width
//                }
//                .onEnded { value in
//                    print(dragOffset)
//                }
        )
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}

struct DetectScrollPosition_Previews: PreviewProvider {
    static var previews: some View {
        DetectScrollPosition()
    }
}
