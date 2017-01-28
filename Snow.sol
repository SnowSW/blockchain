pragma solidity ^0.4.8;

contract Snow {
    address public owner;
    mapping (uint => uint) public catalog;
    
    function Snow() {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        if (msg.sender != owner)
            throw;
        _;
    }
    
    function addEntryCatalog(uint file, uint hashFile) onlyOwner() {
        catalog[file] = hashFile;
    }
    
    function test(uint file, uint hashFile) onlyOwner() {
        if (catalog[file] != hashFile)
            throw;
    }
}
