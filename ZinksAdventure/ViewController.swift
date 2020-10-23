//
//  ViewController.swift
//  ZinksAdventure
//
//  Created by Jeff Yardley on 12/19/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

//Sound effects obtained from SoundBible.com


import UIKit
import AVFoundation




/* Interface builder extensions */
//From: https://spin.atomicobject.com/2017/07/18/swift-interface-builder/
extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
}



/*   //Color Definitions turned off for now, might be added back later...

/* Color Definitions */
//From: https://stackoverflow.com/questions/37055755/computing-complementary-triadic-tetradic-and-analagous-colors
extension UIColor {
    
    var complement: UIColor {
        return self.withHueOffset(offset: 0.5)
    }
    
    var splitComplement0: UIColor {
        return self.withHueOffset(offset: 150 / 360)
    }
    
    var splitComplement1: UIColor {
        return self.withHueOffset(offset: 210 / 360)
    }
    
    var triadic0: UIColor {
        return self.withHueOffset(offset: 120 / 360)
    }
    
    var triadic1: UIColor {
        return self.withHueOffset(offset: 240 / 360)
    }
    
    var tetradic0: UIColor {
        return self.withHueOffset(offset: 0.25)
    }
    
    var tetradic1: UIColor {
        return self.complement
    }
    
    var tetradic2: UIColor {
        return self.withHueOffset(offset: 0.75)
    }
    
    var analagous0: UIColor {
        return self.withHueOffset(offset: -1 / 12)
    }
    
    var analagous1: UIColor {
        return self.withHueOffset(offset: 1 / 12)
    }
    
    func withHueOffset(offset: CGFloat) -> UIColor {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return UIColor(hue: fmod(h + offset, 1), saturation: s, brightness: b, alpha: a)
    }
    
