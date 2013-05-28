//
//  HeritageTableViewViewController.m
//  IndiaApp
//
//  Created by Fnu, Rohit on 5/27/13.
//  Copyright (c) 2013 Fnu, Rohit. All rights reserved.
//

#import "HeritageTableViewViewController.h"

@interface HeritageTableViewViewController ()

@end

@implementation HeritageTableViewViewController
@synthesize tools;
NSMutableArray *photos;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ShowPhoto"]) {
        DisplayViewController *dvc = [segue destinationViewController];
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        Heritage *c = [photos objectAtIndex:path.row];
        [dvc setCurrentPhoto:c];
    }
    


}
- (void)viewDidLoad
{
    [super viewDidLoad];
    photos = [[NSMutableArray alloc]init];
    Heritage *pic =[[Heritage alloc]init];
    [pic setName:@"Kaziranga Wild Life"];
    [pic setFilename:@"Kaziranga Wild Life Sanctuary, Assam.png"];
    [pic setNotes:@"Kaziranga Wild Life Sanctuary, located in the Northeastern state of Assam in the flood plains of the Brahmaputra River’s south bank, was declared a World Heritage Site by UNESCO in 1985 for its unique natural environment. It was first established as a reserved forest in 1908 to protect the dwindling species of Rhinoceros. It underwent several transformations over the years, as The Kaziranga Game Sanctuary in 1916, renamed as Kaziranga Wild Life Sanctuary in 1950, and declared a national park in 1974. The park, which covers an area of 42,996 hectares (106,250 acres), has the distinction of being home to the world's largest population of the Great Indian One-Horned Rhinoceros. There are many other mammals and birds species in the sanctuary."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Manas Wild Life"];
    [pic setFilename:@"B.png"];
    [pic setNotes:@"Manas Wildlife Sanctuary, located in the Northeastern state of Assam covers an area of 50,000 hectares (120,000 acres) in the plains of the Manas River’s in the foot hills of the Himalayas on the border with Bhutan (contiguous with the Manas Wild Life Sanctuary in Bhutan It was inscribed as a World Heritage Site by UNESCO in 1985 for its unique natural environment. The sanctuary is the habitat of several species of plants and 21 most threatened species of mammals, out of 55 mammal species in the sanctuary, 36 reptile species, 3 amphibians and 350 species of birds; endangered species include Tiger, pygmy hog, clouded leopard, sloth bear, Indian Rhinoceros, wild buffaloes (the only pure stain of buffaloes in India), Indian Elephants, golden langur and Bengal Florican. In 1907, it was declared a reserve forest, was declared a sanctuary in 1928, and became a Tiger Reserve in 1973 as part of “Project Tiger” and a World Heritage Site in December 1985. Plants listed under the broad category of Burma Monsoon Forests include 285 species of Dicotyledons and 98 species of Monocotyledons. Since 1992, the sanctuary has been listed under “The World Heritage in Danger”"];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Mahabodhi Temple"];
    [pic setFilename:@"C.png"];
    [pic setNotes:@"Mahabodhi Temple Complex at Bodh Gaya (Buddha Gaya), spread over an area of 4.86 hectares (12.0 acres) was inscribed in the UNESCO World Heritage List i as a unique property of cultural and archaeological importance. The first temple was built by Emperor Ashoka in the 3rd century BC (260 BC) around the Bodhi Tree Ficus religiosa (to the west of the temple). However, the temples seen now are dated between 5th and 6th centuries AD. The structures have been built in bricks. Revered and sanctified as the place where Siddhartha Gautama Buddha was enlightened in 531 BC at age 35, and then propagated his divine knowledge of Buddhism to the world, it has been the ultimate temple for reverential worship, over the last several centuries, by Buddhists of all denominations, from all over the world who visit on pilgrimage. The main temple is 50 m in height, built in Indian architectural style, dated between 5th and 6th centuries, and it is the oldest temple in the Indian sub-continent built during the “Golden Age” of Indian culture credited to the Gupta period. Sculpted balustrades of the Ashokan times (3rd century BC) are preserved in the Archaeological Museum located within the temple complex."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Humayun’s Tomb"];
    [pic setFilename:@"D.png"];
    [pic setNotes:@"Humayun’s Tomb, Delhi, the first tomb built with several innovations, set at the centre of luxurious gardens with water channels, was the precursor monument to the Taj Mahal (built a century later). It was built in 1570 and was inscribed as a UNESCO World Heritage Monument in 1993 for its cultural importance. It was built in 1569–1570 by the second Mughal Emperor Humayun’s widow Biga Begum (Hajji Begum). Its architecture is credited to Mirza Ghiyath and its Mughal architectural style has been acclaimed as the “necropolis of the Mughal dynasty” for its double domed elevation provided with Chhatris. Apart from the tomb of Humayun, the funerary also has 150 tombs of various members of the royal family. The tomb is built with a char-bagh (fourfold) layout with two gates, one on the south and the other on the west. It has a number of water channels, a pavilion and a bath. The tomb set on an irregular octagonal plinth has a raised dome of 42.5 m height, covered by marble slabs and decorated with chhatris"];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Qutb Minar"];
    [pic setFilename:@"E.png"];
    [pic setNotes:@"Qutb Minar and its Monuments, Delhi, located to the south of Delhi, is a complex with the Qutb Minar as the centre piece, which is a red sandstone tower of 72.5 metres (238 ft) height with a base of 14.32 metres (47.0 ft) reducing to 2.75 metres (9.0 ft) diameter at the top. Built in the beginning of the 13th century, the complex of structures comprises itineraries, the Alai Darwaza Gate (1311), the Alai Minar (an incomplete mound of the intended Minar or tower), the Qubbat-ul-Islam Mosque (the earliest existing mosque in India), the tomb of Iltumish, and an Iron Pillar. The complex is a testimony to the Islamic depredations during the period as seen from the materials used for building the complex which are those that were removed after destroying Hindu and Jain temples; a shining iron pillar of 7.02 metres (23.0 ft) height (without any trace of rusting) erected at the centre of the complex, with inscriptions in Sanskrit, of the Chandra Gupta II period is a moot witness. History records its construction, initially by Qutubuddin Aibak in 1192, its completion by Iltumish (1211–36) and again by Alauddin Khalji (1296–1316). It underwent several renovations by subsequent rulers, following damage to the structures due to lightning. It was inscribed under the UNESCO World Heritage List under category iv for its unique representation of the Islamic architectural and artistic excellence."];
    [photos addObject:pic];

    
    pic =[[Heritage alloc]init];
    [pic setName:@"Red Fort Complex"];
    [pic setFilename:@"F.png"];
    [pic setNotes:@"Red Fort Complex, also known as Lal Qila is a palace fort built in the 17th century by Shahjahan (1628–58), the fifth Mughal Emperor as part of his new capital city of Shahjahanabad. located to the north of Delhi. It represents the glory of the Mughal rule and is considered the Highpoint of Mughal architectural, artistic aesthetic creativity. The architectural design of the structures built within the fort represents a blend of Persian, Timuri and Indian architectural styles; Isfahan, the Persian Capital is said to have provided the inspiration to build the Red Fort Complex. The planning and design of this complex, in a geometrical grid plan with pavilion structures, was the precursor of several monuments which were built later in Rajasthan, Delhi, Agra and other places. The palace complex has been fortified by an enclosure wall built with red sand stone (hence the name Red Fort). It is adjacent to the Salimgarh Fort on its north built by Islam Shah Suri in 1546 and is now part of the Red Fort Complex (area covered 120 acres) under the revised inscription of the UNESCO World Heritage List under categories (i),(ii), (iii) and (vi). Built between 1639 and 1648, enclosing an area of size 656 metres (2,152 ft)x328 metres (1,076 ft) and raising to a height of 23 metres (75 ft) on the right bank of the Yamuna River, it is linked to the Salimgarh Fort through a bridge over an old river channel, now a city road. The palace within the fort complex, located behind the Diwan-i-Am (Hall of Public Audience), comprises a series of richly engraved marble palace pavilions, interconnected by water channels called the ‘Nehr-i-Behishit’ meaning the “Stream of Paradise”, the Diwane-i-khas (Private audience hall), several other essential private structures, and also the Moti Masjid (Pearl Mosque built by Emperor Aurangzeb)."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Churches and Convents"];
    [pic setFilename:@"G.png"];
    [pic setNotes:@"Churches and Convents of Goa are monuments inscribed by UNESCO under the World Heritage List in 1986 as cultural property, under criteria (ii),(iv) and (vi), which were built by the Portuguese colonial rulers of Goa between 16th and 18th centuries. These monuments are mainly in the former capital of Velha Goa. Velha Goa is also known Goem, Pornem Gõy, Adlem Gõi, Old Goa or Saibachem Gõi, where Saib or Goencho Saib refers to Saint Francis Xavier. The most significant of these monuments is the Basilica of Bom Jesus, which enshrines the tomb containing the relics of St. Francis Xavier. These monuments of Goa, known as the “Rome of the Orient,” were established by different Catholic religious orders, from 25 November 1510 onwards. There were originally 60 churches of which some of the surviving monuments in the city of Velha Goa are the Saint Catherine's Chapel (where one of the first, probably only besides the Angediva Island, Latin rite mass in Asia, was held on Saint Catherine's feast day- i.e. 25 November 1510), the Church and Convent of Saint Francis of Assisi, the Sé Catedral de Santa Catarina dedicated to Saint Catherine of Alexandria, the Jesuit Borea Jezuchi Bajilika or Basílica do Bom Jesus, Igreja de São Francisco de Assis (also known as Asisachea Sanv Fransiskachi Igorz), the Theatine Igreja da Divina Providência (São Caetano) (also known as San Kaitanachi Igorz or the church of Saint Cajetan and its seminary (resembles Basilica Papale di San Pietro in Vaticano), Igreja de Nossa Senhora do Rosário (also known as Ruzai Saibinnichi Igorz (Church of Our Lady of the Rosary)) and Igreja de Santo Agostinho (also known as Sanv Agustineachi Igorz (Church of Saint Augustine) (only the belfry stands today and some graves, including the Georgian Orthodox Church Saint, Saint Ketevan, who was also a queen). These monuments were forerunners in establishing an ensemble of the Manueline, Mannerist and Baroque art forms in the Asian region. The monuments are built in laterites and walls plastered with limestone mortar mixed with broken shells. For this reason, the monuments need constant maintenance to prevent deterioration due to monsoon climatic conditions, and thus keep them in good shape."];
    [photos addObject:pic];
    
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Champaner-Pavagadh"];
    [pic setFilename:@"H.png"];
    [pic setNotes:@"Champaner-Pavagadh Archaeological Park is situated in Panchmahal district in Gujarat, India. It was inscribed as a UNESCO World Heritage Site in 2004 as a natural site. There is a concentration of largely unexcavated archaeological, historic and living cultural heritage properties cradled in an impressive landscape which includes prehistoric (chalcolithic) sites, a hill fortress of an early Hindu capital, and remains of the 16th century capital of the state of Gujarat. The site also includes, among other vestiges, fortifications, palaces, religious buildings, residential precincts, agricultural structures and water installations, from the 8th to the 14th centuries. The Kalikamata Temple on top of the Pavagadh Hill is considered to be an important shrine, attracting large numbers of pilgrims throughout the year. The site is the only complete and unchanged Islamic pre-Mughal city."];
    [photos addObject:pic];
    
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Monuments at Hampi"];
    [pic setFilename:@"I.png"];
    [pic setNotes:@"The Group of Monuments at Hampi comprise a sombre but ostentatious Hampi town, on the banks of the river Tungabhadra in Karnataka. Hampi subsumes the ruins of Vijayanagara, which was the former capital of the powerful Vijayanagara Empire. Dravidian temples and palaces abound in Hampi. These won the admiration of travellers between the 14th and 16th centuries. Hampi, as an important Hindu religious centre, has the Virupaksha Temple (different from Pattadakal's Virupaksha Temple) and several other monuments, which are part of the cultural heritage site inscribed under category (i), (iii) and (iv) in the UNESCO World Heritage List."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Monuments in Pattadakal"];
    [pic setFilename:@"J.png"];
    [pic setNotes:@"The Group of monuments in Pattadakal designated under UNESCO World Heritage List, in 1987, cover a remarkable series of nine Hindu temples, as well as a Jain sanctuary in northern Karnataka. In this group of temples, the Virupaksha Temple, built in c. 740 by Queen Lokamahadevi to commemorate her husband's (King Vikramaditya II) victory over the Pallava kings from the south, is considered the most outstanding architectural edifice (This is different from the Virupaksha Temple at Hampi.) These are a remarkable combination of temples built by the Chalukya Dynasty in the 6th - 8th century at Aihole, Badami and Pattadakal, the latter city was known as the Crown Rubies. The temples represent a remarkable fusion of the architectural features of northern (Nagara) and southern (dravida) India. Pattadakal is considered a Hindu holy city and within the heritage complex are eight temples dedicated to Shiva, a ninth shaivite sanctuary called the Papanatha Temple, and a Jaina Temple."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Buddhist Monuments"];
    [pic setFilename:@"K.png"];
    [pic setNotes:@"Buddhist Monuments at Sanchi, located 45 kilometres (28 mi) from Bhopal in the Indian state of Madhya Pradesh are a group of Buddhist monuments dated between 200 BC and 100BC. The site, however, has been conjectured to have been developed in the 3rd century BC, when Emperor Ashoka of the Mauryan Empire ruled. The principal monument is Stupa 1 dated to the 2nd century and 1st century BC. These Buddhist sanctuaries were active Buddhist religious monuments, which flourished till 12th century AD. The sanctuary has a plethora of monolithic pillars, palaces, temples and monasteries in different status of preservation. It was inscribed as a World Heritage Site by UNESCO on January 24, 1989 for its unique cultural importance. It was discovered only in 1818 in a deserted state of preservation. Archaeological excavations undertaken thereafter revelled 50 unique monuments."];
    [photos addObject:pic];
   
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Rock Shelters"];
    [pic setFilename:@"L.png"];
    [pic setNotes:@"Rock Shelters of Bhimbetka described in the UNESCO Inscription as “the site complex … a magnificent repository of rock paintings within natural rock shelters” is located in the foothills of the Vindhya range of hills in the Central Indian state of Madhya Pradesh. It is spread in sandstone formations extending over an area of 1893 ha with a buffer zone 10,280 hectares (25,400 acres). The rock shelters, discovered only in 1957, comprise a group of “five clusters of rock shelters” with paintings that are inferred to date from the “Mesolithic period right through to the Historical period”, with the 21 villages surrounding them reflecting the traditions displayed in the rock paintings. The unique rock art has been discovered in 400 painted shelters spread over an area of 1,892 ha amidst dense forest with high diversity of flora and fauna, with one of the shelters dated from 100,000 BC (Late Acheulian) to 1000 AD. It was inscribed as a World Heritage Site by UNESCO in 2003 as a unique cultural property representing a convergence displayed in the art form between the people and the landscape with links to the hunting gathering economy of the past."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Khajuraho"];
    [pic setFilename:@"M.png"];
    [pic setNotes:@"Khajuraho Group of Monuments attributed to the Chandela dynasty which, under sovereignty of Gurjar Pratihars reached its glory between 950 AD and 1050 AD. The ensemble of monuments that have survived belong to the Hindu and Jain Religious practices with striking fusion of sculpture and architecture; the best example of this outstanding feature is seen in the Kandariya Temple. Of the 85 temples built, only 22 temples have survived in an area of 6sqkm, which represents the Chandela period of the 10th century. Located in the Indian state of Madhya Pradesh, it was inscribed by UNESCO as a World Heritage Site, a cultural property on October 15, 1982 for its unique original artistic creation and proof of the Chandela Culture that existed prior to the Muslim invasion of India in the early 12th century."];
    [photos addObject:pic];
    
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Ajanta Caves"];
    [pic setFilename:@"N.png"];
    [pic setNotes:@"Ajanta Caves listed under UNESCO World Heritage as a cultural heritage site, are Buddhist caves that were built in two phases, the first phase was from 2nd century BC. In the second phase, further additions were made during the 5th and 6th centuries AD of the Gupta period. The caves depict richly decorated paintings, frescoes, which are reminiscent of the Sigiriya paintings in Sri Lanka and sculptures. As a whole, there are 31 rock-cut cave monuments which are unique representations of the religious art of Buddhism."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Ellora Caves"];
    [pic setFilename:@"O.png"];
    [pic setNotes:@"Ellora Caves also known as Ellora Complex are a cultural mix of religious arts of Buddhism, Hinduism and Jainism. These are 34 monasteries and temples sculpted contiguously into rock walls of a high basalt cliff, which are seen along a length of 2 kilometres (1.2 mi). Dated to 600 to 1000 AD, they are a reflection of artistic creation of the ancient civilization of India. This cultural property has been inscribed under the UNESCO World Heritage List.."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Elephanta Caves"];
    [pic setFilename:@"P.png"];
    [pic setNotes:@"The Elephanta Caves are a network of sculpted caves located on Elephanta Island, or Gharapuri (literally the city of caves) in Mumbai Harbour, 10 kilometres (6.2 mi) to the east of the city of Mumbai. The island, located on an arm of the Arabian Sea, consists of two groups of caves — the first is a large group of five Hindu caves, the second, a smaller group of two Buddhist caves. The Hindu caves contain rock cut stone sculptures, representing the Shaiva Hindu sect, dedicated to the god Shiva. The rock-cut architecture of the caves is dated to between the 5th and 8th centuries, although the identity of the original builders is still a subject of debate. The caves are hewn from solid basalt rock. Renovated in the 1970s, the caves were designated an UNESCO World Heritage Site in 1987 to preserve the artwork."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Chhatrapati Shivaji"];
    [pic setFilename:@"Q.png"];
    [pic setNotes:@"Chhatrapati Shivaji Terminus is a historic railway station in Mumbai, which serves as the headquarters of the Central Railways. It is one of the busiest railway stations in India, and serves Central Railway trains terminating in Mumbai as well as the Mumbai Suburban Railway. The station was designed by Frederick William Stevens, a consulting architect in 1887–1888. It took ten years to complete and was named Victoria Terminus in honour of the Queen and Empress Victoria; it was opened on the date of her Golden Jubilee in 1887. This famous architectural landmark in Gothic style was built as the headquarters of the Great Indian Peninsular Railway. In 1996, in response to demands by the Shiv Sena and in keeping with the policy of renaming locations with Indian names, the station was renamed by the state government after Chatrapati Shivaji, the famed 17th century Maratha king. On 2 July 2004, the station was nominated as a World Heritage Site by the World Heritage Committee of UNESCO."];
    [photos addObject:pic];

    
    
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Sun Temple"];
    [pic setFilename:@"R.png"];
    [pic setNotes:@"Konark Sun Temple is a 13th-century Sun Temple (also known as the Black Pagoda), at Konark, in Orissa. Located on the east coast of the Bay of Bengal in the Mahanadi Delta, it is built in the form of the chariot of Surya (Arka), the sun god with 24 wheels, and is heavily decorated with symbolic stone carvings and led by a team of six horses. It was constructed from oxidizing weathered ferruginous sandstone by King Narasimhadeva I of the Eastern Ganga Dynasty. The temple is one of the most renowned temples in India and is a World Heritage Site inscribed in 1984 as cultural property under categories (i), (iii) and (vi)."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Keoladeo National Park"];
    [pic setFilename:@"S.png"];
    [pic setNotes:@"Keoladeo National Park in Bharatpur is located within the Indus-Ganges Monsoon Forest Biogeographical Province. It extends over an area of 2,783 hectares (6,880 acres). It was declared a national park in 1982. Earlier to this, in 1900, it was a duck-hunting reserve of the Maharajasof Bharatpur, then became a bird sanctuary in 1956, with the Maharajas exercising shooting rights till 1972, and was recorded as a Ramsar Wetland site, in 1981. It was inscribed in the UNESCO World Heritage List in 1985 under category (x), as a natural property. The area of the wetland of the park shrinks to 1,000 hectares (2,500 acres) during most part of the year. It has a human-built environment created partly by embankments dividing the area into 10 units, and has sluice controlled arrangement to maintain the water level. It is famous for 364 species of wintering birds that flock in large numbers, arriving from distant countries of Afghanistan, Turkmenistan, China and Siberia. It is surrounded by 17 villages and the Bharatpur city."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Jantar Mantar"];
    [pic setFilename:@"T.png"];
    [pic setNotes:@"The Jantar Mantar in Jaipur is a collection of architectural astronomical instruments, built by Maharaja (King) Jai Singh II at his then new capital of Jaipur between 1727 and 1734. It is modelled after the one that he had built at the Mughal capital of Delhi. He had constructed a total of five such facilities at different locations, including the ones at Delhi and Jaipur. The Jaipur observatory is the largest and best preserved of these and has a set of some 20 main fixed instruments built in masonry. It has been inscribed as cultural property on the UNESCO World Heritage List as an expression of the astronomical skills and cosmological concepts of the court of a scholarly prince at the end of the Mughal period."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Chola Temples"];
    [pic setFilename:@"U.png"];
    [pic setNotes:@"The Great Living Chola Temples, built by kings of the Chola Empire stretched over all of Tamil Nadu. This cultural heritage site includes three great temples of 11th and 12th century namely, the Brihadisvara Temple at Thanjavur, the Brihadisvara Temple at Gangaikondacholisvaram and the Airavatesvara Temple at Darasuram. The Temple of Gangaikondacholisvaram, built by Rajendra I, was completed in 1035. Its 53 metres (174 ft) vimana (sanctum tower) has recessed corners and a graceful upward curving movement, contrasting with the straight and severe tower at Thanjavur. The Airavatesvara temple complex, built by Rajaraja II, at Darasuram features a 24 metres (79 ft) vimana and a stone image of Shiva. The temples testify to the brilliant achievements of the Chola in architecture, sculpture, painting and bronze casting. The site was inscribed under UNESCO World Heritage List in 2004 as Cultural heritage under criteria (ii) and (iii)."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Mahabalipuram Monuments"];
    [pic setFilename:@"V.png"];
    [pic setNotes:@"The Group of Monuments at Mahabalipuram, in Tamilnadu, about 58 km from Chennai, were built by the Pallava kings in the 7th and 8th centuries. The town is said to have gained prominence under the rule of Mamalla. These monuments have been carved out of rock along the Coromandel coast. The temple town has approximately forty monuments, including the largest open-air bas-relief in the world. It was inscribed under the UNESCO World Heritage list in 1984 as a cultural heritage under categories (i)(ii)(iii)(vi). The monuments inscribed are the Ratha Temples: Temples in the form of chariots, Mandapas, 11 Cave sanctuaries covered with bas-reliefs, rock relief of Descent of the Ganges, which is the largest open air Rock relief also known as Arjuna's Penance or Bhagiratha's Penance."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Agra Fort"];
    [pic setFilename:@"W.png"];
    [pic setNotes:@"Agra Fort, also known as the Red Fort of Agra, which represented Mughal opulence and power as the centre piece of their empire was inscribed in the UNESCO World Heritage List in 1982, under Category iii as a cultural monument. The fortress located on the right bank of the Yamuna River, built in red sandstone, covering a length of 2.5 kilometres (1.6 mi) and surrounded by a moat, encloses several palaces, towers and mosques. These were built from 16th century onwards till early 18th century, starting with Emperor Akbar's reign in the 16th century to that of Aurangzeb in the early part of the 18th century, including the contributions made during the reign of Jahangir and Shahjahan of the Moghul Rule in India; the impressive structures built within the precincts of the fort are the Khas Mahal, the Shish Mahal, Muhamman Burje (an octagonal tower), Diwan-i-Khas (1637), Diwan-i-Am, white marble mosque or the Pearl Mosque (built during 1646–1653) and the Nagina Masjid (1658–1707). These monuments are remarkable for the fusion of Persian art of the Timurid and the Indian art form. It is very close to the famous Taj Mahal with a buffer zone separating the two monuments."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Fatehpur Sikri"];
    [pic setFilename:@"X.png"];
    [pic setNotes:@"Fatehpur Sikri, the City of Victory, was built during the second half of the 16th century by the Mughal Emperor Akbar (1556–1605). It was the capital of the Empire and seat of the grand Mughal court, but only for 14 years. Despite bearing exceptional testimony to the Mughal civilization at the end of the 16th century, it had to be abandoned due to the twin reasons of lack of water and unrest in north-west India, leading the Emperor to shift the capital to Lahore. Akbar decided to construct it in 1571, on the same site where the birth of his son, the future Emperor Jahangir, was predicted by the wise saint Shaikh Salim Chisti (1480–1572). The work, supervised by the great Mughal himself, was completed in 1573. The complex of monuments and temples, all uniformly in Mughal architectural style, includes one of the largest mosques in India, the Jama Masjid, the Buland Darwaza, the Panch Mahal, and the Tomb of Salim Chishti. The English traveller Ralph Fitch considered the city in 1585 as 'considerably larger than London and more populous.' Its form and layout strongly influenced the evolution of Indian town planning, notably at Shahjahanabad (Old Delhi). The city has numerous other palaces, public buildings and mosques, as well as living areas for the court, the army, servants of the king and for an entire population whose history has not been recorded."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Taj Mahal"];
    [pic setFilename:@"Y.png"];
    [pic setNotes:@"Taj Mahal, one of the Seven Wonders of the World is a mausoleum – a funerary mosque. It was built by Emperor Shahjahan in memory of his third wife Begum Mumtaz Mahal who had died in 1631. It is a large edifice made in white marble in typical Mughal architecture, a style that combines elements from Persian, Islamic and Indian architectural styles. This much acclaimed masterpiece was built over a 16 year period between 1631 and 1648 under the Chief Architect Ustad Ahmad Lahauri supported by several thousand artisans under the guidance of an Imperial Committee. It was inscribed in the UNESCO World Heritage List in 1983, under Category i, as a cultural property/monument. It is set amidst vast Mughal Gardens, which cover 17 hectares (42 acres) of land on the right bank of the Yamuna River. It has an octagonal layout marked by four exclusive minarets at four corners with a pristine elevation of a central bulbous dome below which the tombs are laid in an underground chamber. Calligraphic inscriptions in-crusted in polychromatic pierra dura, decorative bands and floral arabesques glorify the monument's graphic beauty and provide a picture perfect impression to the viewers."];
    [photos addObject:pic];
    
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Mountain Railways"];
    [pic setFilename:@"Z.png"];
    [pic setNotes:@"The Mountain Railways of India represents a collective listing of the Darjeeling Himalayan Railway, the Nilgiri Mountain Railway and the Kalka-Shimla Railway under the UNESCO World Heritage Site. However, the Mountain Railways of India are five railway lines built in the mountains of India in the 19th and early 20th century, during the British Raj, which are run even today by the Indian Railways. Three out of these five railways, the Darjeeling Himalayan Railway (1881), the Kalka-Shimla Railway (1898) and the Kangra Valley Railway (1924), are located in the rugged hill regions of the Himalayas of Northern India and the other two are much further south in the Western Ghats; the Nilgiri Mountain Railway in Southern India, and the Matheran Hill Railway in Maharashtra. The World Heritage UNESCO recognition to three of the five Mountain Railways of India has been stated as for being outstanding examples of bold, ingenious engineering solutions for the problem of establishing an effective rail link through a rugged, mountainous terrain. The Darjeeling Himalayan Railway was recognized first in 1999, the Nilgiri Mountain Railway followed suite as an extension to the site in 2005, and in 2008 the Kalka–Shimla Railway was further added as an extension; and the three together have been titled as Mountain Railways of India under Criteria: ii, iv under the region in the Asia-Pacific. The claims of the Matheran Hill Railway, the fourth hill line, are pending acceptance by the international body."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Nanda Devi"];
    [pic setFilename:@"AA.png"];
    [pic setNotes:@"Nanda Devi and Valley of Flowers National Parks are nestled high in West Himalaya. Valley of Flowers National Park is renowned for its meadows of endemic alpine flowers and outstanding natural beauty. It is located in the Garhwal Himalaya of Chamoli District of Uttarakhand (formerly part of Uttar Pradesh). This richly diverse area is also home to rare and endangered animals, including the Asiatic black bear, snow leopard, brown bear and blue sheep. The gentle landscape of the Valley of Flowers National Park complements the rugged mountain wilderness of Nanda Devi National Park. Together, they encompass a unique transition zone between the mountain ranges of the Zanskar and Great Himalaya. The park stretches over an expanse of 87.5 km2 (33.8 sq mi). It was established as a national park on 6 November 1982. However, it was initially established as a game sanctuary on 7 January 1939. It was inscribed under the UNESCO World Heritage List in 1988 with extension in 2005 under category (vii) and (x).[64][65] Together, they comprise the Nanda Devi Biosphere Reserve, which is on the UNESCO World Network of Biosphere Reserves since 2004."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Sundarbans National Park"];
    [pic setFilename:@"BB.png"];
    [pic setNotes:@"The Sundarbans National Park, the largest estuarine mangrove forest in the world is a National Park, Tiger Reserve, UNESCO World Heritage Site and a Biosphere Reserve located in the Sundarbans Ganges river delta bordering the Bay of Bengal, in West Bengal. It is also on the UNESCO World Network of Biosphere Reserves. The Sundarbans as a whole encompasses 10,000 km2 (3,900 sq mi) of land and water, about 5,980 km2 (2,310 sq mi) in India and the balance is in Bangladesh. It is integral to the world's largest delta of 80,000 km2 formed from sediments deposited by the three great rivers, the Ganges, the Brahmaputra and the Meghna, which confluence in the Bengal Basin. The entire basin is traversed by a complex network of interconnecting waterways. Tidal waves as high 75 m are a regular feature here. Though, the history of protection in the area of Indian part of the Sundarbans dates back to 1878, it was declared as the core area of Sundarbans Tiger Reserve in 1973 and a wildlife sanctuary in 1977 of 133,000-hectare core area within the 258,500 hectares (639,000 acres) Sundarbans Tiger Reserve. On May 4, 1984 it was declared a National Park. It was inscribed on the UNESCO World Heritage list in 1987 as a natural property under category (ix) and (x). This region is densely covered by mangrove forests, and is one of the largest reserves for the Bengal tiger. It is also home to a variety of bird, reptile and invertebrate species, including the salt-water crocodile."];
    [photos addObject:pic];
    
    pic =[[Heritage alloc]init];
    [pic setName:@"Western Ghats"];
    [pic setFilename:@"CC.png"];
    [pic setNotes:@"Western Ghats, also known as the Sahyadri Mountains, a mountain range along the western side of India and one of the world’s ten Hottest biodiversity hotspots (sub cluster nomination). A total of thirty nine properties (including national parks, wildlife sanctuaries and reserve forests) were designated as world heritage sites - twenty in the state of Kerala, ten in Karnataka, five in Tamil Nadu and four in Maharashtra."];
    [photos addObject:pic];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations."
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [photos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PhotoCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier ];
    
    if (cell == nil){
    
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.font=[UIFont systemFontOfSize:15.0];
    NSString *image = [[NSBundle mainBundle] pathForResource:@"flag" ofType:@"png"];
    UIImage *myimage =[[UIImage alloc]initWithContentsOfFile:image];
    [[cell imageView]setImage:myimage];
    Heritage *current = [photos objectAtIndex:indexPath.row];
    [cell.textLabel setText:[current name]];
    
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)Dismiis:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
