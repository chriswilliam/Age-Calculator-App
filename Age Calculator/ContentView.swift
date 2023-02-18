//
//  ContentView.swift
//  Age Calculator
//
//  Created by Chris William on 18/2/2023.
//

import SwiftUI

enum KeyButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case today = "Today"
    case delete = "Delete"
}

struct ContentView: View {
    
    let keyButtons: [[KeyButton]] = [
        [.one, .two, .three],
        [.four, .five, .six],
        [.seven, .eight, .nine],
        [.today, .zero, .delete]
    ]
    
    var body: some View {
        ZStack {
            Color(red: 50/255, green: 50/255, blue: 50/255)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 60))
                    .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                
                ForEach(keyButtons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { btn in
                            Button {
                                print("Hi")
                            } label: {
                                Text(btn.rawValue)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .frame(width: getWidth()/3.35, height: getHeight()/14)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }
                            

                        }
                    }
                }
            }
        }
    }
    
    //To get the width of CustomNumericalKeyboard
    func getWidth()->CGFloat{
        return UIScreen.main.bounds.size.width
    }
    //To get the Height of CustomNumericalKeyboard
    func getHeight()->CGFloat{
        return UIScreen.main.bounds.size.height
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
