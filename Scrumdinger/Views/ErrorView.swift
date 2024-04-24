//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Grace couch on 12/04/2024.
//

import SwiftUI


struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss


    var body: some View {
        NavigationStack {
            VStack {
                Text("An error has occured!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16.0)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}



#Preview  {
    enum SampleError: Error {
        case errorRequired
    }
    let wrapper = ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safetly ignore this error.")
    return ErrorView(errorWrapper: wrapper)
}

