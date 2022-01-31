USE [Library]
GO

INSERT INTO Users (Username,
	Email,
	Name,
	Surname,
	Active,
	PasswordHash
) VALUES ('dtroczyk',
	'dtroczyk@gmail.com',
	'Dominik',
	'Tracz',
	1,
	'has³o'
)
INSERT INTO Users VALUES ('jankowalski',
	'jankowalski@poczta.pl',
	'Jan',
	'Kowalski',
	1,
	'hase³ko'
)
INSERT INTO Users VALUES ('annanowak',
	'annanowak@library.pl',
	'Anna',
	'Nowak',
	0,
	'Has³o'
)
INSERT INTO Users (Username,
	Email,
	Active,
	PasswordHash
) VALUES ('rafalmalinowski',
	'rafalmalinowski@poczta.pl',
	1,
	'has³o' 
)

SELECT * FROM Users

INSERT INTO Shelves VALUES (1,
	'dtroczyk',
	'G³ówna pó³ka',
	'Pierwsza domyœlna pó³ka na ksi¹¿ki i gry planszowe.'
)
INSERT INTO Shelves VALUES (1,
	'jankowalski',
	'G³ówna pó³ka',
	'Pierwsza domyœlna pó³ka na ksi¹¿ki i gry planszowe.'
)
INSERT INTO Shelves VALUES (1,
	'annanowak',
	'G³ówna pó³ka',
	'Pierwsza domyœlna pó³ka na ksi¹¿ki i gry planszowe.'
)
INSERT INTO Shelves VALUES (1,
	'rafalmalinowski',
	'G³ówna pó³ka',
	'Pierwsza domyœlna pó³ka na ksi¹¿ki i gry planszowe.'
)

SELECT * FROM Shelves

