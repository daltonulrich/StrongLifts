//
//  HomeView.swift
//  StrongLifts
//
//  Created by Dalton Ulrich on 5/18/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Group {
                        WorkoutABView()
                        WorkoutABView()
                        WorkoutABView()
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    Spacer()
                }
                .navigationTitle("STRONGERLIFTS")
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color("BackgroundColor"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.dark)
            HomeView()
        }
    }
}

