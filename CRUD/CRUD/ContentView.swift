//
//  ContentView.swift
//  CRUD
//
//  Created by Macbook on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                    List {
                        NavigationLink("Insertar",
                                       destination: Text("Some information"))
                        NavigationLink("Actualizar",
                                       destination: Button("Tap me!", action: {
                                print("Hello iOS Developer!")})
                        )
                        
                        Text("Eliminar")
                        
                        Text("Mostrar")
                    }
                    .navigationBarItems(trailing: Button("Done", action: {
                        print("Right Buttton")
                    }))
                    .navigationTitle("Menu")
                    .navigationBarTitleDisplayMode(.automatic)
                    .navigationBarHidden(false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
