// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable(msg.sender) {
    constructor() ERC20("MyToken", "MTK") {
        transferOwnership(msg.sender);
    }

   
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }


    function transferTokens(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }


    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
