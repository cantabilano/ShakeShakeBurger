//
//  main.swift
//  ShakeShakeBurger
//
//  Created by JasonYang on 12/6/23.
//

import Foundation

// MARK: Main 수정 1회 추가
// MARK: 주메뉴 구현 class 구현되나요~~~~~~~~~~ 해봅시다. 잘 되나요? 수정하고!!!!!!
// 최어진 수정해봤습니다~~~
// 김유경 수정해보겠습니다
// test
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
            //  case 3: // 보조메뉴3 Drinks
            //  case 4: // 보조메뉴3 Beer
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
    // MARK: 보조메뉴2 구현 함수 혹은 class로 구현 필요
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
