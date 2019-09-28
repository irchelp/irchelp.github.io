# The IRC Prelude

By David Caraballo (DC-itsme) and Joseph Lo (Jolo)

version 1.1.4, updated 3/20/98  The original version of this page is at <[http
://www.irchelp.org/irchelp/new2irc.html](http://www.irchelp.org/irchelp/new2ir
c.html)>

Other versions: [Español](/irchelp/misc/esnew2irc.html) |
[Français](/irchelp/misc/frnew2irc.html) |
[Deutsch](/irchelp/misc/denew2irc.html) |
[Greek](/irchelp/misc/grnew2irc.html) |
[Indonesia](/misc/idnew2irc.html) |
[Italiano](/misc/itnew2irc.html) |
[Nederlands](/irchelp/misc/nlnew2irc.html) |
[Portugues](/misc/ptnew2irc.html) |
[Turkce](/misc/trnew2irc.html)

Turkce translation by Asu and Ceren Pala

    
    
    Icindekiler
      1.IRC nedir ve nasIl calIsIr?
      2.BazI detaylar
      3.Konusma ve komutlarIn girilisi
      4.Nereye gitmeli
      5.BazI gulumsemeler ve argo
      6.BazI tavsiyeler
      7.IRC (server) problemleri,ve (server) secimi
      8.Daha detaylI yardIm
      9.Bir kelime uyarIsI
    ----------------------------------------------------------------------------
    
    1. IRC nedir ve nasIl calIsIr?
         IRC (Internet ..... Sohbet) size tum dunyadan insanlarla 
           istediginiz an iletisim kurma imkanI saglar.IRC kullanIcIlarIn ona
           baglanabilmesini saglayan bir cok bagImsIz networkden (yada netden)
           olusur.En buyuk networkler EFnet (orjinal IRC neti,genellikle 32000
           kisiden fazla kullanIcI aynI anda uzerinde bulunur),Undernet,IRCnet
           DALnet ve NewNet'tir.
           Genellikle, kullanIcI (ornegin siz) IRC netlerinden birine
           baglanmak icin 'client' denilen bir program calIstIrIr.Server aynI
           net uzerindeki diger serverlardanbilgi alIr ve onlara bilgi verir.
           
           Onerilen programlar (client):
         * UNIX/shell: ircII
         * Windows: mIRC or PIRCH
         * Macintosh: Ircle
           KullandIgInIz client hakkIndaki bilgileri okudugunuza emin olun!
             
           Bir IRC networkundeki bir IRC serverIna baglandIktan sonra
           genellikle bir yada birden fazla 'kanala' baglanIrsInIz,
           digerleriyle iletisim kurabilmek icin.EFnet'te genellikle herbiri
           farklI bir konuya ayrIlmIs 120002den fazla kanal vardIr.Iletisim
           genel (kanaldaki herkezin yazdIklarInIzI okuyabildigi) yada ozel
           (aynI kanlda olan yada olmayan iki insan arsI mesajlar) olabilir.
           IRC bir 'oyun' degildir,ve size IRC de tanIstIgInIz insanlara
           gercek hayatta karsIlIklI yada telefonda konustugunuz insanlara
           davrandIgInIz kadar nezaketle davranmanIzI tavsiye ederim,aksi
           halde ciddi problemlerle karsI karsIya kalabilirsiniz.
     
         _________________________________________________________________
    
    2.BazI detaylar
    
         Kanal isimleri genellikle bir # ile baslar, #irchelp de oldugu
           gibi.Bu kanallar aynI net uzerindeki tum serverlarca paylasIlIr,
           dolayIsIyla arkadaslarInIzla aynI server da olmanIz gerekmez.
           (AynI zamanda # yerine & ile baslayan kanal isimleride vardIr.
           Bu kanallar aynI neti paylasan tum kanallarda degilde sadece sizin
           serverInIzda bulunanlardIr.)
           IRC'deki tum kullanIcIlarIn bir takma ismi vardIr, smartgal yada
           FunGuy gibi.KarIsIklIgI engellemek icin en iyi secim sIk
           rastlanmayan bir isim secmektir, ornegin 'john' pek iyi bir secim
           sayIlmaz.BazI betlerde isimler kimseye ait degildir,ve kanallarda.
           Bu bazI karIsIklIklara yol acabilir,dolayIsIyla eger bu konularda
           mulkiyetci iseniz bazI 'servis' leri bulunan networklerden
           Undernet,DALnet yada baska kucuk netwokleri tercih etmelisiniz. 
            
            Kanallar kanal operatorleri tarafIndan idare edilir,ya da kIsaca
            'ops'.KanalI kimin girebilecegini belirleyerek (bazI
            kullanIcIlarIn girisini engelleyerek 'banning'),kimlerin cIkmasI
            gerektigini belirliyerek (onlarI dIsarI atarak 'kicking'),ve 
            hatta kimlerin konusacagInI belirleyerek (kanalI...'moderated')!
            kanalI kontrol ederler.Kanal operatorlerini kanallarI uzerinde
            tam hakimiyete sahiptirler ve kararlarI degistirilemez.Eger bi
            kanala girisiniz engellenmisse,kanal operatorune bir /msg
            yollayIn ve nazik bir sekilde iceri girmenize izin verilmesini
            isteyin (operatorun kim oldugunu ogrenmek icin diger bolumdeki      
            /who komutunu okuyun).Eger size cevap vermezlerse yada kanal
            gizli durumda oldugu icin /who komutu kullanIlamIyorsa kabul
            gordugunuz baska bir kanala gecin. 
            
            IRC serverlarI IRC adminleri ve IRC operatorleri, 'IRC ops'
            tarafIndan calIstIrIlIr.IRC operatorleri servrI kendileri idare
            eder ve EFnet ve daha bircok netwokte kisisel sorunlar,kanal
            istilalarI ve kaybedilen operatorlukler ve bunlar gibi 
            problemlerle ilgilenmezler.Onlar IRC polisleri degildir.
            [Icindekiler]
            
         _________________________________________________________________
         
    3.Konusma ve komutlarIn kullanImI
            Komutlar ve metin aynI yere yazIlIr. Komutlar /karakteri ile
            baslar.Eger mIRC gibi bir Windows,bir cok komut mouse ile
            secilmek suretiyle kullanIlabilir.Fakat yinede oncelikle temel 
            IRC komutlarInI ogrenmeniz tavsiye edilir.KomutlarI kullanIrken
            bIrakIlacak bosluklara ve buyuk harfle yazIlacak kelimelere
            dikkat ediniz.Temel komutlar butun iyi programlarda
            kulanIlabilmektedir.
            AsagIda bazI ornekler verilmistir.Bu orneklerde isminizin 
            'isminiz' ve icinde oldugunuz kanalInda '#kanalIm' oldugunu
            dusunun.
            ArkadasInIz 'MaryN' de sizinle birlikte #kanalIm da ve
            arkadasInIz 'Tomm' da IRC de fakat sizin kanalInIzda degil.
            Bu ornekleri uygun kanal ve insan isimlerini yerine yerlestirerek 
            gercege uygulayabilirsiniz.
                                    Ne yazarsanIz
                                       Ne olur
                          
                                    /join #kanalIm
                            #kanalIm kanalIna katIlrsInIz
                                    
                                    /who #kanalIm 
                Kanaldaki kullanIcIlar hakkInda bazI bilgiler verir
                @ = Kanal operatoru, * = IRC operatoru
                                     
                                  herkese merhaba
           #kanalIm daki herkes <isminiz herkese merhaba yazIsInI gorur.
                       (Kendi isminizi yazmanIza gerek yoktur.)                 
                        
                                   /me bir pembe tavsan
           #kanalIm daki herkes * isminiz  bir pembe tavsan yazIsInI gorur
                        
                                   /leave #kanalIm
                                 Kanaldan cIkarsInIz.  
    
                                 /whois Tomm
              Tomm veya girdiginiz isim herneyse onun hakkInda birtakIm
                                bilgiler alIrsInIz.                 
                                    /whois isminiz
                  Bu sizin hakkInIzda digerlerinin aldIgI bilgidir.
                                   /nick yeniisminiz
                       Isminizi 'yeniisminiz' olarak degistirir.
                                   /msg Tomm selam    
         YanlIzca Tomm ekranInda sizin selam mesajnIzI gorur.(Bu komutun
                 calIsmasI icin aynI kanalda olmanIz sart degildir.)
    
                                  /ping #kanalIm
         #kanalIm'daki kullanIcIlarla sizin aranIzdaki gecikmeler hakkInda
                                    bilgi verir.     
                                 /ping Tomm
           Sadece siz ve Tomm arasIndaki gecikmeler hakkInda bilgi verir.
                              /dcc chat MaryN 
        Bu MaryN' sizin dcc chat isteminizi bildiren bir mesaj yollar.
           BaglantInIn tamamlanmasI icin MaryN'nin de /dcc chat isminiz
           yazmasI gerekmektedir.DCC chat /msg 'ye gore daha hIzlI ve daha
                                    guvenlidir.                        
                             /msg =MaryN Selam! 
       DCC baglantIsI kurulduktan sonra, /msg =isim mesaj formatInI
          kullanInIz.( = isaretine dikkat ediniz ) DCC serverlardan
          gecmediginden lag yada netsplite magruz kalmaz.Boylece daha hIzlI
                                iletisim saglanIr.                       
           
                                    /help
                Bir cok programda calIsan bu komutu deneyin!
                     
                            /quit iyi geceler!
          IRC'den tamamen cIkmanIzI saglar,ikinci kIsIm sayesinde diger
          kullanIcIlar '***Signoff:isminiz (Iyi geceler!)' mesajInI gorurler.
           
           NOTE:Eger bir kanalda degilseniz, / ile baslamayan satIrlarIn bir
           etkisi olmaz ve bircok komut farklI calIsIr yada digerleriyle
           birlikte calIsmaz.  
    
         _________________________________________________________________
    
    4. Nereye gitmeli?
           Bir kanala girip bir sure yanlIz dinlemek ve konusmakla bircok sey
           ogrenebilirsiniz.Yeni baslayanlar icin ,bu kanallarI deneyin:
           #new2irc,#newuser,#newbies, yada #chatback.Daha kalabalIk
           alternatifler ise: #hottub,#chat ve #ircbar.
           mIRC programI hakkInda yardIm icin #new2mirc ya da #mirchelp'i
           deneyin.
           Genel irc sorularIyla ilgili yardIm icin ise #irchelp'e
           katIlabilirsiniz. 
             
           #benimkanalIm ismi ile kendi kanalInIzI olusturmak icin (eger
           benim kanalIm isimli bir kanal zaten yoksa ), /join #benimkanalIm
           yazmanIzla kanal acIlIr ve siz otomatik olarak operator olursunuz. 
    
    
         _________________________________________________________________
    
    5. BazI gulumsemeler ve argo
    
         :-) gulumseyen bir yuz, gorebilmek icin basInIzI sola yatIrIn.
            Benzer sekilde, :-( somurtan , ;-) gozkIrpan, :~~) aglayan,
            :-P dil cIkartan, (-: solak gulumsemesi...v.b.Bu suratlardan
            yuzlercesi uretilebilir. 
            Bunlar ise IRC2de kullanIlan bazI kIsaltmalar:
       
    brb =  be right back (hemen geri gelicegim)
       bbiaf= be back in a flash (IsIk hIzIyla geri gelecegim)
    bbl =  be back later (bir sure sonra geri gelecegim)   
       ttfn = ta ta for now (simdilik hoscakalIn)
    np  =  no problem (sorun degil)
       imho = in my humble opinion (bana gore,bence)
    lol =  laughing out loud (kahkahalarla gulmek)                
       j/k = just kidding (sadece saka yapIyorum)
    re  =  hi again, as in 're hi' (tekrar merhaba, 're hi'da oldugu gibi)
          
       wb = welcome back (tekrar hosgeldin)
    wtf =  what the f--k (.........)                    
       rtfm = read the f--king manual (........)
    rotfl = rolling on the floor laughing (gulmekten yerde yuvarlanIyorum)
    
         _________________________________________________________________
    
    6. BazI tavsiyeler
    
       AHLAK
                Surekli buyuk harf kullanmak,BURADA OLDUGU GIBI,'bagIrmak'
                olarak kabul edilir ve bu davranIstan sakInIlmalIdIr.
                AynI zamanda; kendiniz tekrarlamayIn ve bir anda bir cok
                satIrla ekranI doldurmayIn.Dogru terminoloji kullandIgInIzdan
                emin olun.Ornegin 'chatroom' (sohbet odasI) degil 'channel'
                (kanal).
                Bir kanalda iken o kanalIn operatorlerinin liderliginde
                hareket edin.Eger onlarla zIt duserseniz kanaldan atIlabilir 
                ve buyuk olasIlIkla bir daha kanala girmeniz engellenebilir.
                Diger yandan bazI kanal operatorleri guc delisi olabilir ve
                sizi iyi bir neden olmaksIzIn kanaldan atabilir ya da
                girmenizi yasaklayabilirler.Eger bu olursa ya da kanaldaki
                baska biri sizi rahatsIz ediyorsa kanalI terkedin  --daha
                binlercesi var.
          
          /list komutu yuzunden baglantI kesilmesi
                Eger /list komutunu kullanIrken baglantInIz kesilirse
                (disconnect) server degistirmeyi deneyin.Isterseniz en yeni
                kanal listelerini WWW uzerindede bulabilirsiniz.
              <http://www.irchelp.org/irchelp/chanlist/>.
    
       SaldIrIlar ve RahatsIz Edici DavranIslar
               Eger biri sizi rahatsIz etmeye baslarsa,kanalI terk edin yada 
               /ignore komutunu kullanIn.Daha detaylI bilgi icin,mIRC
               kullanIcIlarI bizim istila korunma sayfamIza (flood protection
               page),ircII kullanIcIlarI ise /help ignore komutunu
               kullanabilirler.KullanIcI modunuzu +i (gorunmez) yapmak
               istenmeyen mesajlarI ve rahatsIz edilmeyi onlemek icin
               akIllIca bir fikir olabilir -- 'gorunmez' oldugunuzda sadece
               sizinle aynI kanalda bulunan kullanIcIlar kullandIgInIz takma
               ismi gorebilirler.
               Eger biri sizin baglantInIzIn kesilmesine yada sorunlara yol
               acIyorsa,bizim bu konuyla ilgili servisimiz (Denial of
               Service) yada saldIrI sayfamIzdan ('Nuke' Attacks page)
               yararlanabilirsiniz.AynI zamanda,/motd komutu ile
               ogrenebileceginiz server kurallarIna aykIrI hareketleri rapor
               edebilirsiniz.
    
         _________________________________________________________________
    
    7. IRC server problemleri, ve server secimi
            ArtIk IRC uzerinde 'sohbet' icin hazIrsInIz.Bir cok durum icin
            yeni baslayanlara yukarIdaki komutlar yeterli olacaktIr,fakat
            bazen IRC'de isler ters gidebilir.
          Net split
                Networkler bolunmeye ugrayabilir (buna netsplit denir),
                boylece sizi konusmakta oldugunuz diger kullanIcIlardan 
                ayIrabilir.Bu split'ler genellikle oldukca kIsadIr fakat bazI
                gunler uzunda olabilirler.
       Lag
             Daha sIk karsIlasIlan bir sorun ise 'lag' olarak
                adlandIrIlIr,bu sizin kelimeleri yazmanIzla karsI tarafIn
                okumasI arasInda farkedilebilir bir zaman farkI bulunmasIdIr.
                Size yakIn olan bir server secmeniz lagi azaltmanIn
                yollarIndan biridir.Lag /ping komutu ile olculebilir.
                (yukarIda yer alan komutlar bolumune bakInIz.)Daha iyi bir
                server buldugunuzda server degistirme komutu
                /server buraya.server.ismi
         Server Listeleri
                Bircok programda /links komutu bulundugunuz netin server
                listesini verir.Bu komutu cok sIk kullanmayIn,aksi halde
                sorun yaratan bir link arayIcI zannedilirsiniz.
    
       Ping? Pong!
                mIRC kullanIcIlarI: Status penceresinde beliren bir      
                Ping? Pong! serverInIzIn hala orada olup olmadIgInIzI kontrol
                icin sizi pingledigini gosterir ve sizin programInIzda
                otomatik olarak bir pong ile cevap verir.Bunu dert etmeyin.
          DCC HakkInda bir Not
                /dcc chat komutu birebir baglantI kurmak icin kullanIlabilir
                ve  bu lag yada netspliti engeller! Bir cok programda 
                /dcc chat diger_kullanIcInIn_ismi yazmanIz yeterlidir.Bu
                baglantI uzerinden konusabilmek icin /msg =isim neisterseniz
                yazmalIsIz.mIRC de,aynI zamanda DCC chat baslatmak icin
                menuden once DCC sonrada Chat'i secemeli daha sonrada
                konusmak istediginiz kullanIcInIn ismini girmelisiniz.
                O ddc chat icin bir pencere acIlacaktIr.
    
         _________________________________________________________________
    
    8. Daha detaylI yardIm
           Bu konular ve komutlar hakkInda daha genis bilgi icin,
           <http://www.irchelp.org> sayfasIna baglanabilirsiniz.Orada bircok
           yardIm dosyasI bulabilirsiniz,ornegin:
         * IRC Primer
         * FAQ (En cok sorulan sorular)  alt.irc newsgroup
         * IRC tutorial
         AyrIca bu web sayfalarInda belirli IRC programlarI hakkInda da
            daha gelismis bilgi bulmanIz mumkun,bunlarda bazIlarI:
         * ircII programI ve ircII metinleri.
         * Mac programI
         * Windows icin mIRC programI
            Daha baska programlar mI arIyorsunuz? En genis program kaynagInI
            Undernet FTP yada Undernet WWW arsivlerinde bulabilirsiniz. 
         Programlar Windows, Macintosh, DOS, Amiga,Java, v.b. gibi bircok
         bolumlere ayrIlmIstIr.
            mIRC programI aynI zamanda Tjerk Vonck tarafIndan hazIrlanmIs 
            bircok mukemmel yardIm dosyasI icerir (mirc@dds.nl).YardIm
            menusunden Ircintro.hlp 'yi secmelisiniz.
    
         _________________________________________________________________
    
    9. Birkac UyarI Cumlesi
        IRC metinleri programInIzIn calIstIracagI bir komutlar setidir. 
           Diger acIlardan iyi olan bircok program kIrIlmIstIr ve bu sebeple 
           eger onlarI yuklerseniz guvenliginizi tehlikeye atmIs olursunuz.
           (biri hesabInIza girebilir,dosyalarInIz silebilir,yada
           mektuplarInIzI okuyabilir.) AynI zamanda insanlara bazI virusler
           yada baska kotu seyler yollayabilecek bazI kotu kisilerde
           olabilir.TIpkI gercek hayatta oldugu gibi tanImadIgInIz insanlarda
           hediye kabul etmeyin.Bu tur pek cok olay yasanmIstIr.Bir
           arkadasInIzdan almIs olsanIz bile neler icerdigini tam olarak
           bilmediginiz bir programI asla calIstIrmayIn cunku arkadasInIz daa
           ustalIkla gizlenmis hileleri farkedecek bir uzman olmayabilir. 
         
           Otomatik DCC kullanImIda hic iyi bir fikir sayIlmaz.Bir defa
           bilgisayarInIzIn  kontrolunubir baskasIna verirseniz srverInIzla
           baglantInIzIn kesilmesi gibi bircok tehlikeyle karsI karsIya
           kalabilirsiniz.DCC autoget (otomatik) ayarlamasI sebebiyle bircok
           kisi ciddi problemler yasamIstIr. 
    
    
         _________________________________________________________________
    
       FreeSoft, prysm, hershey, turtle, Ariell,ve EFnet uzerindeki tum
          diger #irchelp'e yardIm edenlere yararlI onerileri icin tesekkur
          ederiz.
       Simdi yeni baslayanlar icin hazIrlanmIs bu kIlavuzu okudugunuza
          gore IRC'ye girin ve tadInI cIkartIn! Veya daha cok bilgi edinmek
          istiyorsanIz #IRChelp sayfalarIndaki diger dokumanlardan
          yararlanIn.
    
    

![navbar](/irchelp/Pix/ihnavbar.gif)

##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.

