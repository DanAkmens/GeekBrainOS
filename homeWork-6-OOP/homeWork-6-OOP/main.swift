//
//  main.swift
//  homeWork-6-OOP
//
//  Created by Dainis Putans on 18/01/2021.
//

import Foundation

// 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

struct Book {
    let title: String
    let author: String
    let publishingYear: Int
}

var books: [Book]?


// 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

struct Queue<T> {
    var items = [T]()
    mutating func enqueue(element: T) {
        items.append(element)
    }
    
    mutating func bookAfter2006() -> [Book] {
        var newArray = [Book]()
        if items is [Book] {
            for item in items {
                newArray.append(item as! Book)
            }
        } else {
            print("Nothing")
        }
        return newArray.filter { $0.publishingYear > 2006
        }
       
    }
    
    mutating func dequeue() -> T? {
        if items.isEmpty {
            return nil
        } else {
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
        }
    }
}

var arrayOfBooks = Queue(items: [books])
arrayOfBooks.enqueue(element: [])

let book1 = Book(title: "Steve Jobs", author: "Walter Isaacson", publishingYear: 2005)

let book2 = Book(title: "Bill gates", author: "Michael Bicraft", publishingYear: 2007)

let book3 = Book(title: "The Age of Technology", author: "Dainis Putans", publishingYear: 2019)

var myBooks = Queue<Book>()
myBooks.enqueue(element: book1)
myBooks.enqueue(element: book2)
myBooks.enqueue(element: book3)
// print(myBooks)
print(myBooks.bookAfter2006())