    /**
     * Returns random color
     * EXAMPLE: self.backgroundColor = UIColor.random
     */
    // From: https://stackoverflow.com/questions/29779128/how-to-make-a-random-color-with-swift
    static var random: UIColor {
        let r:CGFloat  = .random(in: 0.6 ... 1)
        let g:CGFloat  = .random(in: 0.6 ... 1)
        let b:CGFloat  = .random(in: 0.6 ... 1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
}

*/


func FadeInLabel(label: UILabel){
    UILabel.animate(withDuration: 1) {
        label.alpha = 1
    }
}









class ViewController: UIViewController {
    
    @IBOutlet weak var goalNumber: UILabel!
    @IBOutlet weak var upNumber: UILabel!
    @IBOutlet weak var rightNumber: UILabel!
    @IBOutlet weak var leftNumber: UILabel!
    @IBOutlet weak var downNumber: UILabel!
    @IBOutlet weak var centerNumber: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var upLeftNumber: UILabel!
    @IBOutlet weak var upRightNumber: UILabel!
    @IBOutlet weak var downLeftNumber: UILabel!
    @IBOutlet weak var downRightNumber: UILabel!
    
    
    
    //---  Begin Outer Labels ---
    
    @IBOutlet weak var OneOneNumber: UILabel!
    @IBOutlet weak var OneTwoNumber: UILabel!
    @IBOutlet weak var OneThreeNumber: UILabel!
    @IBOutlet weak var OneFourNumber: UILabel!
    @IBOutlet weak var OneFiveNumber: UILabel!
    @IBOutlet weak var OneSixNumber: UILabel!
    @IBOutlet weak var OneSevenNumber: UILabel!
    @IBOutlet weak var OneEightNumber: UILabel!
    @IBOutlet weak var OneNineNumber: UILabel!
    
    @IBOutlet weak var TwoOneNumber: UILabel!
    @IBOutlet weak var TwoTwoNumber: UILabel!
    @IBOutlet weak var TwoThreeNumber: UILabel!
    @IBOutlet weak var TwoFourNumber: UILabel!
    @IBOutlet weak var TwoFiveNumber: UILabel!
    @IBOutlet weak var TwoSixNumber: UILabel!
    @IBOutlet weak var TwoSevenNumber: UILabel!
    @IBOutlet weak var TwoEightNumber: UILabel!
    @IBOutlet weak var TwoNineNumber: UILabel!
    
    @IBOutlet weak var ThreeOneNumber: UILabel!
    @IBOutlet weak var ThreeTwoNumber: UILabel!
    @IBOutlet weak var ThreeThreeNumber: UILabel!
    @IBOutlet weak var ThreeFourNumber: UILabel!
    @IBOutlet weak var ThreeFiveNumber: UILabel!
    @IBOutlet weak var ThreeSixNumber: UILabel!
    @IBOutlet weak var ThreeSevenNumber: UILabel!
    @IBOutlet weak var ThreeEightNumber: UILabel!
    @IBOutlet weak var ThreeNineNumber: UILabel!
    

    
    
    //--------- Beginning Three Center Horizontal Label Rows....
    @IBOutlet weak var FourOneNumber: UILabel!
    @IBOutlet weak var FourTwoNumber: UILabel!
    @IBOutlet weak var FourThreeNumber: UILabel!
    
    @IBOutlet weak var FourSevenNumber: UILabel!
    @IBOutlet weak var FourEightNumber: UILabel!
    @IBOutlet weak var FourNineNumber: UILabel!
    

    @IBOutlet weak var FiveOneNumber: UILabel!
    @IBOutlet weak var FiveTwoNumber: UILabel!
    @IBOutlet weak var FiveThreeNumber: UILabel!
    
    @IBOutlet weak var FiveSevenNumber: UILabel!
    @IBOutlet weak var FiveEightNumber: UILabel!
    @IBOutlet weak var FiveNineNumber: UILabel!
    
    @IBOutlet weak var SixOneNumber: UILabel!
    @IBOutlet weak var SixTwoNumber: UILabel!
    @IBOutlet weak var SixThreeNumber: UILabel!
    
    @IBOutlet weak var SixSevenNumber: UILabel!
    @IBOutlet weak var SixEightNumber: UILabel!
    @IBOutlet weak var SixNineNumber: UILabel!
    //--------- End Three Center Horizontal Label Rows....
    
    
    @IBOutlet weak var SevenOneNumber: UILabel!
    @IBOutlet weak var SevenTwoNumber: UILabel!
    @IBOutlet weak var SevenThreeNumber: UILabel!
    @IBOutlet weak var SevenFourNumber: UILabel!
    @IBOutlet weak var SevenFiveNumber: UILabel!
    @IBOutlet weak var SevenSixNumber: UILabel!
    @IBOutlet weak var SevenSevenNumber: UILabel!
    @IBOutlet weak var SevenEightNumber: UILabel!
    @IBOutlet weak var SevenNineNumber: UILabel!
    
    @IBOutlet weak var EightOneNumber: UILabel!
    @IBOutlet weak var EightTwoNumber: UILabel!
    @IBOutlet weak var EightThreeNumber: UILabel!
    @IBOutlet weak var EightFourNumber: UILabel!
    @IBOutlet weak var EightFiveNumber: UILabel!
    @IBOutlet weak var EightSixNumber: UILabel!
    @IBOutlet weak var EightSevenNumber: UILabel!
    @IBOutlet weak var EightEightNumber: UILabel!
    @IBOutlet weak var EightNineNumber: UILabel!
    
    @IBOutlet weak var NineOneNumber: UILabel!
    @IBOutlet weak var NineTwoNumber: UILabel!
    @IBOutlet weak var NineThreeNumber: UILabel!
    @IBOutlet weak var NineFourNumber: UILabel!
    @IBOutlet weak var NineFiveNumber: UILabel!
    @IBOutlet weak var NineSixNumber: UILabel!
    @IBOutlet weak var NineSevenNumber: UILabel!
    @IBOutlet weak var NineEightNumber: UILabel!
    @IBOutlet weak var NineNineNumber: UILabel!
    
    //---- End Outer Labels  ---
    
    
    
    
    //Get all tile contents from tile image bundle...
    let fm = FileManager.default
    let bundleURL = Bundle.main.bundleURL
    let path = Bundle.main.resourcePath!
    lazy var items = try! fm.contentsOfDirectory(atPath: path)
    
    lazy var assetURL = bundleURL.appendingPathComponent("tiles2.bundle")
    lazy var imageContents = try! fm.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)
    
    
    
    
    
    
    
    
    lazy var numberLabelArray: [UILabel?] = [upNumber, rightNumber, leftNumber, downNumber, upLeftNumber, upRightNumber, downLeftNumber, downRightNumber, OneOneNumber, OneTwoNumber, OneThreeNumber, OneFourNumber, OneFiveNumber, OneSixNumber, OneSevenNumber, OneEightNumber, OneNineNumber, TwoOneNumber, TwoTwoNumber, TwoThreeNumber, TwoFourNumber, TwoFiveNumber, TwoSixNumber, TwoSevenNumber, TwoEightNumber, TwoNineNumber, ThreeOneNumber, ThreeTwoNumber, ThreeThreeNumber, ThreeFourNumber,ThreeFiveNumber, ThreeSixNumber, ThreeSevenNumber, ThreeEightNumber, ThreeNineNumber, FourOneNumber, FourTwoNumber, FourThreeNumber, FourSevenNumber, FourEightNumber, FourNineNumber, FiveOneNumber, FiveTwoNumber, FiveThreeNumber, FiveSevenNumber, FiveEightNumber, FiveNineNumber, SixOneNumber, SixTwoNumber, SixThreeNumber, SixSevenNumber, SixEightNumber, SixNineNumber, SevenOneNumber, SevenTwoNumber, SevenThreeNumber, SevenFourNumber,
    SevenFiveNumber,
    SevenSixNumber,
    SevenSevenNumber,
    SevenEightNumber,
    SevenNineNumber,
    EightOneNumber,
    EightTwoNumber,
    EightThreeNumber,
    EightFourNumber,
    EightFiveNumber,
    EightSixNumber,
    EightSevenNumber,
    EightEightNumber,
    EightNineNumber,
    NineOneNumber,
    NineTwoNumber,
    NineThreeNumber,
    NineFourNumber,
    NineFiveNumber,
    NineSixNumber,
    NineSevenNumber,
    NineEightNumber,
    NineNineNumber]
    
    

    
    
    
    
    //---- Begin Jewel Labels ----
    
    @IBOutlet weak var jewelLabel1: UILabel!
    @IBOutlet weak var jewelLabel2: UILabel!
    @IBOutlet weak var jewelLabel3: UILabel!
    @IBOutlet weak var jewelLabel4: UILabel!
    @IBOutlet weak var jewelLabel5: UILabel!
    @IBOutlet weak var jewelLabel6: UILabel!
    @IBOutlet weak var jewelLabel7: UILabel!
    @IBOutlet weak var jewelLabel8: UILabel!
    @IBOutlet weak var jewelLabel9: UILabel!
    
    
    
    //---- End Jewel Labels
    
    lazy var jewelLabelArray: [UILabel?] = [jewelLabel1, jewelLabel2, jewelLabel3, jewelLabel4, jewelLabel5, jewelLabel6, jewelLabel7, jewelLabel8, jewelLabel9]
    
    //lazy var jewelsImageArray: [String?] = ["golden_topaz30x30","Alexandrite30x30"]

    
    
    
    
    var centerInt: Int = 0
    var upInt: Int = 0
    var downInt: Int = 0
    var leftInt: Int = 0
    var rightInt: Int = 0
    var upRightInt: Int = 0
    var upLeftInt: Int = 0
    var downLeftInt: Int = 0
    var downRightInt: Int = 0
    
    lazy var levelNumberInt: Int = 10
    var goalNumberInt: Int = Int(arc4random_uniform(10)) + 5
    var goalNumberArray = [Int]()
    var goalObject: String = ""
    var score: Int64 = 0
    var numberOfJewels: Int = 0
    var goldLocations: Array = [15,20,35,75,95,65,105,222,303,676,692,698,909,975,7983,7977,7800,7700,7925,5829,5810,5825,5710,5601,3125,91835,99985,88895,77982, 125001,124997,124996,124995,124994,124993,124992,124991,249996,3749995,5000003,6249987,73999992,82999993,91999994]
    //var goldLocationsTransformed = [15,20,35,75,95,65,105,222,303,909,698,692,7983,676,5829,975,3125,91835,99985,88895,77982]
    var goldObtainedLocations = [Int]()
    var keyLocations: Array = [5,2,11,21,90,100,305,805,696,321,981,335,229,685,732,295,532,671,227,525,672,2024,2112,1975,369,1982]
    var castleLocations: Array = [4,3,7,9,25031,25023,25012,888799,888665,888982,888595,888793,888000,902166,902196,902256,903156,350200,350950,350851,350325,350625,998877566,998876665,998877266,998877966]
    var enemyLocations: Array = [6,10,16,17,34,23,97,69,78,99,216,512,1023,251,328,695,277,224,128,396,725,715,412,315,565,891,721]
    var weaponLocations: Array = [1,7,14,19,1,13,27,28,25,101,105,205,206]
    
    
    //Doorway [ [origin] : [destination] ]
    //var doorwayLocations = [ [105,200,315,415] : [888999,902156,350000,998877666] ]
    //Origin and destination arrays *must be equal* so that mapping can occour...
    var doorwayOrigins = [37,29,45,27,32,200,315,415]
    var doorwayDestinations = [124999,249999,3749999,5000000,6249997,73999995,82999996,91999997]
    var landNames = ["Moldava","Quatwarnia","Xiomania","Zerg","Linuxera","Xitt","Yudderis","Idas"]
    var lastDoorUsed = 0
    var lastDoorDestination = 0
    var doorCanBeUsed: Bool = true
    var goldMaxAtATime: Int = 6
    var consecutiveGoldGotten = 0
    
    
    var firstKeyGoal: Int = 5 //Was 2 to make it simple
    var secondKeyGoal: Int = 10 //Was 5 to make it simple
    var thirdKeyGoal: Int = 20 //Was 10 to make it simple...
    
    var firstKeyObtained: Bool = false
    var secondKeyObtained: Bool = false
    var thirdKeyObtained: Bool = false
    
    var firstCastleUnlocked: Bool = false
    var secondCastleUnlocked: Bool = false
    var thirdCastleUnlocked: Bool = false
    
    var weaponObtained: Bool = false
    var enemiesKilled: Int = 0
    var enemyKillGoal: Int = 3 //Was 3  //E1 should show up if < this, E2 should show up if >= to this
    var enemyKillGoal2: Int = 5 //Was 5  //E2 should show up if < this, E3 should show up if >= this
    var enemyKillGoal3: Int = 9 //Will be 3 ?? //E3 should show up if < this
    
    var gameEnded: Bool = false
    var continueGame: Bool = false
    
    //Checks to make sure Alerts do not come up multiple times...
    var first_time1 = true
    var first_time2 = true
    var first_time3 = true
    
    
    var ding: AVAudioPlayer?
    var tink: AVAudioPlayer?
    

    
    var jewelBasket: [String:Int] = [
        "golden_topaz30x30" : 0,
        "Alexandrite30x30" : 0,
        "Amythest30x30" : 0,
        "Blue_Sapphire30x30" : 0,
        "Blue_Topaz30x30" : 0,
        "Citrine30x30" : 0,
        "diamond30x30" : 0,
        "Emerald30x30" : 0,
        "Imperial_Topaz30x30" : 0,
        "Jade30x30" : 0,
        "opal30x30" : 0,
        "Orange_Hassonite30x30" : 0,
        "Perl30x30" : 0,
        "Red_Garnet30x30" : 0,
        "red_ruby30x30" : 0,
        "Ruby_Jubilee30x30" : 0,
        "sapphire30x30" : 0,
        "Sapphire_Jubilee30x30" : 0,
        "Tanzanite30x30" : 0,
        "Tiger_Eye_Red30x30" : 0,
        "Tigers_Eye30x30" : 0,
        "Tourmaline30x30" : 0
    ]
    
    
    //Dictionary required for both the image name and respective locations...
    var jewelPlacesInts: [String:Int] = [
        "golden_topaz30x30" : Int(arc4random_uniform(100)) + 25,
        "Alexandrite30x30" : Int(arc4random_uniform(1000)) + 26,
        "Amythest30x30" : Int(arc4random_uniform(10000)) + 27,
        "Blue_Sapphire30x30" : Int(arc4random_uniform(100000)) + 28,
        "Blue_Topaz30x30" : Int(arc4random_uniform(1000000)) + 29,
        "Citrine30x30" : Int(arc4random_uniform(10000000)) + 30,
        "diamond30x30" : Int(arc4random_uniform(20000000)) + 31,
        "Emerald30x30" : Int(arc4random_uniform(30000000)) + 32,
        "Imperial_Topaz30x30" : Int(arc4random_uniform(40000000)) + 33,
        "Jade30x30" : Int(arc4random_uniform(50000000)) + 34,
        "opal30x30" : Int(arc4random_uniform(60000000)) + 35,
        "Orange_Hassonite30x30" : Int(arc4random_uniform(70000000)) + 36,
        "Perl30x30" : Int(arc4random_uniform(80000000)) + 37,
        "Red_Garnet30x30" : Int(arc4random_uniform(90000000)) + 38,
        "red_ruby30x30" : Int(arc4random_uniform(100000000)) + 39,
        "Ruby_Jubilee30x30" : Int(arc4random_uniform(110000000)) + 40,
        "sapphire30x30" : Int(arc4random_uniform(120000000)) + 41,
        "Sapphire_Jubilee30x30" : Int(arc4random_uniform(130000000)) + 42,
        "Tanzanite30x30" : Int(arc4random_uniform(140000000)) + 43,
        "Tiger_Eye_Red30x30" : Int(arc4random_uniform(150000000)) + 44,
        "Tigers_Eye30x30" : Int(arc4random_uniform(160000000)) + 45,
        "Tourmaline30x30" : Int(arc4random_uniform(170000000)) + 46
    ]
    
    
    
    
    
    //Dictionary required for both the image name and respective locations...
    var castleLocationInts: [String:Int] = [
        "Castle1" : 64,
        "Castle2" : 128,
        "Castle3" : 256
    ]
    
    
    var keyLocationInts: [String:Int] = [
        "Key1" : 32,
        "Key2" : 198,
        "Key3" : 275
    ]
    
    

    
    
    
    
    //Get the high score...
    let highScore = UserDefaults.standard.string(forKey: "highScore") ?? "0"
    
    //Find out if there was a previous game on the device.  If no data, assume false...
    let wasPreviousGame: Bool = UserDefaults.standard.bool(forKey: "storedWasPreviousGame")
    
    
    
    
    //Set Outer labels' Ints all to zero....
    
    var OneOneInt = 0
    var OneTwoInt = 0
    var OneThreeInt = 0
    var OneFourInt = 0
    var OneFiveInt = 0
    var OneSixInt = 0
    var OneSevenInt = 0
    var OneEightInt = 0
    var OneNineInt = 0
    
    var TwoOneInt = 0
    var TwoTwoInt = 0
    var TwoThreeInt = 0
    var TwoFourInt = 0
    var TwoFiveInt = 0
    var TwoSixInt = 0
    var TwoSevenInt = 0
    var TwoEightInt = 0
    var TwoNineInt = 0
    
    var ThreeOneInt = 0
    var ThreeTwoInt = 0
    var ThreeThreeInt = 0
    var ThreeFourInt = 0
    var ThreeFiveInt = 0
    var ThreeSixInt = 0
    var ThreeSevenInt = 0
    var ThreeEightInt = 0
    var ThreeNineInt = 0
    
    var FourOneInt = 0
    var FourTwoInt = 0
    var FourThreeInt = 0
    var FourFourInt = 0
    var FourFiveInt = 0
    var FourSixInt = 0
    var FourSevenInt = 0
    var FourEightInt = 0
    var FourNineInt = 0
    
    var FiveOneInt = 0
    var FiveTwoInt = 0
    var FiveThreeInt = 0
    var FiveFourInt = 0
    var FiveFiveInt = 0
    var FiveSixInt = 0
    var FiveSevenInt = 0
    var FiveEightInt = 0
    var FiveNineInt = 0
    
    var SixOneInt = 0
    var SixTwoInt = 0
    var SixThreeInt = 0
    var SixFourInt = 0
    var SixFiveInt = 0
    var SixSixInt = 0
    var SixSevenInt = 0
    var SixEightInt = 0
    var SixNineInt = 0
    
    var SevenOneInt = 0
    var SevenTwoInt = 0
    var SevenThreeInt = 0
    var SevenFourInt = 0
    var SevenFiveInt = 0
    var SevenSixInt = 0
    var SevenSevenInt = 0
    var SevenEightInt = 0
    var SevenNineInt = 0
    
    var EightOneInt = 0
    var EightTwoInt = 0
    var EightThreeInt = 0
    var EightFourInt = 0
    var EightFiveInt = 0
    var EightSixInt = 0
    var EightSevenInt = 0
    var EightEightInt = 0
    var EightNineInt = 0
    
    var NineOneInt = 0
    var NineTwoInt = 0
    var NineThreeInt = 0
    var NineFourInt = 0
    var NineFiveInt = 0
    var NineSixInt = 0
    var NineSevenInt = 0
    var NineEightInt = 0
    var NineNineInt = 0
    
    //End Zeroing out....
    
    
    
    lazy var numberIntArray: [Int] = [upInt, rightInt, leftInt, downInt, upLeftInt, upRightInt, downLeftInt, downRightInt, OneOneInt, OneTwoInt, OneThreeInt, OneFourInt, OneFiveInt, OneSixInt, OneSevenInt, OneEightInt, OneNineInt, TwoOneInt, TwoTwoInt, TwoThreeInt, TwoFourInt, TwoFiveInt, TwoSixInt, TwoSevenInt, TwoEightInt, TwoNineInt, ThreeOneInt, ThreeTwoInt, ThreeThreeInt,ThreeFourInt,ThreeFiveInt,ThreeSixInt,ThreeSevenInt,ThreeEightInt,ThreeNineInt,FourOneInt,FourTwoInt,FourThreeInt,FourSevenInt,FourEightInt,FourNineInt,FiveOneInt,FiveTwoInt,FiveThreeInt,
                                             FiveSevenInt,
                                             FiveEightInt,
                                             FiveNineInt,
                                             SixOneInt,
                                             SixTwoInt,
                                             SixThreeInt,
                                             SixSevenInt,
                                             SixEightInt,
                                             SixNineInt,
                                             SevenOneInt,
                                             SevenTwoInt,
                                             SevenThreeInt,
                                             SevenFourInt,
                                             SevenFiveInt,
                                             SevenSixInt,
                                             SevenSevenInt,
                                             SevenEightInt,
                                             SevenNineInt,
                                             EightOneInt,
                                             EightTwoInt,
                                             EightThreeInt,
                                             EightFourInt,
                                             EightFiveInt,
                                             EightSixInt,
                                             EightSevenInt,
                                             EightEightInt,
                                             EightNineInt,
                                             NineOneInt,
                                             NineTwoInt,
                                             NineThreeInt,
                                             NineFourInt,
                                             NineFiveInt,
                                             NineSixInt,
                                             NineSevenInt,
                                             NineEightInt,
                                             NineNineInt]
    
    
    
    
    
    
    
    
    
    
    //Function that makes the numbers used in calculations on the NumberLabels invisible
    //(alpha == 0)
    func HideNumberLabels(){
        numberLabelArray.forEach{
            $0?.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        }
    }
    
    
    
    //Function that makes the NumberLabels' borders clear, so that they don't show up
    //(For better background blending)
    func HideNumberLabelBorders(){
        numberLabelArray.forEach{
            $0?.borderColor = UIColor.clear
        }
    }
    
    
    
    
    
    func HideJewelLabels(){
        jewelLabelArray.forEach{
            $0?.text = ""
        }
    }
    
    
    //Adds to the Jewels obtained and triggers a win if all 22 Jewels are obtained...
    func addToJewels(){
        //Add to number of Jewels obtained, after checking
        //if all 22 possible jewels are obtained...
        if(numberOfJewels == 22){
            print("You obtained all of the Jewels! You WON the Game!!!")
            ShowAlert(message: "You obtained all of the Jewels! You WON the Game!!!")
        }else{
            numberOfJewels += 1
            print("Added to Jewels...")
        }
        
        
        
    }
    
    
    
    //  ------------  START  JEWEL LABEL SCORE CHECKS  ---------------------------
    //  --------------------------------------------------------------------------
    func ShowJewelLabelsWithScore(score: Int){
        
        if(consecutiveGoldGotten < goldMaxAtATime){
        
        //Check score for power of 2 and add jewel if needed...
        switch(score % 2 == 0, score % 4 == 0, score % 8 == 0, score % 16 == 0, score % 32 == 0, score % 64 == 0, score % 128 == 0, score % 256 == 0, score % 512 == 0){
        case(true, true, true, true, true, true, true, true, true):
            print("Score \(score) Divisible by 512")
            //Add jewel to ninth jewelLabel...
            self.jewelLabel9.backgroundColor = UIColor(patternImage: UIImage(named: "Imperial_Topaz30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Imperial_Topaz30x30.png", forKey: "storedJewelLabel9Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel9.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned an Imperial Topaz!")
            
        case(true, true, true, true, true, true, true, true, false):
            print("Score Divisible by 256")
            //Add jewel to eighth jewelLabel...
            self.jewelLabel8.backgroundColor = UIColor(patternImage: UIImage(named: "Tiger_Eye_Red30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Tiger_Eye_Red30x30.png", forKey: "storedJewelLabel8Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel8.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned a Red Tiger Eye!")
            
        case(true, true, true, true, true, true, true, false, false):
            print("Score Divisible by 128")
            //Add jewel to seventh jewelLabel...
            self.jewelLabel7.backgroundColor = UIColor(patternImage: UIImage(named: "Citrine30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Citrine30x30.png", forKey: "storedJewelLabel7Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel7.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned a Citrine!")
            
        case(true, true, true, true, true, true, false, false, false):
            print("Score Divisible by 64")
            //Add jewel to sixth jewelLabel...
            self.jewelLabel6.backgroundColor = UIColor(patternImage: UIImage(named: "Tourmaline30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Tourmaline30x30.png", forKey: "storedJewelLabel6Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel6.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned a Tourmaline!")
            
        case(true, true, true, true, true, false, false, false, false):
            print("Score Divisible by 32")
            //   CRASH HERE FOR SOME REASON ?? (Research later...)
            //Add jewel to fifth jewelLabel...
            self.jewelLabel1.backgroundColor = UIColor(patternImage: UIImage(named: "Orange_Diamond30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Orange_Diamond30x30.png", forKey: "storedJewelLabel5Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel5.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned an Orange Diamond!")
            
            
        case(true, true, true, true, false, false, false, false, false):
            print("Score Divisible by 16")
            //Add jewel to fourth jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Amethyst30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Amethyst30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel4.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned an Amethyst!")
            
        case(true, true, true, false, false, false, false, false, false):
            print("Score Divisible by 8")
            //Add jewel to third jewelLabel...
            self.jewelLabel3.backgroundColor = UIColor(patternImage: UIImage(named: "Orange_Hassonite30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Orange_Hassonite30x30.png", forKey: "storedJewelLabel3Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel3.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned an Orange Hassonite!")
            
        case(true, true, false, false, false, false, false, false, false):
            print("Score Divisible by 4 and 2")
            //Add jewel to second jewelLabel...
            self.jewelLabel2.backgroundColor = UIColor(patternImage: UIImage(named: "Ruby_Jubilee30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Ruby_Jubilee30x30.png", forKey: "storedJewelLabel2Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel2.isHidden = false
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned a Ruby Jubilee!")
    
            
        
        case(false, true, false, false, false, false, false, false, false):
            print("Score Divisible by 4 only")
            if(score == 2){
                //Add jewel to first jewelLabel...
                self.jewelLabel1.backgroundColor = UIColor(patternImage: UIImage(named: "Perl30x30.png")!)
                //Save Background for later game restoration...
                UserDefaults.standard.set("Perl30x30.png", forKey: "storedJewelLabel1Background")
                //Add to obtained Jewels and check for win...
                addToJewels()
                self.jewelLabel1.text = String(describing: numberOfJewels)
                //Unhide Label...
                self.jewelLabel1.isHidden = false
                FadeInLabel(label: self.jewelLabel1)
                PlayPowerOfTwoSound()
                ShowAlert(message: "You have earned a Pearl!")
            }else{
                print("Score greater than 2 and only 4. Ruby Jubilee Earned.")
            }
            
            
            
        case(true, false, false, false, false, false, false, false, false):
            print("Score Divisible by 2")
            if(score == 2){
            //Add jewel to first jewelLabel...
            self.jewelLabel1.backgroundColor = UIColor(patternImage: UIImage(named: "golden_topaz30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("golden_topaz30x30.png", forKey: "storedJewelLabel1Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label...
            self.jewelLabel1.isHidden = false
            FadeInLabel(label: self.jewelLabel1)
            PlayPowerOfTwoSound()
            ShowAlert(message: "You have earned a Golden Topaz!")
            }else{
                print("Score greater than 2. Golden Topaz not earned.")
            }
            
            
        default:
            print("Score is not divisible by any options(^2).")
            
        }
        
        
        
        
        //Check score for ending in 5 and add jewel if needed...
        switch(score % 2 != 0, score % 5 == 0, score > 4096){
            
        case(true, true, true):
            print("Score \(score) Divisible by 5 and not Even and over 4096")
            //Add jewel to first jewelLabel...
            self.jewelLabel3.backgroundColor = UIColor(patternImage: UIImage(named: "Tigers_Eye30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Tigers_Eye30x30.png", forKey: "storedJewelLabel3Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel3.isHidden = false
            PlayEndWithFiveSound()
            ShowAlert(message: "You have earned a Tiger's Eye!")
            
        default:
            print("Score is not divisible by any options(5).")
            
            }//EndIf for consecutiveGoldGotten....
            
        }
        
        
        //Check score divisible by 25, 7 and between 128 and 1024 and add jewel if needed...
        switch(score % 2 != 0, score >= 128, score <= 1024, score % 25 == 0, score % 7 == 0, score % 13 == 0, score % 50 == 0, score % 75 == 0){
            
        case(true, true, true, true, false, false, false, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel3.backgroundColor = UIColor(patternImage: UIImage(named: "Alexandrite30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Alexandrite30x30.png", forKey: "storedJewelLabel3Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel3.isHidden = false
            PlaySpecialOneSound()
            ShowAlert(message: "You have earned an Alexandrite!")
            
            
        case(true, true, true, true, false, true, false, false):
            print("Score \(score) Divisible by 7 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "sapphire30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("sapphire30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Sapphire!")
            
    
        case(false, true, true, false, false, false, true, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "opal30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("opal30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned an Opal!")
            
            
        case(false, false, true, false, false, false, false, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Blue_Topaz30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Blue_Topaz30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Blue Topaz!")
            
            
        case(false, false, false, false, true, false, false, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Jade30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("Jade30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Jade!")
            
            
        case(true, true, true, true, false, false, false, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "sapphire30x30.png")!)
            //Save Background for later game restoration...
            UserDefaults.standard.set("sapphire30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Saphhire!")
            
            
        case(true, true, true, true, false, false, true, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Sapphire_Jubilee30x30.png")!)
            UserDefaults.standard.set("Sapphire_Jubilee30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Sapphire Jubilee!")
            
            
        case(true, true, true, true, false, true, false, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Blue_Sapphire30x30.png")!)
            UserDefaults.standard.set("Blue_Sapphire30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Blue Sapphire!")
            
            
        case(true, true, true, true, true, false, false, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "diamond30x30.png")!)
            UserDefaults.standard.set("diamond30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Diamond!")
            
            
        case(true, true, true, true, true, true, false, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Emerald30x30.png")!)
            UserDefaults.standard.set("Emerald30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned an Emerald!")
            
            
        case(true, true, true, true, false, true, true, true):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Red_Garnet30x30.png")!)
            UserDefaults.standard.set("Red_Garnet30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Red Garnet!")
            
            
            
            
        default:
            print("Score is not divisible by any options(128 <= score <= 1024).")
            
        }
        
        
        
        //Check score divisible by 3, 13, 7, and between 1025 and 8192 and add jewel if needed...
        switch(score % 3 == 0, score >= 1025, score <= 8192, score % 13 == 0, score % 7 == 0){
            
        case(true, true, true, true, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "diamond30x30.png")!)
            UserDefaults.standard.set("diamond30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned a Diamond!")
            
            
        case(true, true, true, false, true):
            print("Score \(score) Divisible by 7 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "Blue_Topaz30x30.png")!)
            UserDefaults.standard.set("Blue_Topaz30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialOneSound()
            
            
        case(false, true, false, false, false):
            print("Score \(score) Divisible by 25 and not Even(128 < score < 1024)")
            //Add jewel to first jewelLabel...
            self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: "opal30x30.png")!)
            UserDefaults.standard.set("opal30x30.png", forKey: "storedJewelLabel4Background")
            //Add to obtained Jewels and check for win...
            addToJewels()
            self.jewelLabel1.text = String(describing: numberOfJewels)
            //Unhide Label and play sound...
            self.jewelLabel4.isHidden = false
            PlaySpecialTwoSound()
            ShowAlert(message: "You have earned an Opal!")
            
        default:
            print("Score is not divisible by any options(128 <= score <= 1024).")
            
        }
        
        
        
        
        
        
        
        
    }
    
    //  ------------  END  JEWEL LABEL SCORE CHECKS  ---------------------------
    //  --------------------------------------------------------------------------
    
    
    
    
    
    
    
    
    
    
    
    //Places the appropriate image tiles on the labels according
    //to the "number system" so that the user sees the tiles instead of numbers...
    func PlaceImageTiles() {
        for i in 0...numberLabelArray.count-1 {
            let imagesArray = NumberCheck().ShowTileNumber(score: self.numberIntArray[i])
            //print("imagesArray: \(imagesArray)")
            if(imagesArray.count > 0){
                //**Gold Blocks should exist at numbers divisible by 5,15 and non-zero....
                //As well as the random already designated locations....
                //let goldExists = (Int((numberLabelArray[i]?.text)!)! % 5 == 0) && (Int((numberLabelArray[i]?.text)!)! != 0) && (Int((numberLabelArray[i]?.text)!)! % 15 == 0)
                let goldExists = (numberLabelArray[i]?.text == String(describing: goalNumberInt) || goldLocations.contains(Int((numberLabelArray[i]?.text)!)!) )
                
                let goldExists2 = (Int((numberLabelArray[i]?.text)!)! >= 40000) && (Int((numberLabelArray[i]?.text)!)! % 15 == 0)
                
                let goldObtainedHere = goldObtainedLocations.contains(Int((numberLabelArray[i]?.text)!)!)
                
                //Add to goldLocations Array if it isn't there...
                if(goldExists2 && !goldLocations.contains(Int((numberLabelArray[i]?.text)!)!)){
                    goldLocations.append(Int((numberLabelArray[i]?.text)!)!)
                }
                
                let jewelExistsHere = jewelPlacesInts.values.contains { (value) -> Bool in
                    value as Int == Int((numberLabelArray[i]?.text)!)
                }
                
                //**Trees Type I should exist at numbers divisible by 5,10 and non-zero, should not exist where an enemy is....
                let treeExists = (Int((numberLabelArray[i]?.text)!)! % 5 == 0) && (Int((numberLabelArray[i]?.text)!)! != 0) && (Int((numberLabelArray[i]?.text)!)! % 10 == 0) && !enemyLocations.contains(Int((numberLabelArray[i]?.text)!)!)
                
                //**Trees Type II should exist at numbers divisible by 25 and non-zero....
                let treeExists2 = (Int((numberLabelArray[i]?.text)!)! % 25 == 0) && (Int((numberLabelArray[i]?.text)!)! != 0)
                
                //**Trees Type III should exist at numbers divisible by 7 OR 9 OR 11 and non-zero....
                let treeExists3 = ( (Int((numberLabelArray[i]?.text)!)! % 17 == 0) || (Int((numberLabelArray[i]?.text)!)! % 19 == 0) || (Int((numberLabelArray[i]?.text)!)! % 21 == 0) ) && (Int((numberLabelArray[i]?.text)!)! != 0)
                
                //Get key locations to check for...
                let keyExists = keyLocations.contains(Int((numberLabelArray[i]?.text)!)!) && score >= firstKeyGoal
                
                //Get castle locations to check for...
                let castleExists = castleLocations.contains(Int((numberLabelArray[i]?.text)!)!)
                
                
                //Enemy Type I show up only if enemyKillGoal has not been yet reached, weapons are obtained, first and
                //second keys obtained, third key has *not* been obtained, but they dissapear once killGoal has been reached.
                let enemy1Exists = enemyLocations.contains(Int((numberLabelArray[i]?.text)!)!) && enemiesKilled < enemyKillGoal && weaponObtained == true && firstKeyObtained == true && secondCastleUnlocked == true && thirdKeyObtained == false && goalObject == "Enemy1"
                
                
                //Enemy Type II show up only if enemyKillGoal2 has not been yet reached, weapons are obtained, first and
                //second keys obtained, third key has *not* been obtained, but they dissapear once killGoal2 has been reached.
                let enemy2Exists = enemyLocations.contains(Int((numberLabelArray[i]?.text)!)!) && weaponObtained == true && firstKeyObtained == true && secondCastleUnlocked == true && enemiesKilled >= enemyKillGoal && enemiesKilled < enemyKillGoal2 && thirdKeyObtained == true && thirdCastleUnlocked == false && goalObject == "Enemy2"
                
                
                //Enemy Type III show up only if enemyKillGoal3 has not been yet reached, weapons are obtained, first, second, and third keys have been obtained, but they dissapear once killGoal3 has been reached.
                let enemy3Exists = enemyLocations.contains(Int((numberLabelArray[i]?.text)!)!) && weaponObtained == true && firstKeyObtained == true && secondCastleUnlocked == true && enemiesKilled >= enemyKillGoal2 && enemiesKilled < enemyKillGoal3 && thirdKeyObtained == true && thirdCastleUnlocked == false && goalObject == "Enemy3"
                
                let weaponExists = weaponLocations.contains(Int((numberLabelArray[i]?.text)!)!) && secondKeyObtained == false && firstCastleUnlocked == true && weaponObtained == false && goalObject == "Weapon"
                
                let doorwayExists = doorwayOrigins.contains(Int((numberLabelArray[i]?.text)!)!) || doorwayDestinations.contains(Int((numberLabelArray[i]?.text)!)!) && goalObject == "Doorway"
                
                
                
                
                
                
                
                //Replace GoalNumber and anything in goldExists with Gold Block...
                if( goldExists || goldExists2 && !goldObtainedHere){
                    
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Gold_Block.png")! )
                    //Debug:  print("Equality?:  \(String(describing: numberLabelArray[i]?.text!)) == \(goalNumberInt)")
                    //End Replacement...
                    
                    
                }else if(jewelExistsHere){
                    //If the jewel is supposed to be on a label, we check if the
                    //player can see it or not
                    for(key, value) in jewelPlacesInts{
                        if(value == Int((numberLabelArray[i]?.text)!)){
                            //If Jewel hasn't been obtained, then player can see the jewel...
                            if(jewelBasket[key]! == 0){  //<-- Getting nil sometimes...(check!)...
                                print("key,value is: \(key,value)")
                                if(numberLabelArray[i]?.backgroundColor != nil){
                                    print("Background color for this Number Label is NOT nil, jewel expected here.")
                                    //var NLA = numberLabelArray[i]?.backgroundColor
                                    //NLA = UIColor(patternImage: UIImage(named: key)! )
                                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: key)! )
                                }else{
                                    print("NumberLabel is nil.(?!)")
                                }
                            }else{
                                //Don't place jewel here, as it's already obtained...
                            }
                        }
                    }
                }else if(treeExists){   //Plant a tree for all to see, plant a treeeee.....
                    //Tree Type 1....
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Tree1")! )
                    
                }else if(treeExists2){
                    //Tree type 2....
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Tree2")! )
                    
                }else if(treeExists3){
                    //Tree type 2....
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Tree3")! )
                    
                }else if(keyExists && (goalObject == "Key1" || goalObject == "Key2" || goalObject == "Key3") ){
                    //print("Key exists on this space.")
                    if(thirdKeyObtained == false && enemiesKilled >= enemyKillGoal && goalObject == "Key3"){
                        //print("Key3 should now be showing up.")
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Key3")! )
                        
                    }else if(secondKeyObtained == false && weaponObtained == true && score >= secondKeyGoal && goalObject == "Key2"){
                        //print("Key2 should now be showing up.")
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Key2")! )
                        
                    }else if(firstKeyObtained == false && score >= firstKeyGoal && goalObject == "Key1"){
                        //print("Key1 should now be showing up.")
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Key1")! )
                    }
                    
                }else if(castleExists && (goalObject == "Castle1" || goalObject == "Castle2" || goalObject == "Castle3") && gameEnded == false){
                    if(thirdKeyObtained && enemiesKilled >= enemyKillGoal3 && !thirdCastleUnlocked && goalObject == "Castle3"){
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Castle3")! )
                        
                    }else if(secondKeyObtained && weaponObtained && !secondCastleUnlocked && goalObject == "Castle2"){
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Castle2")! )
                        
                    }else if(firstKeyObtained && !firstCastleUnlocked && goalObject == "Castle1"){
                        numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Castle1")! )
                    }
                    
                }else if(enemy3Exists){
                    //print("Enemy3 should now be showing up.")
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy3")! )
                    
                }else if(enemy2Exists){
                    //print("Enemy2 should now be showing up.")
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy2")! )
                    
                }else if(enemy1Exists){
                    //print("Enemy1 should now be showing up.")
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy1")! )
                 
                }else if(weaponExists){
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Weapon.png")! )
                    
                }else if(doorwayExists && doorCanBeUsed == true){
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: "Doorway.png")! )
                    
                }else if(numberLabelArray[i]?.text != String(describing: goalNumberInt)){
                    let numberImage = "tiles2.bundle/" + imagesArray[0]
                    //print("\(String(describing: numberLabelArray[i])): \(numberImage)")
                    numberLabelArray[i]?.text = String(describing: numberIntArray[i])
                    numberLabelArray[i]?.backgroundColor = UIColor(patternImage: UIImage(named: numberImage)! )
                }//EndElse...
                
            }//EndIf....
            
        }
        
        
    }
    
    
    
    //Updates numbers on the labels' Array..
    func UpdateLabelTextArray() {
        for i in 0...numberLabelArray.count-1 {
            numberLabelArray[i]?.text = String(describing: numberIntArray[i])
            numberIntArray[i] = Int((numberLabelArray[i]?.text)!)!
        }
    }
    
    

    
    
    func CalculateNumbers(centerNumber: Int) {
        var centerInt = Int(self.centerNumber.text!)
        
        let jewelExistsHereCenter = jewelPlacesInts.values.contains { (value) -> Bool in
            value as Int == Int(self.centerNumber.text!)
        }
        
        let castleExistsHereCenter = castleLocations.contains(centerInt!) && firstKeyObtained == true
        let keyExistsHereCenter = keyLocations.contains(centerInt!) && score >= firstKeyGoal
        let enemyExistsHereCenter = enemyLocations.contains(centerInt!) && weaponObtained == true
        let goldExistsHereCenter = goldLocations.contains(centerInt!)
        let goldExistsHereCenter2 = (centerInt! >= 40000) && (centerInt! % 15 == 0) && !goldObtainedLocations.contains(centerInt!)
        let weaponExistsHereCenter = weaponLocations.contains(centerInt!) && firstCastleUnlocked == true && secondKeyObtained == false
        let doorExistsHereCenter = ( doorwayOrigins.contains(centerInt!) ||  doorwayDestinations.contains(centerInt!))
        
        
        
        if(keyExistsHereCenter && (goalObject == "Key1" || goalObject == "Key2" || goalObject == "Key3") ){
            //Check for first key
            if(firstKeyObtained == false && score >= firstKeyGoal && goalObject == "Key1"){
                firstKeyObtained = true
                goalObject = "Castle1"
                print("\n\n First Castle Key Obtained. Now, go find the First Castle.\n\n")
                ShowAlert(message: "First Castle Key Obtained. Now, go find the First Castle.")
                
                
                //Remove key from the keyLocations Array if it's there, so that it can't be obtained a second time..
                if( keyLocations.contains(centerInt!) ){
                    print("Key was in keyLocationsArray, Count before filtering: \(keyLocations.count)")
                    keyLocations = keyLocations.filter { $0 != centerInt! }
                    print("Key Locations Array Now: \(keyLocations) Count Now: \(keyLocations.count)")
                }
                
                //You can now go get more gold in case you maxed out:
                consecutiveGoldGotten = 0
                
                ShowAppropriateGoal()
                PlaceImageTiles()
            }
            
            //Check for second key
            if(weaponObtained == true && score >= secondKeyGoal && secondKeyObtained == false && goalObject == "Key2"){
                secondKeyObtained = true
                goalObject = "Castle2"
                print("\n\n Second Castle Key Obtained. Now, go find the Second Castle.\n\n")
                ShowAlert(message: "Second Castle Key Obtained. Now, go find the Second Castle.")
                
                ShowAppropriateGoal()
                PlaceImageTiles()
                
                //Remove key from the keyLocations Array if it's there, so that it can't be obtained a second time..
                if( keyLocations.contains(centerInt!) ){
                    print("Key was in keyLocationsArray, Count before filtering: \(keyLocations.count)")
                    keyLocations = keyLocations.filter { $0 != centerInt! }
                    print("Key Locations Array Now: \(keyLocations) Count Now: \(keyLocations.count)")
                }
                
                //You can now go get more gold in case you maxed out:
                consecutiveGoldGotten = 0
                
            }
            
            
            
            //Check for third key
            if(enemiesKilled >= enemyKillGoal && secondKeyObtained == true && secondCastleUnlocked == true && thirdKeyObtained == false && goalObject == "Key3"){
                thirdKeyObtained = true
                print("\n\n Third Castle Key Obtained. Now, kill \(enemyKillGoal2) Type II Enemies, then you can go find the Third Castle.\n\n")
                ShowAlert(message: "Third Castle Key Obtained. Now, go kill \(enemyKillGoal2) Type II Enemies, then \(enemyKillGoal3) Type III Enemies")
                
                ShowAppropriateGoal()
                PlaceImageTiles()
                //No Key/Check Removal needed, as the game ends with this.
            }
            
            //Increment Score...
            score += 1
            self.scoreLabel.text = String(describing: score)
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            //You can now go get more gold in case you maxed out:
            consecutiveGoldGotten = 0
            
            //Check for jewels being earned as per score...
            ShowJewelLabelsWithScore(score: Int(score))
            
            
        }//EndIf...
        
        
        
        if(enemyExistsHereCenter && (goalObject == "Enemy1" || goalObject == "Enemy2" || goalObject == "Enemy3") ){
            enemiesKilled += 1
            
            print("\n\n Score increased by +1 for killing enemy \n\n")
            score += 1
            print("Score now: \(score)")
            self.scoreLabel.text = String(describing: score)
            
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            
            
            //Notify player that enemy has been killed and what type...
            if(goalObject == "Enemy1"){
                print("\n\n You have killed a Type I enemy. \n\n")
                ShowAlert(message: "You have killed a Type I enemy!")
            }else if(goalObject == "Enemy2"){
                print("\n\n You have killed a Type II enemy. \n\n")
                ShowAlert(message: "You have killed a Type II enemy!")
            }else if(goalObject == "Enemy3"){
                print("\n\n You have killed a Type III enemy. \n\n")
                ShowAlert(message: "You have killed a Type III enemy!")
            }
            
            //Advise player that they are done killing different types of enemies
            if(enemiesKilled >= enemyKillGoal3){
                ShowAppropriateGoal()
                ShowAlert(message: "Enough Type III enemies killed. Now, go find the Third Castle to unlock.")
            }
            if(enemiesKilled >= enemyKillGoal2){
                ShowAppropriateGoal()
                ShowAlert(message: "Enough Type II enemies killed. Now, go kill \(enemyKillGoal3) Type III enemies.")
            }
            if(enemiesKilled >= enemyKillGoal){
                ShowAppropriateGoal()
                ShowAlert(message: "Enough Type I enemies killed. Now, go find the Third Castle Key.")
            }
            
            
            //You can now go get more gold in case you maxed out:
            consecutiveGoldGotten = 0
            
            //Check/Show jewels being earned...
            ShowJewelLabelsWithScore(score: Int(score))
            
            
            /*
            print("Score Line 1116: \(score)")
            //Add to score...
            score += 1
            print("Score after: \(score)")
            */
            
            
            
            //Remove enemy from the enemyLocations Array if it's there, so that it can't be killed a second time..
            //Checking enemyLocations a second time in case what was captured is actually in the enemyLocations Array,
            //not simply a goalNumber...
            print("centerInt was in enemyLocationsArray, Count before filtering: \(enemyLocations.count)")
            enemyLocations = enemyLocations.filter { $0 != centerInt! }
            print("centerInt Locations Array Now: \(enemyLocations) Count Now: \(enemyLocations.count)")
            
            
        }
        
        
        
        
        
        
        //Make sure consecutive amounts of gold gotten is <= goldMaxAtATime to score...
        if( (goldExistsHereCenter || goldExistsHereCenter2) && (consecutiveGoldGotten <= goldMaxAtATime)){
            //Remove gold from the goldLocations Array if it's there, so that it can't be obtained a second time..
            //Checking goldLocations a second time in case what was captured is actually in the goldLocations Array,
            //not simply a goalNumber...
                print("Gold was in goldLocationsArray, Count before filtering: \(goldLocations.count)")
                goldLocations = goldLocations.filter { $0 != centerInt! }
                print("Gold Locations Array Now: \(goldLocations) Count Now: \(goldLocations.count)")
            
                //Append to goldObtainedArray to keep track of where gold was gotten,
                //Make sure it doesn't show up again...
                //goldObtainedLocations.append(centerInt!)
            //print("goldObtainedLocations now: \(goldObtainedLocations)")
            
            
            //Play Reward Sound...
            let path = Bundle.main.path(forResource: "Ting.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do{
                ding = try AVAudioPlayer(contentsOf: url)
                ding?.play()
            }catch{
                print("Could not load DING sound file!!")
            }
            
            //Increase score..
            print("Score currently: \(score)")
            print("Gold obtained, +1 score...")
            score += 1
            print("Score after increase: \(score)")
            self.scoreLabel.text = String(describing: score)
            
            //Increase consecutiveGoldGotten to later prevent to much gold to be gotten
            //at a time...
            consecutiveGoldGotten += 1
            
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            
            //Check the score and show jewel if needed....
            ShowJewelLabelsWithScore(score: Int(score))
            
            //Added check for Key Goals to notify player they've reached this goal
            //Since no Alert is popping up to tell the user that they should see the key in certain situations...
            //Prevent Alert from popping up every time score is over the firstKeyGoal.  Simply pop up once and that's it...
            //var first_time3: Bool = true
            if(score >= thirdKeyGoal && goalObject == "Key3" && thirdKeyObtained == false && first_time3 == true){
                ShowAlert(message: "You have earned enough to see the keys to the Third Castle. Find a Third Castle key so that you can unlock the Third Castle.")
                first_time3 = false
            }
            
            //Prevent Alert from popping up every time score is over the firstKeyGoal.  Simply pop up once and that's it...
            //var first_time2: Bool = true
            if(score >= secondKeyGoal && goalObject == "Key2" && secondKeyObtained == false && first_time2 == true){
                ShowAlert(message: "You have earned enough to see the keys to the Second Castle. Find a Second Castle key so that you can unlock the Second Castle.")
                first_time2 = false
            }
            
            //Prevent Alert from popping up every time score is over the firstKeyGoal.  Simply pop up once and that's it...
            //var first_time1: Bool = true
            if(score >= firstKeyGoal && goalObject == "Key1" && firstKeyObtained == false && first_time1 == true){
                ShowAlert(message: "You have earned enough to see the keys to the First Castle. Find a First Castle key so that you can unlock the First Castle.")
                first_time1 = false
            }
            
            ShowAppropriateGoal()
        }else if( (goldExistsHereCenter || goldExistsHereCenter2) && (consecutiveGoldGotten > goldMaxAtATime)){
            ShowAlert(message: "Go get something else besides Gold.")
            score -= 1
        }
        
        
        
        
        if(castleExistsHereCenter && (goalObject == "Castle1" || goalObject == "Castle2" || goalObject == "Castle3" && gameEnded == false) ){
            print("centerInt: \(String(describing: centerInt!)), containedInCastleLocations: \(castleLocations.contains(centerInt!))")
            
            //Check for castle3 Unlocked...
            if(thirdCastleUnlocked == false && enemiesKilled >= enemyKillGoal3 && secondCastleUnlocked == true && goalObject == "Castle3"){
                print("\n\n Third Castle Unlocked!! You win the game!!! \n\n")
                ShowAlert(message: "Third Castle Unlocked!! Now go find the door to the next area!!!")
                //Make door useable to get to another section of the game
                doorCanBeUsed = true
                gameEnded = true
                ShowAppropriateGoal()
                PlaceImageTiles()
                
                //You can now go get more gold in case you maxed out:
                consecutiveGoldGotten = 0
                
            }else{
                print("Third Castle already Unlocked == \(thirdCastleUnlocked).")
            }
            
            //Check for castle2 Unlocked...
            if(secondCastleUnlocked == false && weaponObtained == true && score >= secondKeyGoal && firstCastleUnlocked == true && goalObject == "Castle2"){
                secondCastleUnlocked = true
                print("Second Castle Unlocked.  You must now kill \(enemyKillGoal) enemies to get the Third Castle Key.")
                ShowAlert(message: "Second Castle Unlocked.  You must now kill \(enemyKillGoal) Type I enemies to get the Third Castle Key.")
                PlaceImageTiles()
                ShowAppropriateGoal()
                
                //You can now go get more gold in case you maxed out:
                consecutiveGoldGotten = 0
                
            }else{
                print("Second Castle already Unlocked == \(secondCastleUnlocked).")
            }
            
            //Check for castle1 Unlocked...
            if(firstCastleUnlocked == false && score >= firstKeyGoal && goalObject == "Castle1"){
                goalObject = "Weapon"
                firstCastleUnlocked = true
                print("First Castle Unlocked.  You must now obtain weapons to get the Second Castle Key")
                ShowAlert(message: "First Castle Unlocked.  You must now obtain a weapon to get the Second Castle Key")
                PlaceImageTiles()
                ShowAppropriateGoal()
                
                //You can now go get more gold in case you maxed out:
                consecutiveGoldGotten = 0
                
            }else{
                print("First Castle already Unlocked == \(firstCastleUnlocked).")
            }
            
            score += 1
            self.scoreLabel.text = String(describing: score)
            
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            //Check for jewels being earned, then increment the score...
            ShowJewelLabelsWithScore(score: Int(score))
            
            
            //print("\n\n Castle Exists here. \n\n")
            
        }//EndIf...
        
        
        //If Jewel is captured, process the capture event...
        if(jewelExistsHereCenter){
            //If the jewel is in the center, we pick up the jewel if it hasn't
            //been picked up yet
            for(key, value) in jewelPlacesInts{
                if(value == Int(self.centerNumber.text!)){
                    //If Jewel hasn't been obtained, then we add the jewel to the jewel basket...
                    if(jewelBasket[key]! == 0){
                        jewelBasket[key]! += 1
                        print("Jewel Captured: \(key) at Location: \(value)")
                        //Update Jewel in Jewel Labels on top of screen..
                        self.jewelLabel1.isHidden = false
                        let imageBgrnd = key + ".png"
                        print("Setting jewelLabel1 to: \(imageBgrnd)")
                        self.jewelLabel1.backgroundColor = UIColor(patternImage: UIImage(named: imageBgrnd)!)
                        print("End Jewel label setting")
                        
                        
                        //Add to obtained Jewels and check for win...
                        addToJewels()
                        
                        //Increase score...
                        score += 1
                        
                        //Update score label...
                        self.scoreLabel.text = String(describing: score)
                        
                        //Update Jewel label with number of Jewels...
                        self.jewelLabel1.text = String(describing: numberOfJewels)
                        
                        //Check if score is higher than recorded highScore and increase if it is...
                        if(score > Int(highScore) ?? 0){
                            //Store new high score...
                            UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                            //Display new high score on label...
                            self.highScoreLabel.text = String(score)
                        }
                        
                        
                        //Play a reward sound...
                        PlaySpecialOneSound()
                        
                    }else{
                        //Don't place jewel here, as it's already obtained...
                    }
                }//EndIf...
            }//EndFor...
        }//EndIf...
        
        
        if(weaponExistsHereCenter && weaponObtained == false && goalObject == "Weapon"){
            weaponObtained = true
            goalObject = "Key2"
            score += 1
            ShowJewelLabelsWithScore(score: Int(score))
            self.scoreLabel.text = String(describing: score)
            
            //You can now go get more gold in case you maxed out when you get a weapon:
            consecutiveGoldGotten = 0
            
            
            if(score >= secondKeyGoal){
                ShowAlert(message: "You have obtained a weapon! Now, go find the Second Castle Key. After that, you will have to kill \(enemyKillGoal) Type I enemies to get the Third Castle Key. Happy Hunting!")
            }else{
                ShowAlert(message: "You have obtained a weapon! However, you need to find more gold to see the Second Castle Key. After that, you will have to kill \(enemyKillGoal) Type I enemies to get the Third Castle Key. Happy Hunting!")
            }
            
            
            
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            
            PlaceImageTiles()
            ShowAppropriateGoal()
            

        }
        
        //Use Doorway, if possible, if it exists...
        if(doorExistsHereCenter){
            if(doorCanBeUsed){
                print("Using Doorway....")
                if(doorwayOrigins.contains(centerInt!)){
                    //Travel to Doorway Destination...
                    let indexOfDoorway = doorwayOrigins.firstIndex(of: centerInt!)
                    
                    //Tell the name of the land travelled to:
                    print("Traveling to Doorway Destination: \(landNames[indexOfDoorway!])")
                    ShowAlert(message: "Traveling to Doorway Destination: \(landNames[indexOfDoorway!])")
                    
                    //Change actual center number that corresponds to the door Destination...
                    centerInt = doorwayDestinations[indexOfDoorway!] + 1
                    self.centerNumber.text = String(doorwayDestinations[indexOfDoorway!] + 1)
                    print("centerInt for Doorway(Dest.): \(centerInt!)")
                    
                   
                    CalculateNumbers(centerNumber: centerInt!)
                    
                    //Restart game at new destination...
                    //Weapon is kept...
                    gameEnded = false
                    firstCastleUnlocked = false
                    secondCastleUnlocked = false
                    thirdCastleUnlocked = false
                    first_time1 = false
                    first_time2 = false
                    first_time3 = false
                    firstKeyObtained = false
                    secondKeyObtained = false
                    thirdKeyObtained = false
                    //You can now go get more gold in case you maxed out:
                    consecutiveGoldGotten = 0
                    
                    
                }else if(doorwayDestinations.contains(centerInt!)){
                    //Travel back to Doorway Origin...
                    let indexOfDoorway = doorwayDestinations.firstIndex(of: centerInt!)
                    
                    //Tell the name of the land travelled to:
                    print("Traveling to Doorway Origin: \(landNames[indexOfDoorway!])")
                    ShowAlert(message: "Traveling to Doorway Origin: \(landNames[indexOfDoorway!])")
                    
                    //Change actual center number that corresponds to the door Origin...
                    centerInt = doorwayOrigins[indexOfDoorway!] + 1
                    self.centerNumber.text = String(doorwayOrigins[indexOfDoorway!] + 1)
                    print("centerInt for Doorway(Orig.): \(centerInt!)")
                    CalculateNumbers(centerNumber: centerInt!)
                    
                    //You can now go get more gold in case you maxed out:
                    consecutiveGoldGotten = 0
                
                }
            }else{
                ShowAlert(message: "There is a door here, but you can't see or use it yet!")
            }
            
        }
        
        
        
        if(centerInt! > 999999999999){
            let centerString = String(centerInt!)
            //Turn string into an array of Ints...
            let centerIntArray = centerString.compactMap{Int(String($0))}
            //Collapse Int array into sum of all numbers in the array...
            centerInt = centerIntArray.reduce(0, +)
        }
        
        if(centerInt == goalNumberInt || goldLocations.contains(centerInt!)){
            print("~~~~GOAL ACHIEVED!!!~~~~")
            
            //Add Goal Number to goalNumberArray so that it isn't used again/no duplicates...
            goalNumberArray.append(goalNumberInt)
            
            //Play Reward Sound...
            let path = Bundle.main.path(forResource: "Ting.mp3", ofType: nil)!
            let url = URL(fileURLWithPath: path)
            
            do{
                ding = try AVAudioPlayer(contentsOf: url)
                ding?.play()
            }catch{
                print("Could not load DING sound file!!")
            }
            
            
            
            
            //Level number was += 35.  Reduced this to += 5 to hopefully make things
            //a little easier for the player....
            levelNumberInt += 5
            //Increase goal number by random amount...
            self.goalNumberInt = levelNumberInt - Int(arc4random_uniform(UInt32(levelNumberInt))) + 10
            //Make sure there are no duplicate goal numbers consecutively...
            if(goalNumberArray.contains(self.goalNumberInt)){
                self.goalNumberInt = levelNumberInt - Int(arc4random_uniform(UInt32(levelNumberInt))) + 10
            }
            //Make sure Goal Number does not go over 9999...
            if(self.goalNumberInt > 999999999999){
                let goalString = String(goalNumberInt)
                //Turn string into an array of Ints...
                let goalIntArray = goalString.compactMap{Int(String($0))}
                //Collapse Int array into sum of all numbers in the array...
                self.goalNumberInt = goalIntArray.reduce(0, +)
            }
            
            self.goalNumber.text = String(describing: self.goalNumberInt)
            
            //Add 1 to score....
            print("Score now: \(score) Line 1275, Adding 1 to score:")
            score += 1
            print("Score Line 1277: \(score)")
            //Check the score and show jewel if needed....
            ShowJewelLabelsWithScore(score: Int(score))
            //Update Score Label...
            self.scoreLabel.text = String(describing: score)
            
            
            //Check if score is higher than recorded highScore and increase if it is...
            if(score > Int(highScore) ?? 0){
                //Store new high score...
                UserDefaults.standard.set(String(describing: score), forKey: "highScore")
                //Display new high score on label...
                self.highScoreLabel.text = String(score)
            }
            
            
            //*** The other key checks above this code, in KeyExistsHereCenter checks against keyLocationsArray.
            //*THIS CODE BELOW* checks when the center number equals the GOAL NUMBER. ***
            //Check score to obtain key, if any, and make sure the alert only pops up the first time score reaches
            //goal, not repeatedly...
            
            //Similar to the above key checks in KeyExistsHereCenter
            //var first_time1 = true
            //var first_time2 = true
            //var first_time3 = true
            
            if(score >= firstKeyGoal && firstKeyObtained == false && first_time1 == true){
                PlayPowerOfTwoSound()
                goalObject = "Key1"
                print("\n\n You have earned enough to see the keys to the First Castle! \n\n")
                ShowAlert(message: "You have earned enough to see the keys to the First Castle!")
                ShowAppropriateGoal()
                PlaceImageTiles()
                first_time1 = false
                
            }else if(score >= secondKeyGoal && secondKeyObtained == false && first_time2 == true){
                PlayPowerOfTwoSound()
                goalObject = "Key2"
                print("\n\n You have earned enough to see the keys to the Second Castle! \n\n")
                ShowAlert(message: "You have earned enough to see the keys to the Second Castle!")
                ShowAppropriateGoal()
                PlaceImageTiles()
                first_time2 = false
                
            }else if(score >= thirdKeyGoal && thirdKeyObtained == false && enemiesKilled >= enemyKillGoal && first_time3 == true){
                PlayPowerOfTwoSound()
                goalObject = "Key3"
                print("\n\n You have earned enough to see the keys to the Third Castle! \n\n")
                ShowAlert(message: "You have earned enough to see the keys to the Third Castle!")
                ShowAppropriateGoal()
                PlaceImageTiles()
                first_time3 = false
            }
            
            
            
            //Change number label/background colors...Might be added back in later
            //Commented out for now...
            //let randomColor: UIColor = UIColor.random.triadic1
            //view.backgroundColor = randomColor.complement
            
            
            /*  // Maybe later the other labels will have color changed, but not now... //
            self.upLeftNumber.backgroundColor = randomColor.analagous0
            self.upLeftNumber.borderColor = self.upLeftNumber.backgroundColor?.complement
            
            self.upNumber.backgroundColor = randomColor
            self.upNumber.borderColor = self.upNumber.backgroundColor?.complement
            
            self.upRightNumber.backgroundColor = randomColor.analagous1
            self.upRightNumber.borderColor = self.upRightNumber.backgroundColor?.complement
            
            self.downLeftNumber.backgroundColor = randomColor.analagous1
            self.downLeftNumber.borderColor = self.downLeftNumber.backgroundColor?.complement
            
            self.downNumber.backgroundColor = randomColor
            self.downNumber.borderColor = self.downNumber.backgroundColor?.complement
            
            self.downRightNumber.backgroundColor = randomColor.analagous0
            self.downRightNumber.borderColor = self.downRightNumber.backgroundColor?.complement
            
            self.leftNumber.backgroundColor = self.downLeftNumber.backgroundColor?.analagous1
            self.leftNumber.borderColor = self.leftNumber.backgroundColor?.complement
            
            self.rightNumber.backgroundColor = self.downRightNumber.backgroundColor?.analagous0
            self.rightNumber.borderColor = self.rightNumber.backgroundColor?.complement
            */
        }
        
        //------ Calculations for Labels -----------------------
        
        
        self.upInt = centerInt! * 2
        self.downInt = centerInt!/2
        self.leftInt = 3 * centerInt! + 1
        self.rightInt = ((centerInt! - 1)/3)
        
            self.upLeftInt = self.leftInt * 2
            self.upRightInt = self.rightInt * 2
            self.downLeftInt = self.leftInt/2
            self.downRightInt = self.rightInt/2
        
        
        
            self.FourThreeInt = 3 * self.upLeftInt + 1 //Left of upLeftNumber label
            self.FiveThreeInt = 3 * self.leftInt + 1 //Left of leftNumber label
            self.SixThreeInt = 3 * self.downLeftInt + 1 //Left of downLeftNumber label
        
            self.FourSevenInt = ((self.upRightInt - 1)/3)  //Right of upRightNumber label
            self.FiveSevenInt = ((self.rightInt - 1)/3) //Right of rightNumber label
            self.SixSevenInt = ((self.downRightInt - 1)/3) //Right of downRightNumber label
        
            self.ThreeFourInt = self.upLeftInt * 2 //Above upLeftNumber Label
            self.ThreeFiveInt = self.upInt * 2 //Above upNumber Label   (center of board above centerInt)
            self.ThreeSixInt = self.upRightInt * 2 //Above upRightNumber Label
         
            self.SevenFourInt = self.downLeftInt * 2 //Below downLeftNumber Label
            self.SevenFiveInt = self.downInt * 2 //Below upNumber Label   (center of board below centerInt)
            self.SevenSixInt = self.downRightInt * 2 //Below downRightNumber Label
         
        
            self.ThreeThreeInt = 3 * self.ThreeFourInt + 1 //Left of ThreeFourNumber label
            self.ThreeSevenInt = ((self.ThreeSixInt - 1)/3) //Right of ThreeSixNumber label
            self.SevenThreeInt = 3 * self.SevenFourInt + 1 //Left of SevenFourNumber label
            self.SevenSevenInt = ((self.SevenSixInt - 1)/3) //Right of SevenSixNumber label
        
        //***From here, path convolutes, or "snakes" around the board***...
            self.TwoThreeInt = self.ThreeThreeInt * 2 //Above ThreeThreeNumber label
            self.TwoTwoInt = 3 * self.TwoThreeInt + 1 //Left of TwoThreeNumber label
            self.ThreeTwoInt = self.TwoTwoInt / 2 //Below TwoTwoNumber label
            self.FourTwoInt = self.ThreeTwoInt / 2 //Below ThreeTwoNumber label
            self.FiveTwoInt = self.FourTwoInt / 2 //Below FourTwoNumber label
            self.FiveOneInt = 3 * self.FiveTwoInt + 1 //Left of FiveTwoNumber label
            self.FourOneInt = self.FiveOneInt * 2 //Above FiveOneNumber label
            self.ThreeOneInt = self.FourOneInt * 2 //Above FourOneNumber label
            self.TwoOneInt = self.ThreeOneInt * 2 //Above ThreeOneNumber label
            self.OneOneInt = self.TwoOneInt * 2 //Above TwoOneNumber label
            self.OneTwoInt = ((self.OneOneInt - 1)/3) //Right of OneOneNumber label
            self.OneThreeInt = ((self.OneTwoInt - 1)/3) //Right of OneTwoNumber label
            self.OneFourInt = ((self.OneThreeInt - 1)/3) //Right of OneThreeNumber label
            self.TwoFourInt = self.OneFourInt / 2 //Below OneFourNumber label
        self.TwoFiveInt = ((self.TwoFourInt - 1)/3) //Right of TwoFourNumber label
        self.OneFiveInt = self.TwoFiveInt * 2 //Above TwoFiveNumber label
        self.OneSixInt = ((self.OneFiveInt - 1)/3) //Right of OneFiveNumber label
        self.TwoSixInt = self.OneSixInt / 2 //Below OneSixNumber label
        self.TwoSevenInt = 3 * self.TwoSixInt + 1 //Left of TwoSixNumber label
        self.OneSevenInt = self.TwoSevenInt * 2 //Above TwoSevenNumber label
        self.OneEightInt = ((self.OneSevenInt - 1)/3) //Right of OneSevenNumber label
        self.OneNineInt = ((self.OneEightInt - 1)/3) //Right of OneEightNumber label
        self.TwoNineInt = self.OneNineInt / 2 //Below OneNineNumber label
        self.TwoEightInt = 3 * self.TwoNineInt + 1 //Left of TwoNineNumber label
        self.ThreeEightInt = self.TwoEightInt / 2 //Below TwoEightNumber label
        self.ThreeNineInt = ((self.ThreeEightInt - 1)/3) //Right of ThreeEightNumber label
        self.FourNineInt = self.ThreeNineInt / 2 //Below ThreeNineNumber label
        self.FourEightInt = 3 * self.FourNineInt + 1 //Left of FourNineNumber label
        self.FiveEightInt = self.FourEightInt / 2 //Below FourEightNumber label
        self.FiveNineInt = ((self.FiveEightInt - 1)/3) //Right of FiveEightNumber label
        self.SixNineInt = self.FiveNineInt / 2 //Below FiveNineNumber label
        self.SixEightInt = 3 * self.SixNineInt + 1 //Left of SixNineNumber label
        self.SevenEightInt = self.SixEightInt / 2 //Below SixEightNumber label
        self.SevenNineInt = ((self.SevenEightInt - 1)/3) //Right of SevenEightNumber label
        self.EightNineInt = self.SevenNineInt / 2 //Below SevenNineNumber label
        self.NineNineInt = self.EightNineInt / 2 //Below EightNineNumber label
        self.NineEightInt = 3 * self.NineNineInt + 1 //Left of NineNineNumber label
        self.EightEightInt = self.NineEightInt * 2 //Above NineEightNumber label
        self.EightSevenInt = 3 * self.EightEightInt + 1 //Left of EightEightNumber label
        self.NineSevenInt = self.EightSevenInt / 2 //Below EightSevenNumber label
        self.NineSixInt = 3 * self.NineSevenInt + 1 //Left of NineSevenNumber label
        self.EightSixInt = self.NineSixInt * 2 //Above NineSixNumber label
        self.EightFiveInt = 3 * self.EightSixInt + 1 //Left of EightSixNumber label
        self.NineFiveInt = self.EightFiveInt / 2 //Below EightFiveNumber label
        self.NineFourInt = 3 * self.NineFiveInt + 1 //Left of NineFiveNumber label
        self.EightFourInt = self.NineFourInt * 2 //Above NineFourNumber label
        self.EightThreeInt = 3 * self.EightFourInt + 1 //Left of EightFourNumber label
        self.EightTwoInt = 3 * self.EightThreeInt + 1 //Left of EightThreeNumber label
        self.SevenTwoInt = self.EightTwoInt * 2 //Above EightTwoNumber label
        self.SixTwoInt = self.SevenTwoInt * 2 //Above SevenTwoNumber label
        self.SixOneInt = 3 * self.SixTwoInt + 1 //Left of SixTwoNumber label
        self.SevenOneInt = self.SixOneInt / 2 //Below SixOneNumber label
        self.EightOneInt = self.SevenOneInt / 2 //Below SevenOneNumber label
        self.NineOneInt = self.EightOneInt / 2 //Below EightOneNumber label
        self.NineTwoInt = ((self.NineOneInt - 1)/3) //Right of NineOneNumber label
        self.NineThreeInt = ((self.NineTwoInt - 1)/3) //Right of NineTwoNumber label
        
        //--------  End Calculations for Labels -------------------
        
        
        
        
        
        //--------  Begin Labels -------------------
        //Debug...
        //print("Starting PlaceImageTiles...")
        
        //Place appropriate images tiles on labels on background thread....
        //let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
        //dispatchQueue.async{
        
        self.PlaceImageTiles()
        
        //print("Calling ShowAppropriateGoal Function...")
        //Show Goal to be strived for...
        self.ShowAppropriateGoal()
        
        
        //}
        
        //Debug...
        //print("Ending PlaceImageTiles...")
        
        //print("IntCount: \(numberIntArray.count)")
        
        
        
        //Label texts are given values for calulations
        //even if they are not shown to the user...
        //upInt, rightInt, leftInt, downInt, upLeftInt, upRightInt, downLeftInt, downRightInt, OneOne.....
        upNumber.text = String(describing: upInt)
        numberIntArray[numberIntArray.count - 80] = upInt
        rightNumber.text = String(describing: rightInt)
        numberIntArray[numberIntArray.count - 79] = rightInt
        leftNumber.text = String(describing: leftInt)
        numberIntArray[numberIntArray.count - 78] = leftInt
        downNumber.text = String(describing: downInt)
        numberIntArray[numberIntArray.count - 77] = downInt
        
        upLeftNumber.text = String(describing: upLeftInt)
        numberIntArray[numberIntArray.count - 76] = upLeftInt
        upRightNumber.text = String(describing: upRightInt)
        numberIntArray[numberIntArray.count - 75] = upRightInt
        downLeftNumber.text = String(describing: downLeftInt)
        numberIntArray[numberIntArray.count - 74] = downLeftInt
        downRightNumber.text = String(describing: downRightInt)
        numberIntArray[numberIntArray.count - 73] = downRightInt
        
        
        OneOneNumber.text = String(describing: OneOneInt)
        numberIntArray[numberIntArray.count - 72] = OneOneInt
        OneTwoNumber.text = String(describing: OneTwoInt)
        numberIntArray[numberIntArray.count - 71] = OneTwoInt
        OneThreeNumber.text = String(describing: OneThreeInt)
        numberIntArray[numberIntArray.count - 70] = OneThreeInt
        OneFourNumber.text = String(describing: OneFourInt)
        numberIntArray[numberIntArray.count - 69] = OneFourInt
        OneFiveNumber.text = String(describing: OneFiveInt)
        numberIntArray[numberIntArray.count - 68] = OneFiveInt
        OneSixNumber.text = String(describing: OneSixInt)
        numberIntArray[numberIntArray.count - 67] = OneSixInt
        OneSevenNumber.text = String(describing: OneSevenInt)
        numberIntArray[numberIntArray.count - 66] = OneSevenInt
        OneEightNumber.text = String(describing: OneEightInt)
        numberIntArray[numberIntArray.count - 65] = OneEightInt
        OneNineNumber.text = String(describing: OneNineInt)
        numberIntArray[numberIntArray.count - 64] = OneNineInt
        
        TwoOneNumber.text = String(describing: TwoOneInt)
        numberIntArray[numberIntArray.count - 63] = TwoOneInt
        TwoTwoNumber.text = String(describing: TwoTwoInt)
        numberIntArray[numberIntArray.count - 62] = TwoTwoInt
        TwoThreeNumber.text = String(describing: TwoThreeInt)
        numberIntArray[numberIntArray.count - 61] = TwoThreeInt
        TwoFourNumber.text = String(describing: TwoFourInt)
        numberIntArray[numberIntArray.count - 60] = TwoFourInt
        TwoFiveNumber.text = String(describing: TwoFiveInt)
        numberIntArray[numberIntArray.count - 59] = TwoFiveInt
        TwoSixNumber.text = String(describing: TwoSixInt)
        numberIntArray[numberIntArray.count - 58] = TwoSixInt
        TwoSevenNumber.text = String(describing: TwoSevenInt)
        numberIntArray[numberIntArray.count - 57] = TwoSevenInt
        TwoEightNumber.text = String(describing: TwoEightInt)
        numberIntArray[numberIntArray.count - 56] = TwoEightInt
        TwoNineNumber.text = String(describing: TwoNineInt)
        numberIntArray[numberIntArray.count - 55] = TwoNineInt
        
        ThreeOneNumber.text = String(describing: ThreeOneInt)
        numberIntArray[numberIntArray.count - 54] = ThreeOneInt
        ThreeTwoNumber.text = String(describing: ThreeTwoInt)
        numberIntArray[numberIntArray.count - 53] = ThreeTwoInt
        ThreeThreeNumber.text = String(describing: ThreeThreeInt)
        numberIntArray[numberIntArray.count - 52] = ThreeThreeInt
        ThreeFourNumber.text = String(describing: ThreeFourInt)
        numberIntArray[numberIntArray.count - 51] = ThreeFourInt
        ThreeFiveNumber.text = String(describing: ThreeFiveInt)
        numberIntArray[numberIntArray.count - 50] = ThreeFiveInt
        ThreeSixNumber.text = String(describing: ThreeSixInt)
        numberIntArray[numberIntArray.count - 49] = ThreeSixInt
        ThreeSevenNumber.text = String(describing: ThreeSevenInt)
        numberIntArray[numberIntArray.count - 48] = ThreeSevenInt
        ThreeEightNumber.text = String(describing: ThreeEightInt)
        numberIntArray[numberIntArray.count - 47] = ThreeEightInt
        ThreeNineNumber.text = String(describing: ThreeNineInt)
        numberIntArray[numberIntArray.count - 46] = ThreeNineInt
        
        FourOneNumber.text = String(describing: FourOneInt)
        numberIntArray[numberIntArray.count - 45] = FourOneInt
        FourTwoNumber.text = String(describing: FourTwoInt)
        numberIntArray[numberIntArray.count - 44] = FourTwoInt
        FourThreeNumber.text = String(describing: FourThreeInt)
        numberIntArray[numberIntArray.count - 43] = FourThreeInt
        //4-6 don't exist, as that's the center grid...
        FourSevenNumber.text = String(describing: FourSevenInt)
        numberIntArray[numberIntArray.count - 42] = FourSevenInt
        FourEightNumber.text = String(describing: FourEightInt)
        numberIntArray[numberIntArray.count - 41] = FourEightInt
        FourNineNumber.text = String(describing: FourNineInt)
        numberIntArray[numberIntArray.count - 40] = FourNineInt
        
        FiveOneNumber.text = String(describing: FiveOneInt)
        numberIntArray[numberIntArray.count - 39] = FiveOneInt
        FiveTwoNumber.text = String(describing: FiveTwoInt)
        numberIntArray[numberIntArray.count - 38] = FiveTwoInt
        FiveThreeNumber.text = String(describing: FiveThreeInt)
        numberIntArray[numberIntArray.count - 37] = FiveThreeInt
        //4-6 don't exist, as that's the center grid...
        FiveSevenNumber.text = String(describing: FiveSevenInt)
        numberIntArray[numberIntArray.count - 36] = FiveSevenInt
        FiveEightNumber.text = String(describing: FiveEightInt)
        numberIntArray[numberIntArray.count - 35] = FiveEightInt
        FiveNineNumber.text = String(describing: FiveNineInt)
        numberIntArray[numberIntArray.count - 34] = FiveNineInt
        
        SixOneNumber.text = String(describing: SixOneInt)
        numberIntArray[numberIntArray.count - 33] = SixOneInt
        
        SixTwoNumber.text = String(describing: SixTwoInt)
        numberIntArray[numberIntArray.count - 32] = SixTwoInt
        
        SixThreeNumber.text = String(describing: SixThreeInt)
        numberIntArray[numberIntArray.count - 31] = SixThreeInt
        
        //4-6 don't exist, as that's the center grid...
        SixSevenNumber.text = String(describing: SixSevenInt)
        numberIntArray[numberIntArray.count - 30] = SixSevenInt
        SixEightNumber.text = String(describing: SixEightInt)
        numberIntArray[numberIntArray.count - 29] = SixEightInt
        SixNineNumber.text = String(describing: SixNineInt)
        numberIntArray[numberIntArray.count - 28] = SixNineInt
        
        SevenOneNumber.text = String(describing: SevenOneInt)
        numberIntArray[numberIntArray.count - 27] = SevenOneInt
        SevenTwoNumber.text = String(describing: SevenTwoInt)
        numberIntArray[numberIntArray.count - 26] = SevenTwoInt
        SevenThreeNumber.text = String(describing: SevenThreeInt)
        numberIntArray[numberIntArray.count - 25] = SevenThreeInt
        SevenFourNumber.text = String(describing: SevenFourInt)
        numberIntArray[numberIntArray.count - 24] = SevenFourInt
        SevenFiveNumber.text = String(describing: SevenFiveInt)
        numberIntArray[numberIntArray.count - 23] = SevenFiveInt
        SevenSixNumber.text = String(describing: SevenSixInt)
        numberIntArray[numberIntArray.count - 22] = SevenSixInt
        SevenSevenNumber.text = String(describing: SevenSevenInt)
        numberIntArray[numberIntArray.count - 21] = SevenSevenInt
        SevenEightNumber.text = String(describing: SevenEightInt)
        numberIntArray[numberIntArray.count - 20] = SevenEightInt
        SevenNineNumber.text = String(describing: SevenNineInt)
        numberIntArray[numberIntArray.count - 19] = SevenNineInt
        
        EightOneNumber.text = String(describing: EightOneInt)
        numberIntArray[numberIntArray.count - 18] = EightOneInt
        EightTwoNumber.text = String(describing: EightTwoInt)
        numberIntArray[numberIntArray.count - 17] = EightTwoInt
        EightThreeNumber.text = String(describing: EightThreeInt)
        numberIntArray[numberIntArray.count - 16] = EightThreeInt
        EightFourNumber.text = String(describing: EightFourInt)
        numberIntArray[numberIntArray.count - 15] = EightFourInt
        EightFiveNumber.text = String(describing: EightFiveInt)
        numberIntArray[numberIntArray.count - 14] = EightFiveInt
        EightSixNumber.text = String(describing: EightSixInt)
        numberIntArray[numberIntArray.count - 13] = EightSixInt
        EightSevenNumber.text = String(describing: EightSevenInt)
        numberIntArray[numberIntArray.count - 12] = EightSevenInt
        EightEightNumber.text = String(describing: EightEightInt)
        numberIntArray[numberIntArray.count - 11] = EightEightInt
        EightNineNumber.text = String(describing: EightNineInt)
        numberIntArray[numberIntArray.count - 10] = EightNineInt
        
        NineOneNumber.text = String(describing: NineOneInt)
        numberIntArray[numberIntArray.count - 9] = NineOneInt
        NineTwoNumber.text = String(describing: NineTwoInt)
        numberIntArray[numberIntArray.count - 8] = NineTwoInt
        NineThreeNumber.text = String(describing: NineThreeInt)
        numberIntArray[numberIntArray.count - 7] = NineThreeInt
        NineFourNumber.text = String(describing: NineFourInt)
        numberIntArray[numberIntArray.count - 6] = NineFourInt
        NineFiveNumber.text = String(describing: NineFiveInt)
        numberIntArray[numberIntArray.count - 5] = NineFiveInt
        NineSixNumber.text = String(describing: NineSixInt)
        numberIntArray[numberIntArray.count - 4] = NineSixInt
        NineSevenNumber.text = String(describing: NineSevenInt)
        numberIntArray[numberIntArray.count - 3] = NineSevenInt
        NineEightNumber.text = String(describing: NineEightInt)
        numberIntArray[numberIntArray.count - 2] = NineEightInt
        NineNineNumber.text = String(describing: NineNineInt)
        numberIntArray[numberIntArray.count - 1] = NineNineInt
        
        
        //Place appropriate images tiles on labels again
        //to prevent update issues....
        PlaceImageTiles()
        
        
        //--------  End Labels -------------------
        
    }
    
    
    //Swipe gesture recognizer calls opposite functions to the directions used
    //as swiping right and the numbers actually going right instead of left
    //actually makes more sense...
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizer.Direction.right:
                //print("Swiped right")
                //PlayClickSound()
                self.centerNumber.text = leftNumber.text
                //print("Saving centerNumber.text: \(centerNumber.text!)")
                //UserDefaults.standard.set(Int(centerNumber.text!), forKey: "storedCenterInt")
                
                self.CalculateNumbers(centerNumber: Int(centerNumber.text!)! )
                
                GameSaveState(centerNumber: centerNumber.text!, score: score, numberJewels: numberOfJewels, goalNumber: goalNumberInt, goalObject: goalObject, firstKeyObtained: firstKeyObtained, secondKeyObtained: secondKeyObtained, thirdKeyObtained: thirdKeyObtained, firstCastleUnlocked: firstCastleUnlocked, secondCastleUnlocked: secondCastleUnlocked, thirdCastleUnlocked: thirdCastleUnlocked, enemiesKilled: enemiesKilled, weaponObtained: weaponObtained, jewelBasket: jewelBasket, jewelPlacesInts: jewelPlacesInts,firstTime1: first_time1, firstTime2: first_time2, firstTime3: first_time3)
                
                UserDefaults.standard.set(true, forKey: "storedWasPreviousGame")
                
                
            case UISwipeGestureRecognizer.Direction.down:
                //print("Swiped down")
                //PlayClickSound()
                centerNumber.text = upNumber.text
                //print("Saving centerNumber.text: \(String(describing: centerNumber.text))")
                //UserDefaults.standard.set(String(describing: centerNumber.text), forKey: "storedCenterInt")
                
                CalculateNumbers(centerNumber: Int(centerNumber.text!)! )
                
                GameSaveState(centerNumber: centerNumber.text!, score: score, numberJewels: numberOfJewels, goalNumber: goalNumberInt, goalObject: goalObject, firstKeyObtained: firstKeyObtained, secondKeyObtained: secondKeyObtained, thirdKeyObtained: thirdKeyObtained, firstCastleUnlocked: firstCastleUnlocked, secondCastleUnlocked: secondCastleUnlocked, thirdCastleUnlocked: thirdCastleUnlocked, enemiesKilled: enemiesKilled, weaponObtained: weaponObtained, jewelBasket: jewelBasket, jewelPlacesInts: jewelPlacesInts,firstTime1: first_time1, firstTime2: first_time2, firstTime3: first_time3)
                
                UserDefaults.standard.set(true, forKey: "storedWasPreviousGame")
                
                
            case UISwipeGestureRecognizer.Direction.left:
                //print("Swiped left")
                //PlayClickSound()
                centerNumber.text = rightNumber.text
                //print("Saving centerNumber.text: \(String(describing: centerNumber.text))")
                //UserDefaults.standard.set(String(describing: centerNumber.text), forKey: "storedCenterInt")
                
                CalculateNumbers(centerNumber: Int(centerNumber.text!)! )
                
                GameSaveState(centerNumber: centerNumber.text!, score: score, numberJewels: numberOfJewels, goalNumber: goalNumberInt, goalObject: goalObject, firstKeyObtained: firstKeyObtained, secondKeyObtained: secondKeyObtained, thirdKeyObtained: thirdKeyObtained, firstCastleUnlocked: firstCastleUnlocked, secondCastleUnlocked: secondCastleUnlocked, thirdCastleUnlocked: thirdCastleUnlocked, enemiesKilled: enemiesKilled, weaponObtained: weaponObtained, jewelBasket: jewelBasket, jewelPlacesInts: jewelPlacesInts,firstTime1: first_time1, firstTime2: first_time2, firstTime3: first_time3)
                
                UserDefaults.standard.set(true, forKey: "storedWasPreviousGame")
                
                
            case UISwipeGestureRecognizer.Direction.up:
                //print("Swiped up")
                //PlayClickSound()
                centerNumber.text = downNumber.text
                //print("Saving centerNumber.text: \(String(describing: centerNumber.text))")
                //UserDefaults.standard.set(String(describing: centerNumber.text), forKey: "storedCenterInt")
                
                CalculateNumbers(centerNumber: Int(centerNumber.text!)! )
                
                GameSaveState(centerNumber: centerNumber.text!, score: score, numberJewels: numberOfJewels, goalNumber: goalNumberInt, goalObject: goalObject, firstKeyObtained: firstKeyObtained, secondKeyObtained: secondKeyObtained, thirdKeyObtained: thirdKeyObtained, firstCastleUnlocked: firstCastleUnlocked, secondCastleUnlocked: secondCastleUnlocked, thirdCastleUnlocked: thirdCastleUnlocked, enemiesKilled: enemiesKilled, weaponObtained: weaponObtained, jewelBasket: jewelBasket, jewelPlacesInts: jewelPlacesInts,firstTime1: first_time1, firstTime2: first_time2, firstTime3: first_time3)
                
                UserDefaults.standard.set(true, forKey: "storedWasPreviousGame")
                
                
            default:
                break
                
            }
            
        }
        
    }
    
    
    
    //-------------  BEGIN Sound Playing Functions.. -----------------------
    
    
    func PlayPowerOfTwoSound() {
        //Play Sound every time score of power of two is achieved...
        let path = Bundle.main.path(forResource: "sms-alert-1-daniel_simon.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            ding = try AVAudioPlayer(contentsOf: url)
            ding?.play()
        }catch{
            print("Could not load Power 2 sound file!!")
        }
    }
    
    
    
    
    
    func PlayEndWithFiveSound() {
        //Play Sound every time score ends in Five is achieved...
        let path = Bundle.main.path(forResource: "sms-alert-2-daniel_simon.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            ding = try AVAudioPlayer(contentsOf: url)
            ding?.play()
        }catch{
            print("Could not load PlayEndWithFive sound file!!")
        }
    }
    
    
    

    func PlaySpecialOneSound() {
        //Play Sound every time score ends in Five is achieved...
        let path = Bundle.main.path(forResource: "sms-alert-3-daniel_simon.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            ding = try AVAudioPlayer(contentsOf: url)
            ding?.play()
        }catch{
            print("Could not load Special One sound file!!")
        }
    }
    
    
    func PlaySpecialTwoSound() {
        //Play Sound every time score ends in Five is achieved...
        let path = Bundle.main.path(forResource: "sms-alert-5-daniel_simon.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            ding = try AVAudioPlayer(contentsOf: url)
            ding?.play()
        }catch{
            print("Could not load Special One sound file!!")
        }
    }
    
    
    //-------------  END  Sound Playing Functions.. -----------------------
    
    
    
    
    
    func ShowAppropriateGoal() {
        //Show appropriate goal icons based on the
        //score and by what the player has obtained...
        if((score < firstKeyGoal && firstKeyObtained == false) || (score < secondKeyGoal && secondKeyObtained == false && weaponObtained == true) ){
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Gold_Block")!)
            
        }else if(firstKeyObtained == false && score >= firstKeyGoal){
            goalObject = "Key1"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Key1")!)
            
        }else if(firstKeyObtained == true && secondKeyObtained == false && firstCastleUnlocked == false){
            goalObject = "Castle1"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Castle1")!)
            
        }else if(secondKeyObtained == false && firstCastleUnlocked == true && weaponObtained == false){
            goalObject = "Weapon"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Weapon")!)
            
        }else if(secondKeyObtained == false && weaponObtained == true && score >= secondKeyGoal){
            goalObject = "Key2"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Key2")!)
            
        }else if(secondKeyObtained == true && weaponObtained == true && secondCastleUnlocked == false){
            goalObject = "Castle2"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Castle2")!)
            
        }else if(thirdKeyObtained == false && secondCastleUnlocked == true && enemiesKilled < enemyKillGoal){
            goalObject = "Enemy1"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy1")!)
            
        }else if(thirdKeyObtained == false && secondCastleUnlocked == true && enemiesKilled >= enemyKillGoal){
            goalObject = "Key3"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Key3")!)
            
        }else if(thirdKeyObtained == true && secondCastleUnlocked == true && enemiesKilled < enemyKillGoal2){
            goalObject = "Enemy2"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy2")!)
            
        }else if(enemiesKilled >= enemyKillGoal2 && enemiesKilled < enemyKillGoal3 && thirdCastleUnlocked == false){
            goalObject = "Enemy3"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Enemy3")!)
            
        }else if(thirdKeyObtained == true && enemiesKilled >= enemyKillGoal3){
            goalObject = "Castle3"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Castle3")!)
            
        }else if(doorCanBeUsed == true){
            goalObject = "Doorway"
            self.goalNumber.backgroundColor = UIColor(patternImage: UIImage(named: "Doorway")!)
            
        }
        
        
        if(thirdCastleUnlocked == true){
            print("\n\n Last castle unlocked!! You have won the game! \n\n")
            ShowAlert(message: "Last castle unlocked!! You have won the game!")
            gameEnded = true
        }
        
    }//EndShowAppropriateGoal...
    
    
    
    func ShowAlert(message: String){
        DispatchQueue.main.async {
            
            let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    func ShowStartGameAlert(){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Start From Previous Auto-Saved Game?", message: nil, preferredStyle: .alert)
            
            let noAction = UIAlertAction(title: "NO", style: .cancel, handler: nil)
            let yesAction = UIAlertAction(title: "YES", style: .default, handler: { action in
                self.RestoreGame()
            })
            
            alert.addAction(yesAction)
            alert.addAction(noAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    func RestoreGame(){
        let storedCenterInt = UserDefaults.standard.integer(forKey: "storedCenterInt")
        self.centerNumber.text = String(storedCenterInt)
        
        //Coalesce to 1 if for some reason there's no stored value, for safety...
        self.centerInt = Int(storedCenterInt)
        print("Stored centerInt exists: \(String(describing: storedCenterInt))")
        self.CalculateNumbers(centerNumber: Int(storedCenterInt))
        
        let restoredGameVariables = RecallGameSaveState()
        
        self.centerNumber.text = restoredGameVariables.centerNumber
        self.score = restoredGameVariables.score
        print("restored score: \(self.score)")
        self.numberOfJewels = restoredGameVariables.numberJewels
        self.goalNumberInt = restoredGameVariables.goalNumber
        self.goalObject = restoredGameVariables.goalObject
        self.firstKeyObtained = restoredGameVariables.firstKeyObtained
        self.secondKeyObtained = restoredGameVariables.secondKeyObtained
        self.thirdKeyObtained = restoredGameVariables.thirdKeyObtained
        self.firstCastleUnlocked = restoredGameVariables.firstCastleUnlocked
        self.secondCastleUnlocked = restoredGameVariables.secondCastleUnlocked
        self.thirdCastleUnlocked = restoredGameVariables.thirdCastleUnlocked
        self.enemiesKilled = restoredGameVariables.enemiesKilled
        self.weaponObtained = restoredGameVariables.weaponObtained
        self.jewelBasket = restoredGameVariables.jewelBasket
        self.jewelPlacesInts = restoredGameVariables.jewelPlacesInts
        self.first_time1 = restoredGameVariables.firstTime1
        self.first_time2 = restoredGameVariables.firstTime2
        self.first_time3 = restoredGameVariables.firstTime3
        
        print("restoredScore after restore: \(self.score)")
        print("centerNumber.text after restore: \(String(describing: self.centerNumber.text))")
        //Restore all Jewel label backgrounds, then update labels....
        //Jewel Backgrounds are saved into UserDefaults in ShowJewelLabelsWithScore
        let restoredJewelLabelBG1 = UserDefaults.standard.string(forKey: "storedJewelLabel1Background")
        let restoredJewelLabelBG2 = UserDefaults.standard.string(forKey: "storedJewelLabel2Background")
        let restoredJewelLabelBG3 = UserDefaults.standard.string(forKey: "storedJewelLabel3Background")
        let restoredJewelLabelBG4 = UserDefaults.standard.string(forKey: "storedJewelLabel4Background")
        let restoredJewelLabelBG5 = UserDefaults.standard.string(forKey: "storedJewelLabel5Background")
        let restoredJewelLabelBG6 = UserDefaults.standard.string(forKey: "storedJewelLabel6Background")
        let restoredJewelLabelBG7 = UserDefaults.standard.string(forKey: "storedJewelLabel7Background")
        let restoredJewelLabelBG8 = UserDefaults.standard.string(forKey: "storedJewelLabel8Background")
        let restoredJewelLabelBG9 = UserDefaults.standard.string(forKey: "storedJewelLabel9Background")
        //self.ShowJewelLabelsWithScore(score: Int(self.score))
        
        self.scoreLabel.text = String(describing: self.score)
        
        print("Restored Goal Object: \(self.goalObject)")
        self.ShowAppropriateGoal()
        self.PlaceImageTiles()
        
        if(self.numberOfJewels != 0){
        //---Jewel Restoration section of RestoreGame Function...-----
        //Blank Space is workaround for nil backgrounds when restoring...
        self.jewelLabel1.text = String(describing: self.numberOfJewels)
        self.jewelLabel1.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG1 ?? "Blank_Space.png")!)
        self.jewelLabel2.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG2 ?? "Blank_Space.png")!)
        self.jewelLabel3.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG3 ?? "Blank_Space.png")!)
        self.jewelLabel4.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG4 ?? "Blank_Space.png")!)
        self.jewelLabel5.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG5 ?? "Blank_Space.png")!)
        self.jewelLabel6.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG6 ?? "Blank_Space.png")!)
        self.jewelLabel7.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG7 ?? "Blank_Space.png")!)
        self.jewelLabel8.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG8 ?? "Blank_Space.png")!)
        self.jewelLabel9.backgroundColor = UIColor(patternImage: UIImage(named: restoredJewelLabelBG9 ?? "Blank_Space.png")!)
        }
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //view.backgroundColor = UIColor.init(red: 0.0, green: 0.3, blue: 0.0, alpha: 1.0)
        view.backgroundColor = UIColor(patternImage: UIImage(named: "ForestCarpetTile")! )
        
        
        print("Golden Topaz Number: \(String(describing: jewelPlacesInts["golden_topaz"]))")
        
        
        //Hide all the jewel labels...
        HideJewelLabels()
        
        //Make all numbers on NumberLabels invisible
        HideNumberLabels()
        
        //Hide Number label borders for better background blending
        HideNumberLabelBorders()
        
        //Turn off any text on the centerNumber label.
        //Comment out to turn back on the the number text...
        self.centerNumber.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        
        
        //Debug...
        //let imagesArray = NumberCheck().ShowTileNumber(score: Int(999999))
        //print("IMAGES ARRAY: \(imagesArray)")
        print("Jewel Locations: \(jewelPlacesInts)")
        
        
        //Retrieve High Score or, if none, set to zero string...
        let highScore = UserDefaults.standard.string(forKey: "highScore") ?? "0"
        self.highScoreLabel.text = highScore
        
    
        
        
        
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        
        
        
        
        
        //Comment out to see the actual goal number...
        self.goalNumber.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)

        
        //Only show StartGame Alert to continue previous game if saved game exists...
        if(wasPreviousGame == true){
            //Show starting game alert asking player to continue saved game or not...
            ShowStartGameAlert()
        }
        
        print("------TESTING-----")
        scoreLabel.text = String(describing: self.score)
        
        //Set centerInt and centerNumber to the last storedCenterInt if there is one, if the player
        //wants to continue the game...
        if(continueGame){
            
            
        }else{
            centerNumber.text = "1"
            centerInt = 1
            
            CalculateNumbers(centerNumber: Int(centerNumber.text!)! )
        }
        
        
        
        
        //Place appropriate image tiles after label calculations have been made...
        var start = 0
        if(start == 0){
            PlaceImageTiles()
            start = 1
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


