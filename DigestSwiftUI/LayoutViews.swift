//
//  TwoByThreeView.swift
//  NukeMe3
//
//  Created by Gary Hanson on 6/16/21.
//

import SwiftUI

struct TwoByThreeView: View {
    let imageNames: [String]
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                VStack(spacing: 4) {
                    HStack(spacing: 2) {
                        Image(imageNames[0])
                            .resizable()
                        Image(imageNames[1])
                            .resizable()
                    }
                    .frame(height: geometry.size.height * 0.333)
                    
                    HStack(spacing: 4) {
                        Image(imageNames[2])
                            .resizable()
                        Image(imageNames[3])
                            .resizable()
                        Image(imageNames[4])
                            .resizable()
                        
                    }
                }
                .background(Color.gray)
            }
        }
    }
}

struct TwoByTwoView: View {
    let imageNames: [String]
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 2) {
                Image(imageNames[0])
                    .resizable()
                Image(imageNames[1])
                    .resizable()
            }
            .padding(0)
            
            HStack(spacing: 2) {
                Image(imageNames[2])
                    .resizable()
                Image(imageNames[3])
                    .resizable()
            }
            .padding(0)
        }
        .background(Color.gray)
    }
}

struct ThreeByTwoView: View {
    let imageNames: [String]
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 4) {
                VStack(spacing: 2) {
                    Image(imageNames[0])
                        .resizable()
                    Image(imageNames[1])
                        .resizable()
                    Image(imageNames[4])
                        .resizable()
                }
                .frame(width: geometry.size.width * 0.4)
                .padding(0)
                
                VStack(spacing: 2) {
                    Image(imageNames[2])
                        .resizable()
                    Image(imageNames[3])
                        .resizable()
                }
                .padding(0)
            }
            .background(Color.gray)
        }
    }
}



struct TwoByTwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoByThreeView(imageNames: ["City01", "City02", "City03", "City04", "City05"])
    }
}
