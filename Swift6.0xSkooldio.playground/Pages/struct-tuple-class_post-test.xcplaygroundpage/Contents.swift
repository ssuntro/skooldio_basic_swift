// preriquisit knowledges:
// Strings and Characters
// Enum
// Build-in collections(Arrays, Dictionaries, Sets, Ranges)
// Structs, tuples and classes
// Other primitive types
// Type inference
// nullable/non-nullable (optional type)


import Foundation

struct Task {
    let title: String
    let priority: Priority
    var isCompleted: Bool = false
}

enum Priority {
    case low, medium, high
}

class TaskManager {
    private var tasks: [Task] = []
    
    func addTask(title: String, priority: Priority) {
        let task = Task(title: title, priority: priority)
        tasks.append(task)
    }
    
    func listAllTasks() -> [Task] {
        return tasks
    }
    
    func filterTasks(by priority: Priority) -> [Task] {
        return tasks.filter { $0.priority == priority }
    }
    
    func completionPercentage() -> Double {
        let completedCount = tasks.filter { $0.isCompleted }.count
        return Double(completedCount) / Double(tasks.count) * 100
    }
}
let manager = TaskManager()
manager.addTask(title: "Buy groceries", priority: .medium)
manager.addTask(title: "Finish report", priority: .high)
manager.addTask(title: "Call mom", priority: .low)

print("All tasks:")
manager.listAllTasks().forEach { print($0.title) }

print("\nHigh priority tasks:")
manager.filterTasks(by: .high).forEach { print($0.title) }

print("\nCompletion percentage: \\(manager.completionPercentage())%")

// Optional demonstration
let optionalTask: Task? = manager.filterTasks(by: .medium).first
if let task = optionalTask {
    print("\nFound medium priority task: \\(task.title)")
}
