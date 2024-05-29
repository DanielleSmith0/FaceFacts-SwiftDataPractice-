//
//  ContentView.swift
//  FaceFacts(SwiftDataPractice)
//
//  Created by Danielle Smith on 4/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    //1. find where data is stored -> environment
    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    @Query var people: [Person]
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(people) { person in NavigationLink(value: person) {
                    Text(person.name)
                    }
                }
                .onDelete(perform: deletePerson)
            }
            .navigationTitle("FaceFacts")
            .navigationDestination(for: Person.self) { person in EditPersonView(person: person)
            }
            .toolbar {
                Button("Add Person", systemImage: "plus", action: addPerson)
            }
        }
    }
    func addPerson() {
        //2. make data to store
        let person = Person(name: "", emailAddress: "", details: "")
        //3. actually store the data
        modelContext.insert(person)
        //For navigating to person:
        path.append(person)
    }
    
    func deletePerson(at offsets: IndexSet) {
        for offset in offsets {
            let person = people[offset]
            modelContext.delete(person)
        }
    }
}
#Preview {
    ContentView()
}
