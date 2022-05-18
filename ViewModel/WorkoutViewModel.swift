//
//  WorkoutViewModel.swift
//  StrongLifts
//
//  Created by Dalton Ulrich on 5/18/22.
//

import Foundation
import SwiftUI

class WorkoutViewModel {
    
    @AppStorage("Squat") var Squat = 0.0
    @AppStorage("Deadlift") var Deadlift = 0.0
    @AppStorage("Benchpress") var Benchpress = 0.0
    @AppStorage("Overheadpress") var Overheadpress = 0.0
    @AppStorage("Barbellrow") var Barbellrow = 0.0
}

class RepViewModel: ObservableObject {
    private var sets: [ExerciseSet]
    
    init(maxNumberOfRepsForEachSet: [Int]) {
        sets = maxNumberOfRepsForEachSet.map { maxNumberOfReps in
            ExerciseSet(maxReps: maxNumberOfReps, completedReps: maxNumberOfReps)
        }
    }
    
    var completedReps: [String] {
        sets
            .map { exerciseSet in
                exerciseSet.completedReps
            }
            .map { completedRep in
                "\(completedRep)"
            }
    }
}

func repLimiter(rep: inout Int) {
    rep += 1
    if rep > 5 {
        rep = 0
    }
}
