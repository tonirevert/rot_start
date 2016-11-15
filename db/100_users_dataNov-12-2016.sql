DROP TABLE `users`;

CREATE TABLE `users` (
  `dni` varchar(255),
  `name` varchar(255) default NULL,
  `surnames` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255),
  `date_birthday` varchar(255),
  `type` varchar(255) default NULL,
  `country` varchar(100) default NULL,
  `province` varchar(50) default NULL,
  `city` varchar(255),
  `street` varchar(255) default NULL,
  `avatar` varchar(255) default NULL
);

INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("84171132W","Dawn","Ayala","dui.nec@nec.edu","DTF85KEB4WB","14/11/1962","individual ","Vanuatu","Noord Holland","Amstelveen","P.O. Box 651, 7550 Arcu Avenue","/rot/media/default-avatar.png"),("28344645D","Anjolie","Kemp","et@lobortis.co.uk","VDR08XTH4CP","29/06/1990"," enterprise","Somalia","CAM","Falciano del Massico","P.O. Box 267, 7664 Ultricies Rd.","/rot/media/default-avatar.png"),("27857476B","Igor","Estes","nec.enim@senectuset.org","TJB37RAU6QA","05/02/1963"," enterprise","Palestine, State of","L","Dublin","6652 Rutrum St.","/rot/media/default-avatar.png"),("58126184H","Kellie","Ortega","ornare@sedsem.co.uk","ZSO52KKH5BB","08/02/1981","individual ","Chile","São Paulo","Jundiaí","Ap #381-5024 Fermentum St.","/rot/media/default-avatar.png"),("81667745R","Amaya","Davidson","at@magnatellus.net","JSW67UIB3SP","14/10/1970","individual ","Singapore","Queensland","Logan City","106-696 Donec Rd.","/rot/media/default-avatar.png"),("58748738D","Daryl","Short","malesuada@Lorem.net","BVK63BVB4BS","10/09/1982","individual ","Solomon Islands","TX","Austin","P.O. Box 432, 2601 Tincidunt St.","/rot/media/default-avatar.png"),("65235786T","Burke","Ward","euismod.ac.fermentum@Donec.ca","YPL22XUO6BQ","18/06/1995"," enterprise","Laos","Luxemburg","Tintange","416 Convallis, Street","/rot/media/default-avatar.png"),("17962449H","Kathleen","Cardenas","erat.Sed.nunc@ornareliberoat.net","AXK36OMO0OR","17/06/1976","individual ","Maldives","Munster","Cork","2486 Integer Rd.","/rot/media/default-avatar.png"),("74557126L","April","Best","Proin.dolor.Nulla@semmagnanec.co.uk","IKS04KJI5RS","06/05/1994","individual ","Bosnia and Herzegovina","ON","Ramara","475 Quis Rd.","/rot/media/default-avatar.png"),("46522813C","Lars","Hebert","mauris.ipsum.porta@Suspendisse.edu","QIZ92CSQ9LY","08/01/1997"," enterprise","Madagascar","Metropolitana de Santiago","Curacaví","980-6728 At Road","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("51773834E","Cailin","Cherry","dolor.Donec.fringilla@Nunclaoreet.ca","QRW72ZYJ0BA","15/03/1964"," enterprise","Macedonia","Sląskie","Częstochowa","P.O. Box 841, 7326 Quis Av.","/rot/media/default-avatar.png"),("59658565N","Arthur","Moon","elit@Proinnon.net","TAM16NLP9BY","25/10/1997","individual ","Gibraltar","Bursa","Mustafakemalpaşa","P.O. Box 758, 6301 Sit Ave","/rot/media/default-avatar.png"),("32934634D","Claire","Hensley","odio@pellentesquea.org","QZU38XAC7NI","11/08/1988","individual ","Zimbabwe","DS","Wrocław","556-3641 Lectus St.","/rot/media/default-avatar.png"),("18655758C","Samuel","Snyder","iaculis.odio@euismodest.edu","KIO75DNL6HE","20/11/1977"," enterprise","Albania","PR","Martigues","292-9391 Interdum. Ave","/rot/media/default-avatar.png"),("98277675U","Sydney","Baker","Nullam.feugiat.placerat@variusultricesmauris.co.uk","TLR68HGY6JP","13/08/1976","individual ","France","Jönköpings län","Jönköping","Ap #310-3282 Aliquet. Rd.","/rot/media/default-avatar.png"),("44785758P","Timothy","Parks","per.conubia.nostra@purusMaecenas.net","VYL04RPF9MY","26/11/1976"," enterprise","Turks and Caicos Islands","O","Lidköping","P.O. Box 409, 4263 Pellentesque St.","/rot/media/default-avatar.png"),("43678478R","Guy","Conley","Nullam.enim.Sed@iaculisnec.ca","GZV18GRP5GD","10/09/1969"," enterprise","Virgin Islands, United States","Baden","Rastatt","P.O. Box 694, 1038 Malesuada Rd.","/rot/media/default-avatar.png"),("67689623L","Britanni","Lindsey","amet@hendreritneque.com","VDJ53IMU3AO","02/08/1986","individual ","Senegal","KN","Kano","Ap #684-6704 Diam Rd.","/rot/media/default-avatar.png"),("21451287H","Herman","Conrad","Fusce@utaliquamiaculis.ca","HJI26WWW7OD","06/05/1997"," enterprise","Brazil","AZ","Mesa","Ap #504-6137 Eget Rd.","/rot/media/default-avatar.png"),("49182936L","Savannah","Vazquez","facilisis.non@commodoatlibero.ca","STI41YXH3FM","05/03/1981"," enterprise","Tokelau","Wie","Vienna","P.O. Box 720, 2448 Lorem Avenue","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("56859881V","Berk","Vaughan","arcu.imperdiet@massa.com","QGW82QGC0YO","10/08/1970","individual ","Viet Nam","Lagos","Lagos","4032 Nunc Street","/rot/media/default-avatar.png"),("41684926I","Axel","Bright","condimentum.Donec.at@nunc.com","GAY58VBY4RI","04/05/1997","individual ","Honduras","CV","Alacant","P.O. Box 740, 2078 Ultrices, Avenue","/rot/media/default-avatar.png"),("14299433H","Quail","Willis","mauris@rhoncusDonecest.com","YOD91TEE2FB","24/03/1984","individual ","Azerbaijan","Gl","Zaltbommel","Ap #903-7392 Netus St.","/rot/media/default-avatar.png"),("34592492H","Jemima","Brewer","et@Proindolor.net","XOA29BUI2EX","04/08/1978"," enterprise","Botswana","SJ","Concepción","Ap #210-9540 Nec, Avenue","/rot/media/default-avatar.png"),("19126941K","Gloria","Herring","Curae@semut.edu","AJH05PSL9UM","20/08/1964","individual ","Nigeria","E","Linköping","Ap #330-5056 Nunc, Avenue","/rot/media/default-avatar.png"),("66994697D","Jarrod","Woodard","tempor.lorem@euerosNam.co.uk","HKA05XUO7YF","14/08/1972","individual ","Brunei","North Island","Masterton","P.O. Box 447, 4508 Quis Rd.","/rot/media/default-avatar.png"),("85872873K","Cailin","Walsh","metus.urna.convallis@mauris.ca","USH61PQK9VE","16/10/1979"," enterprise","Congo, the Democratic Republic of the","British Columbia","Sunshine Coast Regional District","982-9090 Montes, St.","/rot/media/default-avatar.png"),("62541782L","Irene","Barlow","auctor@Sedpharetrafelis.ca","OII94ZTP4ZB","29/10/1963"," enterprise","Congo (Brazzaville)","QC","Pierrefonds","128-7171 Ullamcorper. St.","/rot/media/default-avatar.png"),("28973941B","Jaden","Cunningham","dictum.ultricies.ligula@blanditenimconsequat.ca","MVP33YZL3ZA","21/11/1963"," enterprise","Belarus","KO","Okene","P.O. Box 921, 9876 Nunc St.","/rot/media/default-avatar.png"),("62223416D","Zeus","Haynes","magna@sedliberoProin.org","VJQ40FDH3ZX","19/04/1982"," enterprise","Pakistan","Jönköpings län","Värnamo","753-2616 Odio Avenue","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("51658335Q","Richard","Chaney","Cras@Praesentinterdumligula.ca","OLO23FEU6RB","01/01/1988","individual ","Netherlands","Salzburg","Hallein","Ap #176-3503 Penatibus Ave","/rot/media/default-avatar.png"),("47611457Z","Ulric","Fields","ac@tinciduntpede.co.uk","VTE00ERS4ZQ","29/07/1974"," enterprise","Nepal","SJ","Patalillo","9093 Eros. Road","/rot/media/default-avatar.png"),("49844845L","Virginia","Cobb","lectus@aliquetmolestie.com","LTP02RCE5ES","10/07/1966"," enterprise","Isle of Man","SJ","Mata de Plátano","595-1943 Lacinia. St.","/rot/media/default-avatar.png"),("86125671D","Duncan","Townsend","nec@ipsumdolor.org","QHI55QWJ6XG","04/12/1975"," enterprise","Indonesia","Massachusetts","Worcester","783-6921 Magna. Avenue","/rot/media/default-avatar.png"),("36695363W","Jin","Barker","Suspendisse.eleifend@molestiepharetranibh.net","TUY16XRX0UH","06/02/1988","individual ","Tanzania","PE","Jaboatão dos Guararapes","4448 Quis, Avenue","/rot/media/default-avatar.png"),("84148145D","Whilemina","Melton","augue.id.ante@turpisnecmauris.edu","BZJ05JEC7WI","07/05/1985"," enterprise","Guadeloupe","VII","Coronel","P.O. Box 847, 7655 Quis Rd.","/rot/media/default-avatar.png"),("21993618K","Madeline","Barber","interdum.Sed.auctor@diamProindolor.com","UDN40OYB8PW","03/12/1983","individual ","French Guiana","F","Vetlanda","P.O. Box 717, 8114 Nunc St.","/rot/media/default-avatar.png"),("36425985S","Ivor","Olsen","dictum.mi@Aliquamfringillacursus.org","RKS12VOA4FA","21/04/1989"," enterprise","Micronesia","Ontario","Tay","4422 Ac Av.","/rot/media/default-avatar.png"),("78166187Z","Byron","Quinn","Vivamus.nisi.Mauris@conubia.co.uk","PYW14OYT0TG","04/05/1985","individual ","Lebanon","I","Pozo Almonte","Ap #327-6458 Dolor, Rd.","/rot/media/default-avatar.png"),("49974268Z","Lenore","Bray","fringilla@sagittisplaceratCras.net","OKY68FTZ5LJ","24/08/1983","individual ","Chile","Leinster","Dublin","P.O. Box 921, 6314 Eros Avenue","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("87963723V","Brittany","Osborn","Aliquam@pellentesqueSed.net","BLD86NZR3UJ","17/10/1996"," enterprise","Guam","AL","Mobile","4883 Lorem Road","/rot/media/default-avatar.png"),("19291566B","Veda","Walker","adipiscing@convallis.edu","BRL48WVX0NZ","13/06/1980","individual ","Niger","Devon","Tiverton","704-478 Lectus, Rd.","/rot/media/default-avatar.png"),("87849137U","Rafael","Slater","Cras@ultricesposuere.org","SRQ18UUH4BG","27/03/1981"," enterprise","Russian Federation","Minas Gerais","Ribeirão das Neves","P.O. Box 893, 672 Purus Street","/rot/media/default-avatar.png"),("46491818R","Kiayada","Murphy","Aliquam.fringilla.cursus@nuncsed.co.uk","VEX73WNP3OK","05/01/1976","individual ","Gabon","Leinster","Dublin","395-7244 Euismod Av.","/rot/media/default-avatar.png"),("47443897B","Shaeleigh","Durham","nibh.Donec.est@loremluctusut.ca","OWV46UHN8WQ","30/05/1986"," enterprise","Korea, South","Ank","Şereflikoçhisar","P.O. Box 987, 2002 Commodo Av.","/rot/media/default-avatar.png"),("75942464T","Demetrius","Whitney","egestas.blandit.Nam@enimnectempus.org","PGU93WRE0LG","31/05/1997","individual ","Malaysia","A","San Rafael","P.O. Box 325, 627 Arcu Av.","/rot/media/default-avatar.png"),("31265957N","Ezra","Holder","dis@ametrisus.net","QJW93LCW8MF","26/04/1964","individual ","Belize","ON","Ajax","Ap #796-1530 Montes, Avenue","/rot/media/default-avatar.png"),("91271261Z","Mona","Stone","dictum@aclibero.edu","FIY51SJN4YW","14/03/1996"," enterprise","Cayman Islands","Connacht","Galway","6151 Orci. Rd.","/rot/media/default-avatar.png"),("44189868J","Holmes","Klein","metus.Aenean@velitdui.com","LQJ50DUD4NX","07/11/1985","individual ","Moldova","Ulster","Belfast","Ap #313-5781 Dolor. Rd.","/rot/media/default-avatar.png"),("57519627X","Ross","Calhoun","luctus@ligulaDonecluctus.edu","IWA75HYE5YD","14/03/1968","individual ","Andorra","ON","Hearst","Ap #866-144 Vitae Ave","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("94148594H","Elvis","Puckett","lacus.Nulla.tincidunt@facilisisvitaeorci.co.uk","UQE60TJA8CV","21/01/1979","individual ","France","Victoria","Hamilton","P.O. Box 914, 8090 Tempor Avenue","/rot/media/default-avatar.png"),("45758682X","Orlando","Hendrix","aliquam.enim.nec@elitpharetra.net","RWP79RWP9YS","25/10/1975"," enterprise","Gibraltar","Hesse","Hattersheim am Main","1686 Id Road","/rot/media/default-avatar.png"),("56446855W","Fitzgerald","Burgess","nulla.magna@risusatfringilla.ca","WYD79RED9CG","21/09/1968","individual ","Sint Maarten","Midi-Pyrénées","Toulouse","999-3480 Imperdiet Road","/rot/media/default-avatar.png"),("67373615K","Oren","Eaton","iaculis.aliquet@posuereenim.ca","YQH91JEH8GX","17/04/1982"," enterprise","Malta","North Island","Hastings","P.O. Box 975, 5669 Vulputate, Avenue","/rot/media/default-avatar.png"),("38161933E","Chase","Benjamin","tincidunt@egetmollislectus.net","JTR54OUX9FW","29/07/1988"," enterprise","Moldova","VII","Ninhue","7885 Vulputate St.","/rot/media/default-avatar.png"),("24294995W","Jada","Mathis","Etiam@ametrisusDonec.net","RTF29CEL7JT","02/05/1991"," enterprise","Dominican Republic","RS","Novo Hamburgo","486-353 Sed, Av.","/rot/media/default-avatar.png"),("19514742T","Geoffrey","Collins","id@accumsan.co.uk","LYK35WJP4RH","21/10/1970"," enterprise","Cameroon","Jammu and Kashmir","Jammu","2550 In Avenue","/rot/media/default-avatar.png"),("41924554K","Bree","Beard","a.malesuada@luctus.edu","MXM51MWO5QI","05/01/1985","individual ","Jamaica","QLD","Mount Isa","P.O. Box 917, 4476 Nunc St.","/rot/media/default-avatar.png"),("64824693H","Acton","Barrett","iaculis@adipiscingelit.ca","ZNS62WGE0AR","19/08/1980"," enterprise","Armenia","ST","Alva","Ap #848-4207 Est St.","/rot/media/default-avatar.png"),("16254641D","Kiayada","Whitehead","mauris@In.net","CQT79JNJ8VK","25/02/1966"," enterprise","South Georgia and The South Sandwich Islands","Connacht","Galway","P.O. Box 166, 5325 Urna, Rd.","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("95662615V","Heather","Curry","Mauris@enimSednulla.co.uk","WLL57OPK6KX","02/03/1997"," enterprise","Cocos (Keeling) Islands","Stockholms län","Vallentuna","P.O. Box 706, 1185 Est Av.","/rot/media/default-avatar.png"),("84547867V","Steel","Barlow","nec.mollis@augue.com","CDZ44ITJ0WB","06/06/1995","individual ","Portugal","KN","Kano","Ap #670-1354 Dui, Avenue","/rot/media/default-avatar.png"),("86593983V","Timon","Kline","ante.ipsum.primis@arcu.org","RHY70TBD0QV","15/11/1970"," enterprise","Dominican Republic","Vlaams-Brabant","Herfelingen","Ap #369-2236 Integer Avenue","/rot/media/default-avatar.png"),("94961967W","Jemima","Stewart","ipsum.ac@morbi.ca","HZA23HVB2DS","08/09/1988","individual ","Zimbabwe","São Paulo","Osasco","Ap #269-8153 Proin Rd.","/rot/media/default-avatar.png"),("36112417D","Amelia","Tyson","enim.Etiam@aliquetnecimperdiet.edu","VKF42ADR1YU","04/07/1982","individual ","Thailand","CA","Mataró","681-3317 Dui. Rd.","/rot/media/default-avatar.png"),("46821958T","Charlotte","Reeves","lobortis@egestasFusce.com","EKV23RNA4SG","27/06/1965","individual ","Saint Lucia","Z.","Gouda","Ap #767-5525 Nunc. Rd.","/rot/media/default-avatar.png"),("72841313O","Harper","Moses","interdum.Sed@sagittisNullamvitae.org","VOZ82YYG9MH","23/06/1966"," enterprise","Antarctica","Midi-Pyrénées","Colomiers","679-7931 Quis St.","/rot/media/default-avatar.png"),("74837821U","Oprah","Howe","ullamcorper@ipsumdolor.ca","QNU54DAD4NL","22/09/1997"," enterprise","Tokelau","SK","Saskatoon","6583 Luctus, Rd.","/rot/media/default-avatar.png"),("15915956P","Michael","Knox","vel.lectus@felisullamcorperviverra.net","FTG13LZZ6HY","03/08/1980","individual ","Niger","Quebec","Rimouski","P.O. Box 298, 8760 Ullamcorper Rd.","/rot/media/default-avatar.png"),("79661882E","Ginger","Aguilar","adipiscing.lacus@maurisInteger.edu","NRR61DRK1YO","11/04/1990"," enterprise","Mauritania","VIC","Bairnsdale","392 Magnis Av.","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("31226327A","Adara","Snider","adipiscing.lacus.Ut@Duiselementum.co.uk","BEN79GJO3RP","15/10/1991"," enterprise","Timor-Leste","GJ","Porbandar","690-1664 Luctus, Ave","/rot/media/default-avatar.png"),("87752957L","Keegan","Patel","adipiscing@dignissimMaecenasornare.co.uk","ZPI73FNX8MD","02/03/1967","individual ","South Africa","Västra Götalands län","Vänersborg","5969 Molestie St.","/rot/media/default-avatar.png"),("75586488K","Yuli","Armstrong","mollis.dui@accumsannequeet.org","WDZ40FXW6ZO","14/06/1984"," enterprise","Grenada","Katsina","Funtua","P.O. Box 135, 2503 Pede Rd.","/rot/media/default-avatar.png"),("82547186O","Galena","Maynard","eget@metus.ca","TFX60UKA9TU","25/11/1993","individual ","Macedonia","NSW","Penrith","Ap #876-1606 Scelerisque, Street","/rot/media/default-avatar.png"),("51328388S","Quail","Olsen","posuere.enim.nisl@arcuacorci.com","PAS71ZUG7RF","18/07/1965"," enterprise","Mauritania","NI","Tauranga","272-6411 Montes, Avenue","/rot/media/default-avatar.png"),("35493484Y","Price","Tran","est@accumsansedfacilisis.com","QIT04KRV7BM","22/11/1962"," enterprise","Czech Republic","Dalarnas län","Borlänge","P.O. Box 111, 6247 Consequat Road","/rot/media/default-avatar.png"),("42183262L","Callum","Richmond","suscipit@congue.com","QTR66WAA5IF","13/11/1991","individual ","Indonesia","Iowa","Davenport","Ap #114-7904 Eu St.","/rot/media/default-avatar.png"),("89948963I","Lesley","Grant","sit@non.co.uk","FIN07SJM6IO","04/07/1988","individual ","Marshall Islands","PUG","Scorrano","774-2040 Lacus. St.","/rot/media/default-avatar.png"),("25934915F","Kai","Wyatt","dolor.egestas.rhoncus@lobortisnisi.org","WBY36ARV1QT","22/01/1965"," enterprise","Tonga","Banffshire","Banff","305-7211 Lobortis, Road","/rot/media/default-avatar.png"),("74877588H","Kitra","Waters","a.scelerisque.sed@nullaIn.com","HPO37MHH7DA","18/01/1981"," enterprise","Guinea","Guanacaste","Nicoya","P.O. Box 421, 7349 Praesent Street","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("29312222L","Hanna","Marks","tincidunt.tempus@lacinia.org","JEL08DKN0GI","04/03/1979"," enterprise","Maldives","British Columbia","Sparwood","Ap #158-4830 Lorem Av.","/rot/media/default-avatar.png"),("45677272J","Rogan","Lucas","mi.ac.mattis@faucibus.edu","LPE58SLY1OH","26/02/1990"," enterprise","Anguilla","BA","Bauchi","Ap #291-1418 Sagittis. Rd.","/rot/media/default-avatar.png"),("23181634C","Devin","Bryan","eu@molestiedapibus.com","EBS30DRJ6GN","11/03/1995"," enterprise","Maldives","San José","San Rafael","2801 Elit, Rd.","/rot/media/default-avatar.png"),("78665249B","Myra","Keith","varius.et@felisNullatempor.com","KNV69VRV0IG","27/10/1975","individual ","New Zealand","Stockholms län","Täby","877-9367 Nisl. Rd.","/rot/media/default-avatar.png"),("44415618H","Lucy","Ford","est@molestie.org","EVJ41AFY6RU","27/08/1991"," enterprise","Mali","Haute-Normandie","Saint-Étienne-du-Rouvray","190-1129 Vivamus Rd.","/rot/media/default-avatar.png"),("68957816J","Marshall","Mcneil","sagittis@sapien.edu","QIV97DTO8KQ","01/12/1963"," enterprise","Chile","BR","Darbhanga","P.O. Box 974, 169 At, Ave","/rot/media/default-avatar.png"),("67333882U","Signe","Campbell","quam.Pellentesque@Donecsollicitudin.net","ISO21UTN5NG","14/09/1973","individual ","Guinea","Odisha","Bhubaneswar","6461 Lorem Road","/rot/media/default-avatar.png"),("39558431L","Herman","Harding","ac@euodioPhasellus.net","AQJ69HTG5BF","06/07/1973"," enterprise","Trinidad and Tobago","LOM","Civo","108-6683 Adipiscing Ave","/rot/media/default-avatar.png"),("53818342Z","Mariko","Anthony","malesuada.id.erat@diamdictumsapien.ca","HUI43TRB8IE","01/12/1987"," enterprise","Romania","Vienna","Vienna","612-3020 A, St.","/rot/media/default-avatar.png"),("92856433B","Quincy","Edwards","montes@ipsum.edu","VVO53LWR9UG","13/11/1994"," enterprise","Korea, North","WB","Berhampore","P.O. Box 693, 1937 Urna. St.","/rot/media/default-avatar.png");
INSERT INTO `users` (`dni`,`name`,`surnames`,`email`,`password`,`date_birthday`,`type`,`country`,`province`,`city`,`street`,`avatar`) VALUES ("55278561O","Iona","Yang","sed.consequat@tempus.net","HOH05PLQ9BS","24/11/1991"," enterprise","Netherlands","N.","Oosterhout","612-6275 Volutpat Road","/rot/media/default-avatar.png"),("71534786O","Lydia","Valdez","dolor.egestas@atpede.net","JLK17CIQ4CH","27/09/1971"," enterprise","Somalia","BA","Bauchi","541-1747 Pulvinar Avenue","/rot/media/default-avatar.png"),("65662135Y","Igor","Wright","nunc.sit@PhasellusnullaInteger.ca","DAI22XMR6IY","01/01/1974","individual ","Samoa","Tarapacá","Colchane","P.O. Box 614, 8330 A, St.","/rot/media/default-avatar.png"),("45287762Q","Benedict","Gould","ipsum.sodales@aliquet.co.uk","XVR05UIZ9AD","13/09/1963"," enterprise","Curaçao","Noord Brabant","Oosterhout","869-5849 Cursus Road","/rot/media/default-avatar.png"),("37171452M","Branden","Walls","facilisis@pretiumaliquet.edu","OTK60OEP5CJ","15/05/1978"," enterprise","Viet Nam","Quebec","Dubuisson","4885 Vel Ave","/rot/media/default-avatar.png"),("81963528M","Kiara","Foley","Vestibulum.ut.eros@faucibusorciluctus.ca","WKK45ZAJ3QC","16/12/1969"," enterprise","Svalbard and Jan Mayen Islands","New Brunswick","Campbellton","244-1278 Egestas Road","/rot/media/default-avatar.png"),("12156443I","Danielle","Graham","et@a.ca","DIO25VWL5CQ","04/09/1983"," enterprise","Kiribati","KN","Kano","1286 Ligula. St.","/rot/media/default-avatar.png"),("47266875Z","Venus","Reeves","a.arcu.Sed@Nullaeuneque.net","BFK52WVU0JI","05/06/1983","individual ","Honduras","ON","Etobicoke","146 Dictum Road","/rot/media/default-avatar.png"),("89571512B","Camilla","Ramos","quam.Curabitur.vel@fringillacursus.net","RCU41FKU6PL","27/09/1981","individual ","Zimbabwe","Montana","Bozeman","Ap #197-5543 Donec Rd.","/rot/media/default-avatar.png"),("28431843J","Rogan","Dejesus","placerat.augue.Sed@luctusetultrices.edu","MCR02NWR6PK","09/11/1996","individual ","Indonesia","ABR","Torrevecchia Teatina","8466 Eget Avenue","/rot/media/default-avatar.png");