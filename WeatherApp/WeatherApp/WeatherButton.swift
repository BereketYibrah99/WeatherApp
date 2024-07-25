//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Bereket Yibrah  on 6/13/24.
//

import SwiftUI

struct ButtonView: View {
    var BackColor:Color
    var textColor:Color
    var textSay:String
    
    var body: some View {
        VStack(spacing:20){
            Text(textSay)
                .frame(width: 300,height: 50)
                .background(BackColor)
                .foregroundColor(textColor)
                .cornerRadius(20)
            Text(textSay)
                .frame(width: 300,height: 50)
                .background(BackColor)
                .foregroundColor(textColor)
            .cornerRadius(20)
        }
    }
}
struct WeatherButton_Previews: PreviewProvider{
    static var previews : some View{ ButtonView(BackColor: .blue, textColor: .white, textSay: "test")
    }
    
    
    
    
    
}
