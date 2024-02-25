import UIKit

class ViewController: UIViewController {
    
    let eggTimes : [String:Int] = ["Soft" : 3 , "Medium" : 4 , "Hard" : 7]
    var secondsRemaining = 60
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
        @objc func updateCounter() {
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds")
                secondsRemaining -= 1
            }
            else{
                titleLabel.text = "DONE!"
            }
        }
        
       
    }
    

