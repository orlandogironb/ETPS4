//
//  Header.swift
//  CloneFBUTEC
//
//  Created by Macbook on 10/29/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
         Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 60)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18))
                .foregroundColor(.white)
                .padding(8)
                .background(Color.blue)
                .clipShape(Circle())
            
            
            Image(systemName: "message.fill")
                .font(.system(size: 18))
                .foregroundColor(.white)
                .padding(8)
                .background(Color.blue)
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
