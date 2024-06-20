//
//  VideoName.swift
//  SuperApp
//
//  Created by Anton Hoang on 26/05/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.

import Foundation

enum VideoName: String, CaseIterable, Identifiable {
    var id: String { rawValue }
    
    case dance = "mixkit-man-dancing-under-changing-lights-1240-medium"
    case karate = "mixkit-a-young-karateka-woman-makes-a-reverence-movement-49624"
    case capitolFacade = "mixkit-monumental-facade-of-a-capitol-in-texas-40700-medium"
    case mountaineerClimbing = "mixkit-skilled-and-experienced-mountaineer-climbing-a-rocky-mountain-41065"
    case skating = "mixkit-top-aerial-shot-of-a-skater-skating-on-a-half-1364"
    case urbanWoman = "mixkit-urban-woman-with-a-smoke-bomb-at-a-forest-1861"
    
    var url: URL {
        guard let url = Bundle.main.url(forResource: self.rawValue, withExtension: "mp4") else {
            fatalError("Unable to find resource \(self.rawValue).mp4")
        }
        return url
    }
}
