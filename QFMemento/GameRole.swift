//
//  GameRole.swift
//  QFMemento
//
//  Created by 情风 on 2019/1/23.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

/// 游戏角色 （原发器）
class GameRole: NSObject {

    var health: Int = 0
    var attack: Int = 0
    var defense: Int = 0
    
    
    func displayState() {
        print("当前角色状态：\n体力:\(health)\n攻击力:\(attack)\n防御力:\(defense)\n")
    }
    
    
    /// 初始状态
    func getInitState() {
        self.health = 100
        self.attack = 100
        self.defense = 100
    }
    
    
    /// 战斗消耗
    func fight() {
        print("----战斗----")
        self.health -= 10
        self.attack -= 10
        self.defense -= 10
    }
    
    /// 战死
    func fightToDeath() {
        print("----Boss太厉害，战死----")
        self.health = 0
        self.attack = 0
        self.defense = 0
    }
    
    /// 保存进度
    ///
    /// - Returns: 备忘录对象
    func saveState() -> RoleStateMemento {
        
        return RoleStateMemento.init(health: health, attack: attack, defense: defense)
    }
    
    /// 通过备忘录恢复进度
    ///
    /// - Parameter memento: 备忘录对象
    func recoverState(memento: RoleStateMemento) {
        print("----有备份，重来----")
        self.health = memento.health
        self.attack = memento.attack
        self.defense = memento.defense
    }
    
}

