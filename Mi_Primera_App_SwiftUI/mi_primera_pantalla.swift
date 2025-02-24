//
//  mi_primera_pantalla.swift
//  Mi_Primera_App_SwiftUI
//
//  Created by alumno on 2/24/25.
//

import SwiftUI

struct mi_primera_pantalla: View {
    
    
    var body: some View {
        Spacer()
        
        CampoSencillo()
        CampoSencillo()
            .background(Color.blue)
        CampoSencillo()
        Spacer()
    }
}

struct CampoSencillo: View {
    @State private var texto="" //variable el contenido puede cambiar y lo que lo llame tambien va a acambiar
    var body: some View {
        Spacer() //espaciado entre los objetos
        Text("hola \(texto)")
        Spacer() //automaticamente intena ocupar todo el body
        
    TextField("Place holder", text: $texto) //para poner texto $ - refleja cambios
    Spacer()
        
        Text("<----------------> ")
            .background(Color.green)
        Spacer()
        
        Button(action: { //aqui se jecuta codigo, hace acciónes
            texto = ""
        }) {
            
            Image(systemName: "trash.square.fill")
                .imageScale(.large)
                .tint(.white)
        }.background(Color.red)
        
        Spacer()
    }
}

#Preview {
    mi_primera_pantalla()
}
