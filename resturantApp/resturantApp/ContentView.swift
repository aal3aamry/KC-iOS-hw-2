//
//  ContentView.swift
//  resturantApp
//
//  Created by عبدالرحمن العامري on 16/08/2022.
//

import SwiftUI

struct ContentView: View {

    @State var item1 = 0
    @State var item2 = 0
    @State var item3 = 0
    @State var item4 = 0
    @State var item5 = 0

    
    @State var item1Price = 2.7
    @State var item2Price = 17.0
    @State var item3Price = 2.3
    @State var item4Price = 22.0
    @State var item5Price = 6.0
    
    @State var finalCalc = 0.0
    @State var yourMoney = ""
    @State var result = ""
    @State var isAlertPresented : Bool = false
    func forTrailingZero(temp: Double) -> String {
        var tempVar = String(format: "%g", temp)
        return tempVar
    }
    var body: some View {
        
        
        ZStack{
            VStack{
                Image("bg2")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()

                    
            
            .background(Color.white)
            
                Spacer()
            }
            
            VStack{
                
                
                
               

                ScrollView   {
                    
                    Text("                                              ")
                        .frame(width: 100, height: 100)
                   

                    HStack{
                        
                    
                    
                        VStack {
                            
                            
                            Text("  Double Chicken You Out")
                                .frame(width: 200, height: 20)
                                .padding()

                            Stepper(value: $item1, in: 0...10) {
                                Text("\(item1)")
                                    .padding()
                                    

                                Text("\(item1Price, specifier: "%.2f") KD")
                                    .frame(width: 105, height: 20)                            .padding()

                                
                            }
                            Text("\(item1)")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(50)
                            
                        }
                            Divider()
                        Image("Double Chicken You Out")
                            .resizable()
                            .scaledToFit()
                                 .frame(width: 100, height: 80)


                    }
                    
                    
                    
                    .frame(width: 320, height: 200)
                    
                    Divider()
                    HStack{
                    
                    
                        VStack {
                            
                            Text("  Octobox")
                                .frame(width: 200, height: 20)
                                .padding()

                            Stepper(value: $item2, in: 0...10) {
                                Text("\(item2)")
                                    .padding()

                                Text("\(item2Price, specifier: "%.2f") KD")
                                    .frame(width: 105, height: 20)                            .padding()

                                
                            }
                            
                            Text("\(item2)")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(50)
                        }
                            Divider()
                        Image("Octobox")
                            .resizable()
                            .scaledToFit()
                                 .frame(width: 100, height: 80)


                    }
                    
                    
                    
                    .frame(width: 320, height: 200)
Divider()
                    HStack{
                    
                    
                        VStack {
                            
                            Text("  Ranch BBQ Burger")
                                .frame(width: 200, height: 20)
                                .padding()

                            Stepper(value: $item3, in: 0...10) {
                                Text("\(item3)")
                                    .padding()

                                Text("\(item3Price, specifier: "%.2f") KD")
                                    .frame(width: 105, height: 20)                            .padding()

                                
                            }
                            Text("\(item3)")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(50)
                        }
                            Divider()
                        Image("Ranch BBQ Burger")
                            .resizable()
                            .scaledToFit()
                                 .frame(width: 100, height: 80)


                    }
                    
                    
                    
                    .frame(width: 320, height: 200)
                    
                    Divider()
                    HStack{
                    
                    
                        VStack {
                            
                            Text("Smoked Ribs (Full Rack)")
                                .frame(width: 200, height: 20)
                                .padding()

                            Stepper(value: $item4, in: 0...10) {
                                Text("\(item4)")
                                    .padding()

                                Text("\(item4Price, specifier: "%.2f") KD")
                                    .frame(width: 105, height: 20)                            .padding()

                                
                            }
                            Text("\(item4)")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(50)
                        }
                            Divider()
                        Image("Smoked Ribs (Full Rack)")
                            .resizable()
                            .scaledToFit()
                                 .frame(width: 100, height: 80)


                    }
                    
                    
                    
                    .frame(width: 320, height: 200)
                    
                    Divider()
                    HStack{
                    
                    
                        VStack {
                            
                            Text("Chocolate Madness")
                                .frame(width: 200, height: 20)
                                .padding()

                            Stepper(value: $item5, in: 0...10) {
                                Text("\(item5)")
                                    .padding()

                                Text("\(item5Price, specifier: "%.2f") KD")
                                    .frame(width: 105, height: 20)                            .padding()

                                
                            }
                            Text("\(item5)")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(50)
                        }
                            Divider()
                        Image("Chocolate Madness")
                            .resizable()
                            .scaledToFit()
                                 .frame(width: 100, height: 80)


                    }
                }
                .frame(width: 380, height: 500)
                
                VStack{
                    Button {
                        
                        let finalItem1 = (item1Price * Double(item1) ?? 0)
                        let finalItem2 = (item2Price * Double(item2) ?? 0)
                        let finalItem3 = (item3Price * Double(item3) ?? 0)
                        let finalItem4 = (item4Price * Double(item4) ?? 0)
                        let finalItem5 = (item5Price * Double(item5) ?? 0)
                        
                        
                    finalCalc =  finalItem1 + finalItem2 + finalItem3 + finalItem4 + finalItem5
                        
                    } label: {
                        Text("💸")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.652, green: 0.098, blue: 0.18))
                            .cornerRadius(100)
                                            }
                    
                    Text("السعر هو \(finalCalc, specifier: "%.2f")")
                    
                    TextField("أدخل المبلغ الذي لديك", text: $yourMoney)

                        .foregroundColor(.black)

                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.brown.opacity(0.3))

                    
                        Divider()
                    Text("check money")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(50)
                        .onTapGesture {
                            
                            if (Double(yourMoney) ?? 0) >= finalCalc
                            {
                                result = "تم الشراء، ترقّب لنك الدفع"
                            }
                          
                            else {
                                result = "المال لا يكفي"                            }
                        }
                    Text("\(result)")
                    
                    Button {
                        isAlertPresented.toggle()
                    } label: {
                        Text("done")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.5))
                        
                            .cornerRadius(50)
                            .alert(isPresented: $isAlertPresented) {
                                Alert(title: Text("شكرا لتسوقك"), message: Text("عاد مو كله تطلب اونلاين!! لازم تزورنا لو سمحت 🫀"), dismissButton: .default(Text("اوكي")))
                            }
                            .padding()
                        
                    }

                
                    
                 
                        

                        }
                        

                }
                
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
           
    
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}




