//
//  ContentView.swift
//  swift-hello-world
//
//  Created by Narendra Yenugula on 07/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		let activities: [String] = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

		var selected = "Baseball"
		
        VStack {
            Text("Why not try")
                .font(.largeTitle.bold())
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .padding()
                    .overlay(
						Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white))
                
                }
			Text("\(selected)!")
                .font(.title)
        }
		
		Button("Try again")
		{
			selected = activities.randomElement() ?? "Hiking"
			print(selected)
		}
		.buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
