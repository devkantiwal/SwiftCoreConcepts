// ABI (Application binary interface)
// https://medium.com/swiftcommmunity/what-is-abi-stability-in-swift-5-187556e3c3ae

// App Thining
// The process involves using one or a combination of three processes, known as Slicing, On-Demand Resources and BitCode.

// Slicing
// Slicing enables mobile app developers to pack assets based on the device for which the app is being downloaded, meaning the user only installs the relevant assets. If the same user downloads the same app on another device, then only the assets required to run on that device will be installed.

// que: https://stackoverflow.com/questions/42337542/ios-app-slicing-will-app-slicing-work-with-only-2x-images



// On-Demand Resources
// Games are a good example of this; it is very unlikely that a user who has progressed to the 50th level of a game would return to play the 3rd level. But before app thinning, apps stored all of the assets and data required to run all levels of the game. As apps became more complex and user's installed an increasing number of them on their devices, developers needed a way to free up space on devices. And one strategy for this was to temporarily delete assets for the first 20 or 30 levels and have them available online for the user to download when required.

// 

import Foundation

func calculate_Sum(_ array:Array<Int>, performSum: @escaping ((Int) -> Void)){
    var sum = 0
    for i in array{
        sum = sum + i
    }
    DispatchQueue.global().asyncAfter(deadline: .now() + 0.5) {
        performSum(sum)
    }
     
}
