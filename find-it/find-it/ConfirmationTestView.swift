
import SwiftUI

struct ConfirmationTestView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    if page == pages.last {
                        NavigationLink {
                            TestDetailView()
                        } label: {
                            PrimaryButton(title: "Start")
                        }

                    }
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        .background(
            LinearGradient(colors: [.white, Color(
                red: 231 / 255,
                green: 232 / 255,
                blue: 255 / 255
            )], startPoint: .top, endPoint: .center)
            .edgesIgnoringSafeArea(.all)
        )
        .animation(.easeInOut, value: pageIndex)// 2
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .tabViewStyle(PageTabViewStyle())
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}

struct ConfirmationTestView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationTestView()
    }
}
