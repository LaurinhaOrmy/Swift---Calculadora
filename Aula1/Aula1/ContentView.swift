//
//  ContentView.swift
//  Aula1
//
//  Created by COTEMIG on 10/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var IdadeHumana: String = ""
    @State private var IdadeCanina: String = ""
    @State private var erro: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack(spacing: 20) {
                Text("Calculadora de Idade Canina!")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                    .padding(.top)
                
                Image("Dog")
                    .resizable()
                    .frame(width: 300, height: 330, alignment: .center)
                    .scaledToFit()
                
                
                TextField("Digite a idade humana", text: $IdadeHumana)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 250)
                Button(action: calcularIdade){
                    Text("Calcular")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                if !IdadeCanina.isEmpty{
                    Text("Idade em anos caninos: \(IdadeCanina)")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
    
    func calcularIdade(){
        if let idade = Int(IdadeHumana), idade > 0{
            let resultado = idade * 7
            IdadeCanina = "\(resultado) anos"
            erro = false
        } else {
            IdadeCanina = "Digite um número válido!"
            erro = true
        }
        print(IdadeCanina)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

