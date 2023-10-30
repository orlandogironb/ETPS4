//
//  HistoriaCard.swift
//  CloneFBUTEC
//
//  Created by Macbook on 10/29/23.
//

import SwiftUI

struct HistoriaCard: View {
    let imagenNombre: String
    let perfilFoto:String
    let titulo:String
    @State var scale:CGFloat=1.0
    var body: some View {
        ZStack{
            Image(imagenNombre)
                .resizable()
                .frame(width: 100, height: 170)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading, spacing: 100){
                Image(perfilFoto)
                    .resizable()
                    .frame(width:30, height: 35)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                Text(titulo)
                    .font(.system(size: 12, weight:.semibold))
                    
            }
            .padding(.horizontal,-40)
        }
    }
}

struct HistoriaCard_Previews: PreviewProvider {
    static var previews: some View {
        HistoriaCard(imagenNombre:"historia1",perfilFoto:"profile2",titulo:"Ana Lopez")
            .foregroundColor(.white)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
