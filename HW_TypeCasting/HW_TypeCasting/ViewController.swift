//
//  ViewController.swift
//  HW_TypeCasting
//
//  Created by Carolina on 30.10.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений. Распечатайте содержимое коллекции.
        
        let collection: [Any] = [42.7, false, 7, 612.1, "котенок", 91, true, 12.2, "мартышка"]

        print(collection)
        print("------------------------------------")
        
        //2. Пройдите по всем элементам коллекции.  Для каждого целого, напечатайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
        
        for element in collection {
            if element is Double {
                print("\(element) - вещественное число")
            } else if element is Int {
                print("\(element) - целое число")
            } else if element is String {
                print("\(element) - строка")
            } else if element is Bool {
                print("\(element) - булевое значение")
            }
        }

        print("------------------------------------")
        
    }
}

