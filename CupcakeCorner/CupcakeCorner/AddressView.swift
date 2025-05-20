//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Jackson Barnes on 20/05/2025.
//

import SwiftUI

struct AddressView: View {
	@Bindable var order: Order
	
    var body: some View {
		Form {
			Section {
				TextField("Name", text: $order.name)
				TextField("Street Address", text: $order.streetAddress)
				TextField("City", text: $order.city)
				TextField("Zip", text: $order.zip)
			}
			
			Section {
				NavigationLink("Check Out") {
					CheckoutView(order: order)
				}
			}
			.disabled(order.hasValidAddress == false)
		}
		.navigationTitle("Delivery details")
		.navigationBarTitleDisplayMode(.inline)
	}
}

#Preview {
	AddressView(order: Order())
}
