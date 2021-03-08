//
//  GameView.swift
//  WordBook
//
//  Created by User16 on 2021/3/3.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var settings: Settings
    @EnvironmentObject var gameInfo: GameInfo
    @State private var newQuestions = questions.shuffled()
    @State private var current_question: Question = questions[0]
    @State private var count = 0
    @State private var btnColor =  [Color.gray,Color.gray,Color.gray,Color.gray]
    @State private var message = ""
    @State private var answered = false
    @State private var btnDisabled = false
    var body: some View {
        ZStack{
            
            VStack{
                Text("第\(count)題：")
                    .padding(.top,35)
                    .font(Font.system(size: 30))
                Text(self.current_question.topic)
                    .padding(5)
                    .font(Font.system(size: 30))
                Text("猜一 " + self.current_question.guessThing)
                    .padding(15)
                    .font(Font.system(size: 30))
                    .foregroundColor(.red)
                Text(message)
                    .padding(.leading,160)
                    .foregroundColor(Color.orange)
                    .font(Font.system(size: 30))
                    .padding(.bottom,20)
                
                Button(action: {                                                    //Option 1
                    trueOrfalse(btn: 0)
                }){
                    Text(self.current_question.options[0])
                        .font(Font.system(size: 30))
                        .frame(width: 200, height: 50, alignment: .center)
                }
                
                .padding(10)
                .foregroundColor(.white)
                .background(btnColor[0])
                .frame(width: 200, height: 80, alignment: .center)
                .cornerRadius(20).shadow(radius: 20)
                .disabled(btnDisabled)
                
                Button(action: {                                                    //Option 2
                    trueOrfalse(btn: 1)
                }){
                    Text(self.current_question.options[1])
                        .font(Font.system(size: 30))
                        .frame(width: 200, height: 50, alignment: .center)
                }.padding(10)
                .foregroundColor(.white)
                .background(btnColor[1])
                .frame(width: 200, height: 80, alignment: .center)
                .cornerRadius(20).shadow(radius: 20)
                .disabled(btnDisabled)
                
                Button(action: {                                                    //Option 3
                    trueOrfalse(btn: 2)
                }){
                    Text(self.current_question.options[2])
                        .font(Font.system(size: 30))
                        .frame(width: 200, height: 50, alignment: .center)
                }.padding(10)
                .foregroundColor(.white)
                .background(btnColor[2])
                .frame(width: 200, height: 80, alignment: .center)
                .cornerRadius(20).shadow(radius: 20)
                .disabled(btnDisabled)
                
                Button(action: {                                                    //Option 4
                    trueOrfalse(btn: 3)
                }){
                    Text(self.current_question.options[3])
                        .font(Font.system(size: 30))
                        .frame(width: 200, height: 50, alignment: .center)
                }.padding(10)
                .foregroundColor(.white)
                .background(btnColor[3])
                .frame(width: 200, height: 80, alignment: .center)
                .cornerRadius(20).shadow(radius: 20)
                .disabled(btnDisabled)
                
                if answered{
                    ZStack{
                        Button(action: {
                            generate()
                        }){
                            Text("下一題")
                                .font(Font.system(size: 30))
                                .frame(width: 200, height: 50, alignment: .center)
                        }
                    }.padding(.bottom,10)
                    
                }else{
                    Text("").padding(.top,10).frame(width: 200, height: 50, alignment: .center).font(Font.system(size: 30))
                }
                
                
                
            }
            
            
            
        }
        .opacity(settings.mainOpacity)
        .onAppear(perform: {
            generate()
        })
        
        
    }
    
    func generate() {
        if(!settings.timeZero){
            self.count += 1
            self.current_question = newQuestions[self.count]
            self.message = ""
            self.answered = false
            self.btnDisabled = false
            for i in 0...3{
                self.btnColor[i] = Color.gray
                
            }
        }
        else {
            print(settings.timeZero)
        }
    }
    
    
    func trueOrfalse(btn: Int){
        answered = true
        self.btnDisabled = true
        if(self.current_question.options[btn] == self.current_question.answer){  //答對
            self.btnColor[btn] = Color.green
            message = "Ya~答對了！ +5分"
            gameInfo.bingoNum += 1
            gameInfo.score += 5
        }
        else{                                                                    //答錯
            self.btnColor[btn] = Color.red
            self.btnColor[self.current_question.right_answer_position] = Color.green
            message = "答錯了QQ"
            gameInfo.wrongNum += 1
        }
        gameInfo.totalNum = self.count
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

class CurrentQuestion: ObservableObject {
    @Published var topic = ""
    @Published var answer = ""
    @Published var guessThing = ""
    @Published var count = 0
}

class GameInfo: ObservableObject {
    @Published var bingoNum = 0
    @Published var wrongNum = 0
    @Published var totalNum = 0
    @Published var score = 0
}
