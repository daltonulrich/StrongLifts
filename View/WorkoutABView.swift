//
//  WorkoutABView.swift
//  StrongLifts
//
//  Created by Dalton Ulrich on 5/18/22.
//

import SwiftUI

struct WorkoutABView: View {
    
    var WorkoutVM = WorkoutViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Workout A")
                Spacer()
                Text(Date(), style: .time)
            }
            .font(.caption)
            .foregroundColor(Color("lightGraySL"))
            .padding(.bottom, 3)
            
            VStack {
                HStack {
                    Text("Squat")
                    Spacer()
                    Text("1x1 \(WorkoutVM.Squat)lb")
                }
                Divider().frame(height: 0.5).background(Color("lightGraySL"))
                HStack {
                    Text("Deadlift")
                    Spacer()
                    Text("1x1 lb")
                }
                Divider().frame(height: 0.5).background(Color("lightGraySL"))
                HStack {
                    Text("Bench")
                    Spacer()
                    Text("1x1 lb")
                }
            }
            .font(.footnote)
        }
        .padding(10)
        .background(Color("BackgroundColorLight"))
        .cornerRadius(8)
    }
        
        
    
//    struct : ViewModifier {
//        var text: String
//
//        func body(content: Content) -> some View {
//            ZStack(alignment: .bottomTrailing) {
//                content
//                Text(text)
//                    .font(.caption)
//                    .foregroundColor(.white)
//                    .padding(5)
//                    .background(.black)
//            }
//        }
//    }
//
//    extension View {
//        func watermarked(with text: String) -> some View {
//            modifier(Watermark(text: text))
//        }
//    }
}

struct WorkoutABView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutABView()
            .previewLayout(.sizeThatFits)
    }
}
