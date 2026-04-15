//
//  Layout.swift
//  Layouts
//
//  Created by Hariharan GJ on 15/04/26.
//

import SwiftUI

struct Layout: View {
    var body: some View {

        VStack (spacing: 30){
            
            VStack {
                
                Text("ONE")
                
                Text("TWO")
                Text("THREE")
            }
            
            
            HStack{
                Text("ONE")
                Text("TWO")
                Text("THREE")
                
            }
            
            ZStack {
                
                Color.blue.frame(width: 100, height: 100)
                
                Text("ONE")
            }
        }

    }
}

struct Layout_Previews: PreviewProvider {
    static var previews: some View {
        Layout()
    }
}
