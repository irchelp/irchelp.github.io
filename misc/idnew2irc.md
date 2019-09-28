---
title: idnew2irc
layout: default
redirect_from:
  - /irchelp/misc/idnew2irc.html
---
# IRC untuk Pemula

Oleh David Caraballo (DC-itsme) dan Joseph Lo (Jolo)

Terjemahan dan modifikasi oleh Carolina Gondoputro (ajr), [Pertolongan Dengan
IRC](http://www.arjuna.net/irc/)

versi 1.1.3, 4 Maret 1998

Dokumen asli: <[http://www.irchelp.org/irchelp/new2irc.html](http://www.irchel
p.org/irchelp/new2irc.html)>

Other versions: [Español](/irchelp/misc/esnew2irc.html) |
[Français](/irchelp/misc/frnew2irc.html) |
[Deutsch](/irchelp/misc/denew2irc.html) |
[Greek](/irchelp/misc/grnew2irc.html) |
[Indonesia](/misc/idnew2irc.html) |
[Italiano](/misc/itnew2irc.html) |
[Nederlands](/irchelp/misc/nlnew2irc.html) |
[Portugues](/misc/ptnew2irc.html) |
[Turkce](/misc/trnew2irc.html)

## Daftar Isi

  1. Apa itu IRC?
  2. Lebih terinci
  3. Berbicara dan memasukkan perintah
  4. Harus ke mana?
  5. Smileys dan singkatan
  6. Anjuran dalam ber-IRC
  7. Masalah-masalah server
  8. Informasi lebih lanjut
  9. Peringatan

* * *

## 1. Apa itu IRC?

> IRC (Internet Relay Chat) menyediakan suatu cara untuk berkomunikasi secara
langsung dengan orang-orang di seluruh dunia. Terdiri dari bermacam-macam
"network" (jaringan atau "nets") IRC server, mesin-mesin untuk menghubungkan
pemakai dengan IRC. Nets yang terbesar adalah [EFnet](http://www.efnet.org)
(IRC net yang pertama, yang kadang-kadang memiliki lebih dari 32000 pengguna
IRC dalam satu saat), [Undernet](http://www.undernet.org"),
[IRCnet](http://www.funet.fi/~irc/), [DALnet](http://www.dal.net),
[NewNet](http://www.newnet.net).

>

> Sang pengguna (Anda misalnya) memiliki suatu program (yang disebut "client")
untuk menghubungkan Anda dengan suatu server dari salah satu IRC nets tersebut
di atas. Server-server tersebut yang anak menghantarkan informasi-informasi ke
dan dari satu server ke server yang lain di dalam net yang sama.

Client-client yang direkomendasikan:

>

>   1. UNIX/Shell: [ircII](http://www.irchelp.org/irchelp/ircii/)

>   2. Windows: [mIRC](http://www.irchelp.org/irchelp/mirc/) or
[PIRCH](http://www.bcpl.lib.md.us/~frappa/pirch.html)

>   3. Macintosh: [Ircle](http://www.xs4all.nl/~ircle)

>

> Harap Anda membaca dokumentasi-dokumentasi yang ada mengenai client Anda.

>

> Sekalinya Anda berhubungan dengan salah satu IRC server dalam suatu IRC
network, Anda dapat bergabung ("join") dengan salah satu "channel" dan
berkomunikasi dengan orang-orang yang ada di dalam channel tersebut. Di dalam
EFnet ada lebih dari 12000 channel yang masing-masing memiliki keunikan dan
topik tersendiri. Percakapan yang terjadi bisa merupakan percakapan umum
("public", di mana semua orang yang sedang berada di dalam channel tersebut
dapat membacanya) atau pribadi ("private", antar dua orang yang bisa saja
tidak di satu channel yang sama). IRC bukanlah suatu "permainan", dan saya
sangat menganjurkan agar Anda saling menghormati satu dengan yang lain seperti
halnya Anda bertemu muka dengan orang-orang tersebut (segala sesuatu dapat
terjadi walaupun Anda tidak bertemu secara langsung).

>

> [ Daftar Isi ]

* * *

## 2. Lebih terinci

> Nama-nama channel biasanya dimulai dengan tanda #, contohnya _#bawel_. Anda
tidak perlu berada di satu server yang sama dengan kawan Anda untuk bergabung
dengan suatu channel. Ada juga channel yang dimulai dengan tanda &. Channel-
channel tersebut adalah channel-channel lokal di satu server saja. Jadi Anda
harus bergabung dengan server tersebut untuk dapat bergabung dengan channel
itu.

>

> Masing-masing pemain memiliki "nick", seperti _unyil_ atau _PakOgah_. Untuk
menghindari pemakaian nick-nick yang sama, hendaknya Anda memilih suatu nick
yang tidak umum dipakai orang ("Budi" adalah pilihan yang buruk karena banyak
orang yang bernama Budi). Dalam beberapa nets, nick-nick tidak dapat dimiliki
oleh orang-orang tertentu saja, begitu pula halnya dengan nama-nama channel.
Hal ini dapat menimbulkan konflik, jadi jika Anda benar-benar ingin "memiliki"
suatu nama, Anda bisa menggunakan network yang menyediakan "service" untuk
hal-hal seperti itu, misalnya [Undernet](http://www.undernet.org),
[DALnet](http://www.dal.net/), atau [network-network
kecil](http://www.irchelp.org/irchelp/networks/nets/) yang lain.

>

> Channel-channel dalam IRC dikelola oleh "channel operator", atau "ops" untuk
singkatnya. Ops adalah orang-orang yang dapat "memilih" siapa saja yang bisa
join channel tersebut (dengan mem-"ban" beberapa pemain), siapa saja yang
harus pergi ("leave", dengan menggunakan "kick") dan bahkan siapa saja yang
punya hak untuk berbicara (dengan membuat channel tersebut "moderated").
Channel operator adalah orang-orang yang berkuasa di channel tersebut, dan
keputusan-keputusan mereka tidak dapat diganggu gugat. Jika ada di-"ban" dari
suatu channel, bicaralah dengan channel operator, dan minta dengan baik agar
dia mengijinkan Anda untuk bergabung dengan channel tersebut (dengan
meng-"unban"). Jika mereka mengacuhkan Anda, pergilah ke channel lain dimana
Anda diterima dengan hangat.

>

> [IRC server](http://www.irchelp.org/ircd/) dikelola oleh IRC admin
dan IRC operator (atau "IRCops"). IRCops tidak turut campur dalam urusan
pribadi orang-orang, perang antar channel, memberi status op, dan lain-lain.
Mereka bukanlah "IRC cops".

>

> [ Daftar Isi ]

* * *

## 3. Berbicara dan memasukkan perintah

> Perintah-perintah dan teks-teks diketikkan pada tempat yang sama. Perintah-
perintah dalam IRC dimulai dengan tanda / (garis miring). Jika Anda memiliki
program seperti mIRC untuk Windows, beberapa perintahnya dapat dipilih dari
menu-nya. Tetapi, sangatlah dianjurkan agar Anda mempelajari beberapa
perintah-perintah dasar dalam IRC terlebih dahulu. Perhatikan spasi dan huruf
besar saat Anda mengetikkan perintah-perintah tersebut. Semua perintah-
perintah dasar dalam irc berlaku untuk semua client-client.

>

> Beberapa contoh diberikan di bawah ini. Di sini, kita anggap bahwa nick Anda
adalah "unyil", dan Anda berada di channel "#bawel".

>

> Kawan Anda, "usro", berada di channel "#bawel" dengan Anda, dan kawan Anda
yang lain, "ucrit", sedang berada dalam IRC tetapi tidak dalam channel yang
sama dengan Anda. Anda dapat menggunakan contoh-contoh di bawah ini dengan
mengganti nick dan/atau nama channel dengan nama-nama yang sebenarnya.

>

> Apa yang Anda ketik Apa yang terjadi

>

> /join #bawel

> Anda bergabung dengan channel bawel

>

> /who #bawel

> Memberikan informasi pemain di channel bawel

@ = channel op, * = IRC op

>

> halo semua

> Semua pemain di #bawel akan melihat:

_<unyil> halo semua_

(Anda tidak perlu mengetikkan nick Anda)

>

> /me anak baik

> Semua pemain di #bawel akan melihat:

_* unyil anak baik_

>

> /leave #bawel

> Anda meninggalkan channel bawel

>

> /whois ucrit

> Anda akan mendapatkan informasi tentang ucrit, atau nick apa saja yang Anda
ketikkan

>

> /whois unyil

> Informasi mengenai diri Anda (catatan: Anda menggunakan nick unyil)

>

> /nick NickBaru

> Mengganti nick Anda menjadi "NickBaru"

>

> /msg ucrit halo bos

> Hanya ucrit yang bisa melihat kalimat Anda (Anda tidak perlu berada di dalam
channel yang sama dalam hal ini).

ucrit akan melihat: _*unyil* halo bos_

>

> /ping #bawel

> Memberikan informasi tentang "delay" (hambatan bolak balik) antara Anda
dengan semua pemain yang ada di #bawel

>

> /ping ucrit

> Memberikan informasi tentang "delay" (hambatan bolak balik) antara Anda
dengan ucrit (seorang saja)

>

> /dcc chat usro

> Mengirimkan usro permintaan "dcc chat". usro harus mengetikkan _/dcc chat
unyil_ untuk menerima dcc chat tersebut (catatan: Anda menggunakan nick
unyil). DCC Chat lebih cepat, bebas hambatan ("lag") dan bersifat lebih
pribadi jika dibandingkan dengan /msg

>

> /msg =usro main air yuk

> Sekalinya hubungan DCC Chat telah terjalin, Anda bisa menggunakan perintah
_/msg =nick_ untuk berbincang-bincang (perhatikan tanda sama dengan [=]
sebelum nick). DCC tidak melalui server, jadi tidak akan terpengaruh oleh
hambatan-hambatan (lag) dari server, net split, dan lain-lain

usro akan melihat: _=unyil= main air yuk_

>

> /help

> Perintah ini biasanya dapat ditemukan hampir di setiap client. Cobalah.

>

> /quit selamat malam!

> Anda akan "quit" IRC, dengan meninggalkan pesan. Para pemain yang lain akan
melihat: _*** Signoff: unyil (selamat malam!)_ (catatan: Anda menggunakan nick
unyil)

>

> **CATATAN:** Bila Anda tidak sedang berada di dalam suatu channel, kalimat
yang dimulai dengan garis miring (/) tidak akan ber-efek apa-apa, dan beberapa
perintah akan memberikan hasil yang lain atau tidak berfungsi sama sekali.

>

> [ Daftar Isi ]

* * *

## 4. Harus ke mana?

> Anda dapat belajar banyak dengan bergabung pada channel-channel,
mendengarkan dan berbicara langsung. Untuk mudahnya, Anda dapat bergabung
dengan channel-channel seperti: #new2irc, #newuser, #newbies atau #chatback.
Channel-channel yang lebih ramai antara lain: #chat dan #ircbar.

>

> Jika Anda membutuhkan pertolongan lebih lanjut dengan mIRC, Anda dapat
bergabung dengan #new2mirc atau #mirchelp. Untuk pertolongan dengan
pertanyaan-pertanyaan yang sifatnya lebih umum, Anda dapat bergabung dengan
#irchelp.

>

> Channel-channel di atas menggunakan bahasa Inggris sebagai bahasa pengantar.
Bila Anda ingin berbahasa Indonesia, Anda dapat bergabung dengan
[#bawel](http://www.iwantfreestuff.com/bawel), #pondok, #indo, #puncak, dan
masih banyak lagi.

>

> Untuk membentuk channel Anda sendiri, misalnya dengan nama #NasiUduk (dengan
catatan bahwa channel tersebut belum dibentuk oleh orang lain), Anda cukup
mengetikkan _/join #NasiUduk_. Channel itu akan terbentuk dan Anda adalah sang
channel-op.

>

> [ Daftar Isi ]

* * *

## 5. Smileys dan singkatan

> :-) adalah muka orang yang sedang tersenyum ("smiley"), miringkan kepala
Anda ke kiri untuk dapat melihatnya. Sama halnya dengan, :-( adalah orang yang
sedang sedih, ;-) adalah orang yang sedang mengedipkan mata, :~~( adalah orang
yang sedang menangis, :-P adalah orang yang sedang menjulurkan lidahnya, :-P~~
adalah orang yang sedang "ngiler", dan (-: adalah untuk orang kidal yang
sedang tersenyum, dan lain-lain. Ada beribu-ribu macam smiley serperti itu.

>

> Berikut ini adalah singkatan-singkatan yang umum dipakai dalam IRC:

>

> Singkatan Singkatan dalam bahasa Inggris Arti dalam bahasa Indonesia

>

> brb

> be right back

> segera kembali

>

> bbl

> be back later

> nanti akan kembali

>

> np

> no problem

> tidak apa-apa

>

> lol

> laughing out loud

> tertawa terbahak-bahak

>

> re

> hi again (re hi)

> Halo lagi!

>

> wtf

> what the f***

> APA??

>

> rotfl

> rolling on the floor laughing

> tertawa terguling-guling

>

> bbiaf

> be back in a flash

> kembali sebentar lagi

>

> ttfn

> ta ta for now

> dadaagghh!!

>

> imho

> in my humble opinion

> menurut pendapat saya

>

> j/k

> just kidding

> hanya bercanda

>

> wb

> welcome back

> selamat datang

>

> rtfm

> read the f***ing manual

> BACA PETUNJUK!!!

>

> [ Daftar Isi ]

* * *

## 6. Anjuran dalam ber-IRC

> **Tatacara**     Mengetikkan kalimat dalam huruf besar semua, SEPERTI INI,
dianggap berteriak dan harus dihindari. Begitu juga Anda diharapkan untuk
tidak mengulang-ulang kalimat yang sama terus menerus (Anda akan dianggap
"flood" channel Anda). Anda diharap untuk menggunakan istilah-istilah yang
benar, misalnya "channel", bukan "chat room", dan "nick", bukan "handle".

>

> Bila Anda sedang berada di dalam sebuah channel, Anda diharapkan untuk
mematuhi aturan yang diberlakukan oleh para channel op. Bila Anda melawan
mereka, Anda dapat "dikeluarkan dengan paksa" (di-kick), dan bahkan di-"ban"
(dilarang untuk bergabung lagi dengan channel yang bersangkutan). Disamping
itu, ada juga beberapa channel op yang suka bermain kuasa, dan suka
meng-"kick" dan mem-"ban" pemain-pemain lain tanpa alasan yang kuat. Bila hal
itu terjadi pada Anda, atau ada orang yang mengganggu keberadaan Anda,
tinggalkan channel itu dan join channel lain.

>

> **Diputuskan hubungan dengan /list?**     Bila server Anda memutuskan
hubungan ketika Anda menggunakan perintah /list, cobalah untuk menggunakan
server lain. Daftar dari channel-channel yang ada dapat Anda temukan di: [http
://www.irchelp.org/irchelp/chanlist](http://www.irchelp.org/irchelp/chanlist/)
.

>

> **Gangguan dan Serangan**     Bila seseorang mulai mengganggu Anda,
tinggalkan channel itu atau gunakan perintah _/ignore_. Untuk detail-nya, para
pengguna [mIRC](http://www.irchelp.org/irchelp/mirc/) dapat melihat dokumen
tentang ["flood protection"](http://www.irchelp.org/irchelp/mirc/flood.html),
para pengguna [ircII](http://www.irchelp.org/irchelp/ircii/) dapat mengetikkan
perintah _/help ignore_. Satu hal yang baik yang dapat diingat adalah untuk
menjadikan "user mode" Anda menjadi +i (invisible) untuk menghindari gangguan-
gangguan -- jika Anda "invisible", hanya pemain-pemain yang ada di dalam
channel yang sama dengan Anda yang dapat mengetahui nick apa yang sedang Anda
pakai saat itu.

>

> Bila ada orang yang ingin dengan sengaja memutuskan hubungan server Anda,
bacalah dokumen yang ada di "[Denial of Service or "Nuke"
Attacks](http://www.irchelp.org/irchelp/nuke/)". Anda dapat juga menyimpan
percakapan-percakapan Anda (menyimpan
[log](http://www.irchelp.org/irchelp/misc/irclog.html) dan melaporkan
serangan-serangan bila itu melanggar aturan main, yang dapat dilihat dengan
mengetikkan _/motd_.

>

> [ Daftar Isi ]

* * *

## 7. Masalah-masalah server

> Pada saat ini, Anda sudah siap untuk ber-IRC. Secara umum, perintah-perintah
yang diberikan di atas sudah cukup untuk pemula, tapi apa saja dapat terjadi
di dalam ber-IRC.

>

> **Net Split**     Network bisa terpisahkan (disebut dengan "netsplit"),
sehingga Anda akan terpisahkan dengan pemain-pemain lain. Split ini biasanya
hanya sebentar, tetapi terkadang juga dapat memakan waktu sampai berhari-hari.

>

> **Lag**     Gangguan yang paling umum adalah "lag", dimana terjadi semacam
hambatan ("delay") antara waktu saat Anda mengetikkan suatu kalimat, dan waktu
saat pemain lain membacanya. Memilih server yang dekat dengan Anda dapat
mengurangi lag. Lag dapat diukur dengan menggunakan perintah _/ping_ (lihat
bagian perintah di atas). Hal ini dapat ditanggulangi dengan mengganti server
Anda, dengan menggunakan perintah _/server nama.server.di.sini_.

>

> **Daftar Server**     Di client-client pada umumnya, bila Anda mengetikkan
_/links_ akan memberikan daftar server-server yang ada di net Anda. Jangan
menggunakan perintah ini secara berlebihan (paling banyak 2 kali berturut-
turut), atau Anda akan dituduh untuk melakukan "link looking".

>

> **Ping? Pong!**     Untuk para pengguna mIRC: _Ping? Pong!_ di status Anda
artinya server Anda baru saja melakukan "ping" kepada client Anda dengan
tujuan untuk melihat apakan Anda masih berhubungan dengan server, dan Anda
secara otomatis menjawab dengan "pong". Tidak perlu dikhawatirkan.

>

> **Sekali lagi, DCC Chat**     Perintah DCC Chat dapat digunakan untuk
menjalin hubungan langsung dengan satu orang yang bebas lag dan tidak akan
diputuskan oleh netsplit. Periksa dokumentasi Anda untuk hal ini. Pada client-
client umum, Anda dapat menjalin hubungan dcc dengan mengetikkan perintah
_/dcc chat nick_kawan_anda_. Untuk berbicara dengan kawan Anda melalui
hubungan itu, Anda dapat menggunakan perintah _/msg =nick pesan_anda_di_sini_
(perhatikan tanda =). Di mIRC, Anda dapat melakukan DCC Chat dengan memilih
_DCC_ dan _Chat_ dari menu yang sudah tersedia, lalu mengetikkan nick kawan
Anda dengan siapa Anda ingin berbicara. Satu window akan disediakan untuk
keperluan itu.

>

> [ Daftar Isi ]

* * *

## 8. Informasi lebih lanjut

> Untuk informasi lebih lanjut, Anda dapat mengunjungi
[#irchelp](http://www.irchelp.org) homepage. Di sana Anda dapat menemukan
file-file seperti:

>

>   * [IRC Primer](http://www.irchelp.org/irchelp/ircprimer.html) (edisi
bahasa Inggris)

>   * [Kumpulan dokumen](http://www.irchelp.org/irchelp/faq.html) (edisi
bahasa Inggris)

>   * [IRC Tutorial](http://www.irchelp.org/irchelp/irctutorial.html) (edisi
bahasa Inggris)

>

> Di website tersebut Anda juga akan menemukan informasi-informasi yang lebih
mendalam untuk client-client, termasuk:

>

>   * [ircII client](http://www.irchelp.org/irchelp/ircii/) dan [ircII
script](http://www.irchelp.org/irchelp/script/) (edisi bahasa Inggris)

>   * [Mac client](http://www.irchelp.org/irchelp/mac/) (edisi bahasa Inggris)

>   * [mIRC client](http://www.irchelp.org/irchelp/mirc/) untuk Windows (edisi
bahasa Inggris)

>

> Ingin menggunakan client-client yang lain? Sumber tentang client-client yang
paling banyak adalah di [Undernet FTP
Archive](ftp://ftp.undernet.org/pub/irc/clients/) atau [Undernet WWW
Archive](http://clients.undernet.org/). Client-client tersebut dibagi-bagi
dalam golongan-golongan seperti Windows, Macintosh, DOS, Amiga, Java, dan
lain-lain.

>

> mIRC juga menyediakan dokumen yang sangat bagus untuk dibaca (ditulis oleh
Tjerk Vonck, mirc@dds.nl). Pilih _Ircintro.hlp_ dari _Help_ menu.

>

> Anda juga dapat meminta informasi melalui **ai-**, client dari FreeSoft di
EFnet. Anda cukup mengetikkan _/msg ai- help_ untuk daftar-daftar pilihan yang
ada.

>

> [ Daftar Isi ]

* * *

## 9. Peringatan

> **IRC scripts** adalah kumpulan perintah-perintah yang dapat dijalankan oleh
client Anda. Sudah banyak script-script yang di-"hack", sehingga bila Anda
menjalankannya, keamanan mesin/cient Anda dapat terancam (seseorang dapat
mendapat akses ke dalam account Anda, menghapus semua dokumen Anda, membaca
email Anda, dan lain-lain). Banyak juga pemain-pemain yang mencoba untuk
mengirimkan virus dan hal-hal lain yang buruk. Seperti halnya di kehidupan
kita sehari-hari, jangan menerima apapun dari orang yang tidak Anda kenal.
Sudah banyak kejadian-kejadian yang buruk seperti yang disebut diatas.
**Jangan sekali-kali** menjalankan suatu script/program kecuali Anda sendiri
tahu apa yang akan terjadi kemudian, sekalipun kawan Anda sendiri yang
memberikan program tersebut, karena kawan Anda belum tentu memiliki kemampuan
untuk melihat hal-hal yang "tersembunyi".

>

> **Automatic DCC Get** adalah suatu hal yang tidak baik! Karena Anda bisa
jatuh dalam bahaya mulai dari penolakan oleh server sampai pada memberikan
orang lain kontrol atas komputer Anda. Sudah ada beberapa orang yang memiliki
masalah yang cukup parah karena hal itu.

>

> [ Daftar Isi ]

* * *

Ucapan terimakasih kepada FreeSoft, prysm, hershey, turtle, Ariell, dan para
pemain dari #irchelp yang lain untuk usul-usulnya yang sangat membantu.

Kini setelah Anda membaca dokumen untuk pemula ini, selamat ber-IRC! Atau jika
Anda ingin belajar lebih lanjut lagi, Anda dapat membaca dokumen-dokumen yang
ada di [#IRChelp homepage](http://www.irchelp.org). Edisi bahasa Indonesia
dapat ditemukan di [PDI](http://www.arjuna.net/irc/) (Pertolongan Dengan IRC)
homepage.

Copyright (C)1998 ajr <ajr@arjuna.net>, dkk.

* * *

![navbar](/irchelp/Pix/ihnavbar.gif)

##### [Copyright (C) 1997,1998](/irchelp/credit.html) Joseph Lo and many
others.
