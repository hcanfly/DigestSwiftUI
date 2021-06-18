//
//  DejaView.swift
//  NukeMe6
//
//  Created by Gary Hanson on 6/16/21.
//

import SwiftUI


struct DejaView: View {
    @State var startDate = Date()
    let animationSpeed =  UIScreen.main.bounds.width > 650 ? 25.0 : 15.0        // multiplier to adjust animaition speed
    let numbeOfImagesOnScreen = UIScreen.main.bounds.width > 650 ? 4.0 : 3.0
    let numberOfImages = 6
    
    var body: some View {
        TimelineView(.animation) { timeline in
            GeometryReader { geoProxy in
                HStack(spacing: 2) {
                    ForEach(1..<(numberOfImages + 1)) { index in
                        Image(uiImage: UIImage(named: "City0\(index)")!)
                            .resizable()
//                            .frame(width: geoProxy.size.width / numbeOfImagesOnScreen, height: geoProxy.size.width / numbeOfImagesOnScreen)
                            .frame(width: geoProxy.size.width / numbeOfImagesOnScreen, height: geoProxy.size.height)
                            .padding(0)
                            .scaledToFill()
                            .offset(x: calcHorizontalOffset(imageWidth: geoProxy.size.width / numbeOfImagesOnScreen, date: timeline.date), y: 0)
                    }
                }
                .background(Color.blue)
            }
        }
    }
    
    func calcHorizontalOffset(imageWidth: Double, date: Date) -> Double {
        var offset = -(date.timeIntervalSince(startDate) * animationSpeed)
 
        // reset offset if past the end of the screen
        offset = offset.truncatingRemainder(dividingBy: (Double(numberOfImages) - numbeOfImagesOnScreen) * (imageWidth + 2))

        return offset
    }
}
