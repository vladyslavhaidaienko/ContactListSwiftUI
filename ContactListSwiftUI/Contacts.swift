//
//  Contacts.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct Contacts: View {
    var body: some View {
        let contactList = ModelPerson.generateContacts()
        NavigationView {
            ZStack {
                List(contactList) { contact in
                    NavigationLink(destination: ContactInfo(contact: contact)) {
                        ContactRow(contact: contact)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
