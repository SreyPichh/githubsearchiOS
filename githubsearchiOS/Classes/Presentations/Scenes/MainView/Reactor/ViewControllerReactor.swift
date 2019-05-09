//
//  ViewControllerReactor.swift
//  githubsearchiOS
//
//  Created by Pich on 4/4/19.
//  Copyright © 2019 pich. All rights reserved.
//

import ReactorKit

class ViewControllerReactor: Reactor {
    
    enum Action {
        case queryInput(String)
        case IsSelectedRepo(IndexPath)
    }
    enum Mutation {
        case setRepo
    }
    var initialState: ViewControllerReactor.State
    
    struct State {
        var query: String
        
    }
    
    init() {
        self.initialState = State(query: "")
    }
}
extension ViewControllerReactor {
//    func mutate(action: ViewControllerReactor.Action) -> Observable<ViewControllerReactor.Mutation> {
//        switch action {
//        case .queryInput(let query):
//
//        }
//    }
}
