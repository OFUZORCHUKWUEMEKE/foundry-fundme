
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;
import {Fundme} from "../src/Fundme.sol";
import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig{
        address priceFeed;
    }

    constructor(){
        if (block.chainid == 11155111){
            activeNetworkConfig =  getSepoliaEthConfig();
        }else{
            getAnvilEthConfig();
        }
    }

    function getSepoliaEthConfig()public view returns(NetworkConfig memory){
        NetworkConfig memory sepoliaConfig = NetworkConfig({
            priceFeed: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
        });
        return sepoliaConfig;
    }

    function getAnvilEthConfig()public pure returns(NetworkConfig memory){

    }
}