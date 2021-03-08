//
//  SecondView.swift
//  WordBook
//
//  Created by User16 on 2021/3/3.
//

import SwiftUI

struct SecondView: View {
    
    @State private var showPopUp = false
    var body: some View {
    
        ZStack {
            VStack(spacing: 20) {
                Text("Using Z-Stack to create a custom pop up")
             
                Button(action: {
                    self.showPopUp = true
                }, label: {
                    Text("Show custom pop up")
                })
            }
            if $showPopUp.wrappedValue {
                ZStack {
                    Color.white
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image("homepageBtn")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 80, height: 50)
                            
                        }
                        .padding(.leading,20)
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image("restartBtn")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 130, height: 100)
                            
                        }
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "play.fill")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 40, height: 40)
                            
                        }
                        .padding(.trailing,30)
                    }.padding()
                }
                .frame(width: 300, height: 100)
                .cornerRadius(20).shadow(radius: 20)
            }
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
