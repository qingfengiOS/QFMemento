//
//  RoleStateMemento.swift
//  QFMemento
//
//  Created by 情风 on 2019/1/23.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

/// 角色状态存储器 （备忘录）
class RoleStateMemento: NSObject {
    
    var health: Int
    var attack: Int
    var defense: Int
    
    init(health: Int, attack: Int, defense: Int) {
        self.health = health
        self.attack = attack
        self.defense = defense
    }
    
}
