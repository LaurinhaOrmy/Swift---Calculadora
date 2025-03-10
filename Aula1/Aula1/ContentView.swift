//
//  ContentView.swift
//  Aula1
//
//  Created by COTEMIG on 10/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idade = ""
    
    var body: some View {
        VStack {
            Text("Calculadora de Idade Canina!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.black)
                .padding(.top)
            
            Image("Dog")
              .resizable()
              .frame(width: 300, height: 330, alignment: .center)
            
            TextField(
                    "Insira a sua idade humana:",
                    text: $idade
                )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
