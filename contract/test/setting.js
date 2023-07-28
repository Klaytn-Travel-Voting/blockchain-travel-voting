const Web3 = require('web3')
const HDWalletProvider = require("@truffle/hdwallet-provider");
require("dotenv").config();
const abiToken = require('../artifacts/contracts/TokenVoting.sol/TokenVoting.json');
const abi = require('../artifacts/contracts/DestinationTravelVoting.sol/DestinationTravelVoting.json');

// for producting
const privateKeys = [
    process.env.ACCOUNT
]
let provider = new HDWalletProvider(
    privateKeys,
    `https://klaytn-baobab.blockpi.network/v1/rpc/public`,
    0,
    1
);
const web3 = new Web3(provider);

async function mint() {
    try {
        const contract = new web3.eth.Contract(
            abiToken.abi,
            "0x7f128b94b991E62aB1E102A9AB9175b4E38182A1",
        )
        // 0xB13332f8d4E81df0709d9Ffa15CB42D8dC0839c3
        // 0xf503bCfF9528F592A5b1644C0932BE10cE4991A9
        const tx = await contract.methods.mint("0xB13332f8d4E81df0709d9Ffa15CB42D8dC0839c3", "999999999999999999999999999");
        await tx.estimateGas({
            from: "0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5"
        });
        await tx.send({
            from: '0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5'
        })
    } catch (e) {
        console.log(e);
    }
}

async function checkBlance() {
    try {
        const contract = new web3.eth.Contract(
            abiToken.abi,
            "0x7f128b94b991E62aB1E102A9AB9175b4E38182A1",
        )
        const tx = await contract.methods.balanceOf("0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5").call();
        console.log(tx);
    } catch (e) {
        console.log(e);
    }
}

async function getStatus() {
    try {
        const contract = new web3.eth.Contract(
            abi.abi,
            "0xe29b950D3Adb8077806Ea7502E5e776e0D87c822",
        )
        const tx = await contract.methods.imageId("1").call();
        console.log(tx);
    } catch (e) {
        console.log(e);
    }
}

async function checkVoting() {
    try {
        const contract = new web3.eth.Contract(
            abi.abi,
            "0xe29b950D3Adb8077806Ea7502E5e776e0D87c822",
        )
        const tx = await contract.methods.TOKEN_VOTING().call();
        console.log(tx);
    } catch (e) {
        console.log(e);
    }
}

async function approve() {
    try {
        const contract = new web3.eth.Contract(
            abiToken.abi,
            "0x7f128b94b991E62aB1E102A9AB9175b4E38182A1",
        )
        const tx = await contract.methods.approve("0xe29b950D3Adb8077806Ea7502E5e776e0D87c822", "999999999999999999999999999999");
        await tx.estimateGas({
            from: "0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5",
        });
        await tx.send({
            from: '0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5'
        })
    } catch (e) {
        console.log(e);
    }
}


async function updateTimeVoting() {
    try {
        const contract = new web3.eth.Contract(
            abi.abi,
            "0xe29b950D3Adb8077806Ea7502E5e776e0D87c822",
        )
        const tx = await contract.methods.updateTimeVoting("", "");
        await tx.estimateGas({
            from: "0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5",
        });
        await tx.send({
            from: '0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5'
        })
    } catch (e) {
        console.log(e);
    }
}

async function vote() {
    try {
        const contract = new web3.eth.Contract(
            abi.abi,
            "0xe29b950D3Adb8077806Ea7502E5e776e0D87c822",
        )
        const tx = await contract.methods.vote("10000000000000000", "1");
        await tx.estimateGas({
            from: "0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5",
        });
        await tx.send({
            from: '0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5'
        })
    } catch (e) {
        console.log(e);
    }
}

async function withdraw() {
    try {
        const contract = new web3.eth.Contract(
            abi.abi,
            "0xe29b950D3Adb8077806Ea7502E5e776e0D87c822",
        )
        const tx = await contract.methods.withdraw();
        await tx.estimateGas({
            from: "0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5",
        });
        await tx.send({
            from: '0xE62F5E866C0687fCC248dA1AA80296BFEb677ca5'
        })
    } catch (e) {
        console.log(e);
    }
}

// mint()
// checkBlance()
// approve()
// vote()
// checkVoting()
// updateTimeVoting()
// withdraw()
getStatus()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error)
        process.exit(1)
    })