//
//  DemoCardView.swift
//  ViewsAndModifiers
//
//  Created by Junior Garcia on 10/23/26.
//

import SwiftUI

struct DemoCardView: View {
	let text: String
	
	init(_ text: String) {
		self.text = text
	}
	
    var body: some View {
		VStack {
			Text(text)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding()
				.background(.background)
				.clipShape(.rect(cornerRadius: 15, style: .circular))
				.padding()
		}
		.background {
			Color(uiColor: .systemGroupedBackground)
				.ignoresSafeArea()
		}
    }
}

#Preview {
    DemoCardView("Some text that explains how my demo works.")
}