INSERT INTO Items VALUES ('Klaus Teuber',
	'Osadnicy z Catanu (Settlers of Catan) to bardzo popularna na ca³ym œwiecie gra rodzinno-ekonomiczna o bardzo du¿ej "miodnoœci" grania. Teraz prezentujemy jej polsk¹ edycjê! Gracze s¹ osadnikami na niedawno odkrytej wyspie Catan. Ka¿dy z nich przewodzi œwie¿o za³o¿onej kolonii i rozbudowuje j¹ stawiaj¹c na dostêpnych obszarach nowe drogi i miasta. Ka¿da kolonia zbiera dostêpne dobra naturalne, które s¹ niezbêdne do rozbudowy osiedli. Gracz musi rozwa¿nie stawiaæ nowe osiedla i drogi, aby zapewniæ sobie dostateczny, ale zrównowa¿ony dop³yw zasobów, a jeœli ma ich nadmiar - prowadziæ handel z innymi graczami sprzedaj¹c im owce, drewno, ceg³y, zbo¿e lub ¿elazo a pozyskuj¹c od nich te zasoby, których ci¹gle mu brakuje. Pierwszy z graczy, który uzyska dziesiêæ punktów z wybudowanych przez siebie dróg, osiedli i specjalnych kart - wygrywa.',
	'Catan',
	'',
	'Polski',
	1995,
	'Galakta',
	'BoardGame',
	'dtroczyk',
	1,
	0,
	4,
	10,
	3,
	'1h',
	NULL,
	0,
	1,
	NULL
)
INSERT INTO Items VALUES ('Jacob Fryxelius', /* Author */
	'Ludzkoœæ rozpoczê³a ekspansjê w Uk³adzie S³onecznym. Na Marsie za³o¿ono ju¿ kilka niewielkich kolonii. Ich mieszkañcy s¹ odgrodzeni od naturalnego œrodowiska straszliwie zimnej, suchej i niemal pozbawionej atmosfery planety.

    Zwiêkszenie odsetka imigracji z Ziemi wymaga terraformacji Marsa, czyli dostosowania jego œrodowiska, aby ludzie mogli w nim prze¿yæ bez sprzêtu ochronnego i aby zminimalizowaæ œmiertelnoœæ w wyniku drobnych wypadków. W zwi¹zku z tym Rz¹d Ziemi zdecydowa³ siê wesprzeæ ka¿d¹ organizacjê, która przyczyni siê do tego wiekopomnego dzie³a.
    
    Hojne dofinansowanie przyci¹ga gigantyczne korporacje, które pragn¹ zwiêkszyæ swój udzia³ w rynku i staæ siê najbardziej wp³ywowymi podmiotami realizuj¹cymi projekt terraformacji. Ujarzmienie Czerwonej Planety to dla wielu szansa na osza³amiaj¹cy sukces.',
	'Terraformacja Marsa', --Title
	'', --Photo
	'Polski', --Language
	2015, --Year
	'Rebel', --PubHouse
	'BoardGame', --Type
	'jankowalski', --OwnerId
	1, --ShelfId
	0, --IsPrivate
	5, --MaxPlayers
	12, --MinAge
	1, --MinPlayers
	'2h', --Length
	NULL, --Pages
	0, --IsBorrowed
	1, --IsToLet
	NULL --LoanId
)
INSERT INTO Items VALUES ('Brandon Sanderson', /* Author */
	'W „Dawcy Przysiêgi”, trzecim tomie bestsellerowego Archiwum Burzowego Œwiat³a, ludzkoœæ musi stawiæ czo³o nowemu Spustoszeniu i powrotowi Pustkowców – wroga, którego liczebnoœæ jest równie wielka, jak pragnienie zemsty.',
	'Dawca Przysiêgi', --Title
	'', --Photo
	'Polski', --Language
	2017, --Year
	'Mag', --PubHouse
	'Book', --Type
	'dtroczyk', --OwnerId
	1, --ShelfId
	0, --IsPrivate
	NULL, --MaxPlayers
	NULL, --MinAge
	NULL, --MinPlayers
	NULL, --Length
	640, --Pages
	0, --IsBorrowed
	1, --IsToLet
	NULL --LoanId
)
INSERT INTO Items VALUES ('Lewis C.S', /* Author */
	'W marzeniach, snach i w Twojej wyobraŸni kryje siê klucz do nieznanego œwiata. Ksi¹¿ka C.S. Lewisa to opowieœæ, która poruszy umys³owoœæ czytelnika, uwra¿liwi go i otworzy na œwiat fantazji. Akcja pierwszego tomu „Opowieœci z Narnii” rozgrywa siê w niezwyk³ej, skutej lodem krainie. Czworo œmia³ków wkracza do niej przez drzwi starej szafy, aby przeciwstawiæ siê mocy Bia³ej Czarownicy. Z kim bêdziesz siê uto¿samia³ podczas lektury ksi¹¿ki „Lew, czarownica i stara szafa”? Z ma³¹ £ucj¹, która w starym meblu dostrzeg³a coœ wiêcej ni¿ tylko szafê z futrami czy mo¿e z niedowierzaj¹cym jej Edmundem? S¹ jeszcze Piotr i Zuzanna, którzy wspólnie wype³niaj¹ proroctwo i zasiadaj¹ na poczwórnym tronie Narnii.',
	'Opowieœci z Narnii. Tom 1, Lew, Czarownica i Stara Szafa.', --Title
	'', --Photo
	'Polski', --Language
	2005, --Year
	'Media Rodzina', --PubHouse
	'Book', --Type
	'annanowak', --OwnerId
	1, --ShelfId
	0, --IsPrivate
	NULL, --MaxPlayers
	NULL, --MinAge
	NULL, --MinPlayers
	NULL, --Length
	182, --Pages
	0, --IsBorrowed
	1, --IsToLet
	NULL --LoanId
)
INSERT INTO Items VALUES ('Klaus-Jurgen Wrede', /* Author */
	'Usi¹dŸ z przyjació³mi przy stole i wspólnie zacznijcie budowaæ z niewielkich ¿etonów ³¹ki, twierdze, ca³e miasta i drogi, rywalizuj¹c miêdzy sob¹ o przejêcie kontroli nad co bardziej atrakcyjnymi lokacjami. Sprytne zagranie mo¿e pozbawiæ rywala mo¿liwoœci ukoñczenia ogromnego miasta lub pozwoli Ci przej¹æ kontrolê nad wielk¹ ³¹k¹.',
	'Carcassonne', --Title
	'', --Photo
	'Polski', --Language
	2011, --Year
	'MindOk', --PubHouse
	'BoardGame', --Type
	'dtroczyk', --OwnerId
	1, --ShelfId
	0, --IsPrivate
	5, --MaxPlayers
	7, --MinAge
	2, --MinPlayers
	'30 min', --Length
	NULL, --Pages
	0, --IsBorrowed
	1, --IsToLet
	NULL --LoanId
)
INSERT INTO Items VALUES ('Anonimowy Anonim', /* Author */
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed malesuada dignissim ex, posuere pharetra nunc lacinia in. Vestibulum viverra nibh suscipit, egestas justo eget, interdum arcu. Cras quis lorem eget mi varius fringilla non eu nulla. Vivamus efficitur sapien ac porttitor fermentum. Phasellus lacus elit, tristique eu purus ac, semper convallis nunc. Praesent malesuada neque in massa sagittis rhoncus. Pellentesque pharetra, enim nec gravida pharetra, nisl diam bibendum augue, vel semper mauris mi ac diam. Sed ut quam enim. Donec lobortis libero id varius tempor. Nam ultrices egestas condimentum. Sed et leo mattis eros tempus pellentesque et sed nulla. Etiam faucibus congue lobortis. Ut cursus purus at eros hendrerit, quis pellentesque libero rhoncus. Curabitur quis mauris pellentesque erat tempor viverra quis nec leo.

  Nulla id libero turpis. Phasellus eu sagittis orci, et pulvinar arcu. Donec a fringilla justo, nec fringilla nisl. Sed ac diam viverra, maximus mauris a, scelerisque ipsum. Proin a magna tristique, pulvinar nisi tempor, vulputate urna. Etiam sagittis congue magna commodo malesuada. Proin a tortor condimentum magna varius euismod. Sed sed arcu blandit, pretium orci nec, imperdiet libero. Curabitur non magna eu nisl vestibulum porttitor eu iaculis massa. Etiam luctus lacus sed felis luctus consectetur. Morbi lacus ante, lacinia at lorem ut, vulputate ultricies ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum mauris tortor, ultrices ut dolor eu, luctus molestie urna. Suspendisse lectus erat, viverra et cursus nec, volutpat at velit. Praesent scelerisque enim vel erat pellentesque gravida. Nullam rutrum mauris at nisl maximus varius.
  
  Sed sapien odio, porttitor nec ipsum eget, varius iaculis felis. Integer consectetur tortor neque, sit amet convallis nisi elementum ut. Proin viverra nunc quis mauris eleifend, a consequat tellus vestibulum. Phasellus ac diam et nisl ullamcorper vulputate vitae id lacus. Vivamus eget ligula sit amet ante mollis congue. Proin id nulla pretium ex faucibus faucibus eu in velit. Aliquam euismod ante euismod magna blandit, eu viverra ex aliquet. Duis non tincidunt orci. Proin in blandit lectus. Sed dolor sapien, tempor vitae gravida nec, maximus blandit dolor. Integer a tempus sem, ut efficitur elit. Proin egestas elementum aliquet. Pellentesque risus dolor, porta in consectetur sit amet, eleifend ac ligula. Mauris sed turpis id justo posuere bibendum. Suspendisse maximus velit id lorem auctor placerat non vel nunc. Maecenas pellentesque, velit sed auctor rutrum, mauris ligula consequat justo, et iaculis mi dui id urna.
  
  Suspendisse pulvinar leo enim, in egestas magna condimentum interdum. Nulla eros sapien, fermentum in lacinia eu, scelerisque sit amet ex. Quisque aliquam condimentum dui ornare tincidunt. Fusce vehicula eleifend ex, eget facilisis eros facilisis a. Quisque vehicula eu diam sit amet vestibulum. Proin fringilla, ipsum ac rutrum bibendum, odio mauris faucibus nulla, vel imperdiet mauris arcu sit amet odio. Curabitur at odio sem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  
  Suspendisse semper enim orci, a consectetur libero semper ac. Suspendisse id odio pellentesque, lacinia arcu id, efficitur magna. Duis ultricies orci sed tellus aliquam, eu congue nisl elementum. Cras a vestibulum ex. Maecenas bibendum euismod ipsum eu feugiat. Nunc a euismod felis. Curabitur efficitur eu ipsum placerat consectetur. Sed non eros eleifend, mattis arcu nec, mollis metus. Donec gravida semper malesuada.
  
  Morbi est magna, semper at consectetur sit amet, egestas id orci. Morbi in turpis ante. Fusce sagittis turpis a tortor pellentesque, porttitor ullamcorper tortor dignissim. Sed venenatis, ligula eget vulputate feugiat, lorem felis placerat lacus, cursus tempus libero augue vel metus. Curabitur iaculis urna a fringilla aliquam. Nulla pharetra, felis ac dignissim gravida, leo elit blandit mauris, et efficitur neque nunc vel libero. Maecenas ligula massa, sagittis sit amet hendrerit nec, egestas in purus. In ut tellus nisi. In lobortis, augue vel posuere congue, ipsum augue maximus libero, vel facilisis arcu ipsum quis felis. Pellentesque non aliquet mauris. Nam sed dui nec est bibendum ullamcorper. Fusce eu odio orci.
  
  Aenean ipsum tellus, porttitor a mattis et, aliquam at dolor. Vivamus iaculis, orci et sodales vestibulum, risus libero vehicula lorem, vel condimentum enim ipsum eu est. Praesent felis elit, vestibulum vel malesuada a, lobortis eget erat. Maecenas non finibus felis. In blandit quam id posuere scelerisque. Suspendisse id placerat eros. Donec varius ut justo at sodales. Curabitur tellus dui, imperdiet at semper non, tempus sed lorem. Maecenas vitae porta elit. Aenean finibus non dolor molestie rutrum. Praesent eros ex, auctor in lorem eu, fringilla fringilla elit. Etiam vel lorem sagittis, finibus metus id, molestie velit. Donec quis arcu a urna egestas dignissim a sed est. Vivamus lacinia sem in dictum consequat.
  
  Duis dictum massa at mi lobortis tempor. Nam auctor eget ipsum et blandit. Aliquam fringilla quis nibh eu egestas. Vivamus a enim a arcu vestibulum vestibulum. Morbi sollicitudin, elit ac suscipit viverra, nibh quam ultrices arcu, sed facilisis lorem ligula quis risus. Maecenas placerat justo nec ipsum sodales, volutpat consequat lorem fringilla. Integer facilisis condimentum sollicitudin. Curabitur auctor ligula quis lobortis vestibulum.
  
  Vestibulum eu dignissim metus. Nunc id lectus sodales erat faucibus elementum sed vel ligula. Aliquam volutpat egestas urna id convallis. Suspendisse faucibus efficitur nisl condimentum fringilla. Morbi venenatis, leo vel consequat rhoncus, massa nisl convallis mi, sit amet egestas nunc enim et nisl. Nunc odio erat, eleifend sed ante et, varius imperdiet arcu. Duis lobortis vestibulum turpis, quis lacinia nibh interdum ut. Aliquam erat volutpat.
  
  In aliquet pharetra mauris, quis ultrices nulla gravida at. Mauris ac enim non diam suscipit posuere quis consequat quam. Aliquam aliquam eu velit sit amet sodales. Etiam efficitur porttitor elit, et porttitor nisi vestibulum eget. Pellentesque fringilla sit amet turpis eget lobortis. Morbi gravida blandit erat, sit amet fringilla ligula fermentum quis. Ut vestibulum semper scelerisque. Etiam quis nunc sit amet turpis finibus egestas. Donec eleifend, urna quis sodales auctor, massa justo dapibus augue, ac rhoncus ante mauris nec arcu. Nullam a efficitur nisi, at dapibus nisi. Quisque eget lacus id tortor consectetur auctor. Donec neque ipsum, semper eu ullamcorper a, tempus eu dui. Nulla nisi nibh, consequat non lectus sed, molestie suscipit sapien. Nunc dictum finibus tellus id euismod. Nam non consectetur tortor.
  
  Proin eu nibh sit amet odio lobortis accumsan. Sed tristique ex in ante rhoncus placerat. Vestibulum magna nulla, vestibulum at mi vel, euismod tincidunt nibh. Cras volutpat diam elit. Maecenas ultrices ipsum id dapibus commodo. Integer fermentum enim accumsan, accumsan leo et, ullamcorper metus. Pellentesque auctor, diam non consectetur porta, velit ante vestibulum urna, vel posuere nunc neque a tellus. Curabitur vulputate mauris nisi, ut volutpat nisi tincidunt vitae. Nam vel ultricies tortor.
  
  Nam eleifend molestie hendrerit. Proin risus sapien, molestie sit amet eros vitae, faucibus dapibus mauris. Mauris a rutrum ante. Suspendisse eleifend lorem vel erat aliquet, in dapibus urna imperdiet. Quisque cursus magna libero, quis viverra tortor convallis nec. Ut bibendum elit eget augue imperdiet, quis porttitor erat finibus. Sed id tellus auctor, condimentum neque nec, efficitur magna. Proin nec metus tristique, vestibulum magna in, luctus ante. Etiam neque odio, sollicitudin id dolor ac, consequat egestas magna. Sed a arcu eget sapien laoreet laoreet. Mauris gravida consectetur lorem, ac consectetur erat ultricies vitae. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
  
  Pellentesque imperdiet quam id lectus placerat elementum. Donec non leo eu erat vulputate eleifend. Phasellus aliquam, massa vitae pellentesque tincidunt, est ipsum tempus magna, nec suscipit ipsum erat quis elit. Nulla scelerisque faucibus erat eu pretium. Etiam sodales eleifend elit a commodo. Vestibulum efficitur, est vel pretium venenatis, massa ante congue ipsum, et tristique nibh arcu quis ligula. Ut faucibus, sem eu commodo cursus, eros augue condimentum magna, id pellentesque risus magna at erat. Nullam ipsum libero, tempus a vulputate in, mattis in nisl. Quisque dignissim turpis et elementum fermentum. Vestibulum malesuada metus leo, id tristique augue malesuada eu. Donec lobortis, sem ac tincidunt iaculis, nunc turpis interdum ipsum, eget convallis augue elit varius mauris.
  
  Duis sit amet justo sed turpis suscipit sodales. Nam luctus, lectus in sagittis egestas, erat nibh pretium nulla, sed sodales eros enim sed erat. Cras eleifend mi nec est convallis egestas quis vel mauris. Vestibulum rutrum facilisis gravida. Nam vitae sagittis ante, vel posuere erat. Etiam hendrerit auctor arcu. Sed in magna sit amet mauris consectetur gravida tempor et dui. Proin malesuada erat nec dui sagittis ultrices. Morbi hendrerit dignissim consectetur. Vivamus bibendum ante id leo tincidunt, at cursus leo dictum. Duis at rhoncus arcu, et imperdiet ligula. Duis faucibus, erat a convallis bibendum, sapien turpis volutpat enim, sodales cursus tellus turpis id arcu.
  
  In ac luctus risus, nec consectetur mauris. Ut et arcu orci. Donec volutpat accumsan congue. Mauris et interdum sapien, vel consequat tortor. Morbi bibendum leo ac dui auctor vestibulum. Phasellus ut tellus bibendum, mollis lacus sed, interdum nisl. Aenean imperdiet vestibulum orci, non gravida sem commodo et. Suspendisse dictum elit ac justo ultrices volutpat. Maecenas malesuada pharetra luctus. Etiam felis nibh, consectetur ut quam vitae, lacinia commodo mi. Donec tempus accumsan aliquet. Etiam convallis vel sapien quis elementum. Aliquam ut auctor purus. Integer pulvinar ut nunc sed egestas.
  
  Aliquam congue augue odio, ut interdum velit ultrices a. Nunc dictum urna at erat feugiat, sed bibendum augue ultrices. Aliquam auctor sodales arcu quis sodales. In lorem lacus, sodales et est non, maximus aliquet mi. Nullam rutrum mi sed orci tempor, quis bibendum ipsum porta. Quisque ut neque ut dolor mattis euismod. Donec ac erat at libero placerat bibendum vel a mauris. Mauris suscipit placerat est sit amet elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam fringilla dolor sit amet malesuada fermentum. Praesent mattis dolor quis nulla suscipit, sed ultricies erat hendrerit. Donec condimentum vulputate consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
  
  Vestibulum dignissim scelerisque augue, eget hendrerit urna mattis eu. Phasellus mauris nibh, tincidunt ut dui at, tempus convallis est. Mauris eget pellentesque ipsum. In dapibus purus vel porta tristique. Nullam dui dolor, bibendum a consequat gravida, ultricies a massa. Etiam ultrices tristique purus, non aliquam arcu faucibus eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
  
  Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam tempus purus vel consectetur pellentesque. Donec et gravida tellus. Aliquam sit amet pulvinar augue. Nulla pretium, purus vitae vestibulum tristique, nisi felis iaculis diam, vel sagittis turpis mauris ac metus. Nunc hendrerit semper massa. Donec scelerisque neque nec nulla auctor, a scelerisque purus cursus. Nullam id consequat quam, sed suscipit ante. Aliquam mattis risus id ex interdum, sit amet posuere leo venenatis. Cras aliquam lorem eget massa pellentesque, at placerat odio vulputate. Duis elementum est quis auctor auctor. Etiam eget tellus nec massa interdum cursus. Maecenas et risus a est cursus feugiat non quis diam.
  
  Nulla suscipit diam faucibus libero ornare, eu feugiat magna elementum. Nunc quam erat, iaculis sed tristique ac, varius quis mi. Fusce porta felis in ipsum porttitor, ut ullamcorper mi ultricies. Aenean dapibus vehicula dictum. Quisque posuere justo odio, et rhoncus quam tempus et. Vestibulum laoreet molestie orci, vitae rhoncus nulla facilisis ut. In in nunc sed mauris finibus euismod. Duis quis nisi venenatis, luctus erat vel, sagittis nunc. In et diam sodales, auctor dui ut, imperdiet metus.
  
  Nunc quis pellentesque dui. Duis eros ligula, lobortis nec lacus sit amet, auctor tristique leo. Cras odio elit, blandit sodales turpis id, malesuada tempor dolor. Curabitur finibus arcu ligula, vel condimentum tortor suscipit at. Aliquam ullamcorper ex vitae nunc molestie, pulvinar dapibus enim commodo. Cras porttitor, justo ac fringilla ullamcorper, sem metus efficitur ligula, id ornare nulla sem sit amet eros. Maecenas feugiat, lectus sit amet lacinia tincidunt, lorem purus ultrices nulla, eget vehicula turpis lorem sed enim. Proin sed eros eget metus tempus suscipit. Aenean non sapien consectetur, aliquet metus sed, fringilla orci.
  
  Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur nec eros eget metus mollis fermentum vitae in tortor. Etiam quis consectetur elit. Phasellus hendrerit tellus ipsum, dapibus molestie sapien aliquet in. Morbi in purus magna. Nunc volutpat vestibulum quam vel rhoncus. Curabitur est sem, bibendum vitae bibendum quis, semper id orci. Sed ut placerat lectus, ac fringilla eros. Mauris consequat bibendum quam sed efficitur. Donec in urna iaculis, commodo dui ac, ultricies risus. Cras a commodo lacus, id scelerisque mi.
  
  Nunc laoreet in lacus quis consequat. In nec dapibus odio. Pellentesque id vulputate sem. Aliquam eu erat ut tellus ultricies rhoncus. Integer a ipsum cursus, vulputate nisi sed, tempor mi. Nulla fermentum dictum est sit amet rhoncus. Sed porta vulputate ultricies. Morbi id cursus eros. Duis massa magna, tempus nec volutpat sed, cursus sit amet turpis. Maecenas venenatis nisl vel varius vulputate. Sed vestibulum dolor et nulla placerat commodo. Vivamus ultrices, velit aliquet pharetra lacinia, purus tortor feugiat ante, in luctus tortor elit vel lorem.
  
  Etiam non tellus in metus consectetur fringilla. Fusce sed condimentum odio, eget iaculis arcu. Suspendisse id pharetra risus, lobortis feugiat ante. Pellentesque faucibus, magna vitae eleifend maximus, ipsum orci mollis purus, condimentum fringilla ligula lorem et tellus. Donec in pellentesque erat. Quisque vel lorem aliquam, dictum justo vitae, ultricies sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus sit amet est ut mi auctor auctor nec sed ex. Pellentesque vulputate mattis erat a congue. Quisque rhoncus, nisi nec vestibulum rhoncus, eros magna accumsan dolor, quis finibus nisl justo in dolor. Donec ac scelerisque mi. Sed ultricies ligula eget velit vestibulum varius.
  
  Phasellus in felis eget urna aliquam congue. Vivamus rhoncus mauris mattis, laoreet elit quis, egestas quam. Sed sollicitudin sed risus porttitor blandit. Sed interdum quis nibh sed pulvinar. Maecenas ut rutrum mi, at faucibus eros. Curabitur dapibus nunc augue, mattis rhoncus dui maximus ac. Duis ut sapien ex. In vehicula, nibh a efficitur vestibulum, turpis justo bibendum nisi, a dapibus lacus nisl id erat. Quisque nec vehicula augue. Integer molestie vel dolor id pellentesque. Sed rutrum elit a dolor feugiat ornare. Aliquam sed feugiat mi. Donec ornare in mi eget tempus. Cras in orci augue. Donec facilisis convallis consequat. Maecenas quis sapien tincidunt, feugiat erat quis, malesuada velit.
  
  Vestibulum consequat non diam quis condimentum. Ut fringilla, augue sed sollicitudin fringilla, enim odio sollicitudin ipsum, ac auctor nunc enim eget mi. Suspendisse potenti. Aliquam maximus mattis condimentum. Fusce dictum lacus ex, a dictum massa feugiat eu. Donec varius sagittis odio, ac imperdiet purus. Donec sit amet porta mauris, et semper sem. Ut et lacinia risus. Mauris vitae nunc at nunc laoreet commodo. Nulla eleifend venenatis ante, non laoreet nisi. Curabitur ac libero ut eros facilisis scelerisque quis et sapien. Mauris urna arcu, lacinia non ligula eget, fringilla gravida neque.
  
  Nulla consectetur blandit purus, quis ullamcorper erat posuere at. Nulla mollis sodales cursus. Suspendisse quis orci et turpis lobortis vestibulum nec quis nisi. Etiam mollis at lacus a faucibus. Integer sem ipsum, tempor posuere sapien et, pretium ultrices purus. Cras nibh odio, molestie et nisi in, sollicitudin sollicitudin lorem. In dignissim quis diam non vulputate. Donec nec nisl non orci fermentum eleifend. Nunc sit amet magna congue, congue dolor a, dignissim lectus. Etiam sollicitudin dolor augue.
  
  Nam elit ante, sagittis eu augue eleifend, facilisis pretium nibh. Proin imperdiet massa ut dolor ultrices iaculis. Ut dapibus mi sed nunc porta, ac dignissim metus fermentum. Proin ex urna, pretium vel molestie a, aliquam vitae turpis. Morbi vel tincidunt ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum molestie odio justo. Aliquam blandit tortor orci, vel ornare felis pulvinar in.
  
  Pellentesque enim tellus, sodales at lorem id, rhoncus varius urna. Quisque porta a tellus at euismod. Morbi ac metus interdum nibh scelerisque pretium a a nisl. Fusce ornare tortor ante, quis cursus diam rutrum et. Pellentesque erat mauris, consectetur in mauris sed, congue condimentum leo. Morbi porttitor lectus odio, quis consectetur massa iaculis id. Aliquam id bibendum elit. Maecenas eget egestas augue. Aenean posuere mi a erat facilisis, a dictum mi lobortis. Suspendisse id massa auctor, egestas sapien sed, sollicitudin nulla.
  
  Quisque aliquam diam non luctus sodales. Quisque egestas ac turpis at pellentesque. Integer vitae euismod dolor, in bibendum velit. Sed porta felis velit, vitae congue mauris rhoncus vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada aliquam odio id semper. Nam eget diam eu quam facilisis lobortis. Curabitur ultricies sapien sed rhoncus malesuada. Praesent cursus odio nec lorem vehicula, id tincidunt purus laoreet. Pellentesque blandit, tortor et imperdiet lobortis, massa nisi varius purus, sit amet dignissim odio sapien vel velit. Curabitur blandit tellus id mollis placerat. Proin quis odio vitae felis vehicula tempor. Nunc imperdiet purus sapien, vitae hendrerit est gravida vel. Vivamus semper ante at libero maximus bibendum. Donec laoreet tempus dui, ac volutpat lectus ornare sit amet.
  
  Pellentesque eu placerat tellus, et vehicula purus. Sed gravida consectetur leo. In lobortis mattis purus sit amet sodales. Aliquam id imperdiet erat, nec facilisis sapien. Phasellus pharetra, nisi eget imperdiet bibendum, ipsum tortor consequat nisi, et ornare dui libero suscipit metus. Vestibulum aliquam eget risus et tristique. Sed gravida, nisl vel ornare ultrices, urna nulla venenatis urna, nec pulvinar ligula augue a turpis. Proin justo orci, luctus vel urna quis, pellentesque dapibus ligula. Aenean sit amet nulla lobortis, malesuada nunc et, pellentesque lectus. Nulla tempor quam vel egestas scelerisque. Proin sem eros, volutpat quis scelerisque quis, tincidunt ac elit. Suspendisse pulvinar nisl est, sit amet convallis odio placerat eu. Maecenas dignissim gravida urna eu molestie. Aliquam in molestie nulla. Aliquam imperdiet sollicitudin urna, vitae ultrices purus euismod pharetra. Fusce eu facilisis orci, vitae feugiat mauris.
  
  Nam nec risus nec mi pretium egestas vitae id neque. Vivamus congue eu sapien et rhoncus. Vivamus quam neque, posuere ut molestie sit amet, aliquam at velit. Nulla a ante fringilla, tempus metus vel, bibendum dolor. Ut sit amet neque eu sapien cursus porttitor eget vitae sem. Ut lobortis fringilla rutrum. Nam blandit urna sed dui vestibulum, a fermentum justo fermentum. Nullam laoreet, enim id ullamcorper fringilla, lectus dui rutrum diam, a porttitor ipsum libero in felis. Curabitur eget ullamcorper arcu. In risus enim, accumsan ut tincidunt et, ultrices ac risus. Etiam ultricies mollis ex, sit amet ultricies urna vestibulum et. Pellentesque vitae sem tempus, imperdiet mi ut, dapibus dui. Ut rutrum nibh nisi, eu ullamcorper tortor ultrices non. Donec sit amet lacus in libero lacinia iaculis. Vivamus pharetra felis lacus, eu aliquet libero commodo sed. Cras vitae arcu eget nisl hendrerit rutrum et in sapien.
  
  Maecenas in accumsan arcu. Fusce in dolor augue. Nulla sed vulputate dolor, et aliquam nisl. Nam mattis consequat rhoncus. Sed sodales felis eget tincidunt iaculis. Integer pharetra dui quam, id placerat arcu interdum sed. Etiam a fermentum sem. Morbi in euismod mi. Pellentesque porttitor varius lacus, sit amet sodales massa rhoncus at. Nullam eget hendrerit sapien. Nullam dapibus suscipit diam at porta. Suspendisse a placerat diam.
  
  Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed placerat sed turpis id placerat. Pellentesque rutrum varius massa et convallis. Vivamus blandit eleifend velit sed sodales. Curabitur semper nisi nec nisi tempus consequat. Integer accumsan, libero sit amet pretium fringilla, dui ante ornare ipsum, quis bibendum velit eros sed nunc. Ut suscipit metus a diam porttitor, suscipit bibendum arcu consectetur. In pellentesque convallis elit elementum commodo. Quisque in leo ut sem suscipit iaculis a quis justo. Cras sed lacus metus. Etiam sagittis venenatis metus quis dignissim. Quisque non porta metus. Fusce eu pretium nunc, sit amet lacinia nisi. Proin dictum ex non auctor vehicula. Integer viverra nibh tellus, vitae malesuada lorem congue in.
  
  Sed sodales vulputate arcu quis venenatis. Sed fringilla arcu ut mi faucibus, ac tempus urna commodo. Donec tortor ante, scelerisque a massa et, tempor rutrum ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent nisl eros, laoreet a eros sed, dignissim semper mauris. Aenean vel ornare mi, vitae mattis diam. Curabitur nulla nunc, luctus eu varius at, aliquet in dui. Pellentesque vitae rutrum nulla. Morbi ullamcorper, leo eget ultrices interdum, orci neque eleifend velit, et feugiat ante nisl ac tellus. Nam tincidunt semper egestas. Praesent malesuada mauris eget massa auctor tristique. Donec ante orci, bibendum id tincidunt eu, congue vel quam.
  
  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer a tincidunt nulla, in tempus arcu. Sed a mollis enim, in semper mi. Curabitur sed elit ligula. Praesent magna justo, feugiat in mauris vitae, dapibus aliquam lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sit amet enim quis augue sagittis sagittis. Nulla volutpat vulputate lacus congue congue. Nullam in ex luctus nulla pretium congue vitae lobortis mauris. Phasellus sit amet maximus dolor. Mauris arcu justo, volutpat quis nibh eget, mattis ornare massa. Aliquam pellentesque sapien id dui laoreet iaculis. Sed vehicula, velit in laoreet tincidunt, nisi sapien tincidunt libero, a gravida mi ante vitae elit. Curabitur non nisi pretium eros varius consectetur in sit amet dolor. Aenean ut sem quis odio consequat tempor vitae vel sem.
  
  Phasellus ut orci ullamcorper, convallis nisi in, dapibus ipsum. Fusce tincidunt vel justo in pretium. Ut eleifend nunc sapien. Nunc at felis nunc. Nunc blandit, sem aliquam commodo volutpat, risus libero accumsan felis, non suscipit nisi risus in tellus. Cras ac elementum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam semper condimentum lacinia. Nam nisl ipsum, tempus et viverra quis, sodales nec purus. Etiam et ullamcorper libero. Nullam a dui in eros maximus pharetra eu laoreet leo. Integer id libero mollis, feugiat erat et, imperdiet elit.
  
  In feugiat magna et risus iaculis, eget ornare justo pellentesque. Nullam finibus tortor et leo porttitor, sit amet accumsan mauris ornare. Suspendisse vel faucibus eros. Pellentesque dignissim viverra massa ac porttitor. Nullam feugiat cursus velit, ultrices vehicula massa porttitor aliquam. In id tortor et nisl aliquam consectetur. Sed rutrum eleifend euismod. Sed vitae pellentesque nisi, non scelerisque lectus. Proin ut urna ultricies, mattis leo eu, fermentum diam. Phasellus ac vehicula massa. Ut ac blandit justo, id tincidunt libero. Mauris in iaculis massa.
  
  Pellentesque quis felis ex. Nulla magna arcu, fermentum ac commodo a, accumsan quis nisi. In hac habitasse platea dictumst. Vestibulum quis finibus tellus. Nunc gravida, mi quis hendrerit mattis, mauris dui rutrum eros, a varius sapien justo at dui. Cras rhoncus mi sit amet imperdiet vestibulum. Maecenas luctus vitae leo sed molestie. Vivamus congue quam at nisl ullamcorper elementum. Phasellus accumsan, urna quis condimentum eleifend, ipsum neque viverra nunc, euismod convallis neque quam sit amet arcu. Cras lectus elit, facilisis eget imperdiet et, eleifend a lectus. Aenean dictum commodo sem vitae blandit.
  
  Aliquam sagittis id velit et sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur nisl enim, fermentum eu nisl vel, imperdiet efficitur sapien. Curabitur et pellentesque nibh. Aenean sit amet augue elit. Quisque sed dignissim lectus, ac ornare nulla. Sed fringilla felis non lorem egestas suscipit. Sed lacinia erat quis augue varius porttitor. Vestibulum ultricies sodales massa. Phasellus pulvinar odio justo, eu feugiat orci vestibulum non. Praesent dapibus ligula felis, at malesuada mi luctus eu. Ut eget felis at nunc tristique dictum eu rutrum risus. In urna urna, varius quis congue sit amet, vestibulum sit amet lacus. Etiam pellentesque tincidunt nisi, ut volutpat erat commodo in. Aenean consequat ut purus ut varius.
  
  Maecenas pellentesque tincidunt nibh eget faucibus. Nam sed turpis ornare, tempus ipsum quis, aliquet ligula. Nullam est leo, fringilla nec justo eget, tempor tempus lectus. Maecenas placerat nisi ut leo iaculis, vel molestie quam finibus. Sed scelerisque consectetur luctus. Ut ut posuere libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ipsum quam, elementum ut risus sed, ultricies accumsan felis. Sed sed lorem pretium orci auctor cursus at at diam. Proin sit amet congue arcu. Suspendisse maximus lobortis mauris, dapibus vehicula tellus.
  
  Maecenas orci dui, dictum a lacinia et, pellentesque sit amet odio. Pellentesque aliquet lorem ex, eu mattis orci imperdiet nec. Pellentesque blandit lorem sit amet vehicula efficitur. Mauris et nunc at lorem maximus pellentesque. Morbi aliquam sed eros in dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque non volutpat tortor, at egestas lacus. Vestibulum ultricies egestas mauris molestie auctor. Duis odio dui, posuere sed lacus sed, suscipit cursus est. Ut vestibulum magna diam, eu lacinia ipsum euismod ac. Aenean tellus lorem, semper in est eget, hendrerit mattis augue. Donec nisi eros, elementum vel erat ut, accumsan fringilla mauris.
  
  Proin vitae enim euismod purus dapibus malesuada. Etiam ultricies, erat vel molestie efficitur, diam nulla sodales ex, id eleifend orci erat dictum mauris. Duis cursus purus eget facilisis accumsan. In velit felis, laoreet ac lectus sit amet, varius porttitor lectus. Donec fringilla turpis sit amet malesuada auctor. Suspendisse vel fringilla dolor, non molestie sem. Nam in lorem turpis. Sed at egestas tellus. Nulla cursus lectus sit amet metus cursus vulputate.
  
  Integer vel commodo urna. Nunc rutrum pharetra felis, nec semper nisl tristique id. Donec at nunc porttitor tellus iaculis egestas sed non augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse faucibus malesuada tortor a viverra. Suspendisse vitae laoreet enim. Etiam quis libero posuere, dignissim eros vel, tempor mi. Nam sit amet dolor odio. Donec sit amet tincidunt magna, a porta orci. Sed nisl quam, facilisis quis ante pharetra, mattis maximus risus. Sed vel urna ut tortor interdum pellentesque. In ut pulvinar enim.
  
  Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse lacinia lorem enim, at euismod massa gravida in. Praesent vitae ante ut lorem dapibus elementum id eu ante. Donec fringilla mauris a arcu lacinia facilisis. Vivamus tincidunt risus ut erat finibus dictum. Nullam malesuada iaculis urna vel tempor. Nulla efficitur enim a dui aliquam, in iaculis turpis placerat. Curabitur scelerisque, velit in consectetur scelerisque, leo dolor aliquam ante, ut rutrum justo dolor quis augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pretium sollicitudin massa, ut molestie arcu molestie nec. Aenean volutpat nisl ut vestibulum feugiat. Sed a congue nisl. Praesent sit amet euismod nulla, nec vestibulum justo.
  
  Mauris malesuada aliquam pharetra. In vehicula hendrerit purus vitae feugiat. Aenean tempor dapibus massa, eu tempor libero eleifend sit amet. Vestibulum tincidunt leo eget lacus consequat, sit amet dapibus eros pellentesque. Sed ornare vel dolor nec efficitur. Nulla vulputate diam ac rutrum facilisis. Morbi varius eleifend rhoncus. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed sollicitudin vehicula felis, at tristique elit placerat quis. Mauris et diam sapien. Mauris at est pretium, ultrices risus in, eleifend ipsum.
  
  Aliquam vestibulum, nulla vel efficitur lobortis, justo purus vulputate nisi, a venenatis odio lectus sed justo. Phasellus porta lectus sed ex sagittis dapibus. In elit nibh, vestibulum ut nibh in, ullamcorper hendrerit tellus. Aliquam ac orci est. Etiam luctus sem a leo pharetra, at fringilla turpis semper. Mauris rutrum nunc a justo imperdiet tempus. Suspendisse gravida, ligula quis malesuada euismod, quam purus vulputate quam, non eleifend lectus velit eu metus. Pellentesque luctus tellus eu nisi hendrerit varius. Nullam facilisis, dolor in finibus elementum, justo dolor blandit felis, eget sodales arcu metus id turpis. Cras volutpat justo vitae ex bibendum tincidunt. Vestibulum in odio pretium nunc mollis condimentum id eget justo. Etiam vel pellentesque ligula, venenatis ornare libero.
  
  Donec dignissim ex vel fermentum rhoncus. Integer sit amet mauris eget leo rutrum mattis. Cras consectetur, tellus at eleifend eleifend, sapien metus rhoncus turpis, laoreet semper justo ligula vitae lacus. Curabitur fermentum nulla dignissim metus interdum aliquet. Nunc finibus velit tellus. Morbi eget venenatis libero. Cras sed vestibulum nunc. Donec sapien lorem, pulvinar non pharetra vitae, malesuada a leo. Proin fringilla, leo vel molestie imperdiet, enim lacus venenatis lacus, non pharetra odio massa et justo. Nam posuere augue sed ligula maximus hendrerit. Vestibulum suscipit et erat ut malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi vitae lacus at purus hendrerit commodo ultrices vel nunc. Aenean orci nunc, mollis ultrices nisl eu, consequat aliquam magna. Sed accumsan tortor sit amet nulla porttitor pharetra.
  
  Nulla et velit vulputate, accumsan diam ac, pharetra nunc. Cras molestie accumsan velit, rutrum commodo lectus elementum fringilla. Nullam a eleifend ante. Nulla ipsum libero, condimentum ut dui eget, sollicitudin vulputate risus. Nam tempus sit amet neque porttitor viverra. Curabitur euismod rutrum nulla, et maximus nibh tincidunt auctor. Sed laoreet ornare luctus. Praesent lacus nulla, malesuada vitae molestie eget, molestie eleifend lorem.
  
  Morbi auctor facilisis ligula, in bibendum leo accumsan non. Aliquam semper, turpis non eleifend tincidunt, eros tortor placerat diam, ac sodales ipsum nulla et ante. Sed lacinia, justo in eleifend lobortis, arcu nulla convallis est, quis volutpat augue lectus quis mi. Donec interdum arcu tincidunt elit ultricies, at aliquam diam tempor. Nunc id tempus turpis. Duis tincidunt mauris in est blandit, id pharetra massa blandit. Proin id mi euismod dolor venenatis vehicula et vel mauris.
  
  Donec rutrum, nunc at pulvinar facilisis, mauris eros tincidunt elit, feugiat commodo sapien tortor ut leo. Maecenas sit amet rhoncus libero, consequat vulputate tortor. Fusce facilisis malesuada leo, sed mollis magna euismod quis. Quisque sollicitudin viverra mi, sed fringilla lacus ultricies quis. Duis interdum neque eu lacus mattis tempus ac in arcu. Vestibulum gravida nisl urna, vitae bibendum sapien dapibus eu. In interdum felis bibendum sem vehicula, sed pharetra lorem molestie. Donec vitae bibendum dui, sed sodales purus. Maecenas feugiat tempor arcu vitae elementum. Nam pulvinar commodo urna, a vehicula leo lobortis id. Vestibulum pellentesque mollis odio, sed facilisis purus suscipit sed. Morbi cursus odio nec arcu vehicula, non pharetra lorem sollicitudin. Pellentesque efficitur in augue quis blandit. Nam sed neque tempus, molestie massa at, pharetra libero.
  
  Generated 50 paragraphs, 4899 words, 32972 bytes of Lorem Ipsum',
	'Lorem', --Title
	'', --Photo
	'£acina', --Language
	2022, --Year
	'Internet', --PubHouse
	'Book', --Type
	'rafalmalinowski', --OwnerId
	1, --ShelfId
	0, --IsPrivate
	NULL, --MaxPlayers
	NULL, --MinAge
	NULL, --MinPlayers
	NULL, --Length
	1000000, --Pages
	0, --IsBorrowed
	1, --IsToLet
	NULL --LoanId
)

SELECT * FROM Items