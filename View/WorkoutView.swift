//
//  WorkoutView.swift
//  StrongLifts
//
//  Created by Dalton Ulrich on 5/18/22.
//

import SwiftUI

struct WorkoutView: View {
    
    @State var WorkoutVM = WorkoutViewModel()
    @State var test: Int = 0
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Deadlift")
                    Spacer()
                    Button(action: {
                    }, label: {
                        Text("XxX")
                            .foregroundColor(.black)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.red)
                    })
                }
                .padding(5)
                HStack {
                    Button(action: {
                        repLimiter(rep: &test)
                    }, label: {
                        Text("\(test)")
                    })
                }
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}

