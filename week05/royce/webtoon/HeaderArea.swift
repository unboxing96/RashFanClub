
import SwiftUI

struct HeaderArea: View {
    
    
    let HeaderImages = ["ImgBanner01", "ImgBanner02", "ImgBanner03", "ImgBanner04", "ImgBanner05", "ImgBanner06", "ImgBanner07", "ImgBanner08"]
    let LineBannerImages = ["ImgLineBanner01", "ImgLineBanner02", "ImgLineBanner03", "ImgLineBanner04", "ImgLineBanner05", "ImgLineBanner06", "ImgLineBanner07", "ImgLineBanner08"]
    
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader { geometry in
            PagingView(index: $currentIndex, maxIndex: HeaderImages.count - 1) {
                ForEach(HeaderImages.indices, id: \.self) { index in
                    ZStack(alignment: .bottom) {
                        Image(HeaderImages[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: 250)
                            .clipped()
                        
                        HStack(spacing: 10) {
                            if index == 0 {
                                Spacer(minLength : 361)
                            } else {
                                Image(LineBannerImages[index - 1])
                                    .resizable()
                                    .frame(width: 361, height: 41)
                                    .padding(.leading, 10)
                            }
                            
                            Image(LineBannerImages[index])
                                .resizable()
                                .frame(width: 361, height: 41)
                            
                            if index < HeaderImages.count - 1 {
                                Image(LineBannerImages[index + 1])
                                    .resizable()
                                    .frame(width: 361 , height: 41)
                                    .padding(.trailing, 10)
                            } else {
                                Spacer()
                            }
                        }
                    }
                }
            }
        }
        .frame(height: 250)
    }
}

struct PagingView<Content: View>: View {
    @Binding var index: Int
    let maxIndex: Int
    let content: Content
    
    init(index: Binding<Int>, maxIndex: Int, @ViewBuilder content: () -> Content) {
        self._index = index
        self.maxIndex = maxIndex
        self.content = content()
    }
    
    var body: some View {
        TabView(selection: $index) {
            content
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.default)
    }
}



struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
