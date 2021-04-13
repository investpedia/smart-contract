// SPDX-License-Identifier: MIT
//
// features
// - Mintable (no)
// - Burnable (yes)
// - Pausable (no)
// - Snapshots (no)
// access control
// - Ownable (yes)
// - Roles (no)
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract TokenERC20 is ERC20, ERC20Burnable {
    constructor() ERC20("TokenERC20", "MTK") {
        _mint(msg.sender, 21000000 * 10 ** decimals());
    }
}