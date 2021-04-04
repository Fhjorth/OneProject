//
//  config.swift
//  OneProject
//
//  Created by Mathias Hansen on 04/04/2021.
//

import Foundation

class Config:ObservableObject {
    
    @Published var score = 0

    @Published  var HTTP_STATUS_OK = 200;

    @Published  var HTTP_STATUS_CREATED = 201;

    @Published  var HTTP_STATUS_NO_CONTENT = 204;

    @Published  var HTTP_STATUS_BAD_REQUEST = 400;

    @Published  var HTTP_STATUS_FORBIDDEN = 403;

    @Published  var HTTP_STATUS_NOT_FOUND = 404;

    @Published  var HTTP_STATUS_NOT_ACCEPTABLE = 406;

    @Published  var HTTP_STATUS_SERVER_ERROR = 500;

    @Published  var black = "#00004D";
    
    
 
   static let section: String = "A"  // static constat
   static var day: String = "Monday" // static variable
   var name: String = "Akash"        // instance variable
   var rollNum: Int = 1              // instance variable
}
