//
//  GroupInfo.swift
//  RideTogether
//
//  Created by 戴汝羽 on 2019/9/4.
//  Copyright © 2019 KevinKLLo. All rights reserved.
//

import Firebase
import MapKit

struct GroupInfo {
    
    var groupID: String
    
    var name: String
    
    var member: [String]
    
    var memberInfo: [MemberInfo]
    
    init (gorupID: String, groupName: String, groupMember: [String], memberInfo: [MemberInfo]) {
        
        self.groupID = gorupID
        
        self.name = groupName
        
        self.member = groupMember
        
        self.memberInfo = memberInfo
    }
}

struct MemberInfo {
    
    let name: String
    
    var spendTime: Int?
    
    var distance: Double?
    
    var averageSpeed: Double?
    
    var maximumSpeed: Double?
    
    var route: [GeoPoint]?
    
    var location: GeoPoint?
    
    init (memberName: String) {
        
        self.name = memberName
    }
}

struct LocationOfMember {
    
    var name: String
    
    var location: CLLocationCoordinate2D
}
