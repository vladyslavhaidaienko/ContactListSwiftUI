//
//  ContactRow.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct ContactRow: View {
    let contact: ModelPerson
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Text("\(contact.name) \(contact.surname)")
                    .frame(alignment: .leading)
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: ModelPerson.generateContact())
    }
}
