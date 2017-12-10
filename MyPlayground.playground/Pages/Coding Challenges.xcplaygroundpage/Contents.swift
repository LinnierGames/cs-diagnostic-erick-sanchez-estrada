//: [Previous](@previous)

import Foundation

// Solution to Problem 14

func rollDice(nSides: UInt32) -> UInt {
    let random = arc4random_uniform(1000 * nSides)
    
    var result = nSides
    while (result > 0) {
        if random % result == 0 {
            return UInt(result)
        } else {
            result -= 1
        }
    }
    
    return 1
}

//rollDice(nSides: 6)

// Solution to Problem 14

func listOfWordsIn(sentence: String, ofComonTop words: Int) -> [String] {
    let arrayOfWords = sentence.split(whereSeparator: { $0 == " " })
    
    /* create a dictionary holding the counts of each word */
    var dictionaryCountOfWords = [String: Int]()
    for word in arrayOfWords {
        let stringOfTheWord = String(word)
        if dictionaryCountOfWords[stringOfTheWord] != nil {
            dictionaryCountOfWords[stringOfTheWord] = dictionaryCountOfWords[stringOfTheWord]! + 1
        } else {
            dictionaryCountOfWords[stringOfTheWord] = 1
        }
    }
    
    /* convert the dictionary into sorted array to find the most top common words */
    
    typealias WordCount = (word: String, count: Int)
    
    var arrayOfCountedWords = [WordCount]()
    for (key, value) in dictionaryCountOfWords {
        arrayOfCountedWords.append((key,value))
    }
    
    arrayOfCountedWords.sort { (a, b) -> Bool in
        return a.count > b.count
    }
    
    /* Trim the array according to the word var */
    
    var trimmedCountedWords = arrayOfCountedWords[0...words]
    
    let arrayOfSoredWords = trimmedCountedWords.map { (wordTuple) -> String in
        return wordTuple.word
    }
    
    return arrayOfSoredWords
    
}

let mySentence = """
The labour force is defined as the number of people of working age, who are either employed or actively looking for work. The participation rate is the number of people in the labour force divided by the size of the adult civilian noninstitutional population (or by the population of working age that is not institutionalized). The non-labour force includes those who are not looking for work, those who are institutionalised such as in prisons or psychiatric wards, stay-at home spouses, children, and those serving in the military. The unemployment level is defined as the labour force minus the number of people currently employed. The unemployment rate is defined as the level of unemployment divided by the labour force. The employment rate is defined as the number of people currently employed divided by the adult population (or by the population of working age). In these statistics, self-employed people are counted as employed.

Variables like employment level, unemployment level, labour force, and unfilled vacancies are called stock variables because they measure a quantity at a point in time. They can be contrasted with flow variables which measure a quantity over a duration of time. Changes in the labour force are due to flow variables such as natural population growth, net immigration, new entrants, and retirements from the labour force. Changes in unemployment depend on inflows made up of non-employed people starting to look for jobs and of employed people who lose their jobs and look for new ones, and outflows of people who find new employment and of people who stop looking for employment. When looking at the overall macroeconomy, several types of unemployment have been identified, including:

Frictional unemployment – This reflects the fact that it takes time for people to find and settle into new jobs. Technological advancement often reduces frictional unemployment; for example, internet search engines have reduced the cost and time associated with locating employment.
Structural unemployment – This reflects a mismatch between the skills and other attributes of the labour force and those demanded by employers. Rapid industry changes of a technical and/or economic nature will usually increase levels of structural unemployment; for example, widespread implementation of new machinery or software will require future employees to be trained in this area before seeking employment. The process of globalization has contributed to structural changes in labour markets.
Natural rate of unemployment – This is the summation of frictional and structural unemployment, that excludes cyclical contributions of unemployment (e.g. recessions). It is the lowest rate of unemployment that a stable economy can expect to achieve, given that some frictional and structural unemployment is inevitable. Economists do not agree on the level of the natural rate, with estimates ranging from 1% to 5%, or on its meaning – some associate it with "non-accelerating inflation". The estimated rate varies from country to country and from time to time.
Demand deficient unemployment (also known as cyclical unemployment) – In Keynesian economics, any level of unemployment beyond the natural rate is probably due to insufficient goods demand in the overall economy. During a recession, aggregate expenditure is deficient causing the underutilisation of inputs (including labour). Aggregate expenditure (AE) can be increased, according to Keynes, by increasing consumption spending (C), increasing investment spending (I), increasing government spending (G), or increasing the net of exports minus imports (X−M), since AE = C + I + G + (X−M).
"""

listOfWordsIn(sentence: mySentence, ofComonTop: 5)

//: [Next](@next)
