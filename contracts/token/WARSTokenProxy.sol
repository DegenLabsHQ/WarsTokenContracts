// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import "../proxy/Proxy2Step.sol";

contract WARSTokenProxy is Proxy2Step {
    constructor(address impl_) Proxy2Step(impl_) {
        (bool success,) = impl_.delegatecall(abi.encodeWithSignature("initialize()"));
        require(success, "init failed");
    }    
}
