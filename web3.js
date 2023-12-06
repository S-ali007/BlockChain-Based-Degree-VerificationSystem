// // web3.js
// import Web3 from 'web3';
// import DegreeVerificationContract from '../../degree verification system/blockchaindegreeverificationsystem/src/contracts/DegreeVerification.json';

// const infuraEndpoint = 'https://mainnet.infura.io/v3/d2a8a84f5d1f46bb99601aa260786502';
// const contractAddress = '0xd9145CCE52D386f254917e481eB44e9943F39138';
// const web3 = new Web3(new Web3.providers.HttpProvider(infuraEndpoint));

// // Ensure that the contract ABI is correctly exported in DegreeVerification.json
// const contract = new web3.eth.Contract(DegreeVerificationContract.abi, contractAddress);

// export { web3, contract };


// web3.js
import Web3 from 'web3';
import DegreeVerificationContract from '../../degree verification system/blockchaindegreeverificationsystem/src/contracts/DegreeVerification.json';

const infuraEndpoint = 'https://mainnet.infura.io/v3/d2a8a84f5d1f46bb99601aa260786502'; // Replace with your Infura endpoint
const contractAddress = '0xd9145CCE52D386f254917e481eB44e9943F39138'; // Replace with your contract address
const web3 = new Web3(new Web3.providers.HttpProvider(infuraEndpoint));

const contract = new web3.eth.Contract(DegreeVerificationContract.abi, contractAddress);

export { web3, contract };

