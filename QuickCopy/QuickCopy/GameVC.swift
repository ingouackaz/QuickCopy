//
//  GameVC.swift
//  QuickCopy
//
//  Created by Lucas Mourier on 05/04/2015.
//  Copyright (c) 2015 mourierlucas.com. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var number1Button: UIButton!
    @IBOutlet weak var number2Button: UIButton!
    @IBOutlet weak var number3Button: UIButton!
    @IBOutlet weak var number4Button: UIButton!
    @IBOutlet weak var number5Button: UIButton!
    @IBOutlet weak var number6Button: UIButton!
    @IBOutlet weak var number7Button: UIButton!
    @IBOutlet weak var number8Button: UIButton!
    @IBOutlet weak var number9Button: UIButton!
    @IBOutlet weak var number0Button: UIButton!
    
    @IBOutlet weak var quickCopyLabel: UILabel!
    @IBOutlet weak var numberCopy: UILabel!
    @IBOutlet weak var chronoCircle: UILabel!
    @IBOutlet weak var chronoNumber: UILabel!
    
    var _counterNumber : Int = 10
    var _timer : NSTimer = NSTimer()
    func readingMode() {
     
        pauseButton.hidden = true
        number1Button.hidden = true
        number2Button.hidden = true
        number3Button.hidden = true
        number4Button.hidden = true
        number5Button.hidden = true
        number6Button.hidden = true
        number7Button.hidden = true
        number8Button.hidden = true
        number9Button.hidden = true
        number0Button.hidden = true
        
        _timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
    }
    
    func playingMode() {
        
        quickCopyLabel.hidden = true
        numberCopy.hidden = true
        chronoCircle.hidden = true
        chronoNumber.hidden = true
        pauseButton.hidden = false
        number1Button.hidden = false
        number2Button.hidden = false
        number3Button.hidden = false
        number4Button.hidden = false
        number5Button.hidden = false
        number6Button.hidden = false
        number7Button.hidden = false
        number8Button.hidden = false
        number9Button.hidden = false
        number0Button.hidden = false
    }
    
    
   
    func update() {
      
        
        println("Compteur : \(_counterNumber)")
        if (_counterNumber == 0) {
         
        _timer.invalidate()
        playingMode().self
            
        }
        _counterNumber--
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.readingMode()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
