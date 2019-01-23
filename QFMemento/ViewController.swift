//
//  ViewController.swift
//  QFMemento
//
//  Created by 情风 on 2019/1/23.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /**
     备忘录：在不破坏封装性的前提下，捕捉一个对象的内部状态，并在改对象之外保存这个状态。这样以后就可以将该对象恢复到原先保存的状态。
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        gameDemo()
    }


    func gameDemo() {
        
        let role: GameRole = GameRole()
        //初始化
        role.getInitState()
        role.displayState()
        
        //战斗消耗
        role.fight()
        role.displayState()
        
        //保存进度
        let manager:RoleStateManager = RoleStateManager()
        manager.memento = role.saveState()
        
        //Boss太厉害 战死
        role.fightToDeath()
        role.displayState()
        
        //从备忘录恢复进度
        role.recoverState(memento: manager.memento)
        role.displayState()
    }
    
}

