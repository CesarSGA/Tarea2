//
//  main.swift
//  Tareas 2
//
//  Los atributos que tendrán tus objetos son los siguiente:
//
//  -Nombre: String , email: String , NumSeguidores: Int, estaActivo: Bool
//  además deberás de crear un método llamado: logStatus(), si el usuario esta activo el método imprimirá: “fulanito esta online” caso contrario deberá imprimir “fulanito no esta conectado”, donde fulanito es el nombre del usuario.
//
//  -Crear 3 tipos de usuarios
//  1. uno que tenga mas de 10 seguidores,
//  2. Otro que forzosamente este online,
//  3. Otro que este desconectado.
//
//  La salida en consola deberá mostrar algo similar a:
//  “fulanito 1 está online, y su correo es: fulanito1@gmail.com, tiene x número de seguidores”
//  “fulanito 2 está online, y su correo es: fulanito2@gmail.com, tiene x número de seguidores”
//  “fulanito 3 no está en línea, y su correo es: fulanito1@gmail.com, tiene x número de seguidores”

import Foundation

struct Usuario {
    let nombre: String
    let email: String
    let numSeguidores: Int
    let estaActivo: Bool
}

let usuario_1 = Usuario.init(nombre: "fulanito 1", email: "fulanito1@gmail.com", numSeguidores: 50, estaActivo: true)
let usuario_2 = Usuario.init(nombre: "fulanito 2", email: "fulanito2@gmail.com", numSeguidores: 0, estaActivo: true)
let usuario_3 = Usuario.init(nombre: "fulanito 3", email: "fulanito3@gmail.com", numSeguidores: 5, estaActivo: false)

func logStatus(usuario: Usuario){
    if usuario.estaActivo {
        print("\(usuario.nombre) esta online, y su correo es: \(usuario.email), tiene \(usuario.numSeguidores) número de seguidores")
    } else {
        print("\(usuario.nombre) no esta online, y su correo es: \(usuario.email), tiene \(usuario.numSeguidores) número de seguidores")
    }
}

logStatus(usuario: usuario_1)
logStatus(usuario: usuario_2)
logStatus(usuario: usuario_3)
