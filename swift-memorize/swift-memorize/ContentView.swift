//
//  ContentView.swift
//  swift-memorize
//
//  Created by Narendra Yenugula on 11/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack(content:{
			RoundedRectangle(cornerRadius: 12)
				.foregroundColor(.white)
			RoundedRectangle(cornerRadius: 12)
				.strokeBorder(lineWidth: 3)
            Text("👻")
        })
		.font(.largeTitle)
		.foregroundStyle(.orange)//view modifer
		.imageScale(.small)//view modifer
		.padding()
		
    }
}

#Preview {
    ContentView()
}
	
