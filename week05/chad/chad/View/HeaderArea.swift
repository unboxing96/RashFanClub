import SwiftUI

//ScrollView Paging

//ScrollView로 구현 불가능해서 GeometryReader로 offset 잡아서 해야딤...
// 시간없어서 못함. ㅎ

struct HeaderArea: View {
    @State private var currentPage: Int = 0
    @State var scrollPosition: CGPoint = .zero
    
    @State var image1Opacity : Double = 0.0
    @State var image2Opacity : Double = 0.0
    @State var image3Opacity : Double = 0.0
    @State var image4Opacity : Double = 0.0
    @State var image5Opacity : Double = 0.0
    @State var image6Opacity : Double = 0.0
    @State var image7Opacity : Double = 0.0
    @State var image8Opacity : Double = 0.0
    
    
    var body: some View {
        ZStack{
            ZStack{
                Image("ImgBanner08")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image8Opacity)
                Image("ImgBanner07")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image7Opacity)
                Image("ImgBanner06")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image6Opacity)
                Image("ImgBanner05")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image5Opacity)
                Image("ImgBanner04")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image4Opacity)
                Image("ImgBanner03")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image3Opacity)
                Image("ImgBanner02")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image2Opacity)
                Image("ImgBanner01")
                    .resizable()
                    .frame(width: .infinity)
                    .opacity(image1Opacity)
            }
            
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(1..<9) { pageNumber in
                            HStack(){
                                VStack{
                                    Spacer()
                                    Image("ImgLineBanner0\(pageNumber)")
                                        .resizable()
                                        .frame(width: geometry.size.width - 40, height: 41)
                                        .padding(.horizontal)
                                }
                            }
                            .frame(width: geometry.size.width)
                        }
                    }
                    
                    .background(GeometryReader { geometry in
                        Color.clear
                            .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                    })
                    .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                        self.scrollPosition = value

                        image1Opacity = opacityOff(position: scrollPosition.x, index: 0.0)
                        image2Opacity = opacityOn(position: scrollPosition.x, index: 0.0)
                        image2Opacity = opacityOff(position: scrollPosition.x, index: 1.0)
                        image3Opacity = opacityOn(position: scrollPosition.x, index: 1.0)
                        image3Opacity = opacityOff(position: scrollPosition.x, index: 2.0)
                        image4Opacity = opacityOn(position: scrollPosition.x, index: 2.0)
                        image4Opacity = opacityOff(position: scrollPosition.x, index: 3.0)
                        image5Opacity = opacityOn(position: scrollPosition.x, index: 3.0)
                        image5Opacity = opacityOff(position: scrollPosition.x, index: 4.0)
                        image6Opacity = opacityOn(position: scrollPosition.x, index: 4.0)
                        image6Opacity = opacityOff(position: scrollPosition.x, index: 5.0)
                        image7Opacity = opacityOn(position: scrollPosition.x, index: 5.0)
                        image7Opacity = opacityOff(position: scrollPosition.x, index: 6.0)
                        image8Opacity = opacityOn(position: scrollPosition.x, index: 6.0)
                    
                        print(value)
//
//                        //FirstSlide
//                        image1Opacity = findCertainOpacityOff(position: scrollPosition.x)
//                        image2Opacity = findCertainOpacityOn(position: scrollPosition.x)
//                        //SecondSlide
//                        image2Opacity = findCertainOpacityOff2(position: scrollPosition.x)
//                        image3Opacity = findCertainOpacityOn2(position: scrollPosition.x)
//                        //ThirdSlide
//                        image3Opacity = findCertainOpacityOff3(position: scrollPosition.x)
//                        image4Opacity = findCertainOpacityOn3(position: scrollPosition.x)
//                        //FourthSlide
//                        image4Opacity = findCertainOpacityOff4(position: scrollPosition.x)
//                        image5Opacity = findCertainOpacityOn4(position: scrollPosition.x)
//                        //FifthSlide
//                        image5Opacity = findCertainOpacityOff5(position: scrollPosition.x)
//                        image6Opacity = findCertainOpacityOn5(position: scrollPosition.x)
//                        //SixthSlide
//                        image6Opacity = findCertainOpacityOff6(position: scrollPosition.x)
//                        image7Opacity = findCertainOpacityOn6(position: scrollPosition.x)
//                        //SeventhSlide
//                        image7Opacity = findCertainOpacityOff7(position: scrollPosition.x)
//                        image8Opacity = findCertainOpacityOn7(position: scrollPosition.x)
//
                        
                    }
                    .onAppear {
                        UIScrollView.appearance().isPagingEnabled = true
                    }
                    
                }
                .coordinateSpace(name: "scroll")
            }
        }
        .frame(height: 250)
       
    }
    
    
    func opacityOff(position : Double, index : Double) -> Double{
        var opacity : Double = 0.0
        opacity = (position+(index * 393.0)) / 393.0 + 1.0
        return opacity
    }
    func opacityOn(position : Double, index : Double) -> Double{
        var opacity : Double = 0.0
        opacity = -(position+(index * 393.0)) / 393.0 + 1.0
        return opacity
    }
    
//
//    //First Slide
//    func findCertainOpacityOff(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = position / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -position / 393.0 + 1.0
//        return opacity
//    }
//
//    //Second Slide
//    func findCertainOpacityOff2(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+393.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn2(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+393.0) / 393.0 + 1.0
//        return opacity
//    }
//
//    //Third Slide
//    func findCertainOpacityOff3(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+786.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn3(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+786.0) / 393.0 + 1.0
//        return opacity
//    }
//
//    //Fourth Slide
//    func findCertainOpacityOff4(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+1179.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn4(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+1179.0) / 393.0 + 1.0
//        return opacity
//    }
//
//    //Fifth Slide
//    func findCertainOpacityOff5(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+1572.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn5(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+1572.0) / 393.0 + 1.0
//        return opacity
//    }
//
//    //Sixth Slide
//    func findCertainOpacityOff6(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+1965.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn6(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+1965.0) / 393.0 + 1.0
//        return opacity
//    }
//
//    //Seventh Slide
//    func findCertainOpacityOff7(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = (position+2358.0) / 393.0 + 1.0
//        return opacity
//    }
//    func findCertainOpacityOn7(position : Double) -> Double{
//        var opacity : Double = 0.0
//        opacity = -(position+2358.0) / 393.0 + 1.0
//        return opacity
//    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}


