//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

var yagomBucks: CoffeeShop = CoffeeShop(barista: misterLee)
var misterLee: Person = Person(name: "misterLee", haveMoney: 10000)
var missKim: Person = Person(name: "missKim", haveMoney: 1500)

missKim.buyCoffee(shop: yagomBucks, coffee: CoffeeList.americano)
