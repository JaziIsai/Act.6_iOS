import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator +++

func +++(valor:Int, valor2:Int)->Double{
    let base = Double(valor)
    let potencia = Double(valor2)
    
    return pow(base, potencia)
    
}
2 +++ 3
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
var coleccion1 = [2,5,3,4]
prefix operator |>
prefix func |>(coleccion:Array<Int>)->Array<Int> {
    return coleccion.sorted()
}
|>coleccion1
/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
class Cantidad
{
    var valores:[Int]
    init(v:[Int]){
        self.valores = v
    }
    subscript(index: Int) -> Int {
        get
        {
            return valores[index]
        }
        set(newValue)
        {
            valores[index] = valores[index] * newValue
        }
    }
}
let v1 = Cantidad(v: coleccion1)

v1[3]
v1[2] = 3
coleccion1
v1.valores
//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct Posicion
{
    var posicion:CGPoint
    init(p:CGPoint) {
        self.posicion = p
    }
    subscript(index:Int) -> CGPoint {
        get
        {
            return self.posicion
        }
        set(newValue)
        {
            self.posicion = newValue
        }
    }
}
var pos = Posicion(p: CGPoint(x: 1.0, y: 0.0))
pos.posicion
pos.posicion = CGPoint (x: 2.0, y: 2.0)
pos.posicion
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
var coleccion2 = ["A":1, "B":2, "C":3]

func ExisteValor (valorABuscar:String){
    guard let existe = coleccion2[valorABuscar] else {
        print("NO EXISTE" )
        return
    }
    print("existe \(existe)")
}
ExisteValor(valorABuscar: "A")
coleccion2["D"]
