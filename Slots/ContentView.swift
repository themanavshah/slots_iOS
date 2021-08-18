//
//  ContentView.swift
//  Slots
//
//  Created by Manav on 10/01/21.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["apple", "cherry", "star",]
    @State private var numbers = [1,2,0,1,2,0,1,2,0]
    @State private var backgroundColor = [Color.white, Color.white, Color.white]
    @State private var credits = 1000
    private var betAmount = 50
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Rectangle().foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255)).rotationEffect(Angle(degrees: 45)).ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                Text("credits:" + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
             
                
                VStack {
                    HStack {
                        Spacer()
                        CardView(imageName: Binding.constant(symbols[numbers[0]]), backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[1]]),backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[2]]), backgroundColor: $backgroundColor[0])
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        CardView(imageName: Binding.constant(symbols[numbers[3]]), backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[4]]),backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[5]]), backgroundColor: $backgroundColor[0])
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        CardView(imageName: Binding.constant(symbols[numbers[6]]), backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[7]]),backgroundColor: $backgroundColor[0])
                        
                        CardView(imageName: Binding.constant(symbols[numbers[8]]), backgroundColor: $backgroundColor[0])
                        Spacer()
                    }
                }
                
                Spacer()
                
                VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                        //set back to white
                        //update background
                            //self.backgroundColor[0] = Color.white
                            //self.backgroundColor[1] = Color.white
                            //self.backgroundColor[2] = Color.white
                        
                        self.backgroundColor = self.backgroundColor.map {
                            _ in Color.white
                        }
                        
                        self.numbers = self.numbers.map({ _ in
                            Int.random(in: 0...self.symbols.count-1)
                        })
                        
                        //self.numbers[0] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //self.numbers[1] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //self.numbers[2] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //this do same work as above.
                        if self.numbers[3] == self.numbers[4] &&  self.numbers[4] == self.numbers[5] {
                            self.credits += self.betAmount * 10
                            
                            //update background
                            //self.backgroundColor[3] = Color.green
                            //self.backgroundColor[4] = Color.green
                            //self.backgroundColor[5] = Color.green
                            self.backgroundColor = self.backgroundColor.map {
                                _ in Color.green
                            }
                        } else {
                            self.credits -= self.betAmount
                        }
                        
                    }, label: {
                        Text("Spin")
                            .bold()
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .padding([.leading, .trailing], 30)
                            .background(Color.pink)
                            .cornerRadius(20)
                    })
                    Spacer()
                    
                    Button(action: {
                        
                        //set back to white
                        //update background
                            //self.backgroundColor[0] = Color.white
                            //self.backgroundColor[1] = Color.white
                            //self.backgroundColor[2] = Color.white
                        
                        self.backgroundColor = self.backgroundColor.map {
                            _ in Color.white
                        }
                        
                        self.numbers = self.numbers.map({ _ in
                            Int.random(in: 0...self.symbols.count-1)
                        })
                        
                        //self.numbers[0] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //self.numbers[1] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //self.numbers[2] =   Int.random(in: 0...self.symbols.count-1)
                        
                        //this do same work as above.
                        if self.numbers[3] == self.numbers[4] &&  self.numbers[4] == self.numbers[5] &&
                            self.numbers[5] == self.numbers[6] &&
                            self.numbers[6] == self.numbers[7] &&
                            self.numbers[7] == self.numbers[8] &&
                            self.numbers[8] == self.numbers[0] &&
                            self.numbers[0] == self.numbers[1] &&
                            self.numbers[1] == self.numbers[2] &&
                            self.numbers[2] == self.numbers[3]
                            {
                            self.credits += self.betAmount * 1000
                            
                            //update background
                            self.backgroundColor = self.backgroundColor.map {
                                _ in Color.green
                            }
                        } else {
                            self.credits -= self.betAmount * 10
                        }
                        
                    }, label: {
                        Text("Spin")
                            .bold()
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .padding([.leading, .trailing], 30)
                            .background(Color.green)
                            .cornerRadius(20)
                    })
                    Spacer()
                }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
