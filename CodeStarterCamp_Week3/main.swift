//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var misterLee: Person = Person(name: "misterLee", age: 22, money: 5000, nationality: "Korea", gender: Person.Gender.man)
var missKim: Person = Person(name: "missKim", age: 35, money: 6000, nationality: "Korea", gender: Person.Gender.woman)

misterLee.getOld()
misterLee.buyCoffee(coffeePrice: 1000)
misterLee.buyCoffee(coffeePrice: 6000)

var yagombucks: CoffeeShop = CoffeeShop(barista: misterLee)

yagombucks.getOrder(orderedMenus: Coffee.latte, Coffee.mocha)
yagombucks.changeMenuPrice(of: Coffee.latte, to: 1300)
