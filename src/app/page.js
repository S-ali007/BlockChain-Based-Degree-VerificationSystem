'use client'
// pages/index.js
import React, { useState, useEffect } from 'react';
import Web3 from 'web3';
import DegreeVerificationSystem from '../../src/contracts/DegreeVerification.json';

const Home = () => {
  const contractAddress = '0xd9145CCE52D386f254917e481eB44e9943F39138';
  const abi = DegreeVerificationSystem.abi;

  const [name, setName] = useState('');
  const [rollNumber, setRollNumber] = useState('');
  const [verificationResult, setVerificationResult] = useState('');
  const [web3, setWeb3] = useState(null);
  const [contract, setContract] = useState(null);
  const [privateKey, setPrivateKey] = useState('');  // Add this line


  useEffect(() => {
    const initializeWeb3 = async () => {
      const infuraEndpoint = 'https://mainnet.infura.io/v3/19b51735ebf14ecaae69f543e0101788'; // Replace with your Infura API key
      const web3Instance = new Web3(new Web3.providers.HttpProvider(infuraEndpoint));
      setWeb3(web3Instance);

      const contractInstance = new web3Instance.eth.Contract(abi, contractAddress);
      setContract(contractInstance);

      const privateKey = '0x45126460d1f7e419a9ea7938d136e2dbf6fe2e3ca8f68e1433542eaacf48e972';
      setPrivateKey(privateKey);

    };

    initializeWeb3();
  }, [abi, contractAddress]);

  const addDegree = async () => {
  try {
    const fromAddress = '  ';

    const gas = await contract.methods.addDegree(name, rollNumber).estimateGas();
    const gasPrice = await web3.eth.getGasPrice();

    const transaction = {
      from: fromAddress,
      to: contractAddress,
      data: contract.methods.addDegree(name, rollNumber).encodeABI(),
      gas,
      gasPrice,
    };

    console.log('Transaction details:', transaction);

    const signedTransaction = await web3.eth.accounts.signTransaction(transaction, privateKey);
    const receipt = await web3.eth.sendSignedTransaction(signedTransaction.rawTransaction);

    if (receipt.status === false) {
      console.error('Transaction failed. Receipt:', receipt);
      if (receipt.hasOwnProperty('revertReason')) {
        console.error('Revert reason:', web3.utils.hexToUtf8(receipt.revertReason));
      }
      setVerificationResult('Error: Transaction failed');
    } else {
      console.log('Transaction receipt:', receipt);
      setVerificationResult('Degree added successfully');
    }
  } catch (error) {
    console.error('Error adding degree:', error.message);
    setVerificationResult(`Error: ${error.message}`);
  }  
};

  
  
  
  
  


  const verifyDegree = async () => {
    try {
      const result = await contract.methods.verifyDegree(rollNumber).call();
      setVerificationResult(result[1] ? 'Verified' : 'Not Verified');
    } catch (error) {
      console.error('Error verifying degree:', error);
      setVerificationResult(`Error: ${error.message}`);
    }
  };

  return (
    <div className="p-4">
      <h1 className="text-2xl font-bold mb-4">Degree Verification App</h1>

      <label className="block mb-2">
        Name:
        <input
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          className="border border-gray-300 p-2 w-full"
        />
      </label>

      <br />

      <label className="block mb-2">
        Roll Number:
        <input
          type="text"
          value={rollNumber}
          onChange={(e) => setRollNumber(e.target.value)}
          className="border border-gray-300 p-2 w-full"
        />
      </label>

      <br />

      <button
        onClick={addDegree}
        className="bg-blue-500 text-white p-2 rounded hover:bg-blue-700 transition duration-300"
      >
        Add Degree
      </button>

      <button
        onClick={verifyDegree}
        className="bg-green-500 text-white p-2 rounded ml-2 hover:bg-green-700 transition duration-300"
      >
        Verify Degree
      </button>

      <br />

      <p className="mt-4">Verification Result: {verificationResult}</p>
    </div>
  );
};

export default Home;

