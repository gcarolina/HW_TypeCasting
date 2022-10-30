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
        
        //2. Пройдите по всем элементам коллекции. Для каждого целого, напечатайте "Целое число " и его значение. Повторите то же самое для вещественных чисел, строк и булевых значений.
        
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
        
        
        //3. Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений. Выведите красиво на консоль пары ключ/значения для всех элементов коллекции.
        
        // первый способ
        let keyys = ["first", "second", "third", "forth", "fifth", "sixth", "seventh", "eighth", "ninth"]
        let dictionary = zip(keyys, collection)
        let elements = Dictionary(dictionary, uniquingKeysWith: { return $1 } )

        for (key, value) in elements {
            print("\(key) - \(value);")
        }

        print("------------------------------------")

        // второй способ
        let arrayDict: [String: Any] = ["first": 123, "second": true, "third": "312", "forth": false, "fifth": 5, "sixth": 67.8, "seventh": 1, "eighth": "none", "ninth": 21.6]

        for (key, value) in arrayDict {
            print("\(key) - \(value);")
        }
        print("------------------------------------")
        
        //4. Создайте переменную total типа Double, равную 0. Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной. Для каждой строки добавьте 1. Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false. Напечатайте значение total.
        
        var total: Double = 0

        for (_, value) in arrayDict {
            if let itemInt = value as? Int {
                total += Double(itemInt)
            } else if let itemString = value as? String {
                total += 1
            } else if let itemDouble = value as? Double {
                total += itemDouble
            } else if let itemBool = value as? Bool {
                if itemBool {
                    total += 2
                } else {
                    total -= 3
                }
            }
        }

        print("Total value = \(total)")
        print("------------------------------------")
        
    }
}

