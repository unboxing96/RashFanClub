//
//  NavigationBarArea.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//
import SwiftUI

struct NavigationBarArea: View {

    @State private var selectedPage = 0
    @StateObject var viewModel : ViewModel
    @State var leftPaddingForDay = 23.0
    @State var rightPaddingForDay = 350.0

    let numbers = [0,1,2,3,4,5,6,7]
    
    var body: some View {
        VStack(spacing: 0){
            CustomTopTabBar(selectedPage: $selectedPage)
                .frame(maxWidth: .infinity)
                .padding(.top, 10)
            
            ZStack{
                VStack(spacing: 0){
                    Spacer()
                        Divider()
                        .frame(height: 2.5)
                            .background(Color("FontGreen"))
                            .padding(.leading, leftPaddingForDay)
                            .padding(.trailing, rightPaddingForDay)
                }
                VStack{
                    Spacer()
                    Divider()
                        .frame(height: 1)
                        .background(Color("DividerGray"))
                }
            }
            
            TabView(selection: $selectedPage) {
//                ForEach(numbers, id: \.self) { number in
//                    AllDayView(viewModel: viewModel, selectedPage: $selectedPage).tag(number)
//                }
                // 미리 그려져있어야 하는데 이렇게 어떤식으로 할 수 있을까?
//
                MondayView(viewModel: viewModel).tag(0)
                TuesdayView(viewModel: viewModel).tag(1)
                WednesdayView(viewModel: viewModel).tag(2)
                ThursdayView(viewModel: viewModel).tag(3)
                FridayView(viewModel: viewModel).tag(4)
                SaturdayView(viewModel: viewModel).tag(5)
                SundayView(viewModel: viewModel).tag(6)
                NewView(viewModel: viewModel).tag(7)
                        }
                        .frame(width: .infinity, height: 800)
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                        .onChange(of: selectedPage) { newValue in
                            withAnimation{
                                switch selectedPage {
                                    case 0:
                                        leftPaddingForDay = 23.0
                                        rightPaddingForDay = 350.0
                                    case 1:
                                        leftPaddingForDay = 68.0
                                        rightPaddingForDay = 305.0
                                    case 2:
                                        leftPaddingForDay = 113.0
                                        rightPaddingForDay = 260.0
                                    case 3:
                                        leftPaddingForDay = 158.0
                                        rightPaddingForDay = 215.0
                                    case 4:
                                        leftPaddingForDay = 203.0
                                        rightPaddingForDay = 170.0
                                    case 5:
                                        leftPaddingForDay = 248.0
                                        rightPaddingForDay = 125.0
                                    case 6:
                                        leftPaddingForDay = 293.0
                                        rightPaddingForDay = 80.0
                                    case 7:
                                        leftPaddingForDay = 338.0
                                        rightPaddingForDay = 22.0
                                    default:
                                        leftPaddingForDay = 150.0
                                        rightPaddingForDay = 150.0
                                        
                                }
                            }
                        }
        }
    }
}




struct CustomTopTabBar: View {
    
    @Binding var selectedPage: Int
    
    var body: some View {
        ZStack{
            HStack(spacing: 30.79) {
                TabBarButton(text: "월", isSelected: .constant(selectedPage == 0))
                    .onTapGesture { onButtonTapped(index: 0) }
                TabBarButton(text: "화", isSelected: .constant(selectedPage == 1))
                    .onTapGesture { onButtonTapped(index: 1) }
                TabBarButton(text: "수", isSelected: .constant(selectedPage == 2))
                    .onTapGesture { onButtonTapped(index: 2) }
                TabBarButton(text: "목", isSelected: .constant(selectedPage == 3))
                    .onTapGesture { onButtonTapped(index: 3) }
                TabBarButton(text: "금", isSelected: .constant(selectedPage == 4))
                    .onTapGesture { onButtonTapped(index: 4) }
                TabBarButton(text: "토", isSelected: .constant(selectedPage == 5))
                    .onTapGesture { onButtonTapped(index: 5) }
                TabBarButton(text: "일", isSelected: .constant(selectedPage == 6))
                    .onTapGesture { onButtonTapped(index: 6) }
                TabBarButton(text: "신작", isSelected: .constant(selectedPage == 7))
                    .onTapGesture { onButtonTapped(index: 7) }
            }
        }
    }
    
    
    
    
    func onButtonTapped(index: Int) {
        withAnimation {
            selectedPage = index
        }
    }
    
}

    struct TabBarButton: View {
        let text: String
        @Binding var isSelected: Bool
        
        var body: some View {
            Text(text)
                .fontWeight(isSelected ? .heavy : .regular)
                .foregroundColor(isSelected ? Color("FontGreen") : .black)
                .font(.custom("Avenir", size: 16))
                .padding(.bottom,10)
        }
        
    }





extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
                overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}

struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            
            // divider position
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading:
                    return rect.minX
                case .trailing:
                    return rect.maxX - width
                }
            }

            // select position (.bottom 건들면 divider 아래로 감)
            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing:
                    return rect.minY
                case .bottom:
                    return rect.maxY - width
                }
            }

            //select width
            var w: CGFloat {
                switch edge {
                case .top, .bottom:
                    return rect.width
                case .leading, .trailing:
                    return self.width
                }
            }

            //divider height
            var h: CGFloat {
                switch edge {
                case .top, .bottom:
                    return self.width
                case .leading, .trailing:
                    return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}
