//
//  ContentView.swift
//  DigestSwiftUI
//
//  Created by Gary Hanson on 6/18/21.
//


//
// This app is to demonstrate use of the new TimelineView as well as
//  how to use the GeometryReader when laying out views.
//  So the data is just hard coded to focus on those points.
//

import SwiftUI

struct ContentView: View {
    let dejaVuHeight: CGFloat = UIScreen.main.bounds.width > 650 ? 300 : 160
    let digestHeight: CGFloat = UIScreen.main.bounds.width > 650 ? 800 : 300
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Scrolling with TimelineView")
                DejaView()
                    .frame(height: dejaVuHeight)

                Text("2 x 3 layout")
                TwoByThreeView(imageNames: ["City01", "City03", "City02", "City04", "City05"])
                    .frame(height: digestHeight)
                
                Text("2 x 2 layout")
                TwoByTwoView(imageNames: ["City07", "City08", "City09", "City010"])
                    .frame(height: digestHeight)
                
                Text("3 x 2 layout")
                ThreeByTwoView(imageNames: ["City03", "City011", "City012", "City06", "City01"])
                    .frame(height: digestHeight)

            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
        }
        .background(Color.blue)
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
