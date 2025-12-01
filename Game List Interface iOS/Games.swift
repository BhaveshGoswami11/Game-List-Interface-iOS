import Foundation
import UIKit


struct Game{
    var name:String?
    var information:String?
    var imageName:UIImage?
}
let badminton = Game(name: "Badminton", information: "A racquet sport played with a shuttlecock over a net, requiring speed, agility, and precision. Played in singles (1 per side) or doubles (2 per side). Prominent players include P. V. Sindhu, Lin Dan, and Viktor Axelsen.", imageName:  UIImage(named: "Badminton"))

let basketball = Game(name: "Basketball", information: "A fast-paced game where two teams of 5 players each aim to score points by shooting a ball through the opponent's hoop. Famous players include Michael Jordan, LeBron James, and Kobe Bryant.", imageName:  UIImage(named: "Basketball"))

let tableTennis = Game(name: "Table Tennis", information: "A game where players use paddles to hit a lightweight ball across a table divided by a net. Played in singles (1 per side) or doubles (2 per side). Famous players include Ma Long and Ding Ning.", imageName: UIImage(named:"Table Tennis"))

let volleyball = Game(name: "Volleyball", information: "Two teams of 6 players each aim to score points by hitting a ball over a net into the opponent's court. Prominent players include Karch Kiraly, Giba, and Kim Yeon-koung.", imageName: UIImage(named:"Volleyball"))

let chess = Game(name: "Chess", information: "A strategy-based board game played between two players, focusing on tactics and planning. Famous players include Magnus Carlsen, Garry Kasparov, and Judit Polgár.", imageName: UIImage(named:"Chess"))

let snooker = Game(name: "Snooker", information: "A cue sport played on a table with pockets, where players score by potting balls in a specific order. It is played one-on-one. Top players include Ronnie O’Sullivan and Stephen Hendry.", imageName: UIImage(named:"Snooker"))

let swimming = Game(name: "Swimming", information: "A competitive sport involving timed races using various strokes (freestyle, backstroke, butterfly). Individual or relay (4 per team) events exist. Stars include Michael Phelps and Katie Ledecky.", imageName: UIImage(named:"Swimming"))

let boxing = Game(name: "Boxing", information: "A combat sport where two fighters use gloves to strike their opponent, aiming for points or a knockout. Famous boxers include Muhammad Ali, Mike Tyson, and Katie Taylor.",imageName:UIImage(named:"Boxing"))

let karate = Game(name: "Karate", information: "A martial art focusing on self-defense techniques, strikes, and blocks. It can be practiced individually or in sparring matches (1 vs 1). Famous practitioners include Ryo Kiyuna and Sandra Sánchez.", imageName: UIImage(named:"Karate"))

let handball = Game(name: "Handball", information: "A team sport where 7 players per side (including a goalkeeper) aim to throw a ball into the opponent's goal. Famous players include Nikola Karabatić and Cristina Neagu.", imageName: UIImage(named:"Handball"))

let soccer = Game(name:"Soccer",information: "Also known as football, two teams of 11 players each aim to score by kicking a ball into the opponent’s goal. Famous players include Lionel Messi, Cristiano Ronaldo, and Pelé.", imageName: UIImage(named:"Soccer"))

let cricket = Game(name: "Cricket", information: "A bat-and-ball game where two teams of 11 players each take turns to bat and bowl, aiming to score runs and dismiss the opponent. Legends include Sachin Tendulkar, Virat Kohli, and Ben Stokes.",imageName: UIImage(named:"Cricket"))

let tennis = Game(name: "Tennis", information: "Players use racquets to hit a ball over a net, aiming to win points. Played in singles (1 per side) or doubles (2 per side). Famous players include Roger Federer, Serena Williams, and Rafael Nadal.", imageName: UIImage(named:"Tennis"))

let hockey = Game(name: "Hockey", information: "Teams use sticks to hit a ball or puck into the opponent’s goal. Field hockey teams have 11 players, while ice hockey teams have 6. Notable players include Wayne Gretzky and Dhyan Chand.", imageName: UIImage(named:"Hockey"))

let golf = Game(name: "Golf", information: "A precision sport where players aim to sink a ball into holes on a course in as few strokes as possible. It is mostly played individually. Stars include Tiger Woods, Rory McIlroy, and Jack Nicklaus.",imageName:UIImage(named:"Golf"))

let trackandField = Game(name: "Track and Field", information: "A collection of events like running, jumping, and throwing, involving both individual and relay team events. Famous athletes include Usain Bolt, Carl Lewis, and Allyson Felix.", imageName: UIImage(named:"Track and Field"))
 
let cycling = Game(name: "Cycling", information: "A competitive sport involving road races, track cycling, or mountain biking. It can be individual or team-based. Famous cyclists include Lance Armstrong, Tadej Pogačar, and Marianne Vos.", imageName: UIImage(named:"Cycling"))
                           
let rugby = Game(name: "Rugby", information: "A contact team sport where 15 players (Rugby Union) or 13 players (Rugby League) per side aim to score tries and goals. Stars include Jonah Lomu, Richie McCaw, and Emily Scarratt.", imageName: UIImage(named:"Rugby"))
                           
let surfing = Game(name: "Surfing", information: "A water sport where individuals ride ocean waves on a surfboard. Competitions are individual. Famous surfers include Kelly Slater, John John Florence, and Stephanie Gilmore.", imageName: UIImage(named:"Surfing"))
                           
                           
                           
                           


let games:[Game] = [badminton,basketball,tableTennis,volleyball,chess,snooker,swimming,boxing,karate,handball,soccer,cricket,tennis,hockey,golf,trackandField,cycling,rugby,surfing]
