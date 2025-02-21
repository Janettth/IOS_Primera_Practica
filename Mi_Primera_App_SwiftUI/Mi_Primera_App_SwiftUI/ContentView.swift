//
//  ContentView.swift
//  Mi_Primera_App_SwiftUI
//
//  Created by alumno on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texto_Introducido_por_ususrio: String = "Place holder"
    @State private var texto_a_mostrar_en_saludos: String = "Mundo"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola \(texto_a_mostrar_en_saludos)")
            
            TextEditor(text: $texto_Introducido_por_ususrio)
            
            Button("Pulsame", action: {
                if(texto_Introducido_por_ususrio == ""){
                    texto_a_mostrar_en_saludos = "Mundo"
                }
                else{
                    texto_a_mostrar_en_saludos = texto_Introducido_por_ususrio
                    texto_Introducido_por_ususrio = ""
                }
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
