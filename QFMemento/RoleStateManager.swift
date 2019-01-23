//
//  RoleStateManager.swift
//  QFMemento
//
//  Created by 情风 on 2019/1/23.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

/// 角色状态管理者 （看管人）
class RoleStateManager: NSObject {
    
    var memento: RoleStateMemento = RoleStateMemento(health: 0, attack: 0, defense: 0)
   
}
