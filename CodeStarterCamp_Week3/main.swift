//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - Person 만들기

struct Person {
    var name: String
    var age: Int
    var money: Int
    var pastime: String?
    
    init(name: String, age: Int, money: Int) {
        self.name = name
        self.age = age
        self.money = money
    }
    
    func buyCoffee(coffee: CoffeeShop.Menu) -> String {
        yagombucks.order(coffee)
        }
    
    func enjoyLeisureTime() {
        if let pastime = pastime {
            print("\(name)은 '\(pastime)'을/를 즐깁니다.")
        } else {
            print("\(name)은 여가시간에 무엇을 할지 못 정했습니다.")
        }
    }
}

//MARK: - 커피샵차리기

class CoffeeShop {
    var salesRevenue: Int
    var pickUpTable: String?
    var music: String
    var barista: Person
    var mood: String
    var customer: Person!
    
    convenience init(salesRevenue: Int, pickUpTable: String, music: String, barista: Person, mood: String) {
        self.init(salesRevenue: salesRevenue, music: music, mood: mood, barista: barista)
        self.pickUpTable = pickUpTable
    }
    
    init(salesRevenue: Int, music: String, mood: String, barista: Person) {
        self.salesRevenue = salesRevenue
        self.music = music
        self.barista = barista
        self.mood = mood
    }
    
    func order(_ coffee: CoffeeShop.Menu) -> String {
        let order = "\(customer.name)은 \(coffee)을/를 주문합니다."
            return order
    }
    
    func takeOrder(coffee: Menu, beans: Beans, takeOutOrIn: String) -> String {
        var orderMent : String =
        """
        안녕하세요 Yagombucks입니다. 저는 바리스타 \(barista.name)입니다. 방문해주셔셔 감사합니다.
        \(beans)원두로 \(coffee), \(takeOutOrIn)으로 주문하셨습니다.
        """
        
        if coffee == Menu.herbalTea {
            orderMent = "안녕하세요 Yagombucks입니다. 저는 바리스타 \(barista.name)입니다. 방문해주셔셔 감사합니다. \(coffee)로 주문하셨습니다."
        }
        
        if let pickUpTable = pickUpTable {
            orderMent += "\n 진동벨이 울리면 \(pickUpTable)로 와주세요😎"
        }
        return orderMent
    }
    
    func calculate(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(for: price)!
        let paymentMent: String = "가격은 \(result)원입니다."
        
        salesRevenue += price
        return paymentMent
    }
    
    func createDrick(menu: Menu) {
        print("\(menu)를 만든다.")
    }
    
    func giveDrink() {
        print("감사합니다. 맛있게 드세요😊")
    }
    
    func sayTodaySalesRevenue() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(for: salesRevenue)!
        let todaySalesRevenue = "오늘 총매출은 \(result)입니다."
        return todaySalesRevenue
    }
    
    //MARK: 메뉴구성
    enum Beans {
        case nutty
        case acidity
        case decaffeinated
    }

    enum Menu {
        case iceAmericano
        case hotAmericano
        case iceCateLatte
        case hotCateLatte
        case onlyIceEinspener
        case herbalTea
    }
}

//MARK: - 인스턴스 생성

var misterLee: Person = Person(name: "misterLee", age: 30, money: 100000)
var missKim: Person = Person(name: "missKim", age: 20, money: 10000)
missKim.pastime = "커피숍투어🍰☕️"
var yagombucks: CoffeeShop = CoffeeShop(salesRevenue: 0, pickUpTable: "좌측 픽업바", music: "Oasis - Wonderwall", barista: misterLee, mood: "Woody")

yagombucks.customer = missKim
print(missKim.buyCoffee(coffee: .iceAmericano))
print(yagombucks.takeOrder(coffee: .iceAmericano, beans: .nutty, takeOutOrIn: "takeout"))

