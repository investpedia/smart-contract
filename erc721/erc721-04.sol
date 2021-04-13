// SPDX-License-Identifier: MIT
//
// features
// - Mintable (no)
// - Burnable (yes)
// - Pausable (no)
// - Enumerable (no)
// - URI Storage (no)
// access control
// - Ownable (yes)
// - Roles (no)
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract MyToken is ERC721, ERC721Burnable {
    constructor() ERC721("MyToken", "MTK") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://token-id-uri.x";
    }
}