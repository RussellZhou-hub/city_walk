//
//  RatingViewModel.swift
//  city_walk
//
//  Created by VincentZhou on 2024/5/6.
//

import Foundation

class RatingViewModel: ObservableObject {
    @Published var posts = [Post]() // "[]" declare a Post class array, () calls initializer.
    
    let titles = [ // thread
        "想要来东京的看这里",
        "来了就会得首尔病",
        "洛杉矶的天空",
        "这就是上海"
    ]
    
    let bodies = [ // thread
        "作为一名独自旅行的旅客，我对评价向导陪同的旅游行程印象深刻。导游的专业知识和热情让整个旅程变得生动而有趣。她不仅仅是一位讲解员，还是我们的朋友，为我们提供了很多有用的建议和技巧。我强烈推荐这样的旅行体验！",
        "这是一次令人难忘的经历。导游的知识渊博，对目的地的热爱和关注使得整个旅程充满了活力和乐趣。她贴心的安排和周到的服务让我们感到宾至如归。我期待着再次参加类似的旅行！",
        "陪同的旅游行程为我们带来了一次完美的度假体验。导游的专业素养和耐心让我们感到非常满意。她对当地文化和历史的深入了解让我们对所到之处有了更深的认识。这次旅行不仅仅是一次简单的观光之旅，更是一次充满教育和启发的旅程。",
        "我参加了一次向导陪同的旅游行程，体验非常棒！导游的幽默风趣和活泼个性使得整个旅程充满了欢乐和轻松的气氛。她的专业知识和丰富经验让我们对所到之处了如指掌。我对这次旅行的一切都非常满意，期待下一次再相聚！"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            // call "Post" class initializer
            .init(id: NSUUID().uuidString, title:titles[0], body: bodies[0]),
            .init(id: NSUUID().uuidString, title:titles[1], body: bodies[1]),
            .init(id: NSUUID().uuidString, title:titles[2], body: bodies[2]),
            .init(id: NSUUID().uuidString, title:titles[3], body: bodies[3])
        ]
    }
    
}
