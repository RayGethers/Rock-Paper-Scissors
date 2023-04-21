// User input: Will return what the user chooses
func getUserChoice(uChoice: String) -> String {
  // uChoice.lowercased()
  if uChoice == "rock" {
    return "Rock"
  } else if uChoice == "paper" {
    return "Paper"
  } else if uChoice == "scissors" {
    return "Scissors"
  } else {
    return "Something went wrong."
  }
}
// var tempInput = readLine()!
// print(getUserChoice(uChoice: tempInput.lowercased()))

// Function for getting the computer's choice
func getCompChoice() -> String {
  let randomRoll = Int.random(in: 0...2)
  switch randomRoll {
    case 0:
      return "Rock"

    case 1:
      return "Paper"

    case 2:
      return "Scissors"

    default:
      return "Something went wrong."
  }
}
// print(getCompChoice())

// This function will be used to compare the two results and determine a winner
func determineWinner(userInput: String, compInput: String) -> String {
  var result = ""
  if userInput == compInput{
    result = "It's a tie!"
  }
  switch userInput {
    case "Rock":
      if compInput == "Paper" {
        result = "Computer Wins!"
      } else if compInput == "Scissors" {
        result = "YOU WIN !!"
      } else {
        break
      }

    case "Paper":
      if compInput == "Rock" {
        result = "YOU WIN !!"
      } else if compInput == "Scissors" {
        result = "Computer Wins!"
      } else {
        break
      }

    case "Scissors":
      if compInput == "Rock" {
        result = "Computer Wins!"
      } else if compInput == "Paper" {
        result = "YOU WIN !!"
      } else {
        break
      }

    default:
      return "Something went wrong"
  }

  return result
}

print("Make your choice (Rock, Paper, or Scissors):")
var rps = readLine()!
var uChoice = getUserChoice(uChoice: rps.lowercased())
var cChoice = getCompChoice()
print("You chose: \(uChoice)")
print("Your opponent chose: \(cChoice)")
print(determineWinner(userInput: uChoice, compInput: cChoice))

