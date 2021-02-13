//
//  Data.swift
//  VPAssignment#1
//
//  Created by  on 2/7/21.
//

import UIKit

class Data: NSObject {

    var savedName : String?
    var savedEmail : String?
    var savedDate : String?
    var savedPhone : String?
    var savedAge : Float?
    var savedGender : Bool?
    var savedAddress : String?
    
    
    override init()
    {
        savedName = "Vishwa Patel"
        savedEmail = "vish@patel.com"
        savedAddress = "89 King St, Toronto"
        savedAge = 20
        savedPhone = "1234567812"
        savedGender = true
        savedDate = "17/01/2000"
    }
    
    
    func initWithStuff(theName: String, theEmail: String, thePhone: String, theAddress: String, theDate: String, theAge: Float, theGender: Bool)
    {
        savedName = theName
        savedEmail = theEmail
        savedAddress = theAddress
        savedDate = theDate
        savedAge = theAge
        savedPhone = thePhone
        savedGender = theGender
    }
}
