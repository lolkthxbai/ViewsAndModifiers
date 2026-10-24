//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Junior Garcia on 10/21/26.
//

import SwiftUI

struct QuickButton: ViewModifier {
	let bgColor: Color

	func body(content: Content) -> some View {
		Button {
			print("Hello, world!")
		} label: {
			content
				.font(.headline.bold())
				.foregroundStyle(.white)
				.padding()
				.background(bgColor)
				.clipShape(.capsule)
		}
	}
}

extension View {
	func button(_ color: Color = .blue) -> some View {
		modifier(QuickButton(bgColor: color))
	}
}

struct CustomModifiersDemo: View {
	var body: some View {
		VStack {
			List {
				Section(".button(_:)"){
					Text("A custom view modifier that wraps the view in a button with a styled label. Its color parameter defaults to blue.")
				}
				Section("Text Examples") {
					HStack {
						Spacer()
						Text("Add")
						Spacer()
						Text("Add")
							.button()
						Spacer()
					}
					HStack {
						Spacer()
						Text("Decline")
						Spacer()
						Text("Decline")
							.button(.red)
						Spacer()
					}
					HStack {
						Spacer()
						Text("Accept")
						Spacer()
						Text("Accept")
							.button(.green)
						Spacer()
					}
				}
				
				Section("Image Examples") {
					HStack {
						Spacer()
						Image(systemName: "person")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
						Spacer()
						Image(systemName: "person")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
							.button()
						Spacer()
					}
					HStack {
						Spacer()
						Image(systemName: "trash")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
						Spacer()
						Image(systemName: "trash")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
							.button(.red)
						Spacer()
					}
					HStack {
						Spacer()
						Image(systemName: "plus")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
						Spacer()
						Image(systemName: "plus")
							.resizable()
							.scaledToFit()
							.frame(width: 20)
							.button(.green)
						Spacer()
					}
				}
			}
		}
	}
}

#Preview {
	CustomModifiersDemo()
}
