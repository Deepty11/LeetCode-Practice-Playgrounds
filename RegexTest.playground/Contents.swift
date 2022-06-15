import UIKit

//func isvalidRegex(testString: String){
//    let range = NSRange(location: 0, length: testString.utf16.count)
//    let regex = try! NSRegularExpression(pattern: "[a-z]at")
//    if let foundMatch = regex.firstMatch(in: testString, options: [], range: range){
//        print(foundMatch)
//    } else{
//        print("I donno")
//    }
//}
//func getAllMatchesIn(string: String){
//    let range = NSRange(location: 0, length: string.utf16.count)
//    let regex = try! NSRegularExpression(pattern: ".*?(\\d+)")
//    let matches = regex.matches(in: string, options: [], range: range)
//    let strings: [String] = matches.map { match in
//        let start = string.index(string.startIndex, offsetBy: match.range.location)
//        let end = string.index(start, offsetBy: match.range.length)
//        return String(string[start..<end])
//    }
//    if let seasonRange = Range(matches[0].range(at: 1), in: string) {
//      let seasonNumber = string[seasonRange] // => "1"
//        print(seasonRange)
//    }
//
//}
//
//let string = "Jan 1222 Nov 11"
//getAllMatchesIn(string: string)
//
//
//
//
//
//
//
//
////let title = "Season 1 Episode 3 - When Joey meets Zoey"
////let pattern = "^Season\\s+(\\d+)\\s+Episode\\s+(\\d+)"
//let title = "jan 2022, Nov 2021"
//let pattern = ".*?\\d+"
//let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
//
//if let match = regex?.firstMatch(in: title, options: [], range: NSRange(location: 0, length: title.utf16.count)) {
//  if let seasonRange = Range(match.range(at: 0), in: title) {
//      print(title[seasonRange.lowerBound..<seasonRange.upperBound])
//  }
//
//  if let episodeRange = Range(match.range(at: 2), in: title) {
//      print(title[episodeRange.lowerBound..<episodeRange.upperBound])
//  }
//}

func getRegexMatch(from pattern: String, in string:String )-> String{
    var matchedString: String = ""
    let regex = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    if let match = regex?.firstMatch(in: string, options: [], range: NSRange(location: 0, length: string.utf16.count)) {
      if let range = Range(match.range(at: 0), in: title) {
          matchedString = String(string[range.lowerBound..<range.upperBound])
      }
    } else{
        matchedString = "error"
    }
    return matchedString
}
let title = "ttt, Nov 2021"
let pattern = ".*?(\\d+)"
print(getRegexMatch(from: pattern, in: title))
