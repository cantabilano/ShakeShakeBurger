//
//  main.swift
//  ShakeShakeBurger
//
//  Created by JasonYang on 12/6/23.
//

import Foundation


// MARK: 주메뉴 구현 class(클래스 명은 첫글자 대문자)
class Menu {

    func printMainMenu() {
        while true {
            print("[ SHAKESHACK MENU ]")
            print("1. Burgers         | 앵거스 비프 통살을 다져만든 버거")
            print("2. Frozen Custard  | 매장에서 신선하게 만드는 아이스크림")
            print("3. Drinks          | 매장에서 직접 만드는 음료")
            print("4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주")
            print("0. 종료            | 프로그램 종료")
            
            if let input = Int(readLine() ?? "") {
                switch input { // switch문으로 메인메뉴 구현
                case 0:
                    print("키오스크를 종료합니다.")
                    return
                case 1: // 보조메뉴1 구현 조건부
                    printBurgerMenu()
                case 2: // 보조메뉴2 FrozenCustard 구현부
                    printFrozenCustardMenu()
                case 3:
                    let drinkMenu = Drinks()
                    drinkMenu.printDrinksMenu()
                case 4: // case 4: 조건에서 Beers() 클래스를 beerMenu에 인스턴스화 하고
                    let beerMenu = Beers()
                    // Beer()클래스의 매소드를 beerMenu()객체에서 .으로 호출한다.
                    beerMenu.printBeerMenu()
                default :
                    print("메뉴를 선택해주세요.")
                }
            } else {
                print("error: 숫자를 적어주세요.")
            }
        }
    }
    // MARK: 보조메뉴1 함수 구현(12. 7. 10:00)
    func printBurgerMenu() {
        while true {
            print("[ Burgers MENU ]")
            print("1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거")
            print("2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
            print("3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
            print("4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
            print("5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거")
            print("0. 뒤로가기      | 뒤로가기")
            
            if let input = Int(readLine() ?? "") {
                if input == 0 {
                    print("메인 메뉴로 이동합니다.")
                    break
                } else if input == 1 {
                    print("1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거")
                } else if input == 2 {
                    print("2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
                } else if input == 3 {
                    print("3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
                } else if input == 4 {
                    print("4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
                } else if input == 5 {
                    print("5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거")
                } else {
                    print("선택한 메뉴: \(input), 메뉴에 없습니다. 다른 메뉴를 골라주세요")
                }
            } else {
                print("error: 숫자를 적어주세요.")
            }
        }
    }
    // MARK: 보조메뉴2 함수 구현
    func printFrozenCustardMenu() {
        while true {
            print("[ FrozenCustard MENU ]")
            print("1.  FrozenCustard1   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거")
            print("2.  FrozenCustard2   | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
            print("3.  FrozenCustard3   | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
            print("3.  FrozenCustard4   | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
            print("4.  FrozenCustard5   | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거")
            print("0. 뒤로가기      | 뒤로가기")
            
            if let input = Int(readLine() ?? "") {
                switch input { //switch 문으로 세부메뉴 구현
                case 0 :
                    print("메인 메뉴로 이동합니다.")
                    return
                case 1 :
                    print("1.  FrozenCustard1   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거")
                case 2 :
                    print("2.  FrozenCustard2   | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
                case 3 :
                    print("3.  FrozenCustard3   | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
                case 4 :
                    print("4.  FrozenCustard4   | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
                case 5 :
                    print("5.  FrozenCustard5   | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거")
                default :
                    print("메뉴번호를 콘솔창에 적어주세요.")
                }
            } else {
                print("error: 숫자를 적어주세요.")
            }
        }
    }
    
}

        
// MARK: 메뉴 클래스 객체화(인스턴스)
let menu = Menu()

// MARK: menu 객체에 printMainMenu() 메소드 호출 = 콘솔창에 프린터
menu.printMainMenu()


// MARK: Beers 클래스 구현
class Beers: Menu {

    func printBeerMenu() {
        while true {
            print("[ Beers MENU ]")
            print("1. Craft Beer 1   | W 6.9 | 뉴욕 브루클린 브루어리에서 양조한 첫 번째 맥주")
            print("2. Craft Beer 2   | W 8.9 | 뉴욕 브루클린 브루어리에서 양조한 두 번째 맥주")
            print("3. Local Beer 1   | W 9.4 | 지역 양조장에서 생산한 첫 번째 맥주")
            print("4. Local Beer 2   | W 6.9 | 지역 양조장에서 생산한 두 번째 맥주")
            print("0. 뒤로가기      | 뒤로가기")

            if let input = Int(readLine() ?? "") {
                switch input {
                case 0:
                    print("메인 메뉴로 이동합니다.")
                    return
                case 1:
                    print("1. Craft Beer 1   | W 6.9 | 뉴욕 브루클린 브루어리에서 양조한 첫 번째 맥주")
                case 2:
                    print("2. Craft Beer 2   | W 8.9 | 뉴욕 브루클린 브루어리에서 양조한 두 번째 맥주")
                case 3:
                    print("3. Local Beer 1   | W 9.4 | 지역 양조장에서 생산한 첫 번째 맥주")
                case 4:
                    print("4. Local Beer 2   | W 6.9 | 지역 양조장에서 생산한 두 번째 맥주")
                default:
                    print("메뉴번호를 콘솔창에 적어주세요.")
                }
            } else {
                print("error: 숫자를 적어주세요.")
            }
        }
    }
}


// MARK: Beers 클래스 객체화
let beerMenu = Beers()

// MARK: beerMenu 객체에 printBeerMenu() 메소드 호출
beerMenu.printBeerMenu()


class Drinks : Menu {
    func printDrinksMenu() {
        while true {
            print("[ Beers MENU ]")
            print("1. Cocacola   | W 6.9 | 미국 콜라")
            print("2. Sprite   | W 8.9 | 미쿡 사이다")
            print("3. 환타   | W 9.4 | 코카콜라의 탄산음료 마싯따")
            print("4. 물   | W 6.9 | 물이 제일 좋아")
            print("0. 뒤로가기      | 뒤로가기")

            if let input = Int(readLine() ?? "") {
                switch input {
                case 0:
                    print("메인 메뉴로 이동합니다.")
                    return
                case 1:
                    print("1. Cocacola   | W 6.9 | 미국 콜라")
                case 2:
                    print("2. Sprite   | W 8.9 | 미쿡 사이다")
                case 3:
                    print("3. 환타   | W 9.4 | 코카콜라의 탄산음료 마싯따")
                case 4:
                    print("4. 물   | W 6.9 | 물이 제일 좋아")
                default:
                    print("메뉴번호를 콘솔창에 적어주세요.")
                }
            } else {
                print("error: 숫자를 적어주세요.")
            }
        }
    }
}

let drinkMenu = Drinks()

drinkMenu.printDrinksMenu()
