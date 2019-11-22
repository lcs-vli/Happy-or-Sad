import UIKit



let phraseInput = "😀"
var happyValue = 0
var sadValue = 0
  
  //determine the number of sad and happy emoji
for character in phraseInput {
      
      switch character{
      case "😀","😄","☺️","🙂":
           happyValue += 1
      case "😔","😕","🙁","☹️":
          sadValue += 1
      default:
          happyValue += 0
      }
      
  }
  
  //compare the number of sad and happy emoji
  if happyValue > sadValue{
     print("Happy")
  }else if happyValue < sadValue{
     print("Sad")
  }else if happyValue == sadValue && happyValue != 0 && sadValue != 0{
      print("unsure")
  }else if happyValue == 0 && sadValue == 0{
      print("none")
  }
