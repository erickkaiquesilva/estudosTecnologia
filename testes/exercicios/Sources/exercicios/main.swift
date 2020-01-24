import Foundation

class Teste {
    
    let loadUser: UserProtocol = UserRepository()
    
    func conexaoTeste() {
//        loadUser.getUsuario(id: 10) { (result) in
//            switch result {
//            case .success(let model):
//                self.exibeDados(usuario: model)
//            case .failure(let error):
//                print(error)
//            }
//        }
        loadUser.postLogin(login: Login(email: "teste@teste", senha: "teste")) { (result) in
            switch result {
            case .success(let usuarioObject):
                print("-------\(usuarioObject)")
            case .failure(let error):
                print("ERROR \(error)")
            }
        }
    }
    
    func conexaoGreenCode() {
        
    }
    
    func exibeDados(usuario: UsuarioTeste) {
        print("ID: \(usuario.id)\nUSERID: \(usuario.userId)\nTITLE: \(usuario.title)")
    }
}

let teste = Teste()

teste.conexaoTeste()


Thread.sleep(until: Date().addingTimeInterval(10.0))
