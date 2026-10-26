//
//  StructsForViews.swift
//  ViewsAndModifiers
//
//  Created by Junior Garcia on 10/25/26.
//

import SwiftUI

struct StructsForViews: View {
    var body: some View {
		List {
			Section {
				Text(
"""
SwiftUI uses **`structs`** for views, while UIKit and AppKit use **`classes`**. Structs keep view descriptions lightweight and encourage a clear separation between the interface and its state.

Unlike subclasses of **`UIView`**, SwiftUI view structs don’t inherit a large collection of properties and methods. This makes simple view descriptions, such as **`Color.red`** and **`LinearGradient`**, inexpensive to create.

The main benefit is clearer state management: views describe what the interface should look like for the current data. When state changes, SwiftUI updates the interface to match, keeping views focused on converting data into UI.
"""
				)
			}
		}
    }
}

#Preview {
    StructsForViews()
}
