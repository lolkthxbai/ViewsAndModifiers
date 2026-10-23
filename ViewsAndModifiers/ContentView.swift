//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Junior Garcia on 10/20/26.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List {
				Section {
					Text("These are my implementations of the techniques covered by Paul Hudson in Project 3 - Views and Modifers from his 100 Days of SwiftUI course.")
				}
				
				NavigationLink {
					CustomModifiersDemo()
						.navigationTitle("Custom Modifiers")
						.navigationSubtitle(".button(_ color: Color)")
						.navigationBarTitleDisplayMode(.inline)
				} label: {
					HStack {
						Image(systemName: "slider.horizontal.3")
						Text("Custom Modifiers")
					}
				}
				
			}
			.navigationTitle("Views and Modifiers")
			.navigationSubtitle("Project 3")
		}
	}
}


#Preview {
	ContentView()
}
