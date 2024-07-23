//
//  GroupedExpenses.swift
//  Finance Tracker
//
//  Created by Batuhan Berk Ertekin on 22.07.2024.
//

import Foundation


struct GroupedExpenses : Identifiable {
    var id = UUID()
    var date : Date
    var expenses : [Expense]
    
    
    var groupTitle : String {
        
        let calendar = Calendar.current
        if calendar.isDateInToday(date) {
            return "Today"
        } else if  calendar.isDateInYesterday(date) {
            return "Yesterday"
        } else {
            return date.formatted(date: .abbreviated, time: .omitted)
        }
    }
}
