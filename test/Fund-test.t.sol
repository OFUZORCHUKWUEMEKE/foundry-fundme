// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import {Test,console} from "../lib/forge-std/src/Test.sol";
import {Fundme} from "../src/Fundme.sol";

contract FundTest is Test {
    uint256 number = 1;
    Fundme fundme;
    // uint246 USER = makeAddr()

    function setUp() external {
        fundme = new Fundme(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
    }

    function testDemo() public {
        console.log(number);
        assertEq(number, 2);
    }

    function testOwnerIsMsgSender() public{
        // assertEq(fundme.i_owner(),address(this));
    }

    function testPriceFeedVersionIsAccurate() public{
        uint256 version = fundme.getVersion();
        assertEq(version,4);
    }

    function testFundUpdatesFundedDataStructure()public{
        // vm.prank();
    }
}
