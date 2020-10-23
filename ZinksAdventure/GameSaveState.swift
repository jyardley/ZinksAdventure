//
//  GameSaveState.swift
//  ZinksAdventure
//
//  Created by Jeff Yardley on 1/24/19.
//  Copyright © 2019 Jeff Yardley. All rights reserved.
//

import Foundation

func GameSaveState(centerNumber: String, score: Int64, numberJewels: Int, goalNumber: Int, goalObject: String, firstKeyObtained: Bool, secondKeyObtained: Bool, thirdKeyObtained: Bool, firstCastleUnlocked: Bool, secondCastleUnlocked: Bool, thirdCastleUnlocked: Bool, enemiesKilled: Int, weaponObtained: Bool, jewelBasket: [String:Int], jewelPlacesInts: [String: Int],firstTime1: Bool, firstTime2: Bool, firstTime3: Bool){
    print("Game Save State Called...")
    print("Saving centerNumber.text: \(String(describing: centerNumber))")
    UserDefaults.standard.set(String(describing: centerNumber), forKey: "storedCenterInt")
    UserDefaults.standard.set(score, forKey: "storedScore")
    UserDefaults.standard.set(numberJewels, forKey: "storedJewels")
    UserDefaults.standard.set(goalNumber, forKey: "storedGoalNumber")
    UserDefaults.standard.set(goalObject, forKey: "storedGoalObject")
    UserDefaults.standard.set(firstKeyObtained, forKey: "storedFirstKeyObtained")
    UserDefaults.standard.set(secondKeyObtained, forKey: "storedSecondKeyObtained")
    UserDefaults.standard.set(thirdKeyObtained, forKey: "storedThirdKeyObtained")
    UserDefaults.standard.set(firstCastleUnlocked, forKey: "storedFirstCastleUnlocked")
    UserDefaults.standard.set(secondCastleUnlocked, forKey: "storedSecondCastleUnlocked")
    UserDefaults.standard.set(thirdCastleUnlocked, forKey: "storedThirdCastleUnlocked")
    UserDefaults.standard.set(enemiesKilled, forKey: "storedEnemiesKilled")
    UserDefaults.standard.set(weaponObtained, forKey: "storedWeaponObtained")
    UserDefaults.standard.set(jewelBasket, forKey: "storedJewelBasket")
    UserDefaults.standard.set(jewelPlacesInts, forKey: "storedJewelPlacesInts")
    UserDefaults.standard.set(firstTime1, forKey: "storedFirstTime1")
    UserDefaults.standard.set(firstTime2, forKey: "storedFirstTime2")
    UserDefaults.standard.set(firstTime3, forKey: "storedFirstTime3")
    UserDefaults.standard.set(false, forKey: "storedWasPreviousGame")
    
}



func RecallGameSaveState() -> (centerNumber: String, score: Int64, numberJewels: Int, goalNumber: Int, goalObject: String, firstKeyObtained: Bool, secondKeyObtained: Bool, thirdKeyObtained: Bool, firstCastleUnlocked: Bool, secondCastleUnlocked: Bool, thirdCastleUnlocked: Bool, enemiesKilled: Int, weaponObtained: Bool, jewelBasket: [String:Int], jewelPlacesInts: [String: Int],firstTime1: Bool, firstTime2: Bool, firstTime3: Bool){
    print("Restoring Saved Game Variables...")
    
    let restoredCenterInt = UserDefaults.standard.string(forKey: "storedCenterInt")
    let restoredScore = UserDefaults.standard.integer(forKey: "storedScore")
    let restoredJewels = UserDefaults.standard.integer(forKey: "storedJewels")
    let restoredGoalNumber = UserDefaults.standard.integer(forKey: "storedGoalNumber")
    let restoredGoalObject = UserDefaults.standard.string(forKey: "storedGoalObject")
    let restoredFirstKeyObtained = UserDefaults.standard.bool(forKey: "storedFirstKeyObtained")
    let restoredSecondKeyObtained = UserDefaults.standard.bool(forKey: "storedSecondKeyObtained")
    let restoredThirdKeyObtained = UserDefaults.standard.bool(forKey: "storedThirdKeyObtained")
    let restoredFirstCastleUnlocked = UserDefaults.standard.bool(forKey: "storedFirstCastleUnlocked")
    let restoredSecondCastleUnlocked = UserDefaults.standard.bool(forKey: "storedSecondCastleUnlocked")
    let restoredThirdCastleUnlocked = UserDefaults.standard.bool(forKey: "storedThirdCastleUnlocked")
    let restoredEnemiesKilled = UserDefaults.standard.integer(forKey: "storedEnemiesKilled")
    let restoredWeaponObtained = UserDefaults.standard.bool(forKey: "storedWeaponObtained")
    let restoredJewelBasket = UserDefaults.standard.dictionary(forKey: "storedJewelBasket")
    let restoredJewelPlacesInts = UserDefaults.standard.dictionary(forKey: "storedJewelPlacesInts")
    let restoredFirstTime1 = UserDefaults.standard.bool(forKey: "storedFirstTime1")
    let restoredFirstTime2 = UserDefaults.standard.bool(forKey: "storedFirstTime2")
    let restoredFirstTime3 = UserDefaults.standard.bool(forKey: "storedFirstTime3")
    
    
    return (restoredCenterInt!, Int64(restoredScore), restoredJewels, restoredGoalNumber, restoredGoalObject!, restoredFirstKeyObtained, restoredSecondKeyObtained, restoredThirdKeyObtained, restoredFirstCastleUnlocked, restoredSecondCastleUnlocked, restoredThirdCastleUnlocked, restoredEnemiesKilled, restoredWeaponObtained, restoredJewelBasket as! [String : Int], restoredJewelPlacesInts as! [String : Int], restoredFirstTime1, restoredFirstTime2, restoredFirstTime3)
    
}
