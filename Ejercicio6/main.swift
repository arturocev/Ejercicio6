
import Foundation

// EJERCICIO 6

func traducirNumero(numeroRomano: String) -> Int
{
    let valoresRomanos : [Character: Int] =
    [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    var resultado = 0
    let valorPrevio = 1
    
    for letra in numeroRomano
    {
        if let valor = valoresRomanos[letra] {
            if valorPrevio < valor
            {
                resultado += valor
            }
            else
            {
                resultado -= valor
            }
        }
    }
    return resultado
}

print("----- NÚMEROS ROMANO A DECIMAL -----\n",
    "Las traducciones son:\n",
        "- I: 1\n",
        "- V: 5\n",
        "- X: 10\n",
        "- L: 50\n",
        "- C: 100\n",
        "- D: 500\n",
        "- M: 1000\n",
        "Porfavor, introduce un número romano:")
var numeroRomano = readLine()!
var numeroTraducido = traducirNumero(numeroRomano: numeroRomano.uppercased())
print("El numero traducido es: \(numeroTraducido)")


