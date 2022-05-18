//
//  ButtonView.swift
//  StrongLifts
//
//  Created by Dalton Ulrich on 5/18/22.
//

import SwiftUI

struct ButtonView: View {
    
    @ObservedObject var repVM: RepViewModel
    
    var body: some View {
        HStack {
            ForEach(repVM.completedReps, id: \.self) { completedRep in
                Button(action: {
//                    repLimiter(rep: &repVM.rep1)
                }, label: {
                    Text(completedRep)
                })
                    .foregroundColor(.white)
                    .background(Circle()
                        .frame(width: 60, height: 60)
                    )
                    .padding(30.0)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    @ObservedObject var repVM: RepViewModel

    static var previews: some View {
        ButtonView(repVM: RepViewModel(maxNumberOfRepsForEachSet: [5, 5, 5, 5, 5]))
    }
}



//Button(action: {
//    repLimiter(rep: &RepVM.rep1)
//}, label: {
//    Text("\(RepVM.rep1)")
//})

