# Horizen SideChains Test
## Test sidechain functionalities with Sphere by Horizen 2.0.0

The goal is to test the new 'Sphere by Horizen' wallet 
in creating side chains and the interactions between side chains and the main chain. 

Here is the original call:

"HDE task

Starting points:

https://github.com/HorizenOfficial/Sidechains-SDK/blob/master/README.md
https://github.com/HorizenOfficial/zend_oo/blob/sidechains_testnet/README.md

Required steps:

* Download Sphere by Horizen 2.0.0: https://github.com/HorizenOfficial/Sphere_by_Horizen_Sidechain_Testnet/releases/tag/desktop-v2.0.0-beta-sidechain-testnet.

* Obtain free test ZEN (tZEN) via the Horizen Early Adopter Program (HEAP): https://heap.horizen.global/.

* Use the dedicated commands on Sphere by Horizen to declare a new sidechain.

* Perform a Forward Transfer from the mainchain to the sidechain.

* Produce a detailed report that includes screenshots of the different steps.

For more info: https://hde.horizen.global/tasks"

**Here we have all the steps needed for side chain creation explained:**

First you need to create account:
![Create account](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/CreateAcc.png)

After creating account you should wait for sync to finish. You can also start using wallet and create new address, but if so, you can lose that address - happened to me, so you will have to make new one (best after syncing is finished). 
Also if you close your wallet during syncing, you may experience "process already started" or similar when starting again, then you should kill/stop that proces (_zend) and start the app again.

While the wallet is syncing you should prepare your environment as mentioned here:
![Prepare your environment](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/requirements.jpg)

Check if you have adequate Java and Maven installed:
![check your java and maven!](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/java-and-maven.png)

Install Scala from: https://www.scala-lang.org/download/

Clone Zendoo SDK, 
`cd Sidechains-SDK`,
and finally `mvn package`:
![Zendoo](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/cloning%20Zendoo%20SDK.png)

This process can take a while depending on your intenet speed (>3 hours what I got), you may be prompt to enable this proocess trough your firewall in the middle of downloading/installing, so be cautious.
![Zendoo-package](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/package%20-%20Zendoo%20SDK.png)

If this process is finshed similar as above, you are almost ready for your first sidechain creation! :tada:

Just wait for the wallet to sync, create account and add funds from test faucet:

![ClaimFreeZEN](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/claim-free-ZEN.png)

