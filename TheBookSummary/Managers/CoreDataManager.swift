//
//  CoreDataManager.swift
//  TheBookSummary
//
//  Created by Somya on 04/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import CoreData
import UIKit

final class CoreDataManager : NSObject {
    
    private var modelName: String
    
    init(modelName: String) {
        self.modelName = modelName
         super.init()
        self.setUpNotificationHandling()
    }
    
    
    private(set) lazy var managedObjectContext: NSManagedObjectContext = {
        
        let managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = self.persistentStoreCoordinator
        return managedObjectContext
    } ()
    
    private lazy var managedObjectModel: NSManagedObjectModel = {
        
        guard let modelURL = Bundle.main.url(forResource: self.modelName, withExtension: "momd") else {
            fatalError("Unable to find Data Model")
        }
        guard let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("Unable to load Data Model")
        }
        return managedObjectModel
    } ()
    
    private lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        
        let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        
        let fileManager = FileManager.default
        let storeName = "\(self.modelName).sqlite"
        
        var documentsDirectoryUrl = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        let persistentStoreUrl = documentsDirectoryUrl.appendingPathComponent(storeName)
        
        do {
            try persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: persistentStoreUrl, options: nil)
        } catch {
            fatalError("Failed to add persistent store!")
        }
        
        return persistentStoreCoordinator
    } ()
    
    private func setUpNotificationHandling() {
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(saveChanges(_:)), name: UIApplication.didEnterBackgroundNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(saveChanges(_:)), name: UIApplication.willTerminateNotification, object: nil)
    }
    
    
    @objc func saveChanges(_ notification: Notification) {
        
        saveChange()
    }
    
    func saveChange() {
        
        guard managedObjectContext.hasChanges else { return }
        do {
            try managedObjectContext.save()
        } catch {
            print("Unable to set managed object context!!")
        }
    }
}
