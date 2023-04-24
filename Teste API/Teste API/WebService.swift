//
//  WebService.swift
//  Teste API
//
//  Created by Rafael Penna on 19/04/23.
//

import Foundation

class WebService {
    
    class func pesquisaCEP(_ cep: String, completion: @escaping (Pilot) -> Void) {
        guard let url = URL(string: "https://ergast.com/api/f1/drivers/alonso.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else { return }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    do {
                        let cep = try JSONDecoder().decode(Pilot.self, from: data)
                        
                        completion(cep)
                        
                    } catch {
                        debugPrint(error)
                    }
                } else {
                    print("Status inválido do servidor, Status code")
                }
            } else {
                print(error!.localizedDescription)
            }
        }.resume()
    }
}
