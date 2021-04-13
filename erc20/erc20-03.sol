// SPDX-License-Identifier: MIT
//
// features
// - Mintable (yes)
// - Burnable (no)
// - Pausable (no)
// - Snapshots (no)
// access control
// - Ownable (yes)
// - Roles (no)
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenERC20 is ERC20, Ownable {
    constructor() ERC20("TokenERC20", "MTK") {
        _mint(msg.sender, 21000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}