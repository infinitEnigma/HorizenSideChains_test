**Building zend_oo and SideChain_SDK** on Windows 10 in VM - with Ubuntu 18

[this was explained in previous test, here are few highlights:](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/README.md)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC0.png)

[few steps have been skiped as they are explined in the first part, when tried on windows 10 system](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/README.md)


![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC3.png)

after starting sidechain check `genesisBlockReferenceInfo` and network status `netstat -plnt`

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC4.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC5.png)

Creating Sidechain and sending transaction

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC6.png)

confirming transaction `generate 1` on both chains

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC8.png)

using [swagger](https://swagger.io/) for interaction with sidechain (not mandatory)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC9.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC10.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC11.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC12.png)

test transactions inside sidechain `sendCoinsToAddress` `allTransactions`

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC13.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC14.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC15.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC17.png)

**test Backward transactions**

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC18.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC19.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC20.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC21.png)

mine the transaction on sidechain

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC22.png)

check the balances

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC23.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC24.png)

generate more blocks until all transactions are confirmed

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC25.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC28.png)

![SideChain](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/Assets/VB-installing-SC29.png)

Creating sidechain with manualy doing copy/paste of keys and other data was painfull job to do, with many posibilities to make a mistake.
These articles was very useful:
https://blog.horizen.io/horizen-sidechains-zen-transfer/, https://blog.horizen.global/horizen-sidechains-the-zendoo-node/
After I did finish the test I had to find a better way for doing this with some automated scrypt. Had to read many docs and papers to get more familiar with the technology behind this project, and was just about to start on creating one when this article took my attention:
https://medium.com/chain-accelerator/how-to-install-a-horizen-node-and-their-fully-decentralized-zendoo-sidechain-e095ccb0a8b8

I have tested the scrypt [data generated from this test can be found here :smiley:](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Create%20a%20new%20sidechain%20%23151/generatedData/generatedKeys.txt)
and everything was done just fine.
