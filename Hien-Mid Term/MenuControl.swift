//
//  MenuControl.swift
//  Hien-Mid Term
//
//  Created by hien tran on 23/12/2016.
//  Copyright © 2016 hien tran. All rights reserved.
//

import UIKit
class MenuControl: UIViewController{
    
    
    @IBOutlet var textbox: UITextField!
    @IBOutlet var picture: UIImageView!
    var CauHoi = 0
    @IBAction func submitBTN(_ sender: Any) {
        if( textbox.text == HinhAnh[CauHoi])
        {
            CauHoi=CauHoi+1
            picture.image = UIImage(named:HinhAnh[CauHoi]+".png")
            textbox.text = "True"
        }
        else
        {
            textbox.text = "Fail"
        }
    }
    
    let HinhAnh:[String] = ["armchair","bed","clock","desk","lamp","mirror","paino","radio","telephone","cat","crab","dog","dolphin","duck","eagle","elephant","leopard","lion","parrot","rabbit","seal","shark","starfish","wolf","busy","contact","cover","delete","disappoint","disk","network","notify","process","recur","refund","search","sharp","shut_down","software","store","strong","wage","waste","board","book","calculator","eraser","notebook","pen","pencil","ruler"]
    
    override func viewDidLoad() {
        picture.image = UIImage(named: HinhAnh[CauHoi]+".png")
        super.viewDidLoad()
       	
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
