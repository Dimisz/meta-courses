//ELSE-IF CONDITIONALS
/*
let waterTemp = 92

if waterTemp >= 100 {
    print("The water is boiling")
}
else if waterTemp >= 90 {
    print("It's almost boiling")
}
else {
    print("The water is not boiling")
}
 */

// SWITCH STATEMENT
// NO BREAK STATEMENTS & NO FALLTHRU
let lang = "English"
switch lang {
    case "English": print("The default language has been set to English")
    case "Spanish": print("The default language has been set to Spanish")
    default: print("The default language has not been configured yet.")
}
