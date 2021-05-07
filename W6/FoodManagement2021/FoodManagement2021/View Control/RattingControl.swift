//
//  RattingControl.swift
//  FoodManagement2021
//
//  Created by CNTT on 5/7/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

@IBDesignable class RattingControl: UIStackView {
    private var actionButtons = [UIButton]()
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupRattingControl()
    }
    required init(coder:NSCoder){
        super.init(coder:coder)
        setupRattingControl()
    }
    //Mark:Defile of setup rating control
    private func setupRattingControl(){
        for _ in 0..<5{
            let button = UIButton()
            button.backgroundColor = UIColor.red
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.addTarget(self, action: #selector(rattingButtonPressed(button:)), for: .touchUpInside)
            addArrangedSubview(button)
            actionButtons += [button]
        }
    }
    @objc private func rattingButtonPressed(button:UIButton){
        if let index = actionButtons.firstIndex(of: button){
            
        }
    }
}
