// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";

contract MaximaToken is ERC20 {
    uint256 public constant TOTAL_SUPPLY = 900_000_000_000 * 10**18; // 900 billion tokens

    constructor() ERC20("Maxima", "MAX") {
        _mint(msg.sender, TOTAL_SUPPLY); // Mint all tokens at deployment
    }

    // Override decimals for consistency
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
