import Foundation
import SwiftUI

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Take the Depression Test", description: "Are You Sure To Start Test", imageUrl: "work", tag: 0)
    
    static var samplePages: [Page] = [
//        Page(name: "Welcome to Default App!", description: "The best app to get stuff done on an app.", imageUrl: "cowork", tag: 0),
//        Page(name: "Meet new people!", description: "The perfect place to meet new people so you can meet new people!", imageUrl: "work", tag: 1),
        Page(name: "Take the Depression Test", description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", imageUrl: "DepressionImage", tag: 0)
    ]
}
