# Horizen SideChains Test
## Testiranje funkcionalnosti sidechain-a pomoću aplikacije Sphere by Horizen 2.0.0

Cilj je testiranje novog 'Sphere by Horizen' novčanika
prilikom kreiranja sidechain-a i tokom interakcije između sidechain-a i glavnog blokčeina.

Originalni poziv za testiranje:

"HDE zadatak

Polazne odrednice:

https://github.com/HorizenOfficial/Sidechains-SDK/blob/master/README.md
https://github.com/HorizenOfficial/zend_oo/blob/sidechains_testnet/README.md

Zahtevani koraci:

* Download Sphere by Horizen 2.0.0: https://github.com/HorizenOfficial/Sphere_by_Horizen_Sidechain_Testnet/releases/tag/desktop-v2.0.0-beta-sidechain-testnet.

* Zahtevaj besplatni test ZEN (tZEN) na lokaciji "the Horizen Early Adopter Program (HEAP)": https://heap.horizen.global/.

* Upotrebi određene komande u aplikaciji Sphere by Horizen da bi deklarisao novi sidechain.

* Odradi Transfer sa glavnog blokčeina na sidechain.

* Napravi detaljan izveštaj koji uključuje snimke ekrana različitih koraka.

Za više informacija: https://hde.horizen.global/tasks"

### **Ovde su objašnjeni svi potrebni koraci za kreiranje sidechain-a:** ###
*Test je urađen na Windows 10, i5-7500*

Prvo, neophodno je da se download-uje i instalira novčanik:

https://github.com/HorizenOfficial/Sphere_by_Horizen/releases/download/desktop-v1.2.8-beta/Sphere_by_Horizen-1.2.8-beta.exe,

i napravi nalog:
![Create account](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/CreateAcc.png)

Nakon kreiranja naloga potrebno je sačekati da se novčanik sinhronizuje sa blokčeinom. Novčanik može odmah da se koristi i da se napravi nova adresa, ali onda postoji mogućnost da se ta adresa izgubi - meni se desilo, pa onda mora da se napravi nova (najbolje nakon što se sinhronizacija završi - može da potraje, 25 sati kod mene). 
Takođe ako se novčanik zatvori tokom sinhronizacije, može da se pojavi poruka "process already started" ili slična, kada se novčanik ponovo pokrene, u tom slučaju neophodno je stopirati/ubiti taj proces (_zend) i restartovati aplikaciju.

Dok se novčanik sinhronizuje, može da se napravi priprema okruženja, što je pokazano ovde:
![Prepare your environment](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/requirements.jpg)

Provera Java i Maven instalacija:
![check your java and maven!](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/java-and-maven.png)

Scala se preuzima ovde: https://www.scala-lang.org/download/

Kloniranje Zendoo SDK, 
`cd Sidechains-SDK`,
i na kraju `mvn package`:
![Zendoo](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/cloning%20Zendoo%20SDK.png)

Ovaj proces može da potraje u zavisnosti od brzine interneta (>3 sata u mom slučaju), tokom download-a/instalacije može da se pojavi prompt u vezi firevola i dozvola za ovaj proces, pa je potrebna pažnja.
![Zendoo-package](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/package%20-%20Zendoo%20SDK.png)

Ako je ovaj proces završen slično kao što je prikazano gore, onda je sve gotovo spremno za kreiranje prvog sidechain-a! :tada:

Kada se novčanik sinhronizuje, treba da se kreira nalog (adresa) i da se dodaju sredstva sa ove test "fontane":

![syncing](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/syncing.jpg)
![ClaimFreeZEN](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/claim-free-ZEN.png)

![wallet_synced](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/synced.png)

:tada:
Kada se stigne do ove pozicije, vreme je da se započne sa kreiranjem sidechain-a:

Kroz Command Promt se navigira do foldera gde se nalazi Sidechain-SDK. 
ukuca se sledeća komanda: 
`java -jar tools/sctool/target/sidechains-sdk-scbootstrappingtools-0.2.6.jar` *scbootstrappingtools-x.x.x.jar* u zavisnosti od verzije alata koja je instalirana.

Nakon pokretanja Jave unesu se sledeće komande:
![bootstraping](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/start-bootstrapping2.png)
!!! Ovi ključevi treba da se čuvaju - biće potrebni u narednim koracima !!!

A sada, kreiranje Sidechain-a:
![SideChainCreation](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/sidechain-creation.png)
![SideChainTransaction01](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/sidechain-transaction.png)
![SideChainConfirmation](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/sidechain-creation_wait-confirmation.png)

i transakcija:
![SideChainTransaction02](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/sidechain-transaction01.png)

konfirmacija:
![SideChainTransaction03](https://github.com/infinitEnigma/HorizenSideChains_test/blob/main/Assets/sidechain-transaction04.png)

## Zaključak ##
Ovo je bilo sjajno iskustvo, jasna uputstva, dobar i jasan interfejs i stabilna aplikacija, jedini problem je sinhronizacija kada internet nije dovoljno brz, može trajati danima
