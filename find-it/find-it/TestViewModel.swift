//
//  TestViewModel.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 14/05/23.
//

import Foundation
import SwiftUI
import CoreData

class TestViewModel: ObservableObject {
    static let shared = TestViewModel(context: CoreDataManager.shared.managedObjectContext)
    @Published var tests: [Tests] = []
    
    private let context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
        fetchData()
    }
    
    func fetchData() {
        let request: NSFetchRequest<NSFetchRequestResult> = Tests.fetchRequest()
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: request)
        
        do {
            try context.execute(deleteRequest)
            loadData()
            tests = try context.fetch(Tests.fetchRequest())
        } catch {
            print("Error fetching data: \(error)")
        }
    }

    
    func addItem(name: String, duration: String, image_name: String, description: String) {
        let newTest = Tests(context: context)
        newTest.id = UUID()
        newTest.test_name = name
        newTest.test_duration = duration
        newTest.image_name = image_name
        newTest.desc = description
        
        do {
            try context.save()
        } catch {
            print("Error saving data: \(error)")
        }
    }
    
    func loadData() {
        tests.removeAll()
        
        let images = ["DepressionImage", "AnxietyImage", "BipolarImage", "DepressionImage", "AnxietyImage", "BipolarImage", "DepressionImage", "AnxietyImage"]
        let names = ["Depression", "Anxiety", "Bipolar", "PTSD", "Youth Mental Health", "Pychosis & Scizorphernia", "Eating Disorder", "Addiction"]
        let durations = ["10", "10", "10", "10", "10", "10", "10", "10"]
        let descriptions = ["Description", "Description", "Description", "Description", "Description", "Description", "Description", "Description"]

        for index in 0..<images.count {
            let name = names[index]
            let duration = durations[index]
            let image = images[index]
            let description = descriptions[index]
            addItem(name: name, duration: duration, image_name: image, description: description)
        }
    }
}
