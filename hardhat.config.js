require("@nomicfoundation/hardhat-toolbox");

require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
    solidity: "0.8.27",
    networks: {
        base: {
            url: "https://mainnet.base.org", // Replace with actual Base RPC URL
            accounts: [`0x${process.env.PRIVATE_KEY}`] // Load your private key from environment variables
        },
    },
};