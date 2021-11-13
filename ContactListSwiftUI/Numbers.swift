//
//  Numbers.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct Numbers: View {    
    let contactList = ModelPerson.generateContacts()
    
    var body: some View {
        NavigationView {
            ZStack {
                List(contactList) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        ContactInfoForSection(contact: contact)
                    }
                }
                .listStyle(.insetGrouped)
            }
        }
    }
}


struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers()
    }
}
