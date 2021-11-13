//
//  ContactInfoForSection.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct ContactInfoForSection: View {
    let contact: ModelPerson
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.phoneNumber)")
                Spacer()
            }
            .padding()
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text("\(contact.email)")
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Contact List")
    }
}

struct ContactInfoForSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoForSection(contact: ModelPerson.generateContact())
    }
}
