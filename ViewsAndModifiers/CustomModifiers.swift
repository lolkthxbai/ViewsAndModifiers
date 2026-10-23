//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Junior Garcia on 10/21/26.
//

import SwiftUI

/// An example custom modifier that wraps a view in a styled button.
///
/// The original content becomes the button's label. Tapping the button
/// prints `"Hello, world!"` to the console.
///
/// ## Appearance
///
/// The label uses:
/// - A large title font for content that supports it.
/// - A white foreground style.
/// - Default padding.
/// - The background color supplied through ``bgColor``.
/// - A capsule clipping shape.
///
/// Apply this modifier directly with `modifier(QuickButton(bgColor: .blue))`,
/// or use the `button(_:)` convenience method defined on `View`.
struct QuickButton: ViewModifier {
	/// The background color applied to the button label.
	let bgColor: Color

	/// Wraps the supplied content in a styled button.
	///
	/// - Parameter content: The content receiving this modifier.
	/// - Returns: A button whose label contains the styled content.
	func body(content: Content) -> some View {
		Button {
			print("Hello, world!")
		} label: {
			content
				.font(.largeTitle)
				.foregroundStyle(.white)
				.padding()
				.background(bgColor)
				.clipShape(.capsule)
		}
	}
}

extension View {
	/// Wraps this view in a button with a styled label.
	///
	/// This convenience method applies ``QuickButton`` to the view,
	/// allowing content such as text or an image to become a button label.
	///
	/// Tapping the button prints `"Hello, world!"` to the console.
	///
	/// ## Usage
	///
	/// ```swift
	/// Text("Hello, World!")
	///     .button(.blue)
	/// ```
	///
	/// - Parameter color: The button label's background color.
	/// - Returns: A button containing this view as its styled label.
	func button(_ color: Color = .blue) -> some View {
		modifier(QuickButton(bgColor: color))
	}
}

struct CustomModifiersDemo: View {
	var body: some View {
		VStack {
			DemoCardView(".button() is a custom view modifier that wraps the view in a button with a styled label. Its color parameter defaults to blue. In this example, the modifier is being applied to text and image views.")
			Spacer()
			VStack {
				Text("Pay")
					.button()
				Text("Discard")
					.button(.red)
				Text("Accept")
					.button(.green)
			}
			.padding()
			HStack {
				Image(systemName: "person")
					.resizable()
					.scaledToFit()
					.frame(width: 50, height: 50)
					.button()
				Image(systemName: "trash")
					.resizable()
					.scaledToFit()
					.frame(width: 50, height: 50)
					.button(.red)
				Image(systemName: "plus")
					.resizable()
					.scaledToFit()
					.frame(width: 50, height: 50)
					.button(.green)
			}
			.padding()
			Spacer()
			Spacer()
		}
	}
}

#Preview {
	CustomModifiersDemo()
}
