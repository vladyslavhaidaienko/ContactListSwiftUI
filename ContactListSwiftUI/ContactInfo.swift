//
//  ContactInfo.swift
//  ContactListSwiftUI
//
//
//  Created by Vladyslav Haidaienko on 13.11.2021.
//

import SwiftUI

struct ContactInfo: View {
    let contact: ModelPerson
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
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
            Spacer()
        }
        .padding(.top, 20.0)
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(contact: ModelPerson.generateContact())
    }
}
