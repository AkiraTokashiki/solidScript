// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract TaskContract { 

    uint nextId;
    
    struct Task { 
        uint id;
        string name;
        string description;

    }
    Task[] tasks;

    function createTask () public { 
        tasks.push(Task(1, "tarea 1", "algo"));
    }

    function findIndex(uint _id) internal view returns(uint) { 
        for (uint i = 0; i < tasks.length; i++) { 
        if (tasks[i].id == _id) { 
            return i;
        }
    } 
    revert('Task not found');
}
    function readTask(uint _id) public view returns (uint) {
    uint index = findIndex(_id);
    return index;   
    }
 }
