//
//  ViewModel.swift
//  TV2
//
//  Created by user on 06.06.2021.
//

import SwiftUI
import SwiftyJSON
import Alamofire

class ViewModel: NSObject, ObservableObject {
    func signIn(username: String, password: String,
                con:((_ result: String, _ error: String) -> Void)? = nil) {
        let url = "https//cars.areas.su/login?username=\(username)&password=\(username)"

        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSOn: \(json)")
            case .failure(let error):
                print(error)
            }
        }
      
        
    }
    }


    



