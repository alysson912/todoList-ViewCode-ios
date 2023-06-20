//
//  HomeViewModel.swift
//  todoList
//
//  Created by ALYSSON DODO on 19/06/23.
//

import UIKit

class HomeViewModel {
    
    private var todoData: Todo?
    
    private var todoList: [Todo] = [
        Todo(title: "Atividade01", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade01", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade01", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade01", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade02", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade03", description: "Peito testando um treino qualquer para preeencher a descricao da cell"),
        Todo(title: "Atividade04", description: "Perna"),
    ]
    
    
    public func loadCurrentTodo(indexPath: IndexPath) -> Todo {
        return todoList[indexPath.row]
    }
    
    public var numberOfRowsInSection: Int {
        return todoList.count
    }
    
    public var heightForRowAt: CGFloat {
        
        return 160
    }
}
