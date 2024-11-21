//
//  CoreDataManager.swift
//  Saumil Task Excellent WebWorld
//
//  Created by Saumil Doshi on 27/10/24.
//

import UIKit
import CoreData
import SDWebImage

class CoreDataManager {
    static let shared = CoreDataManager()
    let manageContext = CoreDataStack.shared.context
    
    func saveData(modal: Users) {
        let userData = UserEntity(context: manageContext)
        userData.firstName = modal.firstName
        userData.lastName = modal.lastName
        userData.age = Int64(modal.age ?? 0)
        userData.email = modal.email
        userData.imgUser = modal.image
        userData.lat = modal.address?.coordinates?.lat ?? 0
        userData.lng = modal.address?.coordinates?.lng ?? 0
        try? manageContext.save()
    }
    
    func fetchUserData() -> [UserEntity] {
        var users: [UserEntity] = []
        do {
            users = try manageContext.fetch(UserEntity.fetchRequest())
        } catch {
            print(error.localizedDescription)
        }
        return users
    }
    
    func updateUserData(user: Users,userEntity: UserEntity) {
        userEntity.firstName = user.firstName
        userEntity.lastName = user.lastName
        userEntity.age = Int64(user.age ?? 0)
        userEntity.email = user.email
        userEntity.imgUser = user.image
        try? manageContext.save()
    }
    
    func deleteUser(userEntity: UserEntity) {
        manageContext.delete(userEntity)
        try? manageContext.save()
    }
    
    func saveToDocumentDirectory(image: UIImage,fileName:String) {
        guard let data = image.pngData() else { return }
        let filename = getDocumentDirectoryPath().appendingPathComponent(fileName)
        do {
            try data.write(to: filename)
            print("Image saved to \(filename)")
        } catch {
            print("Failed to save image: \(error)")
        }
    }
    
    func loadImageFromDocumentDirectory(fileName: String) -> UIImage? {
        let fileURL = getDocumentDirectoryPath().appendingPathComponent(fileName)
        do {
            let data = try Data(contentsOf: fileURL)
            return UIImage(data: data)
        } catch {
            print("Failed to load image: \(error)")
            return nil
        }
        
    }
    
    func getDocumentDirectoryPath() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return path
    }
    
    

    
}
