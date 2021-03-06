//
//  ContentView.swift
//  Fitness Planner
//
//  Created by London Petway on 3/5/21.
//

import SwiftUI

struct ContentView: View {

    @State var squat = ""
    @State var benchpress = ""
    @State var deadlift = ""
    @State var counter = 0
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    Section {
                       
                        
                        
                        TextField("Bench Press 1RM",
                                  text: $benchpress)
                            .keyboardType(.numberPad)
                        

                        
                        TextField("Squat 1RM",
                                  text: $squat)
                            .keyboardType(.numberPad)
                      
                        
                        TextField("Deadlift 1RM",
                                  text: $deadlift)
                    }
                    
                    
                    Section {
                      Button(action: {
                                counter += 1
                                if counter == 4 {
                                    counter -= 3
                                }
                        
                            
                        }, label: {
                            Text("Plan")
                                .frame(width: 312,
                                       height: 50,
                                       alignment: .center)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
            
                        )}
                    
                    if counter == 2 {
                        let workBody1 = Int(squat)
                        let workBody2 = (workBody1 ?? 0) / 5 * 4
                        
                        
                    let bodyb = Int(benchpress)
                    let bodyb2 = (bodyb ?? 0) / 5 * 4
                    let dead = Int(deadlift)
                    let dead2 = (dead ?? 0) / 5 * 4
                    
                    Text("                           Powerlifter")
                    Spacer()
                    Text("Mon: B \(bodyb2) 5x5   Tues: S \(workBody2) 5x5   Wed:")
                    Text("           Thurs:                 Fri: D \(dead2) 5x5 ")
                    Text("                Sat:                            Sun:")
                    }else if counter == 1 {
                        let workBody1 = Int(squat)
                        let workBody2 = (workBody1 ?? 0) / 10 * 6
                        
                        
                    let bodyb = Int(benchpress)
                    let bodyb2 = (bodyb ?? 0) / 10 * 6
                    let dead = Int(deadlift)
                    let dead2 = (dead ?? 0) / 10 * 6
                        
                        Text("                          Bodybuilder")
                        Spacer()
                        Text("   Mon: B \(bodyb2) 12x3         Tues: S \(workBody2) 12x3")
                        Text("Wed: Thurs: D \(dead2) 12x3   Fri: B \(bodyb2) 12x3")
                        Text("         Sat: S \(workBody2) 12x3                 Sun:")
                        
                    }else if counter == 3 {
                        
                        let workBody1 = Int(squat)
                        let workBody2 = (workBody1 ?? 0) / 10 * 4
                        
                        
                    let bodyb = Int(benchpress)
                    let bodyb2 = (bodyb ?? 0) / 10 * 4
                    let dead = Int(deadlift)
                    let dead2 = (dead ?? 0) / 10 * 4
                        Text("                           Endurance")
                        Spacer()
                        Text("Mon: S \(workBody2) 15+ x2     Tues: B \(bodyb2) 15+ x2")
                        Text("Wed:        Thurs: D \(dead2) 15+ x2           Fri: ")
                        Text("         Sat: S \(workBody2) 15+ x2               Sun:")
                        
                    }
                    }
                    
                }
            .navigationTitle("___Fitness Planner___")
                .background(Color.white)
                .foregroundColor(.black)
    }
}

    }
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
