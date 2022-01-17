// solidity version spcifying
pragma solidity >=0.5.0;

// declare smart contract named todolist
contract TodoList {
    // create a state variable, taskcount
    // to track the number of task
    // set default value to 0
    uint256 public taskCount = 0;
    // model a task
    struct Task {
        uint256 id; // unique identifier for struct
        string content; // text of task
        bool completed; // check if completed or not
    }
    // mapping is a data str to store all the tasks
    mapping(uint256 => Task) public tasks;

    // func to add new tasks to todolist
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    constructor() public {
        createTask("Behaving morelike human");
    }
}
// created ETHEREUM SMART CONTRACT
