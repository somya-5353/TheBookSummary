//
//  CoreDataManager.swift
//  TheBookSummary
//
//  Created by Somya on 04/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import CoreData

final class CoreDataManager {
    
    private var model: String
    
    init(model: String) {
        self.model = model
    }
    
    
    private(set) lazy var managedObjectContext: NSManagedObjectContext = {
        
        let managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = self.persistentStoreCoordinator
        return managedObjectContext
    } ()
    
    private lazy var managedObjectModel: NSManagedObjectModel = {
        
        guard let modelURL = Bundle.main.url(forResource: self.model, withExtension: "momd") else {
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
        let storeName = "\(self.model).sqlite"
        
        var documentsDirectoryUrl = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        let persistentStoreUrl = documentsDirectoryUrl.appendingPathComponent(storeName)
        
        do {
            try persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: persistentStoreUrl, options: nil)
        } catch {
            fatalError("Failed to add persistent store!")
        }
        
        return persistentStoreCoordinator
    } ()
    
    
}
