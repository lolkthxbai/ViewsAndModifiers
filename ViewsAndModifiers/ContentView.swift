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
					Text("These are summaries of topics and implementations of the techniques covered by Paul Hudson in \"Views and Modifers\" from his 100 Days of SwiftUI course.")
				}
				
				NavigationLink {
					StructsForViews()
						.navigationTitle("Structs For Views")
						.navigationBarTitleDisplayMode(.inline)
				} label: {
					HStack {
						Image(systemName: "rectangle.3.offgrid")
						Text("Structs For Views")
					}
				}
				
				NavigationLink {
					CustomModifiersDemo()
						.navigationTitle("Custom Modifiers")
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
