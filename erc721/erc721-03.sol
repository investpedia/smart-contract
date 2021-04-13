// SPDX-License-Identifier: MIT
//
// features
// - Mintable (yes)
// - Burnable (no)
// - Pausable (no)
// - Enumerable (no)
// - URI Storage (no)
// access control
// - Ownable (yes)
// - Roles (no)
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC721, Ownable {
    constructor() ERC721("MyToken", "MTK") {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://token-id-uri.x";
    }
}