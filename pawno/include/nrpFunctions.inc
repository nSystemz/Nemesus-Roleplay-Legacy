/*
native IsGateAdmin(playerid);
native DeleteOfflineInfoEx(playerid);
native DeleteOfflineInfo(oi);
native CreateOfflineInfo(playerid);
native StopCountdown();
native StartCountdown(minuten,sekunden,grund[]);
native TextDrawInit();
native PlayerTextDrawInit(playerid);
native PreloadAnims(playerid);
native rankname(rank, &first, &second);
native get_rank(const cards[]);
*/


//Poker
stock get_rank(const cards[]) // fast five card hand eval :)
{
	new flushes = 0, getcolor = Color_Mask[cards[0]] | Color_Mask[cards[1]] | Color_Mask[cards[2]] | Color_Mask[cards[3]] | Color_Mask[cards[4]];
	if((getcolor & (getcolor - 1)) == 0)
	{
		switch(Bynary_Mask[cards[0]] | Bynary_Mask[cards[1]] | Bynary_Mask[cards[2]] | Bynary_Mask[cards[3]] | Bynary_Mask[cards[4]])
		{
			case 7936:      { return 1; } // ROYAL_FLUSH;
			case 4111:      { return 2; } // Straight Flush
			case 3968:      { return 3; } // Straight Flush
			case 1984:      { return 4; } // Straight Flush
			case 992:       { return 5; } // Straight Flush
			case 496:       { return 6; } // Straight Flush
			case 248:       { return 7; } // Straight Flush
			case 124:       { return 8; } // Straight Flush
			case 62:        { return 9; } // Straight Flush
			case 31:        { return 10; } // Straight Flush
			default: flushes = 5863;
		}
	}
	switch(Prim_Mask[cards[0]] * Prim_Mask[cards[1]] * Prim_Mask[cards[2]] * Prim_Mask[cards[3]] * Prim_Mask[cards[4]])
	{
		case 104553157: 		{ return 11; } // Four Aces
		case 87598591:  		{ return 12; }
		case 81947069:  		{ return 13; }
		case 64992503:  		{ return 14; }
		case 53689459:  		{ return 15; }
		case 48037937:  		{ return 16; }
		case 36734893:  		{ return 17; }
		case 31083371:  		{ return 18; }
		case 19780327:  		{ return 19; }
		case 14128805:  		{ return 20; }
		case 8477283:   		{ return 21; }
		case 5651522:   		{ return 22; }
		case 76840601:  		{ return 23; } // Four Kings
		case 58098991:  		{ return 24; }
		case 54350669:  		{ return 25; }
		case 43105703:  		{ return 26; }
		case 35609059:  		{ return 27; }
		case 31860737:  		{ return 28; }
		case 24364093:  		{ return 29; }
		case 20615771:  		{ return 30; }
		case 13119127:  		{ return 31; }
		case 9370805:   		{ return 32; }
		case 5622483:   		{ return 33; }
		case 3748322:   		{ return 34; }
		case 37864361:  		{ return 35; } // Four Queens
		case 34170277:  		{ return 36; }
		case 26782109:  		{ return 37; }
		case 21240983:  		{ return 38; }
		case 17546899:  		{ return 39; }
		case 15699857:  		{ return 40; }
		case 12005773:  		{ return 41; }
		case 10158731:  		{ return 42; }
		case 6464647:   		{ return 43; }
		case 4617605:   		{ return 44; }
		case 2770563:   		{ return 45; }
		case 1847042:   		{ return 46; }
		case 28998521:  		{ return 47; } // Four Jacks
		case 26169397:  		{ return 48; }
		case 21925711:  		{ return 49; }
		case 16267463:  		{ return 50; }
		case 13438339:  		{ return 51; }
		case 12023777:  		{ return 52; }
		case 9194653:   		{ return 53; }
		case 7780091:   		{ return 54; }
		case 4950967:   		{ return 55; }
		case 3536405:   		{ return 56; }
		case 2121843:   		{ return 57; }
		case 1414562:   		{ return 58; }
		case 11473481:  		{ return 59; } // Four Tens
		case 10354117:  		{ return 60; }
		case 8675071:   		{ return 61; }
		case 8115389:   		{ return 62; }
		case 5316979:   		{ return 63; }
		case 4757297:   		{ return 64; }
		case 3637933:   		{ return 65; }
		case 3078251:   		{ return 66; }
		case 1958887:   		{ return 67; }
		case 1399205:   		{ return 68; }
		case 839523:    		{ return 69; }
		case 559682:   		 	{ return 70; }
		case 5343161:   		{ return 71; } // Four Nines
		case 4821877:   		{ return 72; }
		case 4039951:   		{ return 73; }
		case 3779309:   		{ return 74; }
		case 2997383:   		{ return 75; }
		case 2215457:   		{ return 76; }
		case 1694173:   		{ return 77; }
		case 1433531:   		{ return 78; }
		case 912247:    		{ return 79; }
		case 651605:    		{ return 80; }
		case 390963:    		{ return 81; }
		case 260642:    		{ return 82; }
		case 3424361:   		{ return 83; } // Four Eights
		case 3090277:   		{ return 84; }
		case 2589151:  		 	{ return 85; }
		case 2422109:   		{ return 86; }
		case 1920983:   		{ return 87; }
		case 1586899:   		{ return 88; }
		case 1085773:   		{ return 89; }
		case 918731:    		{ return 90; }
		case 584647:    		{ return 91; }
		case 417605:    		{ return 92; }
		case 250563:    		{ return 93; }
		case 167042:    		{ return 94; }
		case 1171001:   		{ return 95; } // Four Sevens
		case 1056757:   		{ return 96; }
		case 885391:    		{ return 97; }
		case 828269:    		{ return 98; }
		case 656903:    		{ return 99; }
		case 542659:    		{ return 100; }
		case 485537:    		{ return 101; }
		case 314171:    		{ return 102; }
		case 199927:    		{ return 103; }
		case 142805:    		{ return 104; }
		case 85683:             { return 105; }
		case 57122:             { return 106; }
		case 600281:    		{ return 107; } // Four Sixes
		case 541717:    		{ return 108; }
		case 453871:   		 	{ return 109; }
		case 424589:    		{ return 110; }
		case 336743:    		{ return 111; }
		case 278179:    		{ return 112; }
		case 248897:    		{ return 113; }
		case 190333:    		{ return 114; }
		case 102487:    		{ return 115; }
		case 73205:             { return 116; }
		case 43923:             { return 117; }
		case 29282:             { return 118; }
		case 98441:             { return 119; } // Four Fives
		case 88837:             { return 120; }
		case 74431:             { return 121; }
		case 69629:             { return 122; }
		case 55223:             { return 123; }
		case 45619:             { return 124; }
		case 40817:             { return 125; }
		case 31213:             { return 126; }
		case 26411:             { return 127; }
		case 12005:             { return 128; }
		case 7203:              { return 129; }
		case 4802:              { return 130; }
		case 25625:             { return 131; } // Four Fours
		case 23125:             { return 132; }
		case 19375:             { return 133; }
		case 18125:             { return 134; }
		case 14375:             { return 135; }
		case 11875:             { return 136; }
		case 10625:             { return 137; }
		case 8125:              { return 138; }
		case 6875:              { return 139; }
		case 4375:              { return 140; }
		case 1875:              { return 141; }
		case 1250:              { return 142; }
		case 3321:              { return 143; } // Four Treys
		case 2997:              { return 144; }
		case 2511:              { return 145; }
		case 2349:              { return 146; }
		case 1863:              { return 147; }
		case 1539:              { return 148; }
		case 1377:              { return 149; }
		case 1053:              { return 150; }
		case 891:               { return 151; }
		case 567:               { return 152; }
		case 405:               { return 153; }
		case 162:               { return 154; }
		case 656:               { return 155; } // Four Deuces
		case 592:               { return 156; }
		case 496:               { return 157; }
		case 464:               { return 158; }
		case 368:               { return 159; }
		case 304:               { return 160; }
		case 272:               { return 161; }
		case 208:               { return 162; }
		case 176:               { return 163; }
		case 112:               { return 164; }
		case 80:                { return 165; }
		case 48:                { return 166; }

		case 94352849:  { return 167; } // Aces Full over Kings
		case 66233081:  { return 168; } // Aces Full over Queens
		case 57962561:  { return 169; } // Aces Full over Jacks
		case 36459209:  { return 170; } // Aces Full over Tens
		case 24880481:  { return 171; } // Aces Full over Nines
		case 19918169:  { return 172; } // Aces Full over Eights
		case 11647649:  { return 173; } // Aces Full over Sevens
		case 8339441:   { return 174; } // Aces Full over Sixes
		case 3377129:   { return 175; } // Aces Full over Fives
		case 1723025:   { return 176; } // Aces Full over Fours
		case 620289:    { return 177; } // Aces Full over Treys
		case 275684:    { return 178; } // Aces Full over Deuces

		case 85147693:  { return 179; } // Kings Full over Aces
		case 48677533:  { return 180; } // Kings Full over Queens
		case 42599173:  { return 181; } // Kings Full over Jacks
		case 26795437:  { return 182; } // Kings Full over Tens
		case 18285733:  { return 183; } // Kings Full over Nines
		case 14638717:  { return 184; } // Kings Full over Eights
		case 8560357:   { return 185; } // Kings Full over Sevens
		case 6129013:   { return 186; } // Kings Full over Sixes
		case 2481997:   { return 187; } // Kings Full over Fives
		case 1266325:   { return 188; } // Kings Full over Fours
		case 455877:    { return 189; } // Kings Full over Treys
		case 202612:    { return 190; } // Kings Full over Deuces

		case 50078671:  { return 191; } // Queens Full over Aces
		case 40783879:  { return 192; } // Queens Full over Kings
		case 25054231:  { return 193; } // Queens Full over Jacks
		case 15759439:  { return 194; } // Queens Full over Tens
		case 10754551:  { return 195; } // Queens Full over Nines
		case 8609599:   { return 196; } // Queens Full over Eights
		case 5034679:   { return 197; } // Queens Full over Sevens
		case 3604711:   { return 198; } // Queens Full over Sixes
		case 1459759:   { return 199; } // Queens Full over Fives
		case 744775:    { return 200; } // Queens Full over Fours
		case 268119:    { return 201; } // Queens Full over Treys
		case 119164:    { return 202; } // Queens Full over Deuces

		case 40997909:  { return 203; } // Jacks Full over Aces
		case 33388541:  { return 204; } // Jacks Full over Kings
		case 23437829:  { return 205; } // Jacks Full over Queens
		case 12901781:  { return 206; } // Jacks Full over Tens
		case 8804429:   { return 207; } // Jacks Full over Nines
		case 7048421:   { return 208; } // Jacks Full over Eights
		case 4121741:   { return 209; } // Jacks Full over Sevens
		case 2951069:   { return 210; } // Jacks Full over Sixes
		case 1195061:   { return 211; } // Jacks Full over Fives
		case 609725:    { return 212; } // Jacks Full over Fours
		case 219501:    { return 213; } // Jacks Full over Treys
		case 97556:             { return 214; } // Jacks Full over Deuces

		case 20452727:  { return 215; } // Tens Full over Aces
		case 16656623:  { return 216; } // Tens Full over Kings
		case 11692487:  { return 217; } // Tens Full over Queens
		case 10232447:  { return 218; } // Tens Full over Jacks
		case 4392287:   { return 219; } // Tens Full over Nines
		case 3516263:   { return 220; } // Tens Full over Eights
		case 2056223:   { return 221; } // Tens Full over Sevens
		case 1472207:   { return 222; } // Tens Full over Sixes
		case 596183:    { return 223; } // Tens Full over Fives
		case 304175:    { return 224; } // Tens Full over Fours
		case 109503:    { return 225; } // Tens Full over Treys
		case 48668:             { return 226; } // Tens Full over Deuces

		case 11529979:  { return 227; } // Nines Full over Aces
		case 9389971:   { return 228; } // Nines Full over Kings
		case 6591499:   { return 229; } // Nines Full over Queens
		case 5768419:   { return 230; } // Nines Full over Jacks
		case 3628411:   { return 231; } // Nines Full over Tens
		case 1982251:   { return 232; } // Nines Full over Eights
		case 1159171:   { return 233; } // Nines Full over Sevens
		case 829939:    { return 234; } // Nines Full over Sixes
		case 336091:    { return 235; } // Nines Full over Fives
		case 171475:    { return 236; } // Nines Full over Fours
		case 61731:             { return 237; } // Nines Full over Treys
		case 27436:             { return 238; } // Nines Full over Deuces

		case 8258753:   { return 239; } // Eights Full over Aces
		case 6725897:   { return 240; } // Eights Full over Kings
		case 4721393:   { return 241; } // Eights Full over Queens
		case 4131833:   { return 242; } // Eights Full over Jacks
		case 2598977:   { return 243; } // Eights Full over Tens
		case 1773593:   { return 244; } // Eights Full over Nines
		case 830297:    { return 245; } // Eights Full over Sevens
		case 594473:    { return 246; } // Eights Full over Sixes
		case 240737:    { return 247; } // Eights Full over Fives
		case 122825:    { return 248; } // Eights Full over Fours
		case 44217:             { return 249; } // Eights Full over Treys
		case 19652:             { return 250; } // Eights Full over Deuces

		case 3693157:   { return 251; } // Sevens Full over Aces
		case 3007693:   { return 252; } // Sevens Full over Kings
		case 2111317:   { return 253; } // Sevens Full over Queens
		case 1847677:   { return 254; } // Sevens Full over Jacks
		case 1162213:   { return 255; } // Sevens Full over Tens
		case 793117:    { return 256; } // Sevens Full over Nines
		case 634933:    { return 257; } // Sevens Full over Eights
		case 265837:    { return 258; } // Sevens Full over Sixes
		case 107653:    { return 259; } // Sevens Full over Fives
		case 54925:             { return 260; } // Sevens Full over Fours
		case 19773:             { return 261; } // Sevens Full over Treys
		case 8788:              { return 262; } // Sevens Full over Deuces

		case 2237411:   { return 263; } // Sixes Full over Aces
		case 1822139:   { return 264; } // Sixes Full over Kings
		case 1279091:   { return 265; } // Sixes Full over Queens
		case 1119371:   { return 266; } // Sixes Full over Jacks
		case 704099:    { return 267; } // Sixes Full over Tens
		case 480491:    { return 268; } // Sixes Full over Nines
		case 384659:    { return 269; } // Sixes Full over Eights
		case 224939:    { return 270; } // Sixes Full over Sevens
		case 65219:             { return 271; } // Sixes Full over Fives
		case 33275:             { return 272; } // Sixes Full over Fours
		case 11979:             { return 273; } // Sixes Full over Treys
		case 5324:              { return 274; } // Sixes Full over Deuces

		case 576583:    { return 275; } // Fives Full over Aces
		case 469567:    { return 276; } // Fives Full over Kings
		case 329623:    { return 277; } // Fives Full over Queens
		case 288463:    { return 278; } // Fives Full over Jacks
		case 181447:    { return 279; } // Fives Full over Tens
		case 123823:    { return 280; } // Fives Full over Nines
		case 99127:             { return 281; } // Fives Full over Eights
		case 57967:             { return 282; } // Fives Full over Sevens
		case 41503:             { return 283; } // Fives Full over Sixes
		case 8575:              { return 284; } // Fives Full over Fours
		case 3087:              { return 285; } // Fives Full over Treys
		case 1372:              { return 286; } // Fives Full over Deuces

		case 210125:    { return 287; } // Fours Full over Aces
		case 171125:    { return 288; } // Fours Full over Kings
		case 120125:    { return 289; } // Fours Full over Queens
		case 105125:    { return 290; } // Fours Full over Jacks
		case 66125:             { return 291; } // Fours Full over Tens
		case 45125:             { return 292; } // Fours Full over Nines
		case 36125:             { return 293; } // Fours Full over Eights
		case 21125:             { return 294; } // Fours Full over Sevens
		case 15125:             { return 295; } // Fours Full over Sixes
		case 6125:              { return 296; } // Fours Full over Fives
		case 1125:              { return 297; } // Fours Full over Treys
		case 500:               { return 298; } // Fours Full over Deuces

		case 45387:             { return 299; } // Treys Full over Aces
		case 36963:             { return 300; } // Treys Full over Kings
		case 25947:             { return 301; } // Treys Full over Queens
		case 22707:             { return 302; } // Treys Full over Jacks
		case 14283:             { return 303; } // Treys Full over Tens
		case 9747:              { return 304; } // Treys Full over Nines
		case 7803:              { return 305; } // Treys Full over Eights
		case 4563:              { return 306; } // Treys Full over Sevens
		case 3267:              { return 307; } // Treys Full over Sixes
		case 1323:              { return 308; } // Treys Full over Fives
		case 675:               { return 309; } // Treys Full over Fours
		case 108:               { return 310; } // Treys Full over Deuces

		case 13448:             { return 311; } // Deuces Full over Aces
		case 10952:             { return 312; } // Deuces Full over Kings
		case 7688:              { return 313; } // Deuces Full over Queens
		case 6728:              { return 314; } // Deuces Full over Jacks
		case 4232:              { return 315; } // Deuces Full over Tens
		case 2888:              { return 316; } // Deuces Full over Nines
		case 2312:              { return 317; } // Deuces Full over Eights
		case 1352:              { return 318; } // Deuces Full over Sevens
		case 968:               { return 319; } // Deuces Full over Sixes
		case 392:               { return 320; } // Deuces Full over Fives
		case 200:               { return 321; } // Deuces Full over Fours
		case 72:                { return 322; } // Deuces Full over Treys

		case 31367009:  { return 1600; } // Ace-High Straight
		case 14535931:  { return 1601; } // King-High Straight
		case 6678671:   { return 1602; } // Queen-High Straight
		case 2800733:   { return 1603; } // Jack-High Straight
		case 1062347:   { return 1604; } // Ten-High Straight
		case 323323:    { return 1605; } // Nine-High Straight
		case 85085:             { return 1606; } // Eight-High Straight
		case 15015:             { return 1607; } // Seven-High Straight
		case 2310:              { return 1608; } // Sixes-High Straight
		case 8610:              { return 1609; } // Fives-High Straight
		case 79052387:  { return 1610; } // Three Aces
		case 73952233:  { return 1611; }
		case 58651771:  { return 1612; }
		case 48451463:  { return 1613; }
		case 43351309:  { return 1614; }
		case 33151001:  { return 1615; }
		case 28050847:  { return 1616; }
		case 17850539:  { return 1617; }
		case 12750385:  { return 1618; }
		case 7650231:   { return 1619; }
		case 5100154:   { return 1620; }
		case 61959979:  { return 1621; }
		case 49140673:  { return 1622; }
		case 40594469:  { return 1623; }
		case 36321367:  { return 1624; }
		case 27775163:  { return 1625; }
		case 23502061:  { return 1626; }
		case 14955857:  { return 1627; }
		case 10682755:  { return 1628; }
		case 6409653:   { return 1629; }
		case 4273102:   { return 1630; }
		case 45970307:  { return 1631; }
		case 37975471:  { return 1632; }
		case 33978053:  { return 1633; }
		case 25983217:  { return 1634; }
		case 21985799:  { return 1635; }
		case 13990963:  { return 1636; }
		case 9993545:   { return 1637; }
		case 5996127:   { return 1638; }
		case 3997418:   { return 1639; }
		case 30118477:  { return 1640; }
		case 26948111:  { return 1641; }
		case 20607379:  { return 1642; }
		case 17437013:  { return 1643; }
		case 11096281:  { return 1644; }
		case 7925915:   { return 1645; }
		case 4755549:   { return 1646; }
		case 3170366:   { return 1647; }
		case 22261483:  { return 1648; }
		case 17023487:  { return 1649; }
		case 14404489:  { return 1650; }
		case 9166493:   { return 1651; }
		case 6547495:   { return 1652; }
		case 3928497:   { return 1653; }
		case 2618998:   { return 1654; }
		case 15231541:  { return 1655; }
		case 12888227:  { return 1656; }
		case 8201599:   { return 1657; }
		case 5858285:   { return 1658; }
		case 3514971:   { return 1659; }
		case 2343314:   { return 1660; }
		case 9855703:   { return 1661; }
		case 6271811:   { return 1662; }
		case 4479865:   { return 1663; }
		case 2687919:   { return 1664; }
		case 1791946:   { return 1665; }
		case 5306917:   { return 1666; }
		case 3790655:   { return 1667; }
		case 2274393:   { return 1668; }
		case 1516262:   { return 1669; }
		case 2412235:   { return 1670; }
		case 1447341:   { return 1671; }
		case 964894:    { return 1672; }
		case 1033815:   { return 1673; }
		case 689210:    { return 1674; }
		case 413526:    { return 1675; }
		case 64379963:  { return 1676; } // Three Kings
		case 60226417:  { return 1677; }
		case 47765779:  { return 1678; }
		case 39458687:  { return 1679; }
		case 35305141:  { return 1680; }
		case 26998049:  { return 1681; }
		case 22844503:  { return 1682; }
		case 14537411:  { return 1683; }
		case 10383865:  { return 1684; }
		case 6230319:   { return 1685; }
		case 4153546:   { return 1686; }
		case 45537047:  { return 1687; }
		case 36115589:  { return 1688; }
		case 29834617:  { return 1689; }
		case 26694131:  { return 1690; }
		case 20413159:  { return 1691; }
		case 17272673:  { return 1692; }
		case 10991701:  { return 1693; }
		case 7851215:   { return 1694; }
		case 4710729:   { return 1695; }
		case 3140486:   { return 1696; }
		case 33785551:  { return 1697; }
		case 27909803:  { return 1698; }
		case 24971929:  { return 1699; }
		case 19096181:  { return 1700; }
		case 16158307:  { return 1701; }
		case 10282559:  { return 1702; }
		case 7344685:   { return 1703; }
		case 4406811:   { return 1704; }
		case 2937874:   { return 1705; }
		case 22135361:  { return 1706; }
		case 19805323:  { return 1707; }
		case 15145247:  { return 1708; }
		case 12815209:  { return 1709; }
		case 8155133:   { return 1710; }
		case 5825095:   { return 1711; }
		case 3495057:   { return 1712; }
		case 2330038:   { return 1713; }
		case 16360919:  { return 1714; }
		case 12511291:  { return 1715; }
		case 10586477:  { return 1716; }
		case 6736849:   { return 1717; }
		case 4812035:   { return 1718; }
		case 2887221:   { return 1719; }
		case 1924814:   { return 1720; }
		case 11194313:  { return 1721; }
		case 9472111:   { return 1722; }
		case 6027707:   { return 1723; }
		case 4305505:   { return 1724; }
		case 2583303:   { return 1725; }
		case 1722202:   { return 1726; }
		case 7243379:   { return 1727; }
		case 4609423:   { return 1728; }
		case 3292445:   { return 1729; }
		case 1975467:   { return 1730; }
		case 1316978:   { return 1731; }
		case 3900281:   { return 1732; }
		case 2785915:   { return 1733; }
		case 1671549:   { return 1734; }
		case 1114366:   { return 1735; }
		case 1772855:   { return 1736; }
		case 1063713:   { return 1737; }
		case 709142:    { return 1738; }
		case 759795:    { return 1739; }
		case 506530:    { return 1740; }
		case 303918:    { return 1741; }
		case 45192947:  { return 1742; } // Three Queens
		case 35421499:  { return 1743; }
		case 28092913:  { return 1744; }
		case 23207189:  { return 1745; }
		case 20764327:  { return 1746; }
		case 15878603:  { return 1747; }
		case 13435741:  { return 1748; }
		case 8550017:   { return 1749; }
		case 6107155:   { return 1750; }
		case 3664293:   { return 1751; }
		case 2442862:   { return 1752; }
		case 31965743:  { return 1753; }
		case 25352141:  { return 1754; }
		case 20943073:  { return 1755; }
		case 18738539:  { return 1756; }
		case 14329471:  { return 1757; }
		case 12124937:  { return 1758; }
		case 7715869:   { return 1759; }
		case 5511335:   { return 1760; }
		case 3306801:   { return 1761; }
		case 2204534:   { return 1762; }
		case 19870597:  { return 1763; }
		case 16414841:  { return 1764; }
		case 14686963:  { return 1765; }
		case 11231207:  { return 1766; }
		case 9503329:   { return 1767; }
		case 6047573:   { return 1768; }
		case 4319695:   { return 1769; }
		case 2591817:   { return 1770; }
		case 1727878:   { return 1771; }
		case 13018667:  { return 1772; }
		case 11648281:  { return 1773; }
		case 8907509:   { return 1774; }
		case 7537123:   { return 1775; }
		case 4796351:   { return 1776; }
		case 3425965:   { return 1777; }
		case 2055579:   { return 1778; }
		case 1370386:   { return 1779; }
		case 9622493:   { return 1780; }
		case 7358377:   { return 1781; }
		case 6226319:   { return 1782; }
		case 3962203:   { return 1783; }
		case 2830145:   { return 1784; }
		case 1698087:   { return 1785; }
		case 1132058:   { return 1786; }
		case 6583811:   { return 1787; }
		case 5570917:   { return 1788; }
		case 3545129:   { return 1789; }
		case 2532235:   { return 1790; }
		case 1519341:   { return 1791; }
		case 1012894:   { return 1792; }
		case 4260113:   { return 1793; }
		case 2710981:   { return 1794; }
		case 1936415:   { return 1795; }
		case 1161849:   { return 1796; }
		case 774566:    { return 1797; }
		case 2293907:   { return 1798; }
		case 1638505:   { return 1799; }
		case 983103:    { return 1800; }
		case 655402:    { return 1801; }
		case 1042685:   { return 1802; }
		case 625611:    { return 1803; }
		case 417074:    { return 1804; }
		case 446865:    { return 1805; }
		case 297910:    { return 1806; }
		case 178746:    { return 1807; }
		case 36998113:  { return 1808; } // Three Jacks
		case 30998419:  { return 1809; }
		case 22998827:  { return 1810; }
		case 18999031:  { return 1811; }
		case 16999133:  { return 1812; }
		case 12999337:  { return 1813; }
		case 10999439:  { return 1814; }
		case 6999643:   { return 1815; }
		case 4999745:   { return 1816; }
		case 2999847:   { return 1817; }
		case 1999898:   { return 1818; }
		case 27974183:  { return 1819; }
		case 20755039:  { return 1820; }
		case 17145467:  { return 1821; }
		case 15340681:  { return 1822; }
		case 11731109:  { return 1823; }
		case 9926323:   { return 1824; }
		case 6316751:   { return 1825; }
		case 4511965:   { return 1826; }
		case 2707179:   { return 1827; }
		case 1804786:   { return 1828; }
		case 17389357:  { return 1829; }
		case 14365121:  { return 1830; }
		case 12853003:  { return 1831; }
		case 9828767:   { return 1832; }
		case 8316649:   { return 1833; }
		case 5292413:   { return 1834; }
		case 3780295:   { return 1835; }
		case 2268177:   { return 1836; }
		case 1512118:   { return 1837; }
		case 10657993:  { return 1838; }
		case 9536099:   { return 1839; }
		case 7292311:   { return 1840; }
		case 6170417:   { return 1841; }
		case 3926629:   { return 1842; }
		case 2804735:   { return 1843; }
		case 1682841:   { return 1844; }
		case 1121894:   { return 1845; }
		case 7877647:   { return 1846; }
		case 6024083:   { return 1847; }
		case 5097301:   { return 1848; }
		case 3243737:   { return 1849; }
		case 2316955:   { return 1850; }
		case 1390173:   { return 1851; }
		case 926782:    { return 1852; }
		case 5389969:   { return 1853; }
		case 4560743:   { return 1854; }
		case 2902291:   { return 1855; }
		case 2073065:   { return 1856; }
		case 1243839:   { return 1857; }
		case 829226:    { return 1858; }
		case 3487627:   { return 1859; }
		case 2219399:   { return 1860; }
		case 1585285:   { return 1861; }
		case 951171:    { return 1862; }
		case 634114:    { return 1863; }
		case 1877953:   { return 1864; }
		case 1341395:   { return 1865; }
		case 804837:    { return 1866; }
		case 536558:    { return 1867; }
		case 853615:    { return 1868; }
		case 512169:    { return 1869; }
		case 341446:    { return 1870; }
		case 365835:    { return 1871; }
		case 243890:    { return 1872; }
		case 146334:    { return 1873; }
		case 18457339:  { return 1874; } // Three Tens
		case 15464257:  { return 1875; }
		case 14466563:  { return 1876; }
		case 9478093:   { return 1877; }
		case 8480399:   { return 1878; }
		case 6485011:   { return 1879; }
		case 5487317:   { return 1880; }
		case 3491929:   { return 1881; }
		case 2494235:   { return 1882; }
		case 1496541:   { return 1883; }
		case 997694:    { return 1884; }
		case 13955549:  { return 1885; }
		case 13055191:  { return 1886; }
		case 8553401:   { return 1887; }
		case 7653043:   { return 1888; }
		case 5852327:   { return 1889; }
		case 4951969:   { return 1890; }
		case 3151253:   { return 1891; }
		case 2250895:   { return 1892; }
		case 1350537:   { return 1893; }
		case 900358:    { return 1894; }
		case 10938133:  { return 1895; }
		case 7166363:   { return 1896; }
		case 6412009:   { return 1897; }
		case 4903301:   { return 1898; }
		case 4148947:   { return 1899; }
		case 2640239:   { return 1900; }
		case 1885885:   { return 1901; }
		case 1131531:   { return 1902; }
		case 754354:    { return 1903; }
		case 6704017:   { return 1904; }
		case 5998331:   { return 1905; }
		case 4586959:   { return 1906; }
		case 3881273:   { return 1907; }
		case 2469901:   { return 1908; }
		case 1764215:   { return 1909; }
		case 1058529:   { return 1910; }
		case 705686:    { return 1911; }
		case 3929941:   { return 1912; }
		case 3005249:   { return 1913; }
		case 2542903:   { return 1914; }
		case 1618211:   { return 1915; }
		case 1155865:   { return 1916; }
		case 693519:    { return 1917; }
		case 462346:    { return 1918; }
		case 2688907:   { return 1919; }
		case 2275229:   { return 1920; }
		case 1447873:   { return 1921; }
		case 1034195:   { return 1922; }
		case 620517:    { return 1923; }
		case 413678:    { return 1924; }
		case 1739881:   { return 1925; }
		case 1107197:   { return 1926; }
		case 790855:    { return 1927; }
		case 474513:    { return 1928; }
		case 316342:    { return 1929; }
		case 936859:    { return 1930; }
		case 669185:    { return 1931; }
		case 401511:    { return 1932; }
		case 267674:    { return 1933; }
		case 425845:    { return 1934; }
		case 255507:    { return 1935; }
		case 170338:    { return 1936; }
		case 182505:    { return 1937; }
		case 121670:    { return 1938; }
		case 73002:             { return 1939; }
		case 10405103:  { return 1940; } // Three Nines
		case 8717789:   { return 1941; }
		case 8155351:   { return 1942; }
		case 6468037:   { return 1943; }
		case 4780723:   { return 1944; }
		case 3655847:   { return 1945; }
		case 3093409:   { return 1946; }
		case 1968533:   { return 1947; }
		case 1406095:   { return 1948; }
		case 843657:    { return 1949; }
		case 562438:    { return 1950; }
		case 7867273:   { return 1951; }
		case 7359707:   { return 1952; }
		case 5837009:   { return 1953; }
		case 4314311:   { return 1954; }
		case 3299179:   { return 1955; }
		case 2791613:   { return 1956; }
		case 1776481:   { return 1957; }
		case 1268915:   { return 1958; }
		case 761349:    { return 1959; }
		case 507566:    { return 1960; }
		case 6166241:   { return 1961; }
		case 4890467:   { return 1962; }
		case 3614693:   { return 1963; }
		case 2764177:   { return 1964; }
		case 2338919:   { return 1965; }
		case 1488403:   { return 1966; }
		case 1063145:   { return 1967; }
		case 637887:    { return 1968; }
		case 425258:    { return 1969; }
		case 4574953:   { return 1970; }
		case 3381487:   { return 1971; }
		case 2585843:   { return 1972; }
		case 2188021:   { return 1973; }
		case 1392377:   { return 1974; }
		case 994555:    { return 1975; }
		case 596733:    { return 1976; }
		case 397822:    { return 1977; }
		case 2681869:   { return 1978; }
		case 2050841:   { return 1979; }
		case 1735327:   { return 1980; }
		case 1104299:   { return 1981; }
		case 788785:    { return 1982; }
		case 473271:    { return 1983; }
		case 315514:    { return 1984; }
		case 1515839:   { return 1985; }
		case 1282633:   { return 1986; }
		case 816221:    { return 1987; }
		case 583015:    { return 1988; }
		case 349809:    { return 1989; }
		case 233206:    { return 1990; }
		case 980837:    { return 1991; }
		case 624169:    { return 1992; }
		case 445835:    { return 1993; }
		case 267501:    { return 1994; }
		case 178334:    { return 1995; }
		case 528143:    { return 1996; }
		case 377245:    { return 1997; }
		case 226347:    { return 1998; }
		case 150898:    { return 1999; }
		case 240065:    { return 2000; }
		case 144039:    { return 2001; }
		case 96026:             { return 2002; }
		case 102885:    { return 2003; }
		case 68590:             { return 2004; }
		case 41154:             { return 2005; }
		case 7453021:   { return 2006; } // Three Eights
		case 6244423:   { return 2007; }
		case 5841557:   { return 2008; }
		case 4632959:   { return 2009; }
		case 3827227:   { return 2010; }
		case 2618629:   { return 2011; }
		case 2215763:   { return 2012; }
		case 1410031:   { return 2013; }
		case 1007165:   { return 2014; }
		case 604299:    { return 2015; }
		case 402866:    { return 2016; }
		case 5635211:   { return 2017; }
		case 5271649:   { return 2018; }
		case 4180963:   { return 2019; }
		case 3453839:   { return 2020; }
		case 2363153:   { return 2021; }
		case 1999591:   { return 2022; }
		case 1272467:   { return 2023; }
		case 908905:    { return 2024; }
		case 545343:    { return 2025; }
		case 363562:    { return 2026; }
		case 4416787:   { return 2027; }
		case 3502969:   { return 2028; }
		case 2893757:   { return 2029; }
		case 1979939:   { return 2030; }
		case 1675333:   { return 2031; }
		case 1066121:   { return 2032; }
		case 761515:    { return 2033; }
		case 456909:    { return 2034; }
		case 304606:    { return 2035; }
		case 3276971:   { return 2036; }
		case 2707063:   { return 2037; }
		case 1852201:   { return 2038; }
		case 1567247:   { return 2039; }
		case 997339:    { return 2040; }
		case 712385:    { return 2041; }
		case 427431:    { return 2042; }
		case 284954:    { return 2043; }
		case 2146981:   { return 2044; }
		case 1468987:   { return 2045; }
		case 1242989:   { return 2046; }
		case 790993:    { return 2047; }
		case 564995:    { return 2048; }
		case 338997:    { return 2049; }
		case 225998:    { return 2050; }
		case 1213511:   { return 2051; }
		case 1026817:   { return 2052; }
		case 653429:    { return 2053; }
		case 466735:    { return 2054; }
		case 280041:    { return 2055; }
		case 186694:    { return 2056; }
		case 702559:    { return 2057; }
		case 447083:    { return 2058; }
		case 319345:    { return 2059; }
		case 191607:    { return 2060; }
		case 127738:    { return 2061; }
		case 378301:    { return 2062; }
		case 270215:    { return 2063; }
		case 162129:    { return 2064; }
		case 108086:    { return 2065; }
		case 171955:    { return 2066; }
		case 103173:    { return 2067; }
		case 68782:             { return 2068; }
		case 73695:             { return 2069; }
		case 49130:             { return 2070; }
		case 29478:             { return 2071; }
		case 3332849:   { return 2072; } // Three Sevens
		case 2792387:   { return 2073; }
		case 2612233:   { return 2074; }
		case 2071771:   { return 2075; }
		case 1711463:   { return 2076; }
		case 1531309:   { return 2077; }
		case 990847:    { return 2078; }
		case 630539:    { return 2079; }
		case 450385:    { return 2080; }
		case 270231:    { return 2081; }
		case 180154:    { return 2082; }
		case 2519959:   { return 2083; }
		case 2357381:   { return 2084; }
		case 1869647:   { return 2085; }
		case 1544491:   { return 2086; }
		case 1381913:   { return 2087; }
		case 894179:    { return 2088; }
		case 569023:    { return 2089; }
		case 406445:    { return 2090; }
		case 243867:    { return 2091; }
		case 162578:    { return 2092; }
		case 1975103:   { return 2093; }
		case 1566461:   { return 2094; }
		case 1294033:   { return 2095; }
		case 1157819:   { return 2096; }
		case 749177:    { return 2097; }
		case 476749:    { return 2098; }
		case 340535:    { return 2099; }
		case 204321:    { return 2100; }
		case 136214:    { return 2101; }
		case 1465399:   { return 2102; }
		case 1210547:   { return 2103; }
		case 1083121:   { return 2104; }
		case 700843:    { return 2105; }
		case 445991:    { return 2106; }
		case 318565:    { return 2107; }
		case 191139:    { return 2108; }
		case 127426:    { return 2109; }
		case 960089:    { return 2110; }
		case 859027:    { return 2111; }
		case 555841:    { return 2112; }
		case 353717:    { return 2113; }
		case 252655:    { return 2114; }
		case 151593:    { return 2115; }
		case 101062:    { return 2116; }
		case 709631:    { return 2117; }
		case 459173:    { return 2118; }
		case 292201:    { return 2119; }
		case 208715:    { return 2120; }
		case 125229:    { return 2121; }
		case 83486:             { return 2122; }
		case 410839:    { return 2123; }
		case 261443:    { return 2124; }
		case 186745:    { return 2125; }
		case 112047:    { return 2126; }
		case 74698:             { return 2127; }
		case 169169:    { return 2128; }
		case 120835:    { return 2129; }
		case 72501:             { return 2130; }
		case 48334:             { return 2131; }
		case 76895:             { return 2132; }
		case 46137:             { return 2133; }
		case 30758:             { return 2134; }
		case 32955:             { return 2135; }
		case 21970:             { return 2136; }
		case 13182:             { return 2137; }
		case 2019127:   { return 2138; } // Three Sixes
		case 1691701:   { return 2139; }
		case 1582559:   { return 2140; }
		case 1255133:   { return 2141; }
		case 1036849:   { return 2142; }
		case 927707:    { return 2143; }
		case 709423:    { return 2144; }
		case 381997:    { return 2145; }
		case 272855:    { return 2146; }
		case 163713:    { return 2147; }
		case 109142:    { return 2148; }
		case 1526657:   { return 2149; }
		case 1428163:   { return 2150; }
		case 1132681:   { return 2151; }
		case 935693:    { return 2152; }
		case 837199:    { return 2153; }
		case 640211:    { return 2154; }
		case 344729:    { return 2155; }
		case 246235:    { return 2156; }
		case 147741:    { return 2157; }
		case 98494:             { return 2158; }
		case 1196569:   { return 2159; }
		case 949003:    { return 2160; }
		case 783959:    { return 2161; }
		case 701437:    { return 2162; }
		case 536393:    { return 2163; }
		case 288827:    { return 2164; }
		case 206305:    { return 2165; }
		case 123783:    { return 2166; }
		case 82522:             { return 2167; }
		case 887777:    { return 2168; }
		case 733381:    { return 2169; }
		case 656183:    { return 2170; }
		case 501787:    { return 2171; }
		case 270193:    { return 2172; }
		case 192995:    { return 2173; }
		case 115797:    { return 2174; }
		case 77198:             { return 2175; }
		case 581647:    { return 2176; }
		case 520421:    { return 2177; }
		case 397969:    { return 2178; }
		case 214291:    { return 2179; }
		case 153065:    { return 2180; }
		case 91839:             { return 2181; }
		case 61226:             { return 2182; }
		case 429913:    { return 2183; }
		case 328757:    { return 2184; }
		case 177023:    { return 2185; }
		case 126445:    { return 2186; }
		case 75867:             { return 2187; }
		case 50578:             { return 2188; }
		case 294151:    { return 2189; }
		case 158389:    { return 2190; }
		case 113135:    { return 2191; }
		case 67881:             { return 2192; }
		case 45254:             { return 2193; }
		case 121121:    { return 2194; }
		case 86515:             { return 2195; }
		case 51909:             { return 2196; }
		case 34606:             { return 2197; }
		case 46585:             { return 2198; }
		case 27951:             { return 2199; }
		case 18634:             { return 2200; }
		case 19965:             { return 2201; }
		case 13310:             { return 2202; }
		case 7986:              { return 2203; }
		case 520331:    { return 2204; } // Three Fives
		case 435953:    { return 2205; }
		case 407827:    { return 2206; }
		case 323449:    { return 2207; }
		case 267197:    { return 2208; }
		case 239071:    { return 2209; }
		case 182819:    { return 2210; }
		case 154693:    { return 2211; }
		case 70315:             { return 2212; }
		case 42189:             { return 2213; }
		case 28126:             { return 2214; }
		case 393421:    { return 2215; }
		case 368039:    { return 2216; }
		case 291893:    { return 2217; }
		case 241129:    { return 2218; }
		case 215747:    { return 2219; }
		case 164983:    { return 2220; }
		case 139601:    { return 2221; }
		case 63455:             { return 2222; }
		case 38073:             { return 2223; }
		case 25382:             { return 2224; }
		case 308357:    { return 2225; }
		case 244559:    { return 2226; }
		case 202027:    { return 2227; }
		case 180761:    { return 2228; }
		case 138229:    { return 2229; }
		case 116963:    { return 2230; }
		case 53165:             { return 2231; }
		case 31899:             { return 2232; }
		case 21266:             { return 2233; }
		case 228781:    { return 2234; }
		case 188993:    { return 2235; }
		case 169099:    { return 2236; }
		case 129311:    { return 2237; }
		case 109417:    { return 2238; }
		case 49735:             { return 2239; }
		case 29841:             { return 2240; }
		case 19894:             { return 2241; }
		case 149891:    { return 2242; }
		case 134113:    { return 2243; }
		case 102557:    { return 2244; }
		case 86779:             { return 2245; }
		case 39445:             { return 2246; }
		case 23667:             { return 2247; }
		case 15778:             { return 2248; }
		case 110789:    { return 2249; }
		case 84721:             { return 2250; }
		case 71687:             { return 2251; }
		case 32585:             { return 2252; }
		case 19551:             { return 2253; }
		case 13034:             { return 2254; }
		case 75803:             { return 2255; }
		case 64141:             { return 2256; }
		case 29155:             { return 2257; }
		case 17493:             { return 2258; }
		case 11662:             { return 2259; }
		case 49049:             { return 2260; }
		case 22295:             { return 2261; }
		case 13377:             { return 2262; }
		case 8918:              { return 2263; }
		case 18865:             { return 2264; }
		case 11319:             { return 2265; }
		case 7546:              { return 2266; }
		case 5145:              { return 2267; }
		case 3430:              { return 2268; }
		case 2058:              { return 2269; }
		case 189625:    { return 2270; } // Three Fours
		case 158875:    { return 2271; }
		case 148625:    { return 2272; }
		case 117875:    { return 2273; }
		case 97375:             { return 2274; }
		case 87125:             { return 2275; }
		case 66625:             { return 2276; }
		case 56375:             { return 2277; }
		case 35875:             { return 2278; }
		case 15375:             { return 2279; }
		case 10250:             { return 2280; }
		case 143375:    { return 2281; }
		case 134125:    { return 2282; }
		case 106375:    { return 2283; }
		case 87875:             { return 2284; }
		case 78625:             { return 2285; }
		case 60125:             { return 2286; }
		case 50875:             { return 2287; }
		case 32375:             { return 2288; }
		case 13875:             { return 2289; }
		case 9250:              { return 2290; }
		case 112375:    { return 2291; }
		case 89125:             { return 2292; }
		case 73625:             { return 2293; }
		case 65875:             { return 2294; }
		case 50375:             { return 2295; }
		case 42625:             { return 2296; }
		case 27125:             { return 2297; }
		case 11625:             { return 2298; }
		case 7750:              { return 2299; }
		case 83375:             { return 2300; }
		case 68875:             { return 2301; }
		case 61625:             { return 2302; }
		case 47125:             { return 2303; }
		case 39875:             { return 2304; }
		case 25375:             { return 2305; }
		case 10875:             { return 2306; }
		case 7250:              { return 2307; }
		case 54625:             { return 2308; }
		case 48875:             { return 2309; }
		case 37375:             { return 2310; }
		case 31625:             { return 2311; }
		case 20125:             { return 2312; }
		case 8625:              { return 2313; }
		case 5750:              { return 2314; }
		case 40375:             { return 2315; }
		case 30875:             { return 2316; }
		case 26125:             { return 2317; }
		case 16625:             { return 2318; }
		case 7125:              { return 2319; }
		case 4750:              { return 2320; }
		case 27625:             { return 2321; }
		case 23375:             { return 2322; }
		case 14875:             { return 2323; }
		case 6375:              { return 2324; }
		case 4250:              { return 2325; }
		case 17875:             { return 2326; }
		case 11375:             { return 2327; }
		case 4875:              { return 2328; }
		case 3250:              { return 2329; }
		case 9625:              { return 2330; }
		case 4125:              { return 2331; }
		case 2750:              { return 2332; }
		case 2625:              { return 2333; }
		case 1750:              { return 2334; }
		case 750:               { return 2335; }
		case 40959:             { return 2336; } // Three Treys
		case 34317:             { return 2337; }
		case 32103:             { return 2338; }
		case 25461:             { return 2339; }
		case 21033:             { return 2340; }
		case 18819:             { return 2341; }
		case 14391:             { return 2342; }
		case 12177:             { return 2343; }
		case 7749:              { return 2344; }
		case 5535:              { return 2345; }
		case 2214:              { return 2346; }
		case 30969:             { return 2347; }
		case 28971:             { return 2348; }
		case 22977:             { return 2349; }
		case 18981:             { return 2350; }
		case 16983:             { return 2351; }
		case 12987:             { return 2352; }
		case 10989:             { return 2353; }
		case 6993:              { return 2354; }
		case 4995:              { return 2355; }
		case 1998:              { return 2356; }
		case 24273:             { return 2357; }
		case 19251:             { return 2358; }
		case 15903:             { return 2359; }
		case 14229:             { return 2360; }
		case 10881:             { return 2361; }
		case 9207:              { return 2362; }
		case 5859:              { return 2363; }
		case 4185:              { return 2364; }
		case 1674:              { return 2365; }
		case 18009:             { return 2366; }
		case 14877:             { return 2367; }
		case 13311:             { return 2368; }
		case 10179:             { return 2369; }
		case 8613:              { return 2370; }
		case 5481:              { return 2371; }
		case 3915:              { return 2372; }
		case 1566:              { return 2373; }
		case 11799:             { return 2374; }
		case 10557:             { return 2375; }
		case 8073:              { return 2376; }
		case 6831:              { return 2377; }
		case 4347:              { return 2378; }
		case 3105:              { return 2379; }
		case 1242:              { return 2380; }
		case 8721:              { return 2381; }
		case 6669:              { return 2382; }
		case 5643:              { return 2383; }
		case 3591:              { return 2384; }
		case 2565:              { return 2385; }
		case 1026:              { return 2386; }
		case 5967:              { return 2387; }
		case 5049:              { return 2388; }
		case 3213:              { return 2389; }
		case 2295:              { return 2390; }
		case 918:               { return 2391; }
		case 3861:              { return 2392; }
		case 2457:              { return 2393; }
		case 1755:              { return 2394; }
		case 702:               { return 2395; }
		case 2079:              { return 2396; }
		case 1485:              { return 2397; }
		case 594:               { return 2398; }
		case 945:               { return 2399; }
		case 378:               { return 2400; }
		case 270:               { return 2401; }
		case 12136:             { return 2402; } // Three Deuces
		case 10168:             { return 2403; }
		case 9512:              { return 2404; }
		case 7544:              { return 2405; }
		case 6232:              { return 2406; }
		case 5576:              { return 2407; }
		case 4264:              { return 2408; }
		case 3608:              { return 2409; }
		case 2296:              { return 2410; }
		case 1640:              { return 2411; }
		case 984:               { return 2412; }
		case 9176:              { return 2413; }
		case 8584:              { return 2414; }
		case 6808:              { return 2415; }
		case 5624:              { return 2416; }
		case 5032:              { return 2417; }
		case 3848:              { return 2418; }
		case 3256:              { return 2419; }
		case 2072:              { return 2420; }
		case 1480:              { return 2421; }
		case 888:               { return 2422; }
		case 7192:              { return 2423; }
		case 5704:              { return 2424; }
		case 4712:              { return 2425; }
		case 4216:              { return 2426; }
		case 3224:              { return 2427; }
		case 2728:              { return 2428; }
		case 1736:              { return 2429; }
		case 1240:              { return 2430; }
		case 744:               { return 2431; }
		case 5336:              { return 2432; }
		case 4408:              { return 2433; }
		case 3944:              { return 2434; }
		case 3016:              { return 2435; }
		case 2552:              { return 2436; }
		case 1624:              { return 2437; }
		case 1160:              { return 2438; }
		case 696:               { return 2439; }
		case 3496:              { return 2440; }
		case 3128:              { return 2441; }
		case 2392:              { return 2442; }
		case 2024:              { return 2443; }
		case 1288:              { return 2444; }
		case 920:               { return 2445; }
		case 552:               { return 2446; }
		case 2584:              { return 2447; }
		case 1976:              { return 2448; }
		case 1672:              { return 2449; }
		case 1064:              { return 2450; }
		case 760:               { return 2451; }
		case 456:               { return 2452; }
		case 1768:              { return 2453; }
		case 1496:              { return 2454; }
		case 952:               { return 2455; }
		case 680:               { return 2456; }
		case 408:               { return 2457; }
		case 1144:              { return 2458; }
		case 728:               { return 2459; }
		case 520:               { return 2460; }
		case 312:               { return 2461; }
		case 616:               { return 2462; }
		case 440:               { return 2463; }
		case 264:               { return 2464; }
		case 280:               { return 2465; }
		case 168:               { return 2466; }
		case 120:               { return 2467; }
		case 71339959:  { return 2468; } // Aces and Kings
		case 66737381:  { return 2469; }
		case 52929647:  { return 2470; }
		case 43724491:  { return 2471; }
		case 39121913:  { return 2472; }
		case 29916757:  { return 2473; }
		case 25314179:  { return 2474; }
		case 16109023:  { return 2475; }
		case 11506445:  { return 2476; }
		case 6903867:   { return 2477; }
		case 4602578:   { return 2478; }
		case 59771317:  { return 2479; } // Aces and Queens
		case 46847789:  { return 2480; }
		case 37155143:  { return 2481; }
		case 30693379:  { return 2482; }
		case 27462497:  { return 2483; }
		case 21000733:  { return 2484; }
		case 17769851:  { return 2485; }
		case 11308087:  { return 2486; }
		case 8077205:   { return 2487; }
		case 4846323:   { return 2488; }
		case 3230882:   { return 2489; }
		case 52307677:  { return 2490; } // Aces and Jacks
		case 43825351:  { return 2491; }
		case 32515583:  { return 2492; }
		case 26860699:  { return 2493; }
		case 24033257:  { return 2494; }
		case 18378373:  { return 2495; }
		case 15550931:  { return 2496; }
		case 9896047:   { return 2497; }
		case 7068605:   { return 2498; }
		case 4241163:   { return 2499; }
		case 2827442:   { return 2500; }
		case 32902213:  { return 2501; } // Aces and Tens
		case 27566719:  { return 2502; }
		case 25788221:  { return 2503; }
		case 16895731:  { return 2504; }
		case 15117233:  { return 2505; }
		case 11560237:  { return 2506; }
		case 9781739:   { return 2507; }
		case 6224743:   { return 2508; }
		case 4446245:   { return 2509; }
		case 2667747:   { return 2510; }
		case 1778498:   { return 2511; }
		case 22453117:  { return 2512; } // Aces and Nines
		case 18812071:  { return 2513; }
		case 17598389:  { return 2514; }
		case 13957343:  { return 2515; }
		case 10316297:  { return 2516; }
		case 7888933:   { return 2517; }
		case 6675251:   { return 2518; }
		case 4247887:   { return 2519; }
		case 3034205:   { return 2520; }
		case 1820523:   { return 2521; }
		case 1213682:   { return 2522; }
		case 17974933:  { return 2523; } // Aces and Eights
		case 15060079:  { return 2524; }
		case 14088461:  { return 2525; }
		case 11173607:  { return 2526; }
		case 9230371:   { return 2527; }
		case 6315517:   { return 2528; }
		case 5343899:   { return 2529; }
		case 3400663:   { return 2530; }
		case 2429045:   { return 2531; }
		case 1457427:   { return 2532; }
		case 971618:    { return 2533; }
		case 10511293:  { return 2534; } // Aces and Sevens
		case 8806759:   { return 2535; }
		case 8238581:   { return 2536; }
		case 6534047:   { return 2537; }
		case 5397691:   { return 2538; }
		case 4829513:   { return 2539; }
		case 3124979:   { return 2540; }
		case 1988623:   { return 2541; }
		case 1420445:   { return 2542; }
		case 852267:    { return 2543; }
		case 568178:    { return 2544; }
		case 7525837:   { return 2545; } // Aces and Sixes
		case 6305431:   { return 2546; }
		case 5898629:   { return 2547; }
		case 4678223:   { return 2548; }
		case 3864619:   { return 2549; }
		case 3457817:   { return 2550; }
		case 2644213:   { return 2551; }
		case 1423807:   { return 2552; }
		case 1017005:   { return 2553; }
		case 610203:    { return 2554; }
		case 406802:    { return 2555; }
		case 3047653:   { return 2556; } // Aces and Fives
		case 2553439:   { return 2557; }
		case 2388701:   { return 2558; }
		case 1894487:   { return 2559; }
		case 1565011:   { return 2560; }
		case 1400273:   { return 2561; }
		case 1070797:   { return 2562; }
		case 906059:    { return 2563; }
		case 411845:    { return 2564; }
		case 247107:    { return 2565; }
		case 164738:    { return 2566; }
		case 1554925:   { return 2567; } // Aces and Fours
		case 1302775:   { return 2568; }
		case 1218725:   { return 2569; }
		case 966575:    { return 2570; }
		case 798475:    { return 2571; }
		case 714425:    { return 2572; }
		case 546325:    { return 2573; }
		case 462275:    { return 2574; }
		case 294175:    { return 2575; }
		case 126075:    { return 2576; }
		case 84050:             { return 2577; }
		case 559773:    { return 2578; } // Aces and Treys
		case 468999:    { return 2579; }
		case 438741:    { return 2580; }
		case 347967:    { return 2581; }
		case 287451:    { return 2582; }
		case 257193:    { return 2583; }
		case 196677:    { return 2584; }
		case 166419:    { return 2585; }
		case 105903:    { return 2586; }
		case 75645:             { return 2587; }
		case 30258:             { return 2588; }
		case 248788:    { return 2589; } // Aces and Deuces
		case 208444:    { return 2590; }
		case 194996:    { return 2591; }
		case 154652:    { return 2592; }
		case 127756:    { return 2593; }
		case 114308:    { return 2594; }
		case 87412:             { return 2595; }
		case 73964:             { return 2596; }
		case 47068:             { return 2597; }
		case 33620:             { return 2598; }
		case 20172:             { return 2599; }
		case 53939969:  { return 2600; } // Kings and Queens
		case 38152661:  { return 2601; }
		case 30259007:  { return 2602; }
		case 24996571:  { return 2603; }
		case 22365353:  { return 2604; }
		case 17102917:  { return 2605; }
		case 14471699:  { return 2606; }
		case 9209263:   { return 2607; }
		case 6578045:   { return 2608; }
		case 3946827:   { return 2609; }
		case 2631218:   { return 2610; }
		case 47204489:  { return 2611; } // Kings and Jacks
		case 35691199:  { return 2612; }
		case 26480567:  { return 2613; }
		case 21875251:  { return 2614; }
		case 19572593:  { return 2615; }
		case 14967277:  { return 2616; }
		case 12664619:  { return 2617; }
		case 8059303:   { return 2618; }
		case 5756645:   { return 2619; }
		case 3453987:   { return 2620; }
		case 2302658:   { return 2621; }
		case 29692241:  { return 2622; } // Kings and Tens
		case 22450231:  { return 2623; }
		case 21001829:  { return 2624; }
		case 13759819:  { return 2625; }
		case 12311417:  { return 2626; }
		case 9414613:   { return 2627; }
		case 7966211:   { return 2628; }
		case 5069407:   { return 2629; }
		case 3621005:   { return 2630; }
		case 2172603:   { return 2631; }
		case 1448402:   { return 2632; }
		case 20262569:  { return 2633; } // Kings and Nines
		case 15320479:  { return 2634; }
		case 14332061:  { return 2635; }
		case 11366807:  { return 2636; }
		case 8401553:   { return 2637; }
		case 6424717:   { return 2638; }
		case 5436299:   { return 2639; }
		case 3459463:   { return 2640; }
		case 2471045:   { return 2641; }
		case 1482627:   { return 2642; }
		case 988418:    { return 2643; }
		case 16221281:  { return 2644; } // Kings and Eights
		case 12264871:  { return 2645; }
		case 11473589:  { return 2646; }
		case 9099743:   { return 2647; }
		case 7517179:   { return 2648; }
		case 5143333:   { return 2649; }
		case 4352051:   { return 2650; }
		case 2769487:   { return 2651; }
		case 1978205:   { return 2652; }
		case 1186923:   { return 2653; }
		case 791282:    { return 2654; }
		case 9485801:   { return 2655; } // Kings and Sevens
		case 7172191:   { return 2656; }
		case 6709469:   { return 2657; }
		case 5321303:   { return 2658; }
		case 4395859:   { return 2659; }
		case 3933137:   { return 2660; }
		case 2544971:   { return 2661; }
		case 1619527:   { return 2662; }
		case 1156805:   { return 2663; }
		case 694083:    { return 2664; }
		case 462722:    { return 2665; }
		case 6791609:   { return 2666; } // Kings and Sixes
		case 5135119:   { return 2667; }
		case 4803821:   { return 2668; }
		case 3809927:   { return 2669; }
		case 3147331:   { return 2670; }
		case 2816033:   { return 2671; }
		case 2153437:   { return 2672; }
		case 1159543:   { return 2673; }
		case 828245:    { return 2674; }
		case 496947:    { return 2675; }
		case 331298:    { return 2676; }
		case 2750321:   { return 2677; } // Kings and Fives
		case 2079511:   { return 2678; }
		case 1945349:   { return 2679; }
		case 1542863:   { return 2680; }
		case 1274539:   { return 2681; }
		case 1140377:   { return 2682; }
		case 872053:    { return 2683; }
		case 737891:    { return 2684; }
		case 335405:    { return 2685; }
		case 201243:    { return 2686; }
		case 134162:    { return 2687; }
		case 1403225:   { return 2688; } // Kings and Fours
		case 1060975:   { return 2689; }
		case 992525:    { return 2690; }
		case 787175:    { return 2691; }
		case 650275:    { return 2692; }
		case 581825:    { return 2693; }
		case 444925:    { return 2694; }
		case 376475:    { return 2695; }
		case 239575:    { return 2696; }
		case 102675:    { return 2697; }
		case 68450:             { return 2698; }
		case 505161:    { return 2699; } // Kings and Treys
		case 381951:    { return 2700; }
		case 357309:    { return 2701; }
		case 283383:    { return 2702; }
		case 234099:    { return 2703; }
		case 209457:    { return 2704; }
		case 160173:    { return 2705; }
		case 135531:    { return 2706; }
		case 86247:             { return 2707; }
		case 61605:             { return 2708; }
		case 24642:             { return 2709; }
		case 224516:    { return 2710; } // Kings and Deuces
		case 169756:    { return 2711; }
		case 158804:    { return 2712; }
		case 125948:    { return 2713; }
		case 104044:    { return 2714; }
		case 93092:             { return 2715; }
		case 71188:             { return 2716; }
		case 60236:             { return 2717; }
		case 38332:             { return 2718; }
		case 27380:             { return 2719; }
		case 16428:             { return 2720; }
		case 33136241:  { return 2721; } // Queens and Jacks
		case 29903437:  { return 2722; }
		case 18588623:  { return 2723; }
		case 15355819:  { return 2724; }
		case 13739417:  { return 2725; }
		case 10506613:  { return 2726; }
		case 8890211:   { return 2727; }
		case 5657407:   { return 2728; }
		case 4041005:   { return 2729; }
		case 2424603:   { return 2730; }
		case 1616402:   { return 2731; }
		case 20843129:  { return 2732; } // Queens and Tens
		case 18809653:  { return 2733; }
		case 14742701:  { return 2734; }
		case 9659011:   { return 2735; }
		case 8642273:   { return 2736; }
		case 6608797:   { return 2737; }
		case 5592059:   { return 2738; }
		case 3558583:   { return 2739; }
		case 2541845:   { return 2740; }
		case 1525107:   { return 2741; }
		case 1016738:   { return 2742; }
		case 14223761:  { return 2743; } // Queens and Nines
		case 12836077:  { return 2744; }
		case 10060709:  { return 2745; }
		case 7979183:   { return 2746; }
		case 5897657:   { return 2747; }
		case 4509973:   { return 2748; }
		case 3816131:   { return 2749; }
		case 2428447:   { return 2750; }
		case 1734605:   { return 2751; }
		case 1040763:   { return 2752; }
		case 693842:    { return 2753; }
		case 11386889:  { return 2754; } // Queens and Eights
		case 10275973:  { return 2755; }
		case 8054141:   { return 2756; }
		case 6387767:   { return 2757; }
		case 5276851:   { return 2758; }
		case 3610477:   { return 2759; }
		case 3055019:   { return 2760; }
		case 1944103:   { return 2761; }
		case 1388645:   { return 2762; }
		case 833187:    { return 2763; }
		case 555458:    { return 2764; }
		case 6658769:   { return 2765; } // Queens and Sevens
		case 6009133:   { return 2766; }
		case 4709861:   { return 2767; }
		case 3735407:   { return 2768; }
		case 3085771:   { return 2769; }
		case 2760953:   { return 2770; }
		case 1786499:   { return 2771; }
		case 1136863:   { return 2772; }
		case 812045:    { return 2773; }
		case 487227:    { return 2774; }
		case 324818:    { return 2775; }
		case 4767521:   { return 2776; } // Queens and Sixes
		case 4302397:   { return 2777; }
		case 3372149:   { return 2778; }
		case 2674463:   { return 2779; }
		case 2209339:   { return 2780; }
		case 1976777:   { return 2781; }
		case 1511653:   { return 2782; }
		case 813967:    { return 2783; }
		case 581405:    { return 2784; }
		case 348843:    { return 2785; }
		case 232562:    { return 2786; }
		case 1930649:   { return 2787; } // Queens and Fives
		case 1742293:   { return 2788; }
		case 1365581:   { return 2789; }
		case 1083047:   { return 2790; }
		case 894691:    { return 2791; }
		case 800513:    { return 2792; }
		case 612157:    { return 2793; }
		case 517979:    { return 2794; }
		case 235445:    { return 2795; }
		case 141267:    { return 2796; }
		case 94178:             { return 2797; }
		case 985025:    { return 2798; } // Queens and Fours
		case 888925:    { return 2799; }
		case 696725:    { return 2800; }
		case 552575:    { return 2801; }
		case 456475:    { return 2802; }
		case 408425:    { return 2803; }
		case 312325:    { return 2804; }
		case 264275:    { return 2805; }
		case 168175:    { return 2806; }
		case 72075:             { return 2807; }
		case 48050:             { return 2808; }
		case 354609:    { return 2809; } // Queens and Treys
		case 320013:    { return 2810; }
		case 250821:    { return 2811; }
		case 198927:    { return 2812; }
		case 164331:    { return 2813; }
		case 147033:    { return 2814; }
		case 112437:    { return 2815; }
		case 95139:             { return 2816; }
		case 60543:             { return 2817; }
		case 43245:             { return 2818; }
		case 17298:             { return 2819; }
		case 157604:    { return 2820; } // Queens and Deuces
		case 142228:    { return 2821; }
		case 111476:    { return 2822; }
		case 88412:             { return 2823; }
		case 73036:             { return 2824; }
		case 65348:             { return 2825; }
		case 49972:             { return 2826; }
		case 42284:             { return 2827; }
		case 26908:             { return 2828; }
		case 19220:             { return 2829; }
		case 11532:             { return 2830; }
		case 18240449:  { return 2831; } // Jacks and Tens
		case 16460893:  { return 2832; }
		case 13791559:  { return 2833; }
		case 8452891:   { return 2834; }
		case 7563113:   { return 2835; }
		case 5783557:   { return 2836; }
		case 4893779:   { return 2837; }
		case 3114223:   { return 2838; }
		case 2224445:   { return 2839; }
		case 1334667:   { return 2840; }
		case 889778:    { return 2841; }
		case 12447641:  { return 2842; } // Jacks and Nines
		case 11233237:  { return 2843; }
		case 9411631:   { return 2844; }
		case 6982823:   { return 2845; }
		case 5161217:   { return 2846; }
		case 3946813:   { return 2847; }
		case 3339611:   { return 2848; }
		case 2125207:   { return 2849; }
		case 1518005:   { return 2850; }
		case 910803:    { return 2851; }
		case 607202:    { return 2852; }
		case 9965009:   { return 2853; } // Jacks and Eights
		case 8992813:   { return 2854; }
		case 7534519:   { return 2855; }
		case 5590127:   { return 2856; }
		case 4617931:   { return 2857; }
		case 3159637:   { return 2858; }
		case 2673539:   { return 2859; }
		case 1701343:   { return 2860; }
		case 1215245:   { return 2861; }
		case 729147:    { return 2862; }
		case 486098:    { return 2863; }
		case 5827289:   { return 2864; } // Jacks and Sevens
		case 5258773:   { return 2865; }
		case 4405999:   { return 2866; }
		case 3268967:   { return 2867; }
		case 2700451:   { return 2868; }
		case 2416193:   { return 2869; }
		case 1563419:   { return 2870; }
		case 994903:    { return 2871; }
		case 710645:    { return 2872; }
		case 426387:    { return 2873; }
		case 284258:    { return 2874; }
		case 4172201:   { return 2875; } // Jacks and Sixes
		case 3765157:   { return 2876; }
		case 3154591:   { return 2877; }
		case 2340503:   { return 2878; }
		case 1933459:   { return 2879; }
		case 1729937:   { return 2880; }
		case 1322893:   { return 2881; }
		case 712327:    { return 2882; }
		case 508805:    { return 2883; }
		case 305283:    { return 2884; }
		case 203522:    { return 2885; }
		case 1689569:   { return 2886; } // Jacks and Fives
		case 1524733:   { return 2887; }
		case 1277479:   { return 2888; }
		case 947807:    { return 2889; }
		case 782971:    { return 2890; }
		case 700553:    { return 2891; }
		case 535717:    { return 2892; }
		case 453299:    { return 2893; }
		case 206045:    { return 2894; }
		case 123627:    { return 2895; }
		case 82418:             { return 2896; }
		case 862025:    { return 2897; } // Jacks and Fours
		case 777925:    { return 2898; }
		case 651775:    { return 2899; }
		case 483575:    { return 2900; }
		case 399475:    { return 2901; }
		case 357425:    { return 2902; }
		case 273325:    { return 2903; }
		case 231275:    { return 2904; }
		case 147175:    { return 2905; }
		case 63075:             { return 2906; }
		case 42050:             { return 2907; }
		case 310329:    { return 2908; } // Jacks and Treys
		case 280053:    { return 2909; }
		case 234639:    { return 2910; }
		case 174087:    { return 2911; }
		case 143811:    { return 2912; }
		case 128673:    { return 2913; }
		case 98397:             { return 2914; }
		case 83259:             { return 2915; }
		case 52983:             { return 2916; }
		case 37845:             { return 2917; }
		case 15138:             { return 2918; }
		case 137924:    { return 2919; } // Jacks and Deuces
		case 124468:    { return 2920; }
		case 104284:    { return 2921; }
		case 77372:             { return 2922; }
		case 63916:             { return 2923; }
		case 57188:             { return 2924; }
		case 43732:             { return 2925; }
		case 37004:             { return 2926; }
		case 23548:             { return 2927; }
		case 16820:             { return 2928; }
		case 10092:             { return 2929; }
		case 7829729:   { return 2930; } // Tens and Nines
		case 7065853:   { return 2931; }
		case 5920039:   { return 2932; }
		case 5538101:   { return 2933; }
		case 3246473:   { return 2934; }
		case 2482597:   { return 2935; }
		case 2100659:   { return 2936; }
		case 1336783:   { return 2937; }
		case 954845:    { return 2938; }
		case 572907:    { return 2939; }
		case 381938:    { return 2940; }
		case 6268121:   { return 2941; } // Tens and Eights
		case 5656597:   { return 2942; }
		case 4739311:   { return 2943; }
		case 4433549:   { return 2944; }
		case 2904739:   { return 2945; }
		case 1987453:   { return 2946; }
		case 1681691:   { return 2947; }
		case 1070167:   { return 2948; }
		case 764405:    { return 2949; }
		case 458643:    { return 2950; }
		case 305762:    { return 2951; }
		case 3665441:   { return 2952; } // Tens and Sevens
		case 3307837:   { return 2953; }
		case 2771431:   { return 2954; }
		case 2592629:   { return 2955; }
		case 1698619:   { return 2956; }
		case 1519817:   { return 2957; }
		case 983411:    { return 2958; }
		case 625807:    { return 2959; }
		case 447005:    { return 2960; }
		case 268203:    { return 2961; }
		case 178802:    { return 2962; }
		case 2624369:   { return 2963; } // Tens and Sixes
		case 2368333:   { return 2964; }
		case 1984279:   { return 2965; }
		case 1856261:   { return 2966; }
		case 1216171:   { return 2967; }
		case 1088153:   { return 2968; }
		case 832117:    { return 2969; }
		case 448063:    { return 2970; }
		case 320045:    { return 2971; }
		case 192027:    { return 2972; }
		case 128018:    { return 2973; }
		case 1062761:   { return 2974; } // Tens and Fives
		case 959077:    { return 2975; }
		case 803551:    { return 2976; }
		case 751709:    { return 2977; }
		case 492499:    { return 2978; }
		case 440657:    { return 2979; }
		case 336973:    { return 2980; }
		case 285131:    { return 2981; }
		case 129605:    { return 2982; }
		case 77763:             { return 2983; }
		case 51842:             { return 2984; }
		case 542225:    { return 2985; } // Tens and Fours
		case 489325:    { return 2986; }
		case 409975:    { return 2987; }
		case 383525:    { return 2988; }
		case 251275:    { return 2989; }
		case 224825:    { return 2990; }
		case 171925:    { return 2991; }
		case 145475:    { return 2992; }
		case 92575:             { return 2993; }
		case 39675:             { return 2994; }
		case 26450:             { return 2995; }
		case 195201:    { return 2996; } // Tens and Treys
		case 176157:    { return 2997; }
		case 147591:    { return 2998; }
		case 138069:    { return 2999; }
		case 90459:             { return 3000; }
		case 80937:             { return 3001; }
		case 61893:             { return 3002; }
		case 52371:             { return 3003; }
		case 33327:             { return 3004; }
		case 23805:             { return 3005; }
		case 9522:              { return 3006; }
		case 86756:             { return 3007; } // Tens and Deuces
		case 78292:             { return 3008; }
		case 65596:             { return 3009; }
		case 61364:             { return 3010; }
		case 40204:             { return 3011; }
		case 35972:             { return 3012; }
		case 27508:             { return 3013; }
		case 23276:             { return 3014; }
		case 14812:             { return 3015; }
		case 10580:             { return 3016; }
		case 6348:              { return 3017; }
		case 4277489:   { return 3018; } // Nines and Eights
		case 3860173:   { return 3019; }
		case 3234199:   { return 3020; }
		case 3025541:   { return 3021; }
		case 2399567:   { return 3022; }
		case 1356277:   { return 3023; }
		case 1147619:   { return 3024; }
		case 730303:    { return 3025; }
		case 521645:    { return 3026; }
		case 312987:    { return 3027; }
		case 208658:    { return 3028; }
		case 2501369:   { return 3029; } // Nines and Sevens
		case 2257333:   { return 3030; }
		case 1891279:   { return 3031; }
		case 1769261:   { return 3032; }
		case 1403207:   { return 3033; }
		case 1037153:   { return 3034; }
		case 671099:    { return 3035; }
		case 427063:    { return 3036; }
		case 305045:    { return 3037; }
		case 183027:    { return 3038; }
		case 122018:    { return 3039; }
		case 1790921:   { return 3040; } // Nines and Sixes
		case 1616197:   { return 3041; }
		case 1354111:   { return 3042; }
		case 1266749:   { return 3043; }
		case 1004663:   { return 3044; }
		case 742577:    { return 3045; }
		case 567853:    { return 3046; }
		case 305767:    { return 3047; }
		case 218405:    { return 3048; }
		case 131043:    { return 3049; }
		case 87362:             { return 3050; }
		case 725249:    { return 3051; } // Nines and Fives
		case 654493:    { return 3052; }
		case 548359:    { return 3053; }
		case 512981:    { return 3054; }
		case 406847:    { return 3055; }
		case 300713:    { return 3056; }
		case 229957:    { return 3057; }
		case 194579:    { return 3058; }
		case 88445:             { return 3059; }
		case 53067:             { return 3060; }
		case 35378:             { return 3061; }
		case 370025:    { return 3062; } // Nines and Fours
		case 333925:    { return 3063; }
		case 279775:    { return 3064; }
		case 261725:    { return 3065; }
		case 207575:    { return 3066; }
		case 153425:    { return 3067; }
		case 117325:    { return 3068; }
		case 99275:             { return 3069; }
		case 63175:             { return 3070; }
		case 27075:             { return 3071; }
		case 18050:             { return 3072; }
		case 133209:    { return 3073; } // Nines and Treys
		case 120213:    { return 3074; }
		case 100719:    { return 3075; }
		case 94221:             { return 3076; }
		case 74727:             { return 3077; }
		case 55233:             { return 3078; }
		case 42237:             { return 3079; }
		case 35739:             { return 3080; }
		case 22743:             { return 3081; }
		case 16245:             { return 3082; }
		case 6498:              { return 3083; }
		case 59204:             { return 3084; } // Nines and Deuces
		case 53428:             { return 3085; }
		case 44764:             { return 3086; }
		case 41876:             { return 3087; }
		case 33212:             { return 3088; }
		case 24548:             { return 3089; }
		case 18772:             { return 3090; }
		case 15884:             { return 3091; }
		case 10108:             { return 3092; }
		case 7220:              { return 3093; }
		case 4332:              { return 3094; }
		case 2002481:   { return 3095; } // Eights and Sevens
		case 1807117:   { return 3096; }
		case 1514071:   { return 3097; }
		case 1416389:   { return 3098; }
		case 1123343:   { return 3099; }
		case 927979:    { return 3100; }
		case 537251:    { return 3101; }
		case 341887:    { return 3102; }
		case 244205:    { return 3103; }
		case 146523:    { return 3104; }
		case 97682:             { return 3105; }
		case 1433729:   { return 3106; } // Eights and Sixes
		case 1293853:   { return 3107; }
		case 1084039:   { return 3108; }
		case 1014101:   { return 3109; }
		case 804287:    { return 3110; }
		case 664411:    { return 3111; }
		case 454597:    { return 3112; }
		case 244783:    { return 3113; }
		case 174845:    { return 3114; }
		case 104907:    { return 3115; }
		case 69938:             { return 3116; }
		case 580601:    { return 3117; } // Eights and Fives
		case 523957:    { return 3118; }
		case 438991:    { return 3119; }
		case 410669:    { return 3120; }
		case 325703:    { return 3121; }
		case 269059:    { return 3122; }
		case 184093:    { return 3123; }
		case 155771:    { return 3124; }
		case 70805:             { return 3125; }
		case 42483:             { return 3126; }
		case 28322:             { return 3127; }
		case 296225:    { return 3128; } // Eights and Fours
		case 267325:    { return 3129; }
		case 223975:    { return 3130; }
		case 209525:    { return 3131; }
		case 166175:    { return 3132; }
		case 137275:    { return 3133; }
		case 93925:             { return 3134; }
		case 79475:             { return 3135; }
		case 50575:             { return 3136; }
		case 21675:             { return 3137; }
		case 14450:             { return 3138; }
		case 106641:    { return 3139; } // Eights and Treys
		case 96237:             { return 3140; }
		case 80631:             { return 3141; }
		case 75429:             { return 3142; }
		case 59823:             { return 3143; }
		case 49419:             { return 3144; }
		case 33813:             { return 3145; }
		case 28611:             { return 3146; }
		case 18207:             { return 3147; }
		case 13005:             { return 3148; }
		case 5202:              { return 3149; }
		case 47396:             { return 3150; } // Eights and Deuces
		case 42772:             { return 3151; }
		case 35836:             { return 3152; }
		case 33524:             { return 3153; }
		case 26588:             { return 3154; }
		case 21964:             { return 3155; }
		case 15028:             { return 3156; }
		case 12716:             { return 3157; }
		case 8092:              { return 3158; }
		case 5780:              { return 3159; }
		case 3468:              { return 3160; }
		case 838409:    { return 3161; } // Sevens and Sixes
		case 756613:    { return 3162; }
		case 633919:    { return 3163; }
		case 593021:    { return 3164; }
		case 470327:    { return 3165; }
		case 388531:    { return 3166; }
		case 347633:    { return 3167; }
		case 143143:    { return 3168; }
		case 102245:    { return 3169; }
		case 61347:             { return 3170; }
		case 40898:             { return 3171; }
		case 339521:    { return 3172; } // Sevens and Fives
		case 306397:    { return 3173; }
		case 256711:    { return 3174; }
		case 240149:    { return 3175; }
		case 190463:    { return 3176; }
		case 157339:    { return 3177; }
		case 140777:    { return 3178; }
		case 91091:             { return 3179; }
		case 41405:             { return 3180; }
		case 24843:             { return 3181; }
		case 16562:             { return 3182; }
		case 173225:    { return 3183; } // Sevens and Fours
		case 156325:    { return 3184; }
		case 130975:    { return 3185; }
		case 122525:    { return 3186; }
		case 97175:             { return 3187; }
		case 80275:             { return 3188; }
		case 71825:             { return 3189; }
		case 46475:             { return 3190; }
		case 29575:             { return 3191; }
		case 12675:             { return 3192; }
		case 8450:              { return 3193; }
		case 62361:             { return 3194; } // Sevens and Treys
		case 56277:             { return 3195; }
		case 47151:             { return 3196; }
		case 44109:             { return 3197; }
		case 34983:             { return 3198; }
		case 28899:             { return 3199; }
		case 25857:             { return 3200; }
		case 16731:             { return 3201; }
		case 10647:             { return 3202; }
		case 7605:              { return 3203; }
		case 3042:              { return 3204; }
		case 27716:             { return 3205; } // Sevens and Deuces
		case 25012:             { return 3206; }
		case 20956:             { return 3207; }
		case 19604:             { return 3208; }
		case 15548:             { return 3209; }
		case 12844:             { return 3210; }
		case 11492:             { return 3211; }
		case 7436:              { return 3212; }
		case 4732:              { return 3213; }
		case 3380:              { return 3214; }
		case 2028:              { return 3215; }
		case 243089:    { return 3216; } // Sixes and Fives
		case 219373:    { return 3217; }
		case 183799:    { return 3218; }
		case 171941:    { return 3219; }
		case 136367:    { return 3220; }
		case 112651:    { return 3221; }
		case 100793:    { return 3222; }
		case 77077:             { return 3223; }
		case 29645:             { return 3224; }
		case 17787:             { return 3225; }
		case 11858:             { return 3226; }
		case 124025:    { return 3227; } // Sixes and Fours
		case 111925:    { return 3228; }
		case 93775:             { return 3229; }
		case 87725:             { return 3230; }
		case 69575:             { return 3231; }
		case 57475:             { return 3232; }
		case 51425:             { return 3233; }
		case 39325:             { return 3234; }
		case 21175:             { return 3235; }
		case 9075:              { return 3236; }
		case 6050:              { return 3237; }
		case 44649:             { return 3238; } // Sixes and Treys
		case 40293:             { return 3239; }
		case 33759:             { return 3240; }
		case 31581:             { return 3241; }
		case 25047:             { return 3242; }
		case 20691:             { return 3243; }
		case 18513:             { return 3244; }
		case 14157:             { return 3245; }
		case 7623:              { return 3246; }
		case 5445:              { return 3247; }
		case 2178:              { return 3248; }
		case 19844:             { return 3249; } // Sixes and Deuces
		case 17908:             { return 3250; }
		case 15004:             { return 3251; }
		case 14036:             { return 3252; }
		case 11132:             { return 3253; }
		case 9196:              { return 3254; }
		case 8228:              { return 3255; }
		case 6292:              { return 3256; }
		case 3388:              { return 3257; }
		case 2420:              { return 3258; }
		case 1452:              { return 3259; }
		case 50225:             { return 3260; } // Fives and Fours
		case 45325:             { return 3261; }
		case 37975:             { return 3262; }
		case 35525:             { return 3263; }
		case 28175:             { return 3264; }
		case 23275:             { return 3265; }
		case 20825:             { return 3266; }
		case 15925:             { return 3267; }
		case 13475:             { return 3268; }
		case 3675:              { return 3269; }
		case 2450:              { return 3270; }
		case 18081:             { return 3271; } // Fives and Treys
		case 16317:             { return 3272; }
		case 13671:             { return 3273; }
		case 12789:             { return 3274; }
		case 10143:             { return 3275; }
		case 8379:              { return 3276; }
		case 7497:              { return 3277; }
		case 5733:              { return 3278; }
		case 4851:              { return 3279; }
		case 2205:              { return 3280; }
		case 882:               { return 3281; }
		case 8036:              { return 3282; } // Fives and Deuces
		case 7252:              { return 3283; }
		case 6076:              { return 3284; }
		case 5684:              { return 3285; }
		case 4508:              { return 3286; }
		case 3724:              { return 3287; }
		case 3332:              { return 3288; }
		case 2548:              { return 3289; }
		case 2156:              { return 3290; }
		case 980:               { return 3291; }
		case 588:               { return 3292; }
		case 9225:              { return 3293; } // Fours and Treys
		case 8325:              { return 3294; }
		case 6975:              { return 3295; }
		case 6525:              { return 3296; }
		case 5175:              { return 3297; }
		case 4275:              { return 3298; }
		case 3825:              { return 3299; }
		case 2925:              { return 3300; }
		case 2475:              { return 3301; }
		case 1575:              { return 3302; }
		case 450:               { return 3303; }
		case 4100:              { return 3304; } // Fours and Deuces
		case 3700:              { return 3305; }
		case 3100:              { return 3306; }
		case 2900:              { return 3307; }
		case 2300:              { return 3308; }
		case 1900:              { return 3309; }
		case 1700:              { return 3310; }
		case 1300:              { return 3311; }
		case 1100:              { return 3312; }
		case 700:               { return 3313; }
		case 300:               { return 3314; }
		case 1476:              { return 3315; } // Treys and Deuces
		case 1332:              { return 3316; }
		case 1116:              { return 3317; }
		case 1044:              { return 3318; }
		case 828:               { return 3319; }
		case 684:               { return 3320; }
		case 612:               { return 3321; }
		case 468:               { return 3322; }
		case 396:               { return 3323; }
		case 252:               { return 3324; }
		case 180:               { return 3325; }
		case 55915103:  { return 3326; } // Pair of Aces
		case 44346461:  { return 3327; }
		case 36634033:  { return 3328; }
		case 32777819:  { return 3329; }
		case 25065391:  { return 3330; }
		case 21209177:  { return 3331; }
		case 13496749:  { return 3332; }
		case 9640535:   { return 3333; }
		case 5784321:   { return 3334; }
		case 3856214:   { return 3335; }
		case 41485399:  { return 3336; }
		case 34270547:  { return 3337; }
		case 30663121:  { return 3338; }
		case 23448269:  { return 3339; }
		case 19840843:  { return 3340; }
		case 12625991:  { return 3341; }
		case 9018565:   { return 3342; }
		case 5411139:   { return 3343; }
		case 3607426:   { return 3344; }
		case 27180089:  { return 3345; }
		case 24319027:  { return 3346; }
		case 18596903:  { return 3347; }
		case 15735841:  { return 3348; }
		case 10013717:  { return 3349; }
		case 7152655:   { return 3350; }
		case 4291593:   { return 3351; }
		case 2861062:   { return 3352; }
		case 20089631:  { return 3353; }
		case 15362659:  { return 3354; }
		case 12999173:  { return 3355; }
		case 8272201:   { return 3356; }
		case 5908715:   { return 3357; }
		case 3545229:   { return 3358; }
		case 2363486:   { return 3359; }
		case 13745537:  { return 3360; }
		case 11630839:  { return 3361; }
		case 7401443:   { return 3362; }
		case 5286745:   { return 3363; }
		case 3172047:   { return 3364; }
		case 2114698:   { return 3365; }
		case 8894171:   { return 3366; }
		case 5659927:   { return 3367; }
		case 4042805:   { return 3368; }
		case 2425683:   { return 3369; }
		case 1617122:   { return 3370; }
		case 4789169:   { return 3371; }
		case 3420835:   { return 3372; }
		case 2052501:   { return 3373; }
		case 1368334:   { return 3374; }
		case 2176895:   { return 3375; }
		case 1306137:   { return 3376; }
		case 870758:    { return 3377; }
		case 932955:    { return 3378; }
		case 621970:    { return 3379; }
		case 373182:    { return 3380; }
		case 34758037:  { return 3381; }
		case 28713161:  { return 3382; }
		case 25690723:  { return 3383; }
		case 19645847:  { return 3384; }
		case 16623409:  { return 3385; }
		case 10578533:  { return 3386; }
		case 7556095:   { return 3387; }
		case 4533657:   { return 3388; }
		case 3022438:   { return 3389; }
		case 22772507:  { return 3390; }
		case 20375401:  { return 3391; }
		case 15581189:  { return 3392; }
		case 13184083:  { return 3393; }
		case 8389871:   { return 3394; }
		case 5992765:   { return 3395; }
		case 3595659:   { return 3396; }
		case 2397106:   { return 3397; }
		case 16831853:  { return 3398; }
		case 12871417:  { return 3399; }
		case 10891199:  { return 3400; }
		case 6930763:   { return 3401; }
		case 4950545:   { return 3402; }
		case 2970327:   { return 3403; }
		case 1980218:   { return 3404; }
		case 11516531:  { return 3405; }
		case 9744757:   { return 3406; }
		case 6201209:   { return 3407; }
		case 4429435:   { return 3408; }
		case 2657661:   { return 3409; }
		case 1771774:   { return 3410; }
		case 7451873:   { return 3411; }
		case 4742101:   { return 3412; }
		case 3387215:   { return 3413; }
		case 2032329:   { return 3414; }
		case 1354886:   { return 3415; }
		case 4012547:   { return 3416; }
		case 2866105:   { return 3417; }
		case 1719663:   { return 3418; }
		case 1146442:   { return 3419; }
		case 1823885:   { return 3420; }
		case 1094331:   { return 3421; }
		case 729554:    { return 3422; }
		case 781665:    { return 3423; }
		case 521110:    { return 3424; }
		case 312666:    { return 3425; }
		case 21303313:  { return 3426; }
		case 19060859:  { return 3427; }
		case 14575951:  { return 3428; }
		case 12333497:  { return 3429; }
		case 7848589:   { return 3430; }
		case 5606135:   { return 3431; }
		case 3363681:   { return 3432; }
		case 2242454:   { return 3433; }
		case 15745927:  { return 3434; }
		case 12041003:  { return 3435; }
		case 10188541:  { return 3436; }
		case 6483617:   { return 3437; }
		case 4631155:   { return 3438; }
		case 2778693:   { return 3439; }
		case 1852462:   { return 3440; }
		case 10773529:  { return 3441; }
		case 9116063:   { return 3442; }
		case 5801131:   { return 3443; }
		case 4143665:   { return 3444; }
		case 2486199:   { return 3445; }
		case 1657466:   { return 3446; }
		case 6971107:   { return 3447; }
		case 4436159:   { return 3448; }
		case 3168685:   { return 3449; }
		case 1901211:   { return 3450; }
		case 1267474:   { return 3451; }
		case 3753673:   { return 3452; }
		case 2681195:   { return 3453; }
		case 1608717:   { return 3454; }
		case 1072478:   { return 3455; }
		case 1706215:   { return 3456; }
		case 1023729:   { return 3457; }
		case 682486:    { return 3458; }
		case 731235:    { return 3459; }
		case 487490:    { return 3460; }
		case 292494:    { return 3461; }
		case 12488149:  { return 3462; }
		case 9549761:   { return 3463; }
		case 8080567:   { return 3464; }
		case 5142179:   { return 3465; }
		case 3672985:   { return 3466; }
		case 2203791:   { return 3467; }
		case 1469194:   { return 3468; }
		case 8544523:   { return 3469; }
		case 7229981:   { return 3470; }
		case 4600897:   { return 3471; }
		case 3286355:   { return 3472; }
		case 1971813:   { return 3473; }
		case 1314542:   { return 3474; }
		case 5528809:   { return 3475; }
		case 3518333:   { return 3476; }
		case 2513095:   { return 3477; }
		case 1507857:   { return 3478; }
		case 1005238:   { return 3479; }
		case 2977051:   { return 3480; }
		case 2126465:   { return 3481; }
		case 1275879:   { return 3482; }
		case 850586:    { return 3483; }
		case 1353205:   { return 3484; }
		case 811923:    { return 3485; }
		case 541282:    { return 3486; }
		case 579945:    { return 3487; }
		case 386630:    { return 3488; }
		case 231978:    { return 3489; }
		case 7058519:   { return 3490; }
		case 5972593:   { return 3491; }
		case 3800741:   { return 3492; }
		case 2714815:   { return 3493; }
		case 1628889:   { return 3494; }
		case 1085926:   { return 3495; }
		case 4567277:   { return 3496; }
		case 2906449:   { return 3497; }
		case 2076035:   { return 3498; }
		case 1245621:   { return 3499; }
		case 830414:    { return 3500; }
		case 2459303:   { return 3501; }
		case 1756645:   { return 3502; }
		case 1053987:   { return 3503; }
		case 702658:    { return 3504; }
		case 1117865:   { return 3505; }
		case 670719:    { return 3506; }
		case 447146:    { return 3507; }
		case 479085:    { return 3508; }
		case 319390:    { return 3509; }
		case 191634:    { return 3510; }
		case 4086511:   { return 3511; }
		case 2600507:   { return 3512; }
		case 1857505:   { return 3513; }
		case 1114503:   { return 3514; }
		case 743002:    { return 3515; }
		case 2200429:   { return 3516; }
		case 1571735:   { return 3517; }
		case 943041:    { return 3518; }
		case 628694:    { return 3519; }
		case 1000195:   { return 3520; }
		case 600117:    { return 3521; }
		case 400078:    { return 3522; }
		case 428655:    { return 3523; }
		case 285770:    { return 3524; }
		case 171462:    { return 3525; }
		case 1682681:   { return 3526; }
		case 1201915:   { return 3527; }
		case 721149:    { return 3528; }
		case 480766:    { return 3529; }
		case 764855:    { return 3530; }
		case 458913:    { return 3531; }
		case 305942:    { return 3532; }
		case 327795:    { return 3533; }
		case 218530:    { return 3534; }
		case 131118:    { return 3535; }
		case 647185:    { return 3536; }
		case 388311:    { return 3537; }
		case 258874:    { return 3538; }
		case 277365:    { return 3539; }
		case 184910:    { return 3540; }
		case 110946:    { return 3541; }
		case 176505:    { return 3542; }
		case 117670:    { return 3543; }
		case 70602:             { return 3544; }
		case 50430:             { return 3545; }
		case 50459971:  { return 3546; } // Pair of Kings
		case 40019977:  { return 3547; }
		case 33059981:  { return 3548; }
		case 29579983:  { return 3549; }
		case 22619987:  { return 3550; }
		case 19139989:  { return 3551; }
		case 12179993:  { return 3552; }
		case 8699995:   { return 3553; }
		case 5219997:   { return 3554; }
		case 3479998:   { return 3555; }
		case 37438043:  { return 3556; }
		case 30927079:  { return 3557; }
		case 27671597:  { return 3558; }
		case 21160633:  { return 3559; }
		case 17905151:  { return 3560; }
		case 11394187:  { return 3561; }
		case 8138705:   { return 3562; }
		case 4883223:   { return 3563; }
		case 3255482:   { return 3564; }
		case 24528373:  { return 3565; }
		case 21946439:  { return 3566; }
		case 16782571:  { return 3567; }
		case 14200637:  { return 3568; }
		case 9036769:   { return 3569; }
		case 6454835:   { return 3570; }
		case 3872901:   { return 3571; }
		case 2581934:   { return 3572; }
		case 18129667:  { return 3573; }
		case 13863863:  { return 3574; }
		case 11730961:  { return 3575; }
		case 7465157:   { return 3576; }
		case 5332255:   { return 3577; }
		case 3199353:   { return 3578; }
		case 2132902:   { return 3579; }
		case 12404509:  { return 3580; }
		case 10496123:  { return 3581; }
		case 6679351:   { return 3582; }
		case 4770965:   { return 3583; }
		case 2862579:   { return 3584; }
		case 1908386:   { return 3585; }
		case 8026447:   { return 3586; }
		case 5107739:   { return 3587; }
		case 3648385:   { return 3588; }
		case 2189031:   { return 3589; }
		case 1459354:   { return 3590; }
		case 4321933:   { return 3591; }
		case 3087095:   { return 3592; }
		case 1852257:   { return 3593; }
		case 1234838:   { return 3594; }
		case 1964515:   { return 3595; }
		case 1178709:   { return 3596; }
		case 785806:    { return 3597; }
		case 841935:    { return 3598; }
		case 561290:    { return 3599; }
		case 336774:    { return 3600; }
		case 28306813:  { return 3601; }
		case 23383889:  { return 3602; }
		case 20922427:  { return 3603; }
		case 15999503:  { return 3604; }
		case 13538041:  { return 3605; }
		case 8615117:   { return 3606; }
		case 6153655:   { return 3607; }
		case 3692193:   { return 3608; }
		case 2461462:   { return 3609; }
		case 18545843:  { return 3610; }
		case 16593649:  { return 3611; }
		case 12689261:  { return 3612; }
		case 10737067:  { return 3613; }
		case 6832679:   { return 3614; }
		case 4880485:   { return 3615; }
		case 2928291:   { return 3616; }
		case 1952194:   { return 3617; }
		case 13707797:  { return 3618; }
		case 10482433:  { return 3619; }
		case 8869751:   { return 3620; }
		case 5644387:   { return 3621; }
		case 4031705:   { return 3622; }
		case 2419023:   { return 3623; }
		case 1612682:   { return 3624; }
		case 9379019:   { return 3625; }
		case 7936093:   { return 3626; }
		case 5050241:   { return 3627; }
		case 3607315:   { return 3628; }
		case 2164389:   { return 3629; }
		case 1442926:   { return 3630; }
		case 6068777:   { return 3631; }
		case 3861949:   { return 3632; }
		case 2758535:   { return 3633; }
		case 1655121:   { return 3634; }
		case 1103414:   { return 3635; }
		case 3267803:   { return 3636; }
		case 2334145:   { return 3637; }
		case 1400487:   { return 3638; }
		case 933658:    { return 3639; }
		case 1485365:   { return 3640; }
		case 891219:    { return 3641; }
		case 594146:    { return 3642; }
		case 636585:    { return 3643; }
		case 424390:    { return 3644; }
		case 254634:    { return 3645; }
		case 17349337:  { return 3646; }
		case 15523091:  { return 3647; }
		case 11870599:  { return 3648; }
		case 10044353:  { return 3649; }
		case 6391861:   { return 3650; }
		case 4565615:   { return 3651; }
		case 2739369:   { return 3652; }
		case 1826246:   { return 3653; }
		case 12823423:  { return 3654; }
		case 9806147:   { return 3655; }
		case 8297509:   { return 3656; }
		case 5280233:   { return 3657; }
		case 3771595:   { return 3658; }
		case 2262957:   { return 3659; }
		case 1508638:   { return 3660; }
		case 8773921:   { return 3661; }
		case 7424087:   { return 3662; }
		case 4724419:   { return 3663; }
		case 3374585:   { return 3664; }
		case 2024751:   { return 3665; }
		case 1349834:   { return 3666; }
		case 5677243:   { return 3667; }
		case 3612791:   { return 3668; }
		case 2580565:   { return 3669; }
		case 1548339:   { return 3670; }
		case 1032226:   { return 3671; }
		case 3056977:   { return 3672; }
		case 2183555:   { return 3673; }
		case 1310133:   { return 3674; }
		case 873422:    { return 3675; }
		case 1389535:   { return 3676; }
		case 833721:    { return 3677; }
		case 555814:    { return 3678; }
		case 595515:    { return 3679; }
		case 397010:    { return 3680; }
		case 238206:    { return 3681; }
		case 10170301:  { return 3682; }
		case 7777289:   { return 3683; }
		case 6580783:   { return 3684; }
		case 4187771:   { return 3685; }
		case 2991265:   { return 3686; }
		case 1794759:   { return 3687; }
		case 1196506:   { return 3688; }
		case 6958627:   { return 3689; }
		case 5888069:   { return 3690; }
		case 3746953:   { return 3691; }
		case 2676395:   { return 3692; }
		case 1605837:   { return 3693; }
		case 1070558:   { return 3694; }
		case 4502641:   { return 3695; }
		case 2865317:   { return 3696; }
		case 2046655:   { return 3697; }
		case 1227993:   { return 3698; }
		case 818662:    { return 3699; }
		case 2424499:   { return 3700; }
		case 1731785:   { return 3701; }
		case 1039071:   { return 3702; }
		case 692714:    { return 3703; }
		case 1102045:   { return 3704; }
		case 661227:    { return 3705; }
		case 440818:    { return 3706; }
		case 472305:    { return 3707; }
		case 314870:    { return 3708; }
		case 188922:    { return 3709; }
		case 5748431:   { return 3710; }
		case 4864057:   { return 3711; }
		case 3095309:   { return 3712; }
		case 2210935:   { return 3713; }
		case 1326561:   { return 3714; }
		case 884374:    { return 3715; }
		case 3719573:   { return 3716; }
		case 2367001:   { return 3717; }
		case 1690715:   { return 3718; }
		case 1014429:   { return 3719; }
		case 676286:    { return 3720; }
		case 2002847:   { return 3721; }
		case 1430605:   { return 3722; }
		case 858363:    { return 3723; }
		case 572242:    { return 3724; }
		case 910385:    { return 3725; }
		case 546231:    { return 3726; }
		case 364154:    { return 3727; }
		case 390165:    { return 3728; }
		case 260110:    { return 3729; }
		case 156066:    { return 3730; }
		case 3328039:   { return 3731; }
		case 2117843:   { return 3732; }
		case 1512745:   { return 3733; }
		case 907647:    { return 3734; }
		case 605098:    { return 3735; }
		case 1792021:   { return 3736; }
		case 1280015:   { return 3737; }
		case 768009:    { return 3738; }
		case 512006:    { return 3739; }
		case 814555:    { return 3740; }
		case 488733:    { return 3741; }
		case 325822:    { return 3742; }
		case 349095:    { return 3743; }
		case 232730:    { return 3744; }
		case 139638:    { return 3745; }
		case 1370369:   { return 3746; }
		case 978835:    { return 3747; }
		case 587301:    { return 3748; }
		case 391534:    { return 3749; }
		case 622895:    { return 3750; }
		case 373737:    { return 3751; }
		case 249158:    { return 3752; }
		case 266955:    { return 3753; }
		case 177970:    { return 3754; }
		case 106782:    { return 3755; }
		case 527065:    { return 3756; }
		case 316239:    { return 3757; }
		case 210826:    { return 3758; }
		case 225885:    { return 3759; }
		case 150590:    { return 3760; }
		case 90354:             { return 3761; }
		case 143745:    { return 3762; }
		case 95830:             { return 3763; }
		case 57498:             { return 3764; }
		case 41070:             { return 3765; }
		case 42277273:  { return 3766; } // Pair of Queens
		case 33530251:  { return 3767; }
		case 27698903:  { return 3768; }
		case 24783229:  { return 3769; }
		case 18951881:  { return 3770; }
		case 16036207:  { return 3771; }
		case 10204859:  { return 3772; }
		case 7289185:   { return 3773; }
		case 4373511:   { return 3774; }
		case 2915674:   { return 3775; }
		case 26280467:  { return 3776; }
		case 21709951:  { return 3777; }
		case 19424693:  { return 3778; }
		case 14854177:  { return 3779; }
		case 12568919:  { return 3780; }
		case 7998403:   { return 3781; }
		case 5713145:   { return 3782; }
		case 3427887:   { return 3783; }
		case 2285258:   { return 3784; }
		case 17218237:  { return 3785; }
		case 15405791:  { return 3786; }
		case 11780899:  { return 3787; }
		case 9968453:   { return 3788; }
		case 6343561:   { return 3789; }
		case 4531115:   { return 3790; }
		case 2718669:   { return 3791; }
		case 1812446:   { return 3792; }
		case 12726523:  { return 3793; }
		case 9732047:   { return 3794; }
		case 8234809:   { return 3795; }
		case 5240333:   { return 3796; }
		case 3743095:   { return 3797; }
		case 2245857:   { return 3798; }
		case 1497238:   { return 3799; }
		case 8707621:   { return 3800; }
		case 7367987:   { return 3801; }
		case 4688719:   { return 3802; }
		case 3349085:   { return 3803; }
		case 2009451:   { return 3804; }
		case 1339634:   { return 3805; }
		case 5634343:   { return 3806; }
		case 3585491:   { return 3807; }
		case 2561065:   { return 3808; }
		case 1536639:   { return 3809; }
		case 1024426:   { return 3810; }
		case 3033877:   { return 3811; }
		case 2167055:   { return 3812; }
		case 1300233:   { return 3813; }
		case 866822:    { return 3814; }
		case 1379035:   { return 3815; }
		case 827421:    { return 3816; }
		case 551614:    { return 3817; }
		case 591015:    { return 3818; }
		case 394010:    { return 3819; }
		case 236406:    { return 3820; }
		case 23716519:  { return 3821; }
		case 19591907:  { return 3822; }
		case 17529601:  { return 3823; }
		case 13404989:  { return 3824; }
		case 11342683:  { return 3825; }
		case 7218071:   { return 3826; }
		case 5155765:   { return 3827; }
		case 3093459:   { return 3828; }
		case 2062306:   { return 3829; }
		case 15538409:  { return 3830; }
		case 13902787:  { return 3831; }
		case 10631543:  { return 3832; }
		case 8995921:   { return 3833; }
		case 5724677:   { return 3834; }
		case 4089055:   { return 3835; }
		case 2453433:   { return 3836; }
		case 1635622:   { return 3837; }
		case 11484911:  { return 3838; }
		case 8782579:   { return 3839; }
		case 7431413:   { return 3840; }
		case 4729081:   { return 3841; }
		case 3377915:   { return 3842; }
		case 2026749:   { return 3843; }
		case 1351166:   { return 3844; }
		case 7858097:   { return 3845; }
		case 6649159:   { return 3846; }
		case 4231283:   { return 3847; }
		case 3022345:   { return 3848; }
		case 1813407:   { return 3849; }
		case 1208938:   { return 3850; }
		case 5084651:   { return 3851; }
		case 3235687:   { return 3852; }
		case 2311205:   { return 3853; }
		case 1386723:   { return 3854; }
		case 924482:    { return 3855; }
		case 2737889:   { return 3856; }
		case 1955635:   { return 3857; }
		case 1173381:   { return 3858; }
		case 782254:    { return 3859; }
		case 1244495:   { return 3860; }
		case 746697:    { return 3861; }
		case 497798:    { return 3862; }
		case 533355:    { return 3863; }
		case 355570:    { return 3864; }
		case 213342:    { return 3865; }
		case 12178753:  { return 3866; }
		case 10896779:  { return 3867; }
		case 8332831:   { return 3868; }
		case 7050857:   { return 3869; }
		case 4486909:   { return 3870; }
		case 3204935:   { return 3871; }
		case 1922961:   { return 3872; }
		case 1281974:   { return 3873; }
		case 9001687:   { return 3874; }
		case 6883643:   { return 3875; }
		case 5824621:   { return 3876; }
		case 3706577:   { return 3877; }
		case 2647555:   { return 3878; }
		case 1588533:   { return 3879; }
		case 1059022:   { return 3880; }
		case 6159049:   { return 3881; }
		case 5211503:   { return 3882; }
		case 3316411:   { return 3883; }
		case 2368865:   { return 3884; }
		case 1421319:   { return 3885; }
		case 947546:    { return 3886; }
		case 3985267:   { return 3887; }
		case 2536079:   { return 3888; }
		case 1811485:   { return 3889; }
		case 1086891:   { return 3890; }
		case 724594:    { return 3891; }
		case 2145913:   { return 3892; }
		case 1532795:   { return 3893; }
		case 919677:    { return 3894; }
		case 613118:    { return 3895; }
		case 975415:    { return 3896; }
		case 585249:    { return 3897; }
		case 390166:    { return 3898; }
		case 418035:    { return 3899; }
		case 278690:    { return 3900; }
		case 167214:    { return 3901; }
		case 7139269:   { return 3902; }
		case 5459441:   { return 3903; }
		case 4619527:   { return 3904; }
		case 2939699:   { return 3905; }
		case 2099785:   { return 3906; }
		case 1259871:   { return 3907; }
		case 839914:    { return 3908; }
		case 4884763:   { return 3909; }
		case 4133261:   { return 3910; }
		case 2630257:   { return 3911; }
		case 1878755:   { return 3912; }
		case 1127253:   { return 3913; }
		case 751502:    { return 3914; }
		case 3160729:   { return 3915; }
		case 2011373:   { return 3916; }
		case 1436695:   { return 3917; }
		case 862017:    { return 3918; }
		case 574678:    { return 3919; }
		case 1701931:   { return 3920; }
		case 1215665:   { return 3921; }
		case 729399:    { return 3922; }
		case 486266:    { return 3923; }
		case 773605:    { return 3924; }
		case 464163:    { return 3925; }
		case 309442:    { return 3926; }
		case 331545:    { return 3927; }
		case 221030:    { return 3928; }
		case 132618:    { return 3929; }
		case 4035239:   { return 3930; }
		case 3414433:   { return 3931; }
		case 2172821:   { return 3932; }
		case 1552015:   { return 3933; }
		case 931209:    { return 3934; }
		case 620806:    { return 3935; }
		case 2611037:   { return 3936; }
		case 1661569:   { return 3937; }
		case 1186835:   { return 3938; }
		case 712101:    { return 3939; }
		case 474734:    { return 3940; }
		case 1405943:   { return 3941; }
		case 1004245:   { return 3942; }
		case 602547:    { return 3943; }
		case 401698:    { return 3944; }
		case 639065:    { return 3945; }
		case 383439:    { return 3946; }
		case 255626:    { return 3947; }
		case 273885:    { return 3948; }
		case 182590:    { return 3949; }
		case 109554:    { return 3950; }
		case 2336191:   { return 3951; }
		case 1486667:   { return 3952; }
		case 1061905:   { return 3953; }
		case 637143:    { return 3954; }
		case 424762:    { return 3955; }
		case 1257949:   { return 3956; }
		case 898535:    { return 3957; }
		case 539121:    { return 3958; }
		case 359414:    { return 3959; }
		case 571795:    { return 3960; }
		case 343077:    { return 3961; }
		case 228718:    { return 3962; }
		case 245055:    { return 3963; }
		case 163370:    { return 3964; }
		case 98022:             { return 3965; }
		case 961961:    { return 3966; }
		case 687115:    { return 3967; }
		case 412269:    { return 3968; }
		case 274846:    { return 3969; }
		case 437255:    { return 3970; }
		case 262353:    { return 3971; }
		case 174902:    { return 3972; }
		case 187395:    { return 3973; }
		case 124930:    { return 3974; }
		case 74958:             { return 3975; }
		case 369985:    { return 3976; }
		case 221991:    { return 3977; }
		case 147994:    { return 3978; }
		case 158565:    { return 3979; }
		case 105710:    { return 3980; }
		case 63426:             { return 3981; }
		case 100905:    { return 3982; }
		case 67270:             { return 3983; }
		case 40362:             { return 3984; }
		case 28830:             { return 3985; }
		case 39549707:  { return 3986; } // Pair of Jacks
		case 29343331:  { return 3987; }
		case 24240143:  { return 3988; }
		case 21688549:  { return 3989; }
		case 16585361:  { return 3990; }
		case 14033767:  { return 3991; }
		case 8930579:   { return 3992; }
		case 6378985:   { return 3993; }
		case 3827391:   { return 3994; }
		case 2551594:   { return 3995; }
		case 24584953:  { return 3996; }
		case 20309309:  { return 3997; }
		case 18171487:  { return 3998; }
		case 13895843:  { return 3999; }
		case 11758021:  { return 4000; }
		case 7482377:   { return 4001; }
		case 5344555:   { return 4002; }
		case 3206733:   { return 4003; }
		case 2137822:   { return 4004; }
		case 15068197:  { return 4005; }
		case 13482071:  { return 4006; }
		case 10309819:  { return 4007; }
		case 8723693:   { return 4008; }
		case 5551441:   { return 4009; }
		case 3965315:   { return 4010; }
		case 2379189:   { return 4011; }
		case 1586126:   { return 4012; }
		case 11137363:  { return 4013; }
		case 8516807:   { return 4014; }
		case 7206529:   { return 4015; }
		case 4585973:   { return 4016; }
		case 3275695:   { return 4017; }
		case 1965417:   { return 4018; }
		case 1310278:   { return 4019; }
		case 7620301:   { return 4020; }
		case 6447947:   { return 4021; }
		case 4103239:   { return 4022; }
		case 2930885:   { return 4023; }
		case 1758531:   { return 4024; }
		case 1172354:   { return 4025; }
		case 4930783:   { return 4026; }
		case 3137771:   { return 4027; }
		case 2241265:   { return 4028; }
		case 1344759:   { return 4029; }
		case 896506:    { return 4030; }
		case 2655037:   { return 4031; }
		case 1896455:   { return 4032; }
		case 1137873:   { return 4033; }
		case 758582:    { return 4034; }
		case 1206835:   { return 4035; }
		case 724101:    { return 4036; }
		case 482734:    { return 4037; }
		case 517215:    { return 4038; }
		case 344810:    { return 4039; }
		case 206886:    { return 4040; }
		case 22186421:  { return 4041; }
		case 18327913:  { return 4042; }
		case 16398659:  { return 4043; }
		case 12540151:  { return 4044; }
		case 10610897:  { return 4045; }
		case 6752389:   { return 4046; }
		case 4823135:   { return 4047; }
		case 2893881:   { return 4048; }
		case 1929254:   { return 4049; }
		case 13598129:  { return 4050; }
		case 12166747:  { return 4051; }
		case 9303983:   { return 4052; }
		case 7872601:   { return 4053; }
		case 5009837:   { return 4054; }
		case 3578455:   { return 4055; }
		case 2147073:   { return 4056; }
		case 1431382:   { return 4057; }
		case 10050791:  { return 4058; }
		case 7685899:   { return 4059; }
		case 6503453:   { return 4060; }
		case 4138561:   { return 4061; }
		case 2956115:   { return 4062; }
		case 1773669:   { return 4063; }
		case 1182446:   { return 4064; }
		case 6876857:   { return 4065; }
		case 5818879:   { return 4066; }
		case 3702923:   { return 4067; }
		case 2644945:   { return 4068; }
		case 1586967:   { return 4069; }
		case 1057978:   { return 4070; }
		case 4449731:   { return 4071; }
		case 2831647:   { return 4072; }
		case 2022605:   { return 4073; }
		case 1213563:   { return 4074; }
		case 809042:    { return 4075; }
		case 2396009:   { return 4076; }
		case 1711435:   { return 4077; }
		case 1026861:   { return 4078; }
		case 684574:    { return 4079; }
		case 1089095:   { return 4080; }
		case 653457:    { return 4081; }
		case 435638:    { return 4082; }
		case 466755:    { return 4083; }
		case 311170:    { return 4084; }
		case 186702:    { return 4085; }
		case 11393027:  { return 4086; }
		case 10193761:  { return 4087; }
		case 7795229:   { return 4088; }
		case 6595963:   { return 4089; }
		case 4197431:   { return 4090; }
		case 2998165:   { return 4091; }
		case 1798899:   { return 4092; }
		case 1199266:   { return 4093; }
		case 8420933:   { return 4094; }
		case 6439537:   { return 4095; }
		case 5448839:   { return 4096; }
		case 3467443:   { return 4097; }
		case 2476745:   { return 4098; }
		case 1486047:   { return 4099; }
		case 990698:    { return 4100; }
		case 5761691:   { return 4101; }
		case 4875277:   { return 4102; }
		case 3102449:   { return 4103; }
		case 2216035:   { return 4104; }
		case 1329621:   { return 4105; }
		case 886414:    { return 4106; }
		case 3728153:   { return 4107; }
		case 2372461:   { return 4108; }
		case 1694615:   { return 4109; }
		case 1016769:   { return 4110; }
		case 677846:    { return 4111; }
		case 2007467:   { return 4112; }
		case 1433905:   { return 4113; }
		case 860343:    { return 4114; }
		case 573562:    { return 4115; }
		case 912485:    { return 4116; }
		case 547491:    { return 4117; }
		case 364994:    { return 4118; }
		case 391065:    { return 4119; }
		case 260710:    { return 4120; }
		case 156426:    { return 4121; }
		case 6247789:   { return 4122; }
		case 4777721:   { return 4123; }
		case 4042687:   { return 4124; }
		case 2572619:   { return 4125; }
		case 1837585:   { return 4126; }
		case 1102551:   { return 4127; }
		case 735034:    { return 4128; }
		case 4274803:   { return 4129; }
		case 3617141:   { return 4130; }
		case 2301817:   { return 4131; }
		case 1644155:   { return 4132; }
		case 986493:    { return 4133; }
		case 657662:    { return 4134; }
		case 2766049:   { return 4135; }
		case 1760213:   { return 4136; }
		case 1257295:   { return 4137; }
		case 754377:    { return 4138; }
		case 502918:    { return 4139; }
		case 1489411:   { return 4140; }
		case 1063865:   { return 4141; }
		case 638319:    { return 4142; }
		case 425546:    { return 4143; }
		case 677005:    { return 4144; }
		case 406203:    { return 4145; }
		case 270802:    { return 4146; }
		case 290145:    { return 4147; }
		case 193430:    { return 4148; }
		case 116058:    { return 4149; }
		case 3531359:   { return 4150; }
		case 2988073:   { return 4151; }
		case 1901501:   { return 4152; }
		case 1358215:   { return 4153; }
		case 814929:    { return 4154; }
		case 543286:    { return 4155; }
		case 2284997:   { return 4156; }
		case 1454089:   { return 4157; }
		case 1038635:   { return 4158; }
		case 623181:    { return 4159; }
		case 415454:    { return 4160; }
		case 1230383:   { return 4161; }
		case 878845:    { return 4162; }
		case 527307:    { return 4163; }
		case 351538:    { return 4164; }
		case 559265:    { return 4165; }
		case 335559:    { return 4166; }
		case 223706:    { return 4167; }
		case 239685:    { return 4168; }
		case 159790:    { return 4169; }
		case 95874:             { return 4170; }
		case 2044471:   { return 4171; }
		case 1301027:   { return 4172; }
		case 929305:    { return 4173; }
		case 557583:    { return 4174; }
		case 371722:    { return 4175; }
		case 1100869:   { return 4176; }
		case 786335:    { return 4177; }
		case 471801:    { return 4178; }
		case 314534:    { return 4179; }
		case 500395:    { return 4180; }
		case 300237:    { return 4181; }
		case 200158:    { return 4182; }
		case 214455:    { return 4183; }
		case 142970:    { return 4184; }
		case 85782:             { return 4185; }
		case 841841:    { return 4186; }
		case 601315:    { return 4187; }
		case 360789:    { return 4188; }
		case 240526:    { return 4189; }
		case 382655:    { return 4190; }
		case 229593:    { return 4191; }
		case 153062:    { return 4192; }
		case 163995:    { return 4193; }
		case 109330:    { return 4194; }
		case 65598:             { return 4195; }
		case 323785:    { return 4196; }
		case 194271:    { return 4197; }
		case 129514:    { return 4198; }
		case 138765:    { return 4199; }
		case 92510:             { return 4200; }
		case 55506:             { return 4201; }
		case 88305:             { return 4202; }
		case 58870:             { return 4203; }
		case 35322:             { return 4204; }
		case 25230:             { return 4205; }
		case 24877283:  { return 4206; } // Pair of Tens
		case 23272297:  { return 4207; }
		case 15247367:  { return 4208; }
		case 13642381:  { return 4209; }
		case 10432409:  { return 4210; }
		case 8827423:   { return 4211; }
		case 5617451:   { return 4212; }
		case 4012465:   { return 4213; }
		case 2407479:   { return 4214; }
		case 1604986:   { return 4215; }
		case 19498411:  { return 4216; }
		case 12774821:  { return 4217; }
		case 11430103:  { return 4218; }
		case 8740667:   { return 4219; }
		case 7395949:   { return 4220; }
		case 4706513:   { return 4221; }
		case 3361795:   { return 4222; }
		case 2017077:   { return 4223; }
		case 1344718:   { return 4224; }
		case 11950639:  { return 4225; }
		case 10692677:  { return 4226; }
		case 8176753:   { return 4227; }
		case 6918791:   { return 4228; }
		case 4402867:   { return 4229; }
		case 3144905:   { return 4230; }
		case 1886943:   { return 4231; }
		case 1257962:   { return 4232; }
		case 7005547:   { return 4233; }
		case 5357183:   { return 4234; }
		case 4533001:   { return 4235; }
		case 2884637:   { return 4236; }
		case 2060455:   { return 4237; }
		case 1236273:   { return 4238; }
		case 824182:    { return 4239; }
		case 4793269:   { return 4240; }
		case 4055843:   { return 4241; }
		case 2580991:   { return 4242; }
		case 1843565:   { return 4243; }
		case 1106139:   { return 4244; }
		case 737426:    { return 4245; }
		case 3101527:   { return 4246; }
		case 1973699:   { return 4247; }
		case 1409785:   { return 4248; }
		case 845871:    { return 4249; }
		case 563914:    { return 4250; }
		case 1670053:   { return 4251; }
		case 1192895:   { return 4252; }
		case 715737:    { return 4253; }
		case 477158:    { return 4254; }
		case 759115:    { return 4255; }
		case 455469:    { return 4256; }
		case 303646:    { return 4257; }
		case 325335:    { return 4258; }
		case 216890:    { return 4259; }
		case 130134:    { return 4260; }
		case 17596127:  { return 4261; }
		case 11528497:  { return 4262; }
		case 10314971:  { return 4263; }
		case 7887919:   { return 4264; }
		case 6674393:   { return 4265; }
		case 4247341:   { return 4266; }
		case 3033815:   { return 4267; }
		case 1820289:   { return 4268; }
		case 1213526:   { return 4269; }
		case 10784723:  { return 4270; }
		case 9649489:   { return 4271; }
		case 7379021:   { return 4272; }
		case 6243787:   { return 4273; }
		case 3973319:   { return 4274; }
		case 2838085:   { return 4275; }
		case 1702851:   { return 4276; }
		case 1135234:   { return 4277; }
		case 6322079:   { return 4278; }
		case 4834531:   { return 4279; }
		case 4090757:   { return 4280; }
		case 2603209:   { return 4281; }
		case 1859435:   { return 4282; }
		case 1115661:   { return 4283; }
		case 743774:    { return 4284; }
		case 4325633:   { return 4285; }
		case 3660151:   { return 4286; }
		case 2329187:   { return 4287; }
		case 1663705:   { return 4288; }
		case 998223:    { return 4289; }
		case 665482:    { return 4290; }
		case 2798939:   { return 4291; }
		case 1781143:   { return 4292; }
		case 1272245:   { return 4293; }
		case 763347:    { return 4294; }
		case 508898:    { return 4295; }
		case 1507121:   { return 4296; }
		case 1076515:   { return 4297; }
		case 645909:    { return 4298; }
		case 430606:    { return 4299; }
		case 685055:    { return 4300; }
		case 411033:    { return 4301; }
		case 274022:    { return 4302; }
		case 293595:    { return 4303; }
		case 195730:    { return 4304; }
		case 117438:    { return 4305; }
		case 9035849:   { return 4306; }
		case 8084707:   { return 4307; }
		case 6182423:   { return 4308; }
		case 5231281:   { return 4309; }
		case 3328997:   { return 4310; }
		case 2377855:   { return 4311; }
		case 1426713:   { return 4312; }
		case 951142:    { return 4313; }
		case 5296877:   { return 4314; }
		case 4050553:   { return 4315; }
		case 3427391:   { return 4316; }
		case 2181067:   { return 4317; }
		case 1557905:   { return 4318; }
		case 934743:    { return 4319; }
		case 623162:    { return 4320; }
		case 3624179:   { return 4321; }
		case 3066613:   { return 4322; }
		case 1951481:   { return 4323; }
		case 1393915:   { return 4324; }
		case 836349:    { return 4325; }
		case 557566:    { return 4326; }
		case 2345057:   { return 4327; }
		case 1492309:   { return 4328; }
		case 1065935:   { return 4329; }
		case 639561:    { return 4330; }
		case 426374:    { return 4331; }
		case 1262723:   { return 4332; }
		case 901945:    { return 4333; }
		case 541167:    { return 4334; }
		case 360778:    { return 4335; }
		case 573965:    { return 4336; }
		case 344379:    { return 4337; }
		case 229586:    { return 4338; }
		case 245985:    { return 4339; }
		case 163990:    { return 4340; }
		case 98394:             { return 4341; }
		case 4955143:   { return 4342; }
		case 3789227:   { return 4343; }
		case 3206269:   { return 4344; }
		case 2040353:   { return 4345; }
		case 1457395:   { return 4346; }
		case 874437:    { return 4347; }
		case 582958:    { return 4348; }
		case 3390361:   { return 4349; }
		case 2868767:   { return 4350; }
		case 1825579:   { return 4351; }
		case 1303985:   { return 4352; }
		case 782391:    { return 4353; }
		case 521594:    { return 4354; }
		case 2193763:   { return 4355; }
		case 1396031:   { return 4356; }
		case 997165:    { return 4357; }
		case 598299:    { return 4358; }
		case 398866:    { return 4359; }
		case 1181257:   { return 4360; }
		case 843755:    { return 4361; }
		case 506253:    { return 4362; }
		case 337502:    { return 4363; }
		case 536935:    { return 4364; }
		case 322161:    { return 4365; }
		case 214774:    { return 4366; }
		case 230115:    { return 4367; }
		case 153410:    { return 4368; }
		case 92046:             { return 4369; }
		case 2221271:   { return 4370; }
		case 1879537:   { return 4371; }
		case 1196069:   { return 4372; }
		case 854335:    { return 4373; }
		case 512601:    { return 4374; }
		case 341734:    { return 4375; }
		case 1437293:   { return 4376; }
		case 914641:    { return 4377; }
		case 653315:    { return 4378; }
		case 391989:    { return 4379; }
		case 261326:    { return 4380; }
		case 773927:    { return 4381; }
		case 552805:    { return 4382; }
		case 331683:    { return 4383; }
		case 221122:    { return 4384; }
		case 351785:    { return 4385; }
		case 211071:    { return 4386; }
		case 140714:    { return 4387; }
		case 150765:    { return 4388; }
		case 100510:    { return 4389; }
		case 60306:             { return 4390; }
		case 1285999:   { return 4391; }
		case 818363:    { return 4392; }
		case 584545:    { return 4393; }
		case 350727:    { return 4394; }
		case 233818:    { return 4395; }
		case 692461:    { return 4396; }
		case 494615:    { return 4397; }
		case 296769:    { return 4398; }
		case 197846:    { return 4399; }
		case 314755:    { return 4400; }
		case 188853:    { return 4401; }
		case 125902:    { return 4402; }
		case 134895:    { return 4403; }
		case 89930:             { return 4404; }
		case 53958:             { return 4405; }
		case 529529:    { return 4406; }
		case 378235:    { return 4407; }
		case 226941:    { return 4408; }
		case 151294:    { return 4409; }
		case 240695:    { return 4410; }
		case 144417:    { return 4411; }
		case 96278:             { return 4412; }
		case 103155:    { return 4413; }
		case 68770:             { return 4414; }
		case 41262:             { return 4415; }
		case 203665:    { return 4416; }
		case 122199:    { return 4417; }
		case 81466:             { return 4418; }
		case 87285:             { return 4419; }
		case 58190:             { return 4420; }
		case 34914:             { return 4421; }
		case 55545:             { return 4422; }
		case 37030:             { return 4423; }
		case 22218:             { return 4424; }
		case 15870:             { return 4425; }
		case 16976747:  { return 4426; } // Pair of Nines
		case 15881473:  { return 4427; }
		case 12595651:  { return 4428; }
		case 9309829:   { return 4429; }
		case 7119281:   { return 4430; }
		case 6024007:   { return 4431; }
		case 3833459:   { return 4432; }
		case 2738185:   { return 4433; }
		case 1642911:   { return 4434; }
		case 1095274:   { return 4435; }
		case 13306099:  { return 4436; }
		case 10553113:  { return 4437; }
		case 7800127:   { return 4438; }
		case 5964803:   { return 4439; }
		case 5047141:   { return 4440; }
		case 3211817:   { return 4441; }
		case 2294155:   { return 4442; }
		case 1376493:   { return 4443; }
		case 917662:    { return 4444; }
		case 9872267:   { return 4445; }
		case 7296893:   { return 4446; }
		case 5579977:   { return 4447; }
		case 4721519:   { return 4448; }
		case 3004603:   { return 4449; }
		case 2146145:   { return 4450; }
		case 1287687:   { return 4451; }
		case 858458:    { return 4452; }
		case 5787191:   { return 4453; }
		case 4425499:   { return 4454; }
		case 3744653:   { return 4455; }
		case 2382961:   { return 4456; }
		case 1702115:   { return 4457; }
		case 1021269:   { return 4458; }
		case 680846:    { return 4459; }
		case 3271021:   { return 4460; }
		case 2767787:   { return 4461; }
		case 1761319:   { return 4462; }
		case 1258085:   { return 4463; }
		case 754851:    { return 4464; }
		case 503234:    { return 4465; }
		case 2116543:   { return 4466; }
		case 1346891:   { return 4467; }
		case 962065:    { return 4468; }
		case 577239:    { return 4469; }
		case 384826:    { return 4470; }
		case 1139677:   { return 4471; }
		case 814055:    { return 4472; }
		case 488433:    { return 4473; }
		case 325622:    { return 4474; }
		case 518035:    { return 4475; }
		case 310821:    { return 4476; }
		case 207214:    { return 4477; }
		case 222015:    { return 4478; }
		case 148010:    { return 4479; }
		case 88806:             { return 4480; }
		case 12007943:  { return 4481; }
		case 9523541:   { return 4482; }
		case 7039139:   { return 4483; }
		case 5382871:   { return 4484; }
		case 4554737:   { return 4485; }
		case 2898469:   { return 4486; }
		case 2070335:   { return 4487; }
		case 1242201:   { return 4488; }
		case 828134:    { return 4489; }
		case 8909119:   { return 4490; }
		case 6585001:   { return 4491; }
		case 5035589:   { return 4492; }
		case 4260883:   { return 4493; }
		case 2711471:   { return 4494; }
		case 1936765:   { return 4495; }
		case 1162059:   { return 4496; }
		case 774706:    { return 4497; }
		case 5222587:   { return 4498; }
		case 3993743:   { return 4499; }
		case 3379321:   { return 4500; }
		case 2150477:   { return 4501; }
		case 1536055:   { return 4502; }
		case 921633:    { return 4503; }
		case 614422:    { return 4504; }
		case 2951897:   { return 4505; }
		case 2497759:   { return 4506; }
		case 1589483:   { return 4507; }
		case 1135345:   { return 4508; }
		case 681207:    { return 4509; }
		case 454138:    { return 4510; }
		case 1910051:   { return 4511; }
		case 1215487:   { return 4512; }
		case 868205:    { return 4513; }
		case 520923:    { return 4514; }
		case 347282:    { return 4515; }
		case 1028489:   { return 4516; }
		case 734635:    { return 4517; }
		case 440781:    { return 4518; }
		case 293854:    { return 4519; }
		case 467495:    { return 4520; }
		case 280497:    { return 4521; }
		case 186998:    { return 4522; }
		case 200355:    { return 4523; }
		case 133570:    { return 4524; }
		case 80142:             { return 4525; }
		case 7464397:   { return 4526; }
		case 5517163:   { return 4527; }
		case 4219007:   { return 4528; }
		case 3569929:   { return 4529; }
		case 2271773:   { return 4530; }
		case 1622695:   { return 4531; }
		case 973617:    { return 4532; }
		case 649078:    { return 4533; }
		case 4375681:   { return 4534; }
		case 3346109:   { return 4535; }
		case 2831323:   { return 4536; }
		case 1801751:   { return 4537; }
		case 1286965:   { return 4538; }
		case 772179:    { return 4539; }
		case 514786:    { return 4540; }
		case 2473211:   { return 4541; }
		case 2092717:   { return 4542; }
		case 1331729:   { return 4543; }
		case 951235:    { return 4544; }
		case 570741:    { return 4545; }
		case 380494:    { return 4546; }
		case 1600313:   { return 4547; }
		case 1018381:   { return 4548; }
		case 727415:    { return 4549; }
		case 436449:    { return 4550; }
		case 290966:    { return 4551; }
		case 861707:    { return 4552; }
		case 615505:    { return 4553; }
		case 369303:    { return 4554; }
		case 246202:    { return 4555; }
		case 391685:    { return 4556; }
		case 235011:    { return 4557; }
		case 156674:    { return 4558; }
		case 167865:    { return 4559; }
		case 111910:    { return 4560; }
		case 67146:             { return 4561; }
		case 4093379:   { return 4562; }
		case 3130231:   { return 4563; }
		case 2648657:   { return 4564; }
		case 1685509:   { return 4565; }
		case 1203935:   { return 4566; }
		case 722361:    { return 4567; }
		case 481574:    { return 4568; }
		case 2313649:   { return 4569; }
		case 1957703:   { return 4570; }
		case 1245811:   { return 4571; }
		case 889865:    { return 4572; }
		case 533919:    { return 4573; }
		case 355946:    { return 4574; }
		case 1497067:   { return 4575; }
		case 952679:    { return 4576; }
		case 680485:    { return 4577; }
		case 408291:    { return 4578; }
		case 272194:    { return 4579; }
		case 806113:    { return 4580; }
		case 575795:    { return 4581; }
		case 345477:    { return 4582; }
		case 230318:    { return 4583; }
		case 366415:    { return 4584; }
		case 219849:    { return 4585; }
		case 146566:    { return 4586; }
		case 157035:    { return 4587; }
		case 104690:    { return 4588; }
		case 62814:             { return 4589; }
		case 1834963:   { return 4590; }
		case 1552661:   { return 4591; }
		case 988057:    { return 4592; }
		case 705755:    { return 4593; }
		case 423453:    { return 4594; }
		case 282302:    { return 4595; }
		case 1187329:   { return 4596; }
		case 755573:    { return 4597; }
		case 539695:    { return 4598; }
		case 323817:    { return 4599; }
		case 215878:    { return 4600; }
		case 639331:    { return 4601; }
		case 456665:    { return 4602; }
		case 273999:    { return 4603; }
		case 182666:    { return 4604; }
		case 290605:    { return 4605; }
		case 174363:    { return 4606; }
		case 116242:    { return 4607; }
		case 124545:    { return 4608; }
		case 83030:             { return 4609; }
		case 49818:             { return 4610; }
		case 877591:    { return 4611; }
		case 558467:    { return 4612; }
		case 398905:    { return 4613; }
		case 239343:    { return 4614; }
		case 159562:    { return 4615; }
		case 472549:    { return 4616; }
		case 337535:    { return 4617; }
		case 202521:    { return 4618; }
		case 135014:    { return 4619; }
		case 214795:    { return 4620; }
		case 128877:    { return 4621; }
		case 85918:             { return 4622; }
		case 92055:             { return 4623; }
		case 61370:             { return 4624; }
		case 36822:             { return 4625; }
		case 361361:    { return 4626; }
		case 258115:    { return 4627; }
		case 154869:    { return 4628; }
		case 103246:    { return 4629; }
		case 164255:    { return 4630; }
		case 98553:             { return 4631; }
		case 65702:             { return 4632; }
		case 70395:             { return 4633; }
		case 46930:             { return 4634; }
		case 28158:             { return 4635; }
		case 138985:    { return 4636; }
		case 83391:             { return 4637; }
		case 55594:             { return 4638; }
		case 59565:             { return 4639; }
		case 39710:             { return 4640; }
		case 23826:             { return 4641; }
		case 37905:             { return 4642; }
		case 25270:             { return 4643; }
		case 15162:             { return 4644; }
		case 10830:             { return 4645; }
		case 13590803:  { return 4646; } // Pair of Eights
		case 12713977:  { return 4647; }
		case 10083499:  { return 4648; }
		case 8329847:   { return 4649; }
		case 5699369:   { return 4650; }
		case 4822543:   { return 4651; }
		case 3068891:   { return 4652; }
		case 2192065:   { return 4653; }
		case 1315239:   { return 4654; }
		case 876826:    { return 4655; }
		case 10652251:  { return 4656; }
		case 8448337:   { return 4657; }
		case 6979061:   { return 4658; }
		case 4775147:   { return 4659; }
		case 4040509:   { return 4660; }
		case 2571233:   { return 4661; }
		case 1836595:   { return 4662; }
		case 1101957:   { return 4663; }
		case 734638:    { return 4664; }
		case 7903283:   { return 4665; }
		case 6528799:   { return 4666; }
		case 4467073:   { return 4667; }
		case 3779831:   { return 4668; }
		case 2405347:   { return 4669; }
		case 1718105:   { return 4670; }
		case 1030863:   { return 4671; }
		case 687242:    { return 4672; }
		case 5178013:   { return 4673; }
		case 3542851:   { return 4674; }
		case 2997797:   { return 4675; }
		case 1907689:   { return 4676; }
		case 1362635:   { return 4677; }
		case 817581:    { return 4678; }
		case 545054:    { return 4679; }
		case 2926703:   { return 4680; }
		case 2476441:   { return 4681; }
		case 1575917:   { return 4682; }
		case 1125655:   { return 4683; }
		case 675393:    { return 4684; }
		case 450262:    { return 4685; }
		case 1694407:   { return 4686; }
		case 1078259:   { return 4687; }
		case 770185:    { return 4688; }
		case 462111:    { return 4689; }
		case 308074:    { return 4690; }
		case 912373:    { return 4691; }
		case 651695:    { return 4692; }
		case 391017:    { return 4693; }
		case 260678:    { return 4694; }
		case 414715:    { return 4695; }
		case 248829:    { return 4696; }
		case 165886:    { return 4697; }
		case 177735:    { return 4698; }
		case 118490:    { return 4699; }
		case 71094:             { return 4700; }
		case 9613007:   { return 4701; }
		case 7624109:   { return 4702; }
		case 6298177:   { return 4703; }
		case 4309279:   { return 4704; }
		case 3646313:   { return 4705; }
		case 2320381:   { return 4706; }
		case 1657415:   { return 4707; }
		case 994449:    { return 4708; }
		case 662966:    { return 4709; }
		case 7132231:   { return 4710; }
		case 5891843:   { return 4711; }
		case 4031261:   { return 4712; }
		case 3411067:   { return 4713; }
		case 2170679:   { return 4714; }
		case 1550485:   { return 4715; }
		case 930291:    { return 4716; }
		case 620194:    { return 4717; }
		case 4672841:   { return 4718; }
		case 3197207:   { return 4719; }
		case 2705329:   { return 4720; }
		case 1721573:   { return 4721; }
		case 1229695:   { return 4722; }
		case 737817:    { return 4723; }
		case 491878:    { return 4724; }
		case 2641171:   { return 4725; }
		case 2234837:   { return 4726; }
		case 1422169:   { return 4727; }
		case 1015835:   { return 4728; }
		case 609501:    { return 4729; }
		case 406334:    { return 4730; }
		case 1529099:   { return 4731; }
		case 973063:    { return 4732; }
		case 695045:    { return 4733; }
		case 417027:    { return 4734; }
		case 278018:    { return 4735; }
		case 823361:    { return 4736; }
		case 588115:    { return 4737; }
		case 352869:    { return 4738; }
		case 235246:    { return 4739; }
		case 374255:    { return 4740; }
		case 224553:    { return 4741; }
		case 149702:    { return 4742; }
		case 160395:    { return 4743; }
		case 106930:    { return 4744; }
		case 64158:             { return 4745; }
		case 5975653:   { return 4746; }
		case 4936409:   { return 4747; }
		case 3377543:   { return 4748; }
		case 2857921:   { return 4749; }
		case 1818677:   { return 4750; }
		case 1299055:   { return 4751; }
		case 779433:    { return 4752; }
		case 519622:    { return 4753; }
		case 3915083:   { return 4754; }
		case 2678741:   { return 4755; }
		case 2266627:   { return 4756; }
		case 1442399:   { return 4757; }
		case 1030285:   { return 4758; }
		case 618171:    { return 4759; }
		case 412114:    { return 4760; }
		case 2212873:   { return 4761; }
		case 1872431:   { return 4762; }
		case 1191547:   { return 4763; }
		case 851105:    { return 4764; }
		case 510663:    { return 4765; }
		case 340442:    { return 4766; }
		case 1281137:   { return 4767; }
		case 815269:    { return 4768; }
		case 582335:    { return 4769; }
		case 349401:    { return 4770; }
		case 232934:    { return 4771; }
		case 689843:    { return 4772; }
		case 492745:    { return 4773; }
		case 295647:    { return 4774; }
		case 197098:    { return 4775; }
		case 313565:    { return 4776; }
		case 188139:    { return 4777; }
		case 125426:    { return 4778; }
		case 134385:    { return 4779; }
		case 89590:             { return 4780; }
		case 53754:             { return 4781; }
		case 3662497:   { return 4782; }
		case 2505919:   { return 4783; }
		case 2120393:   { return 4784; }
		case 1349341:   { return 4785; }
		case 963815:    { return 4786; }
		case 578289:    { return 4787; }
		case 385526:    { return 4788; }
		case 2070107:   { return 4789; }
		case 1751629:   { return 4790; }
		case 1114673:   { return 4791; }
		case 796195:    { return 4792; }
		case 477717:    { return 4793; }
		case 318478:    { return 4794; }
		case 1198483:   { return 4795; }
		case 762671:    { return 4796; }
		case 544765:    { return 4797; }
		case 326859:    { return 4798; }
		case 217906:    { return 4799; }
		case 645337:    { return 4800; }
		case 460955:    { return 4801; }
		case 276573:    { return 4802; }
		case 184382:    { return 4803; }
		case 293335:    { return 4804; }
		case 176001:    { return 4805; }
		case 117334:    { return 4806; }
		case 125715:    { return 4807; }
		case 83810:             { return 4808; }
		case 50286:             { return 4809; }
		case 1641809:   { return 4810; }
		case 1389223:   { return 4811; }
		case 884051:    { return 4812; }
		case 631465:    { return 4813; }
		case 378879:    { return 4814; }
		case 252586:    { return 4815; }
		case 950521:    { return 4816; }
		case 604877:    { return 4817; }
		case 432055:    { return 4818; }
		case 259233:    { return 4819; }
		case 172822:    { return 4820; }
		case 511819:    { return 4821; }
		case 365585:    { return 4822; }
		case 219351:    { return 4823; }
		case 146234:    { return 4824; }
		case 232645:    { return 4825; }
		case 139587:    { return 4826; }
		case 93058:             { return 4827; }
		case 99705:             { return 4828; }
		case 66470:             { return 4829; }
		case 39882:             { return 4830; }
		case 785213:    { return 4831; }
		case 499681:    { return 4832; }
		case 356915:    { return 4833; }
		case 214149:    { return 4834; }
		case 142766:    { return 4835; }
		case 422807:    { return 4836; }
		case 302005:    { return 4837; }
		case 181203:    { return 4838; }
		case 120802:    { return 4839; }
		case 192185:    { return 4840; }
		case 115311:    { return 4841; }
		case 76874:             { return 4842; }
		case 82365:             { return 4843; }
		case 54910:             { return 4844; }
		case 32946:             { return 4845; }
		case 289289:    { return 4846; }
		case 206635:    { return 4847; }
		case 123981:    { return 4848; }
		case 82654:             { return 4849; }
		case 131495:    { return 4850; }
		case 78897:             { return 4851; }
		case 52598:             { return 4852; }
		case 56355:             { return 4853; }
		case 37570:             { return 4854; }
		case 22542:             { return 4855; }
		case 111265:    { return 4856; }
		case 66759:             { return 4857; }
		case 44506:             { return 4858; }
		case 47685:             { return 4859; }
		case 31790:             { return 4860; }
		case 19074:             { return 4861; }
		case 30345:             { return 4862; }
		case 20230:             { return 4863; }
		case 12138:             { return 4864; }
		case 8670:              { return 4865; }
		case 7947563:   { return 4866; } // Pair of Sevens
		case 7434817:   { return 4867; }
		case 5896579:   { return 4868; }
		case 4871087:   { return 4869; }
		case 4358341:   { return 4870; }
		case 2820103:   { return 4871; }
		case 1794611:   { return 4872; }
		case 1281865:   { return 4873; }
		case 769119:    { return 4874; }
		case 512746:    { return 4875; }
		case 6229171:   { return 4876; }
		case 4940377:   { return 4877; }
		case 4081181:   { return 4878; }
		case 3651583:   { return 4879; }
		case 2362789:   { return 4880; }
		case 1503593:   { return 4881; }
		case 1073995:   { return 4882; }
		case 644397:    { return 4883; }
		case 429598:    { return 4884; }
		case 4621643:   { return 4885; }
		case 3817879:   { return 4886; }
		case 3415997:   { return 4887; }
		case 2210351:   { return 4888; }
		case 1406587:   { return 4889; }
		case 1004705:   { return 4890; }
		case 602823:    { return 4891; }
		case 401882:    { return 4892; }
		case 3027973:   { return 4893; }
		case 2709239:   { return 4894; }
		case 1753037:   { return 4895; }
		case 1115569:   { return 4896; }
		case 796835:    { return 4897; }
		case 478101:    { return 4898; }
		case 318734:    { return 4899; }
		case 2238067:   { return 4900; }
		case 1448161:   { return 4901; }
		case 921557:    { return 4902; }
		case 658255:    { return 4903; }
		case 394953:    { return 4904; }
		case 263302:    { return 4905; }
		case 1295723:   { return 4906; }
		case 824551:    { return 4907; }
		case 588965:    { return 4908; }
		case 353379:    { return 4909; }
		case 235586:    { return 4910; }
		case 533533:    { return 4911; }
		case 381095:    { return 4912; }
		case 228657:    { return 4913; }
		case 152438:    { return 4914; }
		case 242515:    { return 4915; }
		case 145509:    { return 4916; }
		case 97006:             { return 4917; }
		case 103935:    { return 4918; }
		case 69290:             { return 4919; }
		case 41574:             { return 4920; }
		case 5621447:   { return 4921; }
		case 4458389:   { return 4922; }
		case 3683017:   { return 4923; }
		case 3295331:   { return 4924; }
		case 2132273:   { return 4925; }
		case 1356901:   { return 4926; }
		case 969215:    { return 4927; }
		case 581529:    { return 4928; }
		case 387686:    { return 4929; }
		case 4170751:   { return 4930; }
		case 3445403:   { return 4931; }
		case 3082729:   { return 4932; }
		case 1994707:   { return 4933; }
		case 1269359:   { return 4934; }
		case 906685:    { return 4935; }
		case 544011:    { return 4936; }
		case 362674:    { return 4937; }
		case 2732561:   { return 4938; }
		case 2444923:   { return 4939; }
		case 1582009:   { return 4940; }
		case 1006733:   { return 4941; }
		case 719095:    { return 4942; }
		case 431457:    { return 4943; }
		case 287638:    { return 4944; }
		case 2019719:   { return 4945; }
		case 1306877:   { return 4946; }
		case 831649:    { return 4947; }
		case 594035:    { return 4948; }
		case 356421:    { return 4949; }
		case 237614:    { return 4950; }
		case 1169311:   { return 4951; }
		case 744107:    { return 4952; }
		case 531505:    { return 4953; }
		case 318903:    { return 4954; }
		case 212602:    { return 4955; }
		case 481481:    { return 4956; }
		case 343915:    { return 4957; }
		case 206349:    { return 4958; }
		case 137566:    { return 4959; }
		case 218855:    { return 4960; }
		case 131313:    { return 4961; }
		case 87542:             { return 4962; }
		case 93795:             { return 4963; }
		case 62530:             { return 4964; }
		case 37518:             { return 4965; }
		case 3494413:   { return 4966; }
		case 2886689:   { return 4967; }
		case 2582827:   { return 4968; }
		case 1671241:   { return 4969; }
		case 1063517:   { return 4970; }
		case 759655:    { return 4971; }
		case 455793:    { return 4972; }
		case 303862:    { return 4973; }
		case 2289443:   { return 4974; }
		case 2048449:   { return 4975; }
		case 1325467:   { return 4976; }
		case 843479:    { return 4977; }
		case 602485:    { return 4978; }
		case 361491:    { return 4979; }
		case 240994:    { return 4980; }
		case 1692197:   { return 4981; }
		case 1094951:   { return 4982; }
		case 696787:    { return 4983; }
		case 497705:    { return 4984; }
		case 298623:    { return 4985; }
		case 199082:    { return 4986; }
		case 979693:    { return 4987; }
		case 623441:    { return 4988; }
		case 445315:    { return 4989; }
		case 267189:    { return 4990; }
		case 178126:    { return 4991; }
		case 403403:    { return 4992; }
		case 288145:    { return 4993; }
		case 172887:    { return 4994; }
		case 115258:    { return 4995; }
		case 183365:    { return 4996; }
		case 110019:    { return 4997; }
		case 73346:             { return 4998; }
		case 78585:             { return 4999; }
		case 52390:             { return 5000; }
		case 31434:             { return 5001; }
		case 2141737:   { return 5002; }
		case 1916291:   { return 5003; }
		case 1239953:   { return 5004; }
		case 789061:    { return 5005; }
		case 563615:    { return 5006; }
		case 338169:    { return 5007; }
		case 225446:    { return 5008; }
		case 1583023:   { return 5009; }
		case 1024309:   { return 5010; }
		case 651833:    { return 5011; }
		case 465595:    { return 5012; }
		case 279357:    { return 5013; }
		case 186238:    { return 5014; }
		case 916487:    { return 5015; }
		case 583219:    { return 5016; }
		case 416585:    { return 5017; }
		case 249951:    { return 5018; }
		case 166634:    { return 5019; }
		case 377377:    { return 5020; }
		case 269555:    { return 5021; }
		case 161733:    { return 5022; }
		case 107822:    { return 5023; }
		case 171535:    { return 5024; }
		case 102921:    { return 5025; }
		case 68614:             { return 5026; }
		case 73515:             { return 5027; }
		case 49010:             { return 5028; }
		case 29406:             { return 5029; }
		case 1255501:   { return 5030; }
		case 812383:    { return 5031; }
		case 516971:    { return 5032; }
		case 369265:    { return 5033; }
		case 221559:    { return 5034; }
		case 147706:    { return 5035; }
		case 726869:    { return 5036; }
		case 462553:    { return 5037; }
		case 330395:    { return 5038; }
		case 198237:    { return 5039; }
		case 132158:    { return 5040; }
		case 299299:    { return 5041; }
		case 213785:    { return 5042; }
		case 128271:    { return 5043; }
		case 85514:             { return 5044; }
		case 136045:    { return 5045; }
		case 81627:             { return 5046; }
		case 54418:             { return 5047; }
		case 58305:             { return 5048; }
		case 38870:             { return 5049; }
		case 23322:             { return 5050; }
		case 600457:    { return 5051; }
		case 382109:    { return 5052; }
		case 272935:    { return 5053; }
		case 163761:    { return 5054; }
		case 109174:    { return 5055; }
		case 247247:    { return 5056; }
		case 176605:    { return 5057; }
		case 105963:    { return 5058; }
		case 70642:             { return 5059; }
		case 112385:    { return 5060; }
		case 67431:             { return 5061; }
		case 44954:             { return 5062; }
		case 48165:             { return 5063; }
		case 32110:             { return 5064; }
		case 19266:             { return 5065; }
		case 221221:    { return 5066; }
		case 158015:    { return 5067; }
		case 94809:             { return 5068; }
		case 63206:             { return 5069; }
		case 100555:    { return 5070; }
		case 60333:             { return 5071; }
		case 40222:             { return 5072; }
		case 43095:             { return 5073; }
		case 28730:             { return 5074; }
		case 17238:             { return 5075; }
		case 65065:             { return 5076; }
		case 39039:             { return 5077; }
		case 26026:             { return 5078; }
		case 27885:             { return 5079; }
		case 18590:             { return 5080; }
		case 11154:             { return 5081; }
		case 17745:             { return 5082; }
		case 11830:             { return 5083; }
		case 7098:              { return 5084; }
		case 5070:              { return 5085; }
		case 5690267:   { return 5086; } // Pair of Sixes
		case 5323153:   { return 5087; }
		case 4221811:   { return 5088; }
		case 3487583:   { return 5089; }
		case 3120469:   { return 5090; }
		case 2386241:   { return 5091; }
		case 1284899:   { return 5092; }
		case 917785:    { return 5093; }
		case 550671:    { return 5094; }
		case 367114:    { return 5095; }
		case 4459939:   { return 5096; }
		case 3537193:   { return 5097; }
		case 2922029:   { return 5098; }
		case 2614447:   { return 5099; }
		case 1999283:   { return 5100; }
		case 1076537:   { return 5101; }
		case 768955:    { return 5102; }
		case 461373:    { return 5103; }
		case 307582:    { return 5104; }
		case 3308987:   { return 5105; }
		case 2733511:   { return 5106; }
		case 2445773:   { return 5107; }
		case 1870297:   { return 5108; }
		case 1007083:   { return 5109; }
		case 719345:    { return 5110; }
		case 431607:    { return 5111; }
		case 287738:    { return 5112; }
		case 2167957:   { return 5113; }
		case 1939751:   { return 5114; }
		case 1483339:   { return 5115; }
		case 798721:    { return 5116; }
		case 570515:    { return 5117; }
		case 342309:    { return 5118; }
		case 228206:    { return 5119; }
		case 1602403:   { return 5120; }
		case 1225367:   { return 5121; }
		case 659813:    { return 5122; }
		case 471295:    { return 5123; }
		case 282777:    { return 5124; }
		case 188518:    { return 5125; }
		case 1096381:   { return 5126; }
		case 590359:    { return 5127; }
		case 421685:    { return 5128; }
		case 253011:    { return 5129; }
		case 168674:    { return 5130; }
		case 451451:    { return 5131; }
		case 322465:    { return 5132; }
		case 193479:    { return 5133; }
		case 128986:    { return 5134; }
		case 173635:    { return 5135; }
		case 104181:    { return 5136; }
		case 69454:             { return 5137; }
		case 74415:             { return 5138; }
		case 49610:             { return 5139; }
		case 29766:             { return 5140; }
		case 4024823:   { return 5141; }
		case 3192101:   { return 5142; }
		case 2636953:   { return 5143; }
		case 2359379:   { return 5144; }
		case 1804231:   { return 5145; }
		case 971509:    { return 5146; }
		case 693935:    { return 5147; }
		case 416361:    { return 5148; }
		case 277574:    { return 5149; }
		case 2986159:   { return 5150; }
		case 2466827:   { return 5151; }
		case 2207161:   { return 5152; }
		case 1687829:   { return 5153; }
		case 908831:    { return 5154; }
		case 649165:    { return 5155; }
		case 389499:    { return 5156; }
		case 259666:    { return 5157; }
		case 1956449:   { return 5158; }
		case 1750507:   { return 5159; }
		case 1338623:   { return 5160; }
		case 720797:    { return 5161; }
		case 514855:    { return 5162; }
		case 308913:    { return 5163; }
		case 205942:    { return 5164; }
		case 1446071:   { return 5165; }
		case 1105819:   { return 5166; }
		case 595441:    { return 5167; }
		case 425315:    { return 5168; }
		case 255189:    { return 5169; }
		case 170126:    { return 5170; }
		case 989417:    { return 5171; }
		case 532763:    { return 5172; }
		case 380545:    { return 5173; }
		case 228327:    { return 5174; }
		case 152218:    { return 5175; }
		case 407407:    { return 5176; }
		case 291005:    { return 5177; }
		case 174603:    { return 5178; }
		case 116402:    { return 5179; }
		case 156695:    { return 5180; }
		case 94017:             { return 5181; }
		case 62678:             { return 5182; }
		case 67155:             { return 5183; }
		case 44770:             { return 5184; }
		case 26862:             { return 5185; }
		case 2501917:   { return 5186; }
		case 2066801:   { return 5187; }
		case 1849243:   { return 5188; }
		case 1414127:   { return 5189; }
		case 761453:    { return 5190; }
		case 543895:    { return 5191; }
		case 326337:    { return 5192; }
		case 217558:    { return 5193; }
		case 1639187:   { return 5194; }
		case 1466641:   { return 5195; }
		case 1121549:   { return 5196; }
		case 603911:    { return 5197; }
		case 431365:    { return 5198; }
		case 258819:    { return 5199; }
		case 172546:    { return 5200; }
		case 1211573:   { return 5201; }
		case 926497:    { return 5202; }
		case 498883:    { return 5203; }
		case 356345:    { return 5204; }
		case 213807:    { return 5205; }
		case 142538:    { return 5206; }
		case 828971:    { return 5207; }
		case 446369:    { return 5208; }
		case 318835:    { return 5209; }
		case 191301:    { return 5210; }
		case 127534:    { return 5211; }
		case 341341:    { return 5212; }
		case 243815:    { return 5213; }
		case 146289:    { return 5214; }
		case 97526:             { return 5215; }
		case 131285:    { return 5216; }
		case 78771:             { return 5217; }
		case 52514:             { return 5218; }
		case 56265:             { return 5219; }
		case 37510:             { return 5220; }
		case 22506:             { return 5221; }
		case 1533433:   { return 5222; }
		case 1372019:   { return 5223; }
		case 1049191:   { return 5224; }
		case 564949:    { return 5225; }
		case 403535:    { return 5226; }
		case 242121:    { return 5227; }
		case 161414:    { return 5228; }
		case 1133407:   { return 5229; }
		case 866723:    { return 5230; }
		case 466697:    { return 5231; }
		case 333355:    { return 5232; }
		case 200013:    { return 5233; }
		case 133342:    { return 5234; }
		case 775489:    { return 5235; }
		case 417571:    { return 5236; }
		case 298265:    { return 5237; }
		case 178959:    { return 5238; }
		case 119306:    { return 5239; }
		case 319319:    { return 5240; }
		case 228085:    { return 5241; }
		case 136851:    { return 5242; }
		case 91234:             { return 5243; }
		case 122815:    { return 5244; }
		case 73689:             { return 5245; }
		case 49126:             { return 5246; }
		case 52635:             { return 5247; }
		case 35090:             { return 5248; }
		case 21054:             { return 5249; }
		case 898909:    { return 5250; }
		case 687401:    { return 5251; }
		case 370139:    { return 5252; }
		case 264385:    { return 5253; }
		case 158631:    { return 5254; }
		case 105754:    { return 5255; }
		case 615043:    { return 5256; }
		case 331177:    { return 5257; }
		case 236555:    { return 5258; }
		case 141933:    { return 5259; }
		case 94622:             { return 5260; }
		case 253253:    { return 5261; }
		case 180895:    { return 5262; }
		case 108537:    { return 5263; }
		case 72358:             { return 5264; }
		case 97405:             { return 5265; }
		case 58443:             { return 5266; }
		case 38962:             { return 5267; }
		case 41745:             { return 5268; }
		case 27830:             { return 5269; }
		case 16698:             { return 5270; }
		case 508079:    { return 5271; }
		case 273581:    { return 5272; }
		case 195415:    { return 5273; }
		case 117249:    { return 5274; }
		case 78166:             { return 5275; }
		case 209209:    { return 5276; }
		case 149435:    { return 5277; }
		case 89661:             { return 5278; }
		case 59774:             { return 5279; }
		case 80465:             { return 5280; }
		case 48279:             { return 5281; }
		case 32186:             { return 5282; }
		case 34485:             { return 5283; }
		case 22990:             { return 5284; }
		case 13794:             { return 5285; }
		case 187187:    { return 5286; }
		case 133705:    { return 5287; }
		case 80223:             { return 5288; }
		case 53482:             { return 5289; }
		case 71995:             { return 5290; }
		case 43197:             { return 5291; }
		case 28798:             { return 5292; }
		case 30855:             { return 5293; }
		case 20570:             { return 5294; }
		case 12342:             { return 5295; }
		case 55055:             { return 5296; }
		case 33033:             { return 5297; }
		case 22022:             { return 5298; }
		case 23595:             { return 5299; }
		case 15730:             { return 5300; }
		case 9438:              { return 5301; }
		case 12705:             { return 5302; }
		case 8470:              { return 5303; }
		case 5082:              { return 5304; }
		case 3630:              { return 5305; }
		case 2304323:   { return 5306; } // Pair of Fives
		case 2155657:   { return 5307; }
		case 1709659:   { return 5308; }
		case 1412327:   { return 5309; }
		case 1263661:   { return 5310; }
		case 966329:    { return 5311; }
		case 817663:    { return 5312; }
		case 371665:    { return 5313; }
		case 222999:    { return 5314; }
		case 148666:    { return 5315; }
		case 1806091:   { return 5316; }
		case 1432417:   { return 5317; }
		case 1183301:   { return 5318; }
		case 1058743:   { return 5319; }
		case 809627:    { return 5320; }
		case 685069:    { return 5321; }
		case 311395:    { return 5322; }
		case 186837:    { return 5323; }
		case 124558:    { return 5324; }
		case 1340003:   { return 5325; }
		case 1106959:   { return 5326; }
		case 990437:    { return 5327; }
		case 757393:    { return 5328; }
		case 640871:    { return 5329; }
		case 291305:    { return 5330; }
		case 174783:    { return 5331; }
		case 116522:    { return 5332; }
		case 877933:    { return 5333; }
		case 785519:    { return 5334; }
		case 600691:    { return 5335; }
		case 508277:    { return 5336; }
		case 231035:    { return 5337; }
		case 138621:    { return 5338; }
		case 92414:             { return 5339; }
		case 648907:    { return 5340; }
		case 496223:    { return 5341; }
		case 419881:    { return 5342; }
		case 190855:    { return 5343; }
		case 114513:    { return 5344; }
		case 76342:             { return 5345; }
		case 443989:    { return 5346; }
		case 375683:    { return 5347; }
		case 170765:    { return 5348; }
		case 102459:    { return 5349; }
		case 68306:             { return 5350; }
		case 287287:    { return 5351; }
		case 130585:    { return 5352; }
		case 78351:             { return 5353; }
		case 52234:             { return 5354; }
		case 110495:    { return 5355; }
		case 66297:             { return 5356; }
		case 44198:             { return 5357; }
		case 30135:             { return 5358; }
		case 20090:             { return 5359; }
		case 12054:             { return 5360; }
		case 1629887:   { return 5361; }
		case 1292669:   { return 5362; }
		case 1067857:   { return 5363; }
		case 955451:    { return 5364; }
		case 730639:    { return 5365; }
		case 618233:    { return 5366; }
		case 281015:    { return 5367; }
		case 168609:    { return 5368; }
		case 112406:    { return 5369; }
		case 1209271:   { return 5370; }
		case 998963:    { return 5371; }
		case 893809:    { return 5372; }
		case 683501:    { return 5373; }
		case 578347:    { return 5374; }
		case 262885:    { return 5375; }
		case 157731:    { return 5376; }
		case 105154:    { return 5377; }
		case 792281:    { return 5378; }
		case 708883:    { return 5379; }
		case 542087:    { return 5380; }
		case 458689:    { return 5381; }
		case 208495:    { return 5382; }
		case 125097:    { return 5383; }
		case 83398:             { return 5384; }
		case 585599:    { return 5385; }
		case 447811:    { return 5386; }
		case 378917:    { return 5387; }
		case 172235:    { return 5388; }
		case 103341:    { return 5389; }
		case 68894:             { return 5390; }
		case 400673:    { return 5391; }
		case 339031:    { return 5392; }
		case 154105:    { return 5393; }
		case 92463:             { return 5394; }
		case 61642:             { return 5395; }
		case 259259:    { return 5396; }
		case 117845:    { return 5397; }
		case 70707:             { return 5398; }
		case 47138:             { return 5399; }
		case 99715:             { return 5400; }
		case 59829:             { return 5401; }
		case 39886:             { return 5402; }
		case 27195:             { return 5403; }
		case 18130:             { return 5404; }
		case 10878:             { return 5405; }
		case 1013173:   { return 5406; }
		case 836969:    { return 5407; }
		case 748867:    { return 5408; }
		case 572663:    { return 5409; }
		case 484561:    { return 5410; }
		case 220255:    { return 5411; }
		case 132153:    { return 5412; }
		case 88102:             { return 5413; }
		case 663803:    { return 5414; }
		case 593929:    { return 5415; }
		case 454181:    { return 5416; }
		case 384307:    { return 5417; }
		case 174685:    { return 5418; }
		case 104811:    { return 5419; }
		case 69874:             { return 5420; }
		case 490637:    { return 5421; }
		case 375193:    { return 5422; }
		case 317471:    { return 5423; }
		case 144305:    { return 5424; }
		case 86583:             { return 5425; }
		case 57722:             { return 5426; }
		case 335699:    { return 5427; }
		case 284053:    { return 5428; }
		case 129115:    { return 5429; }
		case 77469:             { return 5430; }
		case 51646:             { return 5431; }
		case 217217:    { return 5432; }
		case 98735:             { return 5433; }
		case 59241:             { return 5434; }
		case 39494:             { return 5435; }
		case 83545:             { return 5436; }
		case 50127:             { return 5437; }
		case 33418:             { return 5438; }
		case 22785:             { return 5439; }
		case 15190:             { return 5440; }
		case 9114:              { return 5441; }
		case 620977:    { return 5442; }
		case 555611:    { return 5443; }
		case 424879:    { return 5444; }
		case 359513:    { return 5445; }
		case 163415:    { return 5446; }
		case 98049:             { return 5447; }
		case 65366:             { return 5448; }
		case 458983:    { return 5449; }
		case 350987:    { return 5450; }
		case 296989:    { return 5451; }
		case 134995:    { return 5452; }
		case 80997:             { return 5453; }
		case 53998:             { return 5454; }
		case 314041:    { return 5455; }
		case 265727:    { return 5456; }
		case 120785:    { return 5457; }
		case 72471:             { return 5458; }
		case 48314:             { return 5459; }
		case 203203:    { return 5460; }
		case 92365:             { return 5461; }
		case 55419:             { return 5462; }
		case 36946:             { return 5463; }
		case 78155:             { return 5464; }
		case 46893:             { return 5465; }
		case 31262:             { return 5466; }
		case 21315:             { return 5467; }
		case 14210:             { return 5468; }
		case 8526:              { return 5469; }
		case 364021:    { return 5470; }
		case 278369:    { return 5471; }
		case 235543:    { return 5472; }
		case 107065:    { return 5473; }
		case 64239:             { return 5474; }
		case 42826:             { return 5475; }
		case 249067:    { return 5476; }
		case 210749:    { return 5477; }
		case 95795:             { return 5478; }
		case 57477:             { return 5479; }
		case 38318:             { return 5480; }
		case 161161:    { return 5481; }
		case 73255:             { return 5482; }
		case 43953:             { return 5483; }
		case 29302:             { return 5484; }
		case 61985:             { return 5485; }
		case 37191:             { return 5486; }
		case 24794:             { return 5487; }
		case 16905:             { return 5488; }
		case 11270:             { return 5489; }
		case 6762:              { return 5490; }
		case 205751:    { return 5491; }
		case 174097:    { return 5492; }
		case 79135:             { return 5493; }
		case 47481:             { return 5494; }
		case 31654:             { return 5495; }
		case 133133:    { return 5496; }
		case 60515:             { return 5497; }
		case 36309:             { return 5498; }
		case 24206:             { return 5499; }
		case 51205:             { return 5500; }
		case 30723:             { return 5501; }
		case 20482:             { return 5502; }
		case 13965:             { return 5503; }
		case 9310:              { return 5504; }
		case 5586:              { return 5505; }
		case 119119:    { return 5506; }
		case 54145:             { return 5507; }
		case 32487:             { return 5508; }
		case 21658:             { return 5509; }
		case 45815:             { return 5510; }
		case 27489:             { return 5511; }
		case 18326:             { return 5512; }
		case 12495:             { return 5513; }
		case 8330:              { return 5514; }
		case 4998:              { return 5515; }
		case 35035:             { return 5516; }
		case 21021:             { return 5517; }
		case 14014:             { return 5518; }
		case 9555:              { return 5519; }
		case 6370:              { return 5520; }
		case 3822:              { return 5521; }
		case 8085:              { return 5522; }
		case 5390:              { return 5523; }
		case 3234:              { return 5524; }
		case 1470:              { return 5525; }
		case 1175675:   { return 5526; } // Pair of Fours
		case 1099825:   { return 5527; }
		case 872275:    { return 5528; }
		case 720575:    { return 5529; }
		case 644725:    { return 5530; }
		case 493025:    { return 5531; }
		case 417175:    { return 5532; }
		case 265475:    { return 5533; }
		case 113775:    { return 5534; }
		case 75850:             { return 5535; }
		case 921475:    { return 5536; }
		case 730825:    { return 5537; }
		case 603725:    { return 5538; }
		case 540175:    { return 5539; }
		case 413075:    { return 5540; }
		case 349525:    { return 5541; }
		case 222425:    { return 5542; }
		case 95325:             { return 5543; }
		case 63550:             { return 5544; }
		case 683675:    { return 5545; }
		case 564775:    { return 5546; }
		case 505325:    { return 5547; }
		case 386425:    { return 5548; }
		case 326975:    { return 5549; }
		case 208075:    { return 5550; }
		case 89175:             { return 5551; }
		case 59450:             { return 5552; }
		case 447925:    { return 5553; }
		case 400775:    { return 5554; }
		case 306475:    { return 5555; }
		case 259325:    { return 5556; }
		case 165025:    { return 5557; }
		case 70725:             { return 5558; }
		case 47150:             { return 5559; }
		case 331075:    { return 5560; }
		case 253175:    { return 5561; }
		case 214225:    { return 5562; }
		case 136325:    { return 5563; }
		case 58425:             { return 5564; }
		case 38950:             { return 5565; }
		case 226525:    { return 5566; }
		case 191675:    { return 5567; }
		case 121975:    { return 5568; }
		case 52275:             { return 5569; }
		case 34850:             { return 5570; }
		case 146575:    { return 5571; }
		case 93275:             { return 5572; }
		case 39975:             { return 5573; }
		case 26650:             { return 5574; }
		case 78925:             { return 5575; }
		case 33825:             { return 5576; }
		case 22550:             { return 5577; }
		case 21525:             { return 5578; }
		case 14350:             { return 5579; }
		case 6150:              { return 5580; }
		case 831575:    { return 5581; }
		case 659525:    { return 5582; }
		case 544825:    { return 5583; }
		case 487475:    { return 5584; }
		case 372775:    { return 5585; }
		case 315425:    { return 5586; }
		case 200725:    { return 5587; }
		case 86025:             { return 5588; }
		case 57350:             { return 5589; }
		case 616975:    { return 5590; }
		case 509675:    { return 5591; }
		case 456025:    { return 5592; }
		case 348725:    { return 5593; }
		case 295075:    { return 5594; }
		case 187775:    { return 5595; }
		case 80475:             { return 5596; }
		case 53650:             { return 5597; }
		case 404225:    { return 5598; }
		case 361675:    { return 5599; }
		case 276575:    { return 5600; }
		case 234025:    { return 5601; }
		case 148925:    { return 5602; }
		case 63825:             { return 5603; }
		case 42550:             { return 5604; }
		case 298775:    { return 5605; }
		case 228475:    { return 5606; }
		case 193325:    { return 5607; }
		case 123025:    { return 5608; }
		case 52725:             { return 5609; }
		case 35150:             { return 5610; }
		case 204425:    { return 5611; }
		case 172975:    { return 5612; }
		case 110075:    { return 5613; }
		case 47175:             { return 5614; }
		case 31450:             { return 5615; }
		case 132275:    { return 5616; }
		case 84175:             { return 5617; }
		case 36075:             { return 5618; }
		case 24050:             { return 5619; }
		case 71225:             { return 5620; }
		case 30525:             { return 5621; }
		case 20350:             { return 5622; }
		case 19425:             { return 5623; }
		case 12950:             { return 5624; }
		case 5550:              { return 5625; }
		case 516925:    { return 5626; }
		case 427025:    { return 5627; }
		case 382075:    { return 5628; }
		case 292175:    { return 5629; }
		case 247225:    { return 5630; }
		case 157325:    { return 5631; }
		case 67425:             { return 5632; }
		case 44950:             { return 5633; }
		case 338675:    { return 5634; }
		case 303025:    { return 5635; }
		case 231725:    { return 5636; }
		case 196075:    { return 5637; }
		case 124775:    { return 5638; }
		case 53475:             { return 5639; }
		case 35650:             { return 5640; }
		case 250325:    { return 5641; }
		case 191425:    { return 5642; }
		case 161975:    { return 5643; }
		case 103075:    { return 5644; }
		case 44175:             { return 5645; }
		case 29450:             { return 5646; }
		case 171275:    { return 5647; }
		case 144925:    { return 5648; }
		case 92225:             { return 5649; }
		case 39525:             { return 5650; }
		case 26350:             { return 5651; }
		case 110825:    { return 5652; }
		case 70525:             { return 5653; }
		case 30225:             { return 5654; }
		case 20150:             { return 5655; }
		case 59675:             { return 5656; }
		case 25575:             { return 5657; }
		case 17050:             { return 5658; }
		case 16275:             { return 5659; }
		case 10850:             { return 5660; }
		case 4650:              { return 5661; }
		case 316825:    { return 5662; }
		case 283475:    { return 5663; }
		case 216775:    { return 5664; }
		case 183425:    { return 5665; }
		case 116725:    { return 5666; }
		case 50025:             { return 5667; }
		case 33350:             { return 5668; }
		case 234175:    { return 5669; }
		case 179075:    { return 5670; }
		case 151525:    { return 5671; }
		case 96425:             { return 5672; }
		case 41325:             { return 5673; }
		case 27550:             { return 5674; }
		case 160225:    { return 5675; }
		case 135575:    { return 5676; }
		case 86275:             { return 5677; }
		case 36975:             { return 5678; }
		case 24650:             { return 5679; }
		case 103675:    { return 5680; }
		case 65975:             { return 5681; }
		case 28275:             { return 5682; }
		case 18850:             { return 5683; }
		case 55825:             { return 5684; }
		case 23925:             { return 5685; }
		case 15950:             { return 5686; }
		case 15225:             { return 5687; }
		case 10150:             { return 5688; }
		case 4350:              { return 5689; }
		case 185725:    { return 5690; }
		case 142025:    { return 5691; }
		case 120175:    { return 5692; }
		case 76475:             { return 5693; }
		case 32775:             { return 5694; }
		case 21850:             { return 5695; }
		case 127075:    { return 5696; }
		case 107525:    { return 5697; }
		case 68425:             { return 5698; }
		case 29325:             { return 5699; }
		case 19550:             { return 5700; }
		case 82225:             { return 5701; }
		case 52325:             { return 5702; }
		case 22425:             { return 5703; }
		case 14950:             { return 5704; }
		case 44275:             { return 5705; }
		case 18975:             { return 5706; }
		case 12650:             { return 5707; }
		case 12075:             { return 5708; }
		case 8050:              { return 5709; }
		case 3450:              { return 5710; }
		case 104975:    { return 5711; }
		case 88825:             { return 5712; }
		case 56525:             { return 5713; }
		case 24225:             { return 5714; }
		case 16150:             { return 5715; }
		case 67925:             { return 5716; }
		case 43225:             { return 5717; }
		case 18525:             { return 5718; }
		case 12350:             { return 5719; }
		case 36575:             { return 5720; }
		case 15675:             { return 5721; }
		case 10450:             { return 5722; }
		case 9975:              { return 5723; }
		case 6650:              { return 5724; }
		case 2850:              { return 5725; }
		case 60775:             { return 5726; }
		case 38675:             { return 5727; }
		case 16575:             { return 5728; }
		case 11050:             { return 5729; }
		case 32725:             { return 5730; }
		case 14025:             { return 5731; }
		case 9350:              { return 5732; }
		case 8925:              { return 5733; }
		case 5950:              { return 5734; }
		case 2550:              { return 5735; }
		case 25025:             { return 5736; }
		case 10725:             { return 5737; }
		case 7150:              { return 5738; }
		case 6825:              { return 5739; }
		case 4550:              { return 5740; }
		case 1950:              { return 5741; }
		case 5775:              { return 5742; }
		case 3850:              { return 5743; }
		case 1650:              { return 5744; }
		case 1050:              { return 5745; }
		case 423243:    { return 5746; } // Pair of Treys
		case 395937:    { return 5747; }
		case 314019:    { return 5748; }
		case 259407:    { return 5749; }
		case 232101:    { return 5750; }
		case 177489:    { return 5751; }
		case 150183:    { return 5752; }
		case 95571:             { return 5753; }
		case 68265:             { return 5754; }
		case 27306:             { return 5755; }
		case 331731:    { return 5756; }
		case 263097:    { return 5757; }
		case 217341:    { return 5758; }
		case 194463:    { return 5759; }
		case 148707:    { return 5760; }
		case 125829:    { return 5761; }
		case 80073:             { return 5762; }
		case 57195:             { return 5763; }
		case 22878:             { return 5764; }
		case 246123:    { return 5765; }
		case 203319:    { return 5766; }
		case 181917:    { return 5767; }
		case 139113:    { return 5768; }
		case 117711:    { return 5769; }
		case 74907:             { return 5770; }
		case 53505:             { return 5771; }
		case 21402:             { return 5772; }
		case 161253:    { return 5773; }
		case 144279:    { return 5774; }
		case 110331:    { return 5775; }
		case 93357:             { return 5776; }
		case 59409:             { return 5777; }
		case 42435:             { return 5778; }
		case 16974:             { return 5779; }
		case 119187:    { return 5780; }
		case 91143:             { return 5781; }
		case 77121:             { return 5782; }
		case 49077:             { return 5783; }
		case 35055:             { return 5784; }
		case 14022:             { return 5785; }
		case 81549:             { return 5786; }
		case 69003:             { return 5787; }
		case 43911:             { return 5788; }
		case 31365:             { return 5789; }
		case 12546:             { return 5790; }
		case 52767:             { return 5791; }
		case 33579:             { return 5792; }
		case 23985:             { return 5793; }
		case 9594:              { return 5794; }
		case 28413:             { return 5795; }
		case 20295:             { return 5796; }
		case 8118:              { return 5797; }
		case 12915:             { return 5798; }
		case 5166:              { return 5799; }
		case 3690:              { return 5800; }
		case 299367:    { return 5801; }
		case 237429:    { return 5802; }
		case 196137:    { return 5803; }
		case 175491:    { return 5804; }
		case 134199:    { return 5805; }
		case 113553:    { return 5806; }
		case 72261:             { return 5807; }
		case 51615:             { return 5808; }
		case 20646:             { return 5809; }
		case 222111:    { return 5810; }
		case 183483:    { return 5811; }
		case 164169:    { return 5812; }
		case 125541:    { return 5813; }
		case 106227:    { return 5814; }
		case 67599:             { return 5815; }
		case 48285:             { return 5816; }
		case 19314:             { return 5817; }
		case 145521:    { return 5818; }
		case 130203:    { return 5819; }
		case 99567:             { return 5820; }
		case 84249:             { return 5821; }
		case 53613:             { return 5822; }
		case 38295:             { return 5823; }
		case 15318:             { return 5824; }
		case 107559:    { return 5825; }
		case 82251:             { return 5826; }
		case 69597:             { return 5827; }
		case 44289:             { return 5828; }
		case 31635:             { return 5829; }
		case 12654:             { return 5830; }
		case 73593:             { return 5831; }
		case 62271:             { return 5832; }
		case 39627:             { return 5833; }
		case 28305:             { return 5834; }
		case 11322:             { return 5835; }
		case 47619:             { return 5836; }
		case 30303:             { return 5837; }
		case 21645:             { return 5838; }
		case 8658:              { return 5839; }
		case 25641:             { return 5840; }
		case 18315:             { return 5841; }
		case 7326:              { return 5842; }
		case 11655:             { return 5843; }
		case 4662:              { return 5844; }
		case 3330:              { return 5845; }
		case 186093:    { return 5846; }
		case 153729:    { return 5847; }
		case 137547:    { return 5848; }
		case 105183:    { return 5849; }
		case 89001:             { return 5850; }
		case 56637:             { return 5851; }
		case 40455:             { return 5852; }
		case 16182:             { return 5853; }
		case 121923:    { return 5854; }
		case 109089:    { return 5855; }
		case 83421:             { return 5856; }
		case 70587:             { return 5857; }
		case 44919:             { return 5858; }
		case 32085:             { return 5859; }
		case 12834:             { return 5860; }
		case 90117:             { return 5861; }
		case 68913:             { return 5862; }
		case 58311:             { return 5863; }
		case 37107:             { return 5864; }
		case 26505:             { return 5865; }
		case 10602:             { return 5866; }
		case 61659:             { return 5867; }
		case 52173:             { return 5868; }
		case 33201:             { return 5869; }
		case 23715:             { return 5870; }
		case 9486:              { return 5871; }
		case 39897:             { return 5872; }
		case 25389:             { return 5873; }
		case 18135:             { return 5874; }
		case 7254:              { return 5875; }
		case 21483:             { return 5876; }
		case 15345:             { return 5877; }
		case 6138:              { return 5878; }
		case 9765:              { return 5879; }
		case 3906:              { return 5880; }
		case 2790:              { return 5881; }
		case 114057:    { return 5882; }
		case 102051:    { return 5883; }
		case 78039:             { return 5884; }
		case 66033:             { return 5885; }
		case 42021:             { return 5886; }
		case 30015:             { return 5887; }
		case 12006:             { return 5888; }
		case 84303:             { return 5889; }
		case 64467:             { return 5890; }
		case 54549:             { return 5891; }
		case 34713:             { return 5892; }
		case 24795:             { return 5893; }
		case 9918:              { return 5894; }
		case 57681:             { return 5895; }
		case 48807:             { return 5896; }
		case 31059:             { return 5897; }
		case 22185:             { return 5898; }
		case 8874:              { return 5899; }
		case 37323:             { return 5900; }
		case 23751:             { return 5901; }
		case 16965:             { return 5902; }
		case 6786:              { return 5903; }
		case 20097:             { return 5904; }
		case 14355:             { return 5905; }
		case 5742:              { return 5906; }
		case 9135:              { return 5907; }
		case 3654:              { return 5908; }
		case 2610:              { return 5909; }
		case 66861:             { return 5910; }
		case 51129:             { return 5911; }
		case 43263:             { return 5912; }
		case 27531:             { return 5913; }
		case 19665:             { return 5914; }
		case 7866:              { return 5915; }
		case 45747:             { return 5916; }
		case 38709:             { return 5917; }
		case 24633:             { return 5918; }
		case 17595:             { return 5919; }
		case 7038:              { return 5920; }
		case 29601:             { return 5921; }
		case 18837:             { return 5922; }
		case 13455:             { return 5923; }
		case 5382:              { return 5924; }
		case 15939:             { return 5925; }
		case 11385:             { return 5926; }
		case 4554:              { return 5927; }
		case 7245:              { return 5928; }
		case 2898:              { return 5929; }
		case 2070:              { return 5930; }
		case 37791:             { return 5931; }
		case 31977:             { return 5932; }
		case 20349:             { return 5933; }
		case 14535:             { return 5934; }
		case 5814:              { return 5935; }
		case 24453:             { return 5936; }
		case 15561:             { return 5937; }
		case 11115:             { return 5938; }
		case 4446:              { return 5939; }
		case 13167:             { return 5940; }
		case 9405:              { return 5941; }
		case 3762:              { return 5942; }
		case 5985:              { return 5943; }
		case 2394:              { return 5944; }
		case 1710:              { return 5945; }
		case 21879:             { return 5946; }
		case 13923:             { return 5947; }
		case 9945:              { return 5948; }
		case 3978:              { return 5949; }
		case 11781:             { return 5950; }
		case 8415:              { return 5951; }
		case 3366:              { return 5952; }
		case 5355:              { return 5953; }
		case 2142:              { return 5954; }
		case 1530:              { return 5955; }
		case 9009:              { return 5956; }
		case 6435:              { return 5957; }
		case 2574:              { return 5958; }
		case 4095:              { return 5959; }
		case 1638:              { return 5960; }
		case 1170:              { return 5961; }
		case 3465:              { return 5962; }
		case 1386:              { return 5963; }
		case 990:               { return 5964; }
		case 630:               { return 5965; }
		case 188108:    { return 5966; } // Pair of Deuces
		case 175972:    { return 5967; }
		case 139564:    { return 5968; }
		case 115292:    { return 5969; }
		case 103156:    { return 5970; }
		case 78884:             { return 5971; }
		case 66748:             { return 5972; }
		case 42476:             { return 5973; }
		case 30340:             { return 5974; }
		case 18204:             { return 5975; }
		case 147436:    { return 5976; }
		case 116932:    { return 5977; }
		case 96596:             { return 5978; }
		case 86428:             { return 5979; }
		case 66092:             { return 5980; }
		case 55924:             { return 5981; }
		case 35588:             { return 5982; }
		case 25420:             { return 5983; }
		case 15252:             { return 5984; }
		case 109388:    { return 5985; }
		case 90364:             { return 5986; }
		case 80852:             { return 5987; }
		case 61828:             { return 5988; }
		case 52316:             { return 5989; }
		case 33292:             { return 5990; }
		case 23780:             { return 5991; }
		case 14268:             { return 5992; }
		case 71668:             { return 5993; }
		case 64124:             { return 5994; }
		case 49036:             { return 5995; }
		case 41492:             { return 5996; }
		case 26404:             { return 5997; }
		case 18860:             { return 5998; }
		case 11316:             { return 5999; }
		case 52972:             { return 6000; }
		case 40508:             { return 6001; }
		case 34276:             { return 6002; }
		case 21812:             { return 6003; }
		case 15580:             { return 6004; }
		case 9348:              { return 6005; }
		case 36244:             { return 6006; }
		case 30668:             { return 6007; }
		case 19516:             { return 6008; }
		case 13940:             { return 6009; }
		case 8364:              { return 6010; }
		case 23452:             { return 6011; }
		case 14924:             { return 6012; }
		case 10660:             { return 6013; }
		case 6396:              { return 6014; }
		case 12628:             { return 6015; }
		case 9020:              { return 6016; }
		case 5412:              { return 6017; }
		case 5740:              { return 6018; }
		case 3444:              { return 6019; }
		case 2460:              { return 6020; }
		case 133052:    { return 6021; }
		case 105524:    { return 6022; }
		case 87172:             { return 6023; }
		case 77996:             { return 6024; }
		case 59644:             { return 6025; }
		case 50468:             { return 6026; }
		case 32116:             { return 6027; }
		case 22940:             { return 6028; }
		case 13764:             { return 6029; }
		case 98716:             { return 6030; }
		case 81548:             { return 6031; }
		case 72964:             { return 6032; }
		case 55796:             { return 6033; }
		case 47212:             { return 6034; }
		case 30044:             { return 6035; }
		case 21460:             { return 6036; }
		case 12876:             { return 6037; }
		case 64676:             { return 6038; }
		case 57868:             { return 6039; }
		case 44252:             { return 6040; }
		case 37444:             { return 6041; }
		case 23828:             { return 6042; }
		case 17020:             { return 6043; }
		case 10212:             { return 6044; }
		case 47804:             { return 6045; }
		case 36556:             { return 6046; }
		case 30932:             { return 6047; }
		case 19684:             { return 6048; }
		case 14060:             { return 6049; }
		case 8436:              { return 6050; }
		case 32708:             { return 6051; }
		case 27676:             { return 6052; }
		case 17612:             { return 6053; }
		case 12580:             { return 6054; }
		case 7548:              { return 6055; }
		case 21164:             { return 6056; }
		case 13468:             { return 6057; }
		case 9620:              { return 6058; }
		case 5772:              { return 6059; }
		case 11396:             { return 6060; }
		case 8140:              { return 6061; }
		case 4884:              { return 6062; }
		case 5180:              { return 6063; }
		case 3108:              { return 6064; }
		case 2220:              { return 6065; }
		case 82708:             { return 6066; }
		case 68324:             { return 6067; }
		case 61132:             { return 6068; }
		case 46748:             { return 6069; }
		case 39556:             { return 6070; }
		case 25172:             { return 6071; }
		case 17980:             { return 6072; }
		case 10788:             { return 6073; }
		case 54188:             { return 6074; }
		case 48484:             { return 6075; }
		case 37076:             { return 6076; }
		case 31372:             { return 6077; }
		case 19964:             { return 6078; }
		case 14260:             { return 6079; }
		case 8556:              { return 6080; }
		case 40052:             { return 6081; }
		case 30628:             { return 6082; }
		case 25916:             { return 6083; }
		case 16492:             { return 6084; }
		case 11780:             { return 6085; }
		case 7068:              { return 6086; }
		case 27404:             { return 6087; }
		case 23188:             { return 6088; }
		case 14756:             { return 6089; }
		case 10540:             { return 6090; }
		case 6324:              { return 6091; }
		case 17732:             { return 6092; }
		case 11284:             { return 6093; }
		case 8060:              { return 6094; }
		case 4836:              { return 6095; }
		case 9548:              { return 6096; }
		case 6820:              { return 6097; }
		case 4092:              { return 6098; }
		case 4340:              { return 6099; }
		case 2604:              { return 6100; }
		case 1860:              { return 6101; }
		case 50692:             { return 6102; }
		case 45356:             { return 6103; }
		case 34684:             { return 6104; }
		case 29348:             { return 6105; }
		case 18676:             { return 6106; }
		case 13340:             { return 6107; }
		case 8004:              { return 6108; }
		case 37468:             { return 6109; }
		case 28652:             { return 6110; }
		case 24244:             { return 6111; }
		case 15428:             { return 6112; }
		case 11020:             { return 6113; }
		case 6612:              { return 6114; }
		case 25636:             { return 6115; }
		case 21692:             { return 6116; }
		case 13804:             { return 6117; }
		case 9860:              { return 6118; }
		case 5916:              { return 6119; }
		case 16588:             { return 6120; }
		case 10556:             { return 6121; }
		case 7540:              { return 6122; }
		case 4524:              { return 6123; }
		case 8932:              { return 6124; }
		case 6380:              { return 6125; }
		case 3828:              { return 6126; }
		case 4060:              { return 6127; }
		case 2436:              { return 6128; }
		case 1740:              { return 6129; }
		case 29716:             { return 6130; }
		case 22724:             { return 6131; }
		case 19228:             { return 6132; }
		case 12236:             { return 6133; }
		case 8740:              { return 6134; }
		case 5244:              { return 6135; }
		case 20332:             { return 6136; }
		case 17204:             { return 6137; }
		case 10948:             { return 6138; }
		case 7820:              { return 6139; }
		case 4692:              { return 6140; }
		case 13156:             { return 6141; }
		case 8372:              { return 6142; }
		case 5980:              { return 6143; }
		case 3588:              { return 6144; }
		case 7084:              { return 6145; }
		case 5060:              { return 6146; }
		case 3036:              { return 6147; }
		case 3220:              { return 6148; }
		case 1932:              { return 6149; }
		case 1380:              { return 6150; }
		case 16796:             { return 6151; }
		case 14212:             { return 6152; }
		case 9044:              { return 6153; }
		case 6460:              { return 6154; }
		case 3876:              { return 6155; }
		case 10868:             { return 6156; }
		case 6916:              { return 6157; }
		case 4940:              { return 6158; }
		case 2964:              { return 6159; }
		case 5852:              { return 6160; }
		case 4180:              { return 6161; }
		case 2508:              { return 6162; }
		case 2660:              { return 6163; }
		case 1596:              { return 6164; }
		case 1140:              { return 6165; }
		case 9724:              { return 6166; }
		case 6188:              { return 6167; }
		case 4420:              { return 6168; }
		case 2652:              { return 6169; }
		case 5236:              { return 6170; }
		case 3740:              { return 6171; }
		case 2244:              { return 6172; }
		case 2380:              { return 6173; }
		case 1428:              { return 6174; }
		case 1020:              { return 6175; }
		case 4004:              { return 6176; }
		case 2860:              { return 6177; }
		case 1716:              { return 6178; }
		case 1820:              { return 6179; }
		case 1092:              { return 6180; }
		case 780:               { return 6181; }
		case 1540:              { return 6182; }
		case 924:               { return 6183; }
		case 660:               { return 6184; }
		case 420:               { return 6185; }
		case 25911877:  { return (6186 - flushes); } // Ace-High
		case 23184311:  { return (6187 - flushes); }
		case 17729179:  { return (6188 - flushes); }
		case 15001613:  { return (6189 - flushes); }
		case 9546481:   { return (6190 - flushes); }
		case 6818915:   { return (6191 - flushes); }
		case 4091349:   { return (6192 - flushes); }
		case 2727566:   { return (6193 - flushes); }
		case 20550799:  { return (6194 - flushes); }
		case 18387557:  { return (6195 - flushes); }
		case 14061073:  { return (6196 - flushes); }
		case 11897831:  { return (6197 - flushes); }
		case 7571347:   { return (6198 - flushes); }
		case 5408105:   { return (6199 - flushes); }
		case 3244863:   { return (6200 - flushes); }
		case 2163242:   { return (6201 - flushes); }
		case 15189721:  { return (6202 - flushes); }
		case 11615669:  { return (6203 - flushes); }
		case 9828643:   { return (6204 - flushes); }
		case 6254591:   { return (6205 - flushes); }
		case 4467565:   { return (6206 - flushes); }
		case 2680539:   { return (6207 - flushes); }
		case 1787026:   { return (6208 - flushes); }
		case 10392967:  { return (6209 - flushes); }
		case 8794049:   { return (6210 - flushes); }
		case 5596213:   { return (6211 - flushes); }
		case 3997295:   { return (6212 - flushes); }
		case 2398377:   { return (6213 - flushes); }
		case 1598918:   { return (6214 - flushes); }
		case 6724861:   { return (6215 - flushes); }
		case 4279457:   { return (6216 - flushes); }
		case 3056755:   { return (6217 - flushes); }
		case 1834053:   { return (6218 - flushes); }
		case 1222702:   { return (6219 - flushes); }
		case 3621079:   { return (6220 - flushes); }
		case 2586485:   { return (6221 - flushes); }
		case 1551891:   { return (6222 - flushes); }
		case 1034594:   { return (6223 - flushes); }
		case 1645945:   { return (6224 - flushes); }
		case 987567:    { return (6225 - flushes); }
		case 658378:    { return (6226 - flushes); }
		case 705405:    { return (6227 - flushes); }
		case 470270:    { return (6228 - flushes); }
		case 282162:    { return (6229 - flushes); }
		case 19224941:  { return (6230 - flushes); }
		case 17201263:  { return (6231 - flushes); }
		case 13153907:  { return (6232 - flushes); }
		case 11130229:  { return (6233 - flushes); }
		case 7082873:   { return (6234 - flushes); }
		case 5059195:   { return (6235 - flushes); }
		case 3035517:   { return (6236 - flushes); }
		case 2023678:   { return (6237 - flushes); }
		case 14209739:  { return (6238 - flushes); }
		case 10866271:  { return (6239 - flushes); }
		case 9194537:   { return (6240 - flushes); }
		case 5851069:   { return (6241 - flushes); }
		case 4179335:   { return (6242 - flushes); }
		case 2507601:   { return (6243 - flushes); }
		case 1671734:   { return (6244 - flushes); }
		case 9722453:   { return (6245 - flushes); }
		case 8226691:   { return (6246 - flushes); }
		case 5235167:   { return (6247 - flushes); }
		case 3739405:   { return (6248 - flushes); }
		case 2243643:   { return (6249 - flushes); }
		case 1495762:   { return (6250 - flushes); }
		case 6290999:   { return (6251 - flushes); }
		case 4003363:   { return (6252 - flushes); }
		case 2859545:   { return (6253 - flushes); }
		case 1715727:   { return (6254 - flushes); }
		case 1143818:   { return (6255 - flushes); }
		case 3387461:   { return (6256 - flushes); }
		case 2419615:   { return (6257 - flushes); }
		case 1451769:   { return (6258 - flushes); }
		case 967846:    { return (6259 - flushes); }
		case 1539755:   { return (6260 - flushes); }
		case 923853:    { return (6261 - flushes); }
		case 615902:    { return (6262 - flushes); }
		case 659895:    { return (6263 - flushes); }
		case 439930:    { return (6264 - flushes); }
		case 263958:    { return (6265 - flushes); }
		case 11269793:  { return (6266 - flushes); }
		case 8618077:   { return (6267 - flushes); }
		case 7292219:   { return (6268 - flushes); }
		case 4640503:   { return (6269 - flushes); }
		case 3314645:   { return (6270 - flushes); }
		case 1988787:   { return (6271 - flushes); }
		case 1325858:   { return (6272 - flushes); }
		case 7710911:   { return (6273 - flushes); }
		case 6524617:   { return (6274 - flushes); }
		case 4152029:   { return (6275 - flushes); }
		case 2965735:   { return (6276 - flushes); }
		case 1779441:   { return (6277 - flushes); }
		case 1186294:   { return (6278 - flushes); }
		case 4989413:   { return (6279 - flushes); }
		case 3175081:   { return (6280 - flushes); }
		case 2267915:   { return (6281 - flushes); }
		case 1360749:   { return (6282 - flushes); }
		case 907166:    { return (6283 - flushes); }
		case 2686607:   { return (6284 - flushes); }
		case 1919005:   { return (6285 - flushes); }
		case 1151403:   { return (6286 - flushes); }
		case 767602:    { return (6287 - flushes); }
		case 1221185:   { return (6288 - flushes); }
		case 732711:    { return (6289 - flushes); }
		case 488474:    { return (6290 - flushes); }
		case 523365:    { return (6291 - flushes); }
		case 348910:    { return (6292 - flushes); }
		case 209346:    { return (6293 - flushes); }
		case 6369883:   { return (6294 - flushes); }
		case 5389901:   { return (6295 - flushes); }
		case 3429937:   { return (6296 - flushes); }
		case 2449955:   { return (6297 - flushes); }
		case 1469973:   { return (6298 - flushes); }
		case 979982:    { return (6299 - flushes); }
		case 4121689:   { return (6300 - flushes); }
		case 2622893:   { return (6301 - flushes); }
		case 1873495:   { return (6302 - flushes); }
		case 1124097:   { return (6303 - flushes); }
		case 749398:    { return (6304 - flushes); }
		case 2219371:   { return (6305 - flushes); }
		case 1585265:   { return (6306 - flushes); }
		case 951159:    { return (6307 - flushes); }
		case 634106:    { return (6308 - flushes); }
		case 1008805:   { return (6309 - flushes); }
		case 605283:    { return (6310 - flushes); }
		case 403522:    { return (6311 - flushes); }
		case 432345:    { return (6312 - flushes); }
		case 288230:    { return (6313 - flushes); }
		case 172938:    { return (6314 - flushes); }
		case 3687827:   { return (6315 - flushes); }
		case 2346799:   { return (6316 - flushes); }
		case 1676285:   { return (6317 - flushes); }
		case 1005771:   { return (6318 - flushes); }
		case 670514:    { return (6319 - flushes); }
		case 1985753:   { return (6320 - flushes); }
		case 1418395:   { return (6321 - flushes); }
		case 851037:    { return (6322 - flushes); }
		case 567358:    { return (6323 - flushes); }
		case 902615:    { return (6324 - flushes); }
		case 541569:    { return (6325 - flushes); }
		case 361046:    { return (6326 - flushes); }
		case 386835:    { return (6327 - flushes); }
		case 257890:    { return (6328 - flushes); }
		case 154734:    { return (6329 - flushes); }
		case 1518517:   { return (6330 - flushes); }
		case 1084655:   { return (6331 - flushes); }
		case 650793:    { return (6332 - flushes); }
		case 433862:    { return (6333 - flushes); }
		case 690235:    { return (6334 - flushes); }
		case 414141:    { return (6335 - flushes); }
		case 276094:    { return (6336 - flushes); }
		case 295815:    { return (6337 - flushes); }
		case 197210:    { return (6338 - flushes); }
		case 118326:    { return (6339 - flushes); }
		case 584045:    { return (6340 - flushes); }
		case 350427:    { return (6341 - flushes); }
		case 233618:    { return (6342 - flushes); }
		case 250305:    { return (6343 - flushes); }
		case 166870:    { return (6344 - flushes); }
		case 100122:    { return (6345 - flushes); }
		case 159285:    { return (6346 - flushes); }
		case 106190:    { return (6347 - flushes); }
		case 63714:             { return (6348 - flushes); }
		case 45510:             { return (6349 - flushes); }
		case 16107383:  { return (6350 - flushes); }
		case 14411869:  { return (6351 - flushes); }
		case 11020841:  { return (6352 - flushes); }
		case 9325327:   { return (6353 - flushes); }
		case 5934299:   { return (6354 - flushes); }
		case 4238785:   { return (6355 - flushes); }
		case 2543271:   { return (6356 - flushes); }
		case 1695514:   { return (6357 - flushes); }
		case 11905457:  { return (6358 - flushes); }
		case 9104173:   { return (6359 - flushes); }
		case 7703531:   { return (6360 - flushes); }
		case 4902247:   { return (6361 - flushes); }
		case 3501605:   { return (6362 - flushes); }
		case 2100963:   { return (6363 - flushes); }
		case 1400642:   { return (6364 - flushes); }
		case 8145839:   { return (6365 - flushes); }
		case 6892633:   { return (6366 - flushes); }
		case 4386221:   { return (6367 - flushes); }
		case 3133015:   { return (6368 - flushes); }
		case 1879809:   { return (6369 - flushes); }
		case 1253206:   { return (6370 - flushes); }
		case 5270837:   { return (6371 - flushes); }
		case 3354169:   { return (6372 - flushes); }
		case 2395835:   { return (6373 - flushes); }
		case 1437501:   { return (6374 - flushes); }
		case 958334:    { return (6375 - flushes); }
		case 2838143:   { return (6376 - flushes); }
		case 2027245:   { return (6377 - flushes); }
		case 1216347:   { return (6378 - flushes); }
		case 810898:    { return (6379 - flushes); }
		case 1290065:   { return (6380 - flushes); }
		case 774039:    { return (6381 - flushes); }
		case 516026:    { return (6382 - flushes); }
		case 552885:    { return (6383 - flushes); }
		case 368590:    { return (6384 - flushes); }
		case 221154:    { return (6385 - flushes); }
		case 9442259:   { return (6386 - flushes); }
		case 7220551:   { return (6387 - flushes); }
		case 6109697:   { return (6388 - flushes); }
		case 3887989:   { return (6389 - flushes); }
		case 2777135:   { return (6390 - flushes); }
		case 1666281:   { return (6391 - flushes); }
		case 1110854:   { return (6392 - flushes); }
		case 6460493:   { return (6393 - flushes); }
		case 5466571:   { return (6394 - flushes); }
		case 3478727:   { return (6395 - flushes); }
		case 2484805:   { return (6396 - flushes); }
		case 1490883:   { return (6397 - flushes); }
		case 993922:    { return (6398 - flushes); }
		case 4180319:   { return (6399 - flushes); }
		case 2660203:   { return (6400 - flushes); }
		case 1900145:   { return (6401 - flushes); }
		case 1140087:   { return (6402 - flushes); }
		case 760058:    { return (6403 - flushes); }
		case 2250941:   { return (6404 - flushes); }
		case 1607815:   { return (6405 - flushes); }
		case 964689:    { return (6406 - flushes); }
		case 643126:    { return (6407 - flushes); }
		case 1023155:   { return (6408 - flushes); }
		case 613893:    { return (6409 - flushes); }
		case 409262:    { return (6410 - flushes); }
		case 438495:    { return (6411 - flushes); }
		case 292330:    { return (6412 - flushes); }
		case 175398:    { return (6413 - flushes); }
		case 5336929:   { return (6414 - flushes); }
		case 4515863:   { return (6415 - flushes); }
		case 2873731:   { return (6416 - flushes); }
		case 2052665:   { return (6417 - flushes); }
		case 1231599:   { return (6418 - flushes); }
		case 821066:    { return (6419 - flushes); }
		case 3453307:   { return (6420 - flushes); }
		case 2197559:   { return (6421 - flushes); }
		case 1569685:   { return (6422 - flushes); }
		case 941811:    { return (6423 - flushes); }
		case 627874:    { return (6424 - flushes); }
		case 1859473:   { return (6425 - flushes); }
		case 1328195:   { return (6426 - flushes); }
		case 796917:    { return (6427 - flushes); }
		case 531278:    { return (6428 - flushes); }
		case 845215:    { return (6429 - flushes); }
		case 507129:    { return (6430 - flushes); }
		case 338086:    { return (6431 - flushes); }
		case 362235:    { return (6432 - flushes); }
		case 241490:    { return (6433 - flushes); }
		case 144894:    { return (6434 - flushes); }
		case 3089801:   { return (6435 - flushes); }
		case 1966237:   { return (6436 - flushes); }
		case 1404455:   { return (6437 - flushes); }
		case 842673:    { return (6438 - flushes); }
		case 561782:    { return (6439 - flushes); }
		case 1663739:   { return (6440 - flushes); }
		case 1188385:   { return (6441 - flushes); }
		case 713031:    { return (6442 - flushes); }
		case 475354:    { return (6443 - flushes); }
		case 756245:    { return (6444 - flushes); }
		case 453747:    { return (6445 - flushes); }
		case 302498:    { return (6446 - flushes); }
		case 324105:    { return (6447 - flushes); }
		case 216070:    { return (6448 - flushes); }
		case 129642:    { return (6449 - flushes); }
		case 1272271:   { return (6450 - flushes); }
		case 908765:    { return (6451 - flushes); }
		case 545259:    { return (6452 - flushes); }
		case 363506:    { return (6453 - flushes); }
		case 578305:    { return (6454 - flushes); }
		case 346983:    { return (6455 - flushes); }
		case 231322:    { return (6456 - flushes); }
		case 247845:    { return (6457 - flushes); }
		case 165230:    { return (6458 - flushes); }
		case 99138:             { return (6459 - flushes); }
		case 489335:    { return (6460 - flushes); }
		case 293601:    { return (6461 - flushes); }
		case 195734:    { return (6462 - flushes); }
		case 209715:    { return (6463 - flushes); }
		case 139810:    { return (6464 - flushes); }
		case 83886:             { return (6465 - flushes); }
		case 133455:    { return (6466 - flushes); }
		case 88970:             { return (6467 - flushes); }
		case 53382:             { return (6468 - flushes); }
		case 38130:             { return (6469 - flushes); }
		case 8833081:   { return (6470 - flushes); }
		case 6754709:   { return (6471 - flushes); }
		case 5715523:   { return (6472 - flushes); }
		case 3637151:   { return (6473 - flushes); }
		case 2597965:   { return (6474 - flushes); }
		case 1558779:   { return (6475 - flushes); }
		case 1039186:   { return (6476 - flushes); }
		case 6043687:   { return (6477 - flushes); }
		case 5113889:   { return (6478 - flushes); }
		case 3254293:   { return (6479 - flushes); }
		case 2324495:   { return (6480 - flushes); }
		case 1394697:   { return (6481 - flushes); }
		case 929798:    { return (6482 - flushes); }
		case 3910621:   { return (6483 - flushes); }
		case 2488577:   { return (6484 - flushes); }
		case 1777555:   { return (6485 - flushes); }
		case 1066533:   { return (6486 - flushes); }
		case 711022:    { return (6487 - flushes); }
		case 2105719:   { return (6488 - flushes); }
		case 1504085:   { return (6489 - flushes); }
		case 902451:    { return (6490 - flushes); }
		case 601634:    { return (6491 - flushes); }
		case 957145:    { return (6492 - flushes); }
		case 574287:    { return (6493 - flushes); }
		case 382858:    { return (6494 - flushes); }
		case 410205:    { return (6495 - flushes); }
		case 273470:    { return (6496 - flushes); }
		case 164082:    { return (6497 - flushes); }
		case 4992611:   { return (6498 - flushes); }
		case 4224517:   { return (6499 - flushes); }
		case 2688329:   { return (6500 - flushes); }
		case 1920235:   { return (6501 - flushes); }
		case 1152141:   { return (6502 - flushes); }
		case 768094:    { return (6503 - flushes); }
		case 3230513:   { return (6504 - flushes); }
		case 2055781:   { return (6505 - flushes); }
		case 1468415:   { return (6506 - flushes); }
		case 881049:    { return (6507 - flushes); }
		case 587366:    { return (6508 - flushes); }
		case 1739507:   { return (6509 - flushes); }
		case 1242505:   { return (6510 - flushes); }
		case 745503:    { return (6511 - flushes); }
		case 497002:    { return (6512 - flushes); }
		case 790685:    { return (6513 - flushes); }
		case 474411:    { return (6514 - flushes); }
		case 316274:    { return (6515 - flushes); }
		case 338865:    { return (6516 - flushes); }
		case 225910:    { return (6517 - flushes); }
		case 135546:    { return (6518 - flushes); }
		case 2890459:   { return (6519 - flushes); }
		case 1839383:   { return (6520 - flushes); }
		case 1313845:   { return (6521 - flushes); }
		case 788307:    { return (6522 - flushes); }
		case 525538:    { return (6523 - flushes); }
		case 1556401:   { return (6524 - flushes); }
		case 1111715:   { return (6525 - flushes); }
		case 667029:    { return (6526 - flushes); }
		case 444686:    { return (6527 - flushes); }
		case 707455:    { return (6528 - flushes); }
		case 424473:    { return (6529 - flushes); }
		case 282982:    { return (6530 - flushes); }
		case 303195:    { return (6531 - flushes); }
		case 202130:    { return (6532 - flushes); }
		case 121278:    { return (6533 - flushes); }
		case 1190189:   { return (6534 - flushes); }
		case 850135:    { return (6535 - flushes); }
		case 510081:    { return (6536 - flushes); }
		case 340054:    { return (6537 - flushes); }
		case 540995:    { return (6538 - flushes); }
		case 324597:    { return (6539 - flushes); }
		case 216398:    { return (6540 - flushes); }
		case 231855:    { return (6541 - flushes); }
		case 154570:    { return (6542 - flushes); }
		case 92742:             { return (6543 - flushes); }
		case 457765:    { return (6544 - flushes); }
		case 274659:    { return (6545 - flushes); }
		case 183106:    { return (6546 - flushes); }
		case 196185:    { return (6547 - flushes); }
		case 130790:    { return (6548 - flushes); }
		case 78474:             { return (6549 - flushes); }
		case 124845:    { return (6550 - flushes); }
		case 83230:             { return (6551 - flushes); }
		case 49938:             { return (6552 - flushes); }
		case 35670:             { return (6553 - flushes); }
		case 3959657:   { return (6554 - flushes); }
		case 3350479:   { return (6555 - flushes); }
		case 2132123:   { return (6556 - flushes); }
		case 1522945:   { return (6557 - flushes); }
		case 913767:    { return (6558 - flushes); }
		case 609178:    { return (6559 - flushes); }
		case 2562131:   { return (6560 - flushes); }
		case 1630447:   { return (6561 - flushes); }
		case 1164605:   { return (6562 - flushes); }
		case 698763:    { return (6563 - flushes); }
		case 465842:    { return (6564 - flushes); }
		case 1379609:   { return (6565 - flushes); }
		case 985435:    { return (6566 - flushes); }
		case 591261:    { return (6567 - flushes); }
		case 394174:    { return (6568 - flushes); }
		case 627095:    { return (6569 - flushes); }
		case 376257:    { return (6570 - flushes); }
		case 250838:    { return (6571 - flushes); }
		case 268755:    { return (6572 - flushes); }
		case 179170:    { return (6573 - flushes); }
		case 107502:    { return (6574 - flushes); }
		case 2292433:   { return (6575 - flushes); }
		case 1458821:   { return (6576 - flushes); }
		case 1042015:   { return (6577 - flushes); }
		case 625209:    { return (6578 - flushes); }
		case 416806:    { return (6579 - flushes); }
		case 1234387:   { return (6580 - flushes); }
		case 881705:    { return (6581 - flushes); }
		case 529023:    { return (6582 - flushes); }
		case 352682:    { return (6583 - flushes); }
		case 561085:    { return (6584 - flushes); }
		case 336651:    { return (6585 - flushes); }
		case 224434:    { return (6586 - flushes); }
		case 240465:    { return (6587 - flushes); }
		case 160310:    { return (6588 - flushes); }
		case 96186:             { return (6589 - flushes); }
		case 943943:    { return (6590 - flushes); }
		case 674245:    { return (6591 - flushes); }
		case 404547:    { return (6592 - flushes); }
		case 269698:    { return (6593 - flushes); }
		case 429065:    { return (6594 - flushes); }
		case 257439:    { return (6595 - flushes); }
		case 171626:    { return (6596 - flushes); }
		case 183885:    { return (6597 - flushes); }
		case 122590:    { return (6598 - flushes); }
		case 73554:             { return (6599 - flushes); }
		case 363055:    { return (6600 - flushes); }
		case 217833:    { return (6601 - flushes); }
		case 145222:    { return (6602 - flushes); }
		case 155595:    { return (6603 - flushes); }
		case 103730:    { return (6604 - flushes); }
		case 62238:             { return (6605 - flushes); }
		case 99015:             { return (6606 - flushes); }
		case 66010:             { return (6607 - flushes); }
		case 39606:             { return (6608 - flushes); }
		case 28290:             { return (6609 - flushes); }
		case 1893749:   { return (6610 - flushes); }
		case 1205113:   { return (6611 - flushes); }
		case 860795:    { return (6612 - flushes); }
		case 516477:    { return (6613 - flushes); }
		case 344318:    { return (6614 - flushes); }
		case 1019711:   { return (6615 - flushes); }
		case 728365:    { return (6616 - flushes); }
		case 437019:    { return (6617 - flushes); }
		case 291346:    { return (6618 - flushes); }
		case 463505:    { return (6619 - flushes); }
		case 278103:    { return (6620 - flushes); }
		case 185402:    { return (6621 - flushes); }
		case 198645:    { return (6622 - flushes); }
		case 132430:    { return (6623 - flushes); }
		case 79458:             { return (6624 - flushes); }
		case 779779:    { return (6625 - flushes); }
		case 556985:    { return (6626 - flushes); }
		case 334191:    { return (6627 - flushes); }
		case 222794:    { return (6628 - flushes); }
		case 354445:    { return (6629 - flushes); }
		case 212667:    { return (6630 - flushes); }
		case 141778:    { return (6631 - flushes); }
		case 151905:    { return (6632 - flushes); }
		case 101270:    { return (6633 - flushes); }
		case 60762:             { return (6634 - flushes); }
		case 299915:    { return (6635 - flushes); }
		case 179949:    { return (6636 - flushes); }
		case 119966:    { return (6637 - flushes); }
		case 128535:    { return (6638 - flushes); }
		case 85690:             { return (6639 - flushes); }
		case 51414:             { return (6640 - flushes); }
		case 81795:             { return (6641 - flushes); }
		case 54530:             { return (6642 - flushes); }
		case 32718:             { return (6643 - flushes); }
		case 23370:             { return (6644 - flushes); }
		case 697697:    { return (6645 - flushes); }
		case 498355:    { return (6646 - flushes); }
		case 299013:    { return (6647 - flushes); }
		case 199342:    { return (6648 - flushes); }
		case 317135:    { return (6649 - flushes); }
		case 190281:    { return (6650 - flushes); }
		case 126854:    { return (6651 - flushes); }
		case 135915:    { return (6652 - flushes); }
		case 90610:             { return (6653 - flushes); }
		case 54366:             { return (6654 - flushes); }
		case 268345:    { return (6655 - flushes); }
		case 161007:    { return (6656 - flushes); }
		case 107338:    { return (6657 - flushes); }
		case 115005:    { return (6658 - flushes); }
		case 76670:             { return (6659 - flushes); }
		case 46002:             { return (6660 - flushes); }
		case 73185:             { return (6661 - flushes); }
		case 48790:             { return (6662 - flushes); }
		case 29274:             { return (6663 - flushes); }
		case 20910:             { return (6664 - flushes); }
		case 205205:    { return (6665 - flushes); }
		case 123123:    { return (6666 - flushes); }
		case 82082:             { return (6667 - flushes); }
		case 87945:             { return (6668 - flushes); }
		case 58630:             { return (6669 - flushes); }
		case 35178:             { return (6670 - flushes); }
		case 55965:             { return (6671 - flushes); }
		case 37310:             { return (6672 - flushes); }
		case 22386:             { return (6673 - flushes); }
		case 15990:             { return (6674 - flushes); }
		case 47355:             { return (6675 - flushes); }
		case 31570:             { return (6676 - flushes); }
		case 18942:             { return (6677 - flushes); }
		case 13530:             { return (6678 - flushes); }
		case 13005833:  { return (6679 - flushes); } // King - High
		case 9945637:   { return (6680 - flushes); }
		case 8415539:   { return (6681 - flushes); }
		case 5355343:   { return (6682 - flushes); }
		case 3825245:   { return (6683 - flushes); }
		case 2295147:   { return (6684 - flushes); }
		case 1530098:   { return (6685 - flushes); }
		case 10743949:  { return (6686 - flushes); }
		case 8215961:   { return (6687 - flushes); }
		case 6951967:   { return (6688 - flushes); }
		case 4423979:   { return (6689 - flushes); }
		case 3159985:   { return (6690 - flushes); }
		case 1895991:   { return (6691 - flushes); }
		case 1263994:   { return (6692 - flushes); }
		case 7351123:   { return (6693 - flushes); }
		case 6220181:   { return (6694 - flushes); }
		case 3958297:   { return (6695 - flushes); }
		case 2827355:   { return (6696 - flushes); }
		case 1696413:   { return (6697 - flushes); }
		case 1130942:   { return (6698 - flushes); }
		case 4756609:   { return (6699 - flushes); }
		case 3026933:   { return (6700 - flushes); }
		case 2162095:   { return (6701 - flushes); }
		case 1297257:   { return (6702 - flushes); }
		case 864838:    { return (6703 - flushes); }
		case 2561251:   { return (6704 - flushes); }
		case 1829465:   { return (6705 - flushes); }
		case 1097679:   { return (6706 - flushes); }
		case 731786:    { return (6707 - flushes); }
		case 1164205:   { return (6708 - flushes); }
		case 698523:    { return (6709 - flushes); }
		case 465682:    { return (6710 - flushes); }
		case 498945:    { return (6711 - flushes); }
		case 332630:    { return (6712 - flushes); }
		case 199578:    { return (6713 - flushes); }
		case 8521063:   { return (6714 - flushes); }
		case 6516107:   { return (6715 - flushes); }
		case 5513629:   { return (6716 - flushes); }
		case 3508673:   { return (6717 - flushes); }
		case 2506195:   { return (6718 - flushes); }
		case 1503717:   { return (6719 - flushes); }
		case 1002478:   { return (6720 - flushes); }
		case 5830201:   { return (6721 - flushes); }
		case 4933247:   { return (6722 - flushes); }
		case 3139339:   { return (6723 - flushes); }
		case 2242385:   { return (6724 - flushes); }
		case 1345431:   { return (6725 - flushes); }
		case 896954:    { return (6726 - flushes); }
		case 3772483:   { return (6727 - flushes); }
		case 2400671:   { return (6728 - flushes); }
		case 1714765:   { return (6729 - flushes); }
		case 1028859:   { return (6730 - flushes); }
		case 685906:    { return (6731 - flushes); }
		case 2031337:   { return (6732 - flushes); }
		case 1450955:   { return (6733 - flushes); }
		case 870573:    { return (6734 - flushes); }
		case 580382:    { return (6735 - flushes); }
		case 923335:    { return (6736 - flushes); }
		case 554001:    { return (6737 - flushes); }
		case 369334:    { return (6738 - flushes); }
		case 395715:    { return (6739 - flushes); }
		case 263810:    { return (6740 - flushes); }
		case 158286:    { return (6741 - flushes); }
		case 4816253:   { return (6742 - flushes); }
		case 4075291:   { return (6743 - flushes); }
		case 2593367:   { return (6744 - flushes); }
		case 1852405:   { return (6745 - flushes); }
		case 1111443:   { return (6746 - flushes); }
		case 740962:    { return (6747 - flushes); }
		case 3116399:   { return (6748 - flushes); }
		case 1983163:   { return (6749 - flushes); }
		case 1416545:   { return (6750 - flushes); }
		case 849927:    { return (6751 - flushes); }
		case 566618:    { return (6752 - flushes); }
		case 1678061:   { return (6753 - flushes); }
		case 1198615:   { return (6754 - flushes); }
		case 719169:    { return (6755 - flushes); }
		case 479446:    { return (6756 - flushes); }
		case 762755:    { return (6757 - flushes); }
		case 457653:    { return (6758 - flushes); }
		case 305102:    { return (6759 - flushes); }
		case 326895:    { return (6760 - flushes); }
		case 217930:    { return (6761 - flushes); }
		case 130758:    { return (6762 - flushes); }
		case 2788357:   { return (6763 - flushes); }
		case 1774409:   { return (6764 - flushes); }
		case 1267435:   { return (6765 - flushes); }
		case 760461:    { return (6766 - flushes); }
		case 506974:    { return (6767 - flushes); }
		case 1501423:   { return (6768 - flushes); }
		case 1072445:   { return (6769 - flushes); }
		case 643467:    { return (6770 - flushes); }
		case 428978:    { return (6771 - flushes); }
		case 682465:    { return (6772 - flushes); }
		case 409479:    { return (6773 - flushes); }
		case 272986:    { return (6774 - flushes); }
		case 292485:    { return (6775 - flushes); }
		case 194990:    { return (6776 - flushes); }
		case 116994:    { return (6777 - flushes); }
		case 1148147:   { return (6778 - flushes); }
		case 820105:    { return (6779 - flushes); }
		case 492063:    { return (6780 - flushes); }
		case 328042:    { return (6781 - flushes); }
		case 521885:    { return (6782 - flushes); }
		case 313131:    { return (6783 - flushes); }
		case 208754:    { return (6784 - flushes); }
		case 223665:    { return (6785 - flushes); }
		case 149110:    { return (6786 - flushes); }
		case 89466:             { return (6787 - flushes); }
		case 441595:    { return (6788 - flushes); }
		case 264957:    { return (6789 - flushes); }
		case 176638:    { return (6790 - flushes); }
		case 189255:    { return (6791 - flushes); }
		case 126170:    { return (6792 - flushes); }
		case 75702:             { return (6793 - flushes); }
		case 120435:    { return (6794 - flushes); }
		case 80290:             { return (6795 - flushes); }
		case 48174:             { return (6796 - flushes); }
		case 34410:             { return (6797 - flushes); }
		case 7971317:   { return (6798 - flushes); }
		case 6095713:   { return (6799 - flushes); }
		case 5157911:   { return (6800 - flushes); }
		case 3282307:   { return (6801 - flushes); }
		case 2344505:   { return (6802 - flushes); }
		case 1406703:   { return (6803 - flushes); }
		case 937802:    { return (6804 - flushes); }
		case 5454059:   { return (6805 - flushes); }
		case 4614973:   { return (6806 - flushes); }
		case 2936801:   { return (6807 - flushes); }
		case 2097715:   { return (6808 - flushes); }
		case 1258629:   { return (6809 - flushes); }
		case 839086:    { return (6810 - flushes); }
		case 3529097:   { return (6811 - flushes); }
		case 2245789:   { return (6812 - flushes); }
		case 1604135:   { return (6813 - flushes); }
		case 962481:    { return (6814 - flushes); }
		case 641654:    { return (6815 - flushes); }
		case 1900283:   { return (6816 - flushes); }
		case 1357345:   { return (6817 - flushes); }
		case 814407:    { return (6818 - flushes); }
		case 542938:    { return (6819 - flushes); }
		case 863765:    { return (6820 - flushes); }
		case 518259:    { return (6821 - flushes); }
		case 345506:    { return (6822 - flushes); }
		case 370185:    { return (6823 - flushes); }
		case 246790:    { return (6824 - flushes); }
		case 148074:    { return (6825 - flushes); }
		case 4505527:   { return (6826 - flushes); }
		case 3812369:   { return (6827 - flushes); }
		case 2426053:   { return (6828 - flushes); }
		case 1732895:   { return (6829 - flushes); }
		case 1039737:   { return (6830 - flushes); }
		case 693158:    { return (6831 - flushes); }
		case 2915341:   { return (6832 - flushes); }
		case 1855217:   { return (6833 - flushes); }
		case 1325155:   { return (6834 - flushes); }
		case 795093:    { return (6835 - flushes); }
		case 530062:    { return (6836 - flushes); }
		case 1569799:   { return (6837 - flushes); }
		case 1121285:   { return (6838 - flushes); }
		case 672771:    { return (6839 - flushes); }
		case 448514:    { return (6840 - flushes); }
		case 713545:    { return (6841 - flushes); }
		case 428127:    { return (6842 - flushes); }
		case 285418:    { return (6843 - flushes); }
		case 305805:    { return (6844 - flushes); }
		case 203870:    { return (6845 - flushes); }
		case 122322:    { return (6846 - flushes); }
		case 2608463:   { return (6847 - flushes); }
		case 1659931:   { return (6848 - flushes); }
		case 1185665:   { return (6849 - flushes); }
		case 711399:    { return (6850 - flushes); }
		case 474266:    { return (6851 - flushes); }
		case 1404557:   { return (6852 - flushes); }
		case 1003255:   { return (6853 - flushes); }
		case 601953:    { return (6854 - flushes); }
		case 401302:    { return (6855 - flushes); }
		case 638435:    { return (6856 - flushes); }
		case 383061:    { return (6857 - flushes); }
		case 255374:    { return (6858 - flushes); }
		case 273615:    { return (6859 - flushes); }
		case 182410:    { return (6860 - flushes); }
		case 109446:    { return (6861 - flushes); }
		case 1074073:   { return (6862 - flushes); }
		case 767195:    { return (6863 - flushes); }
		case 460317:    { return (6864 - flushes); }
		case 306878:    { return (6865 - flushes); }
		case 488215:    { return (6866 - flushes); }
		case 292929:    { return (6867 - flushes); }
		case 195286:    { return (6868 - flushes); }
		case 209235:    { return (6869 - flushes); }
		case 139490:    { return (6870 - flushes); }
		case 83694:             { return (6871 - flushes); }
		case 413105:    { return (6872 - flushes); }
		case 247863:    { return (6873 - flushes); }
		case 165242:    { return (6874 - flushes); }
		case 177045:    { return (6875 - flushes); }
		case 118030:    { return (6876 - flushes); }
		case 70818:             { return (6877 - flushes); }
		case 112665:    { return (6878 - flushes); }
		case 75110:             { return (6879 - flushes); }
		case 45066:             { return (6880 - flushes); }
		case 32190:             { return (6881 - flushes); }
		case 3573349:   { return (6882 - flushes); }
		case 3023603:   { return (6883 - flushes); }
		case 1924111:   { return (6884 - flushes); }
		case 1374365:   { return (6885 - flushes); }
		case 824619:    { return (6886 - flushes); }
		case 549746:    { return (6887 - flushes); }
		case 2312167:   { return (6888 - flushes); }
		case 1471379:   { return (6889 - flushes); }
		case 1050985:   { return (6890 - flushes); }
		case 630591:    { return (6891 - flushes); }
		case 420394:    { return (6892 - flushes); }
		case 1245013:   { return (6893 - flushes); }
		case 889295:    { return (6894 - flushes); }
		case 533577:    { return (6895 - flushes); }
		case 355718:    { return (6896 - flushes); }
		case 565915:    { return (6897 - flushes); }
		case 339549:    { return (6898 - flushes); }
		case 226366:    { return (6899 - flushes); }
		case 242535:    { return (6900 - flushes); }
		case 161690:    { return (6901 - flushes); }
		case 97014:             { return (6902 - flushes); }
		case 2068781:   { return (6903 - flushes); }
		case 1316497:   { return (6904 - flushes); }
		case 940355:    { return (6905 - flushes); }
		case 564213:    { return (6906 - flushes); }
		case 376142:    { return (6907 - flushes); }
		case 1113959:   { return (6908 - flushes); }
		case 795685:    { return (6909 - flushes); }
		case 477411:    { return (6910 - flushes); }
		case 318274:    { return (6911 - flushes); }
		case 506345:    { return (6912 - flushes); }
		case 303807:    { return (6913 - flushes); }
		case 202538:    { return (6914 - flushes); }
		case 217005:    { return (6915 - flushes); }
		case 144670:    { return (6916 - flushes); }
		case 86802:             { return (6917 - flushes); }
		case 851851:    { return (6918 - flushes); }
		case 608465:    { return (6919 - flushes); }
		case 365079:    { return (6920 - flushes); }
		case 243386:    { return (6921 - flushes); }
		case 387205:    { return (6922 - flushes); }
		case 232323:    { return (6923 - flushes); }
		case 154882:    { return (6924 - flushes); }
		case 165945:    { return (6925 - flushes); }
		case 110630:    { return (6926 - flushes); }
		case 66378:             { return (6927 - flushes); }
		case 327635:    { return (6928 - flushes); }
		case 196581:    { return (6929 - flushes); }
		case 131054:    { return (6930 - flushes); }
		case 140415:    { return (6931 - flushes); }
		case 93610:             { return (6932 - flushes); }
		case 56166:             { return (6933 - flushes); }
		case 89355:             { return (6934 - flushes); }
		case 59570:             { return (6935 - flushes); }
		case 35742:             { return (6936 - flushes); }
		case 25530:             { return (6937 - flushes); }
		case 1708993:   { return (6938 - flushes); }
		case 1087541:   { return (6939 - flushes); }
		case 776815:    { return (6940 - flushes); }
		case 466089:    { return (6941 - flushes); }
		case 310726:    { return (6942 - flushes); }
		case 920227:    { return (6943 - flushes); }
		case 657305:    { return (6944 - flushes); }
		case 394383:    { return (6945 - flushes); }
		case 262922:    { return (6946 - flushes); }
		case 418285:    { return (6947 - flushes); }
		case 250971:    { return (6948 - flushes); }
		case 167314:    { return (6949 - flushes); }
		case 179265:    { return (6950 - flushes); }
		case 119510:    { return (6951 - flushes); }
		case 71706:             { return (6952 - flushes); }
		case 703703:    { return (6953 - flushes); }
		case 502645:    { return (6954 - flushes); }
		case 301587:    { return (6955 - flushes); }
		case 201058:    { return (6956 - flushes); }
		case 319865:    { return (6957 - flushes); }
		case 191919:    { return (6958 - flushes); }
		case 127946:    { return (6959 - flushes); }
		case 137085:    { return (6960 - flushes); }
		case 91390:             { return (6961 - flushes); }
		case 54834:             { return (6962 - flushes); }
		case 270655:    { return (6963 - flushes); }
		case 162393:    { return (6964 - flushes); }
		case 108262:    { return (6965 - flushes); }
		case 115995:    { return (6966 - flushes); }
		case 77330:             { return (6967 - flushes); }
		case 46398:             { return (6968 - flushes); }
		case 73815:             { return (6969 - flushes); }
		case 49210:             { return (6970 - flushes); }
		case 29526:             { return (6971 - flushes); }
		case 21090:             { return (6972 - flushes); }
		case 629629:    { return (6973 - flushes); }
		case 449735:    { return (6974 - flushes); }
		case 269841:    { return (6975 - flushes); }
		case 179894:    { return (6976 - flushes); }
		case 286195:    { return (6977 - flushes); }
		case 171717:    { return (6978 - flushes); }
		case 114478:    { return (6979 - flushes); }
		case 122655:    { return (6980 - flushes); }
		case 81770:             { return (6981 - flushes); }
		case 49062:             { return (6982 - flushes); }
		case 242165:    { return (6983 - flushes); }
		case 145299:    { return (6984 - flushes); }
		case 96866:             { return (6985 - flushes); }
		case 103785:    { return (6986 - flushes); }
		case 69190:             { return (6987 - flushes); }
		case 41514:             { return (6988 - flushes); }
		case 66045:             { return (6989 - flushes); }
		case 44030:             { return (6990 - flushes); }
		case 26418:             { return (6991 - flushes); }
		case 18870:             { return (6992 - flushes); }
		case 185185:    { return (6993 - flushes); }
		case 111111:    { return (6994 - flushes); }
		case 74074:             { return (6995 - flushes); }
		case 79365:             { return (6996 - flushes); }
		case 52910:             { return (6997 - flushes); }
		case 31746:             { return (6998 - flushes); }
		case 50505:             { return (6999 - flushes); }
		case 33670:             { return (7000 - flushes); }
		case 20202:             { return (7001 - flushes); }
		case 14430:             { return (7002 - flushes); }
		case 42735:             { return (7003 - flushes); }
		case 28490:             { return (7004 - flushes); }
		case 17094:             { return (7005 - flushes); }
		case 12210:             { return (7006 - flushes); }
		case 7770:              { return (7007 - flushes); }
		case 5107219:   { return (7008 - flushes); } // Queen - High
		case 4321493:   { return (7009 - flushes); }
		case 2750041:   { return (7010 - flushes); }
		case 1964315:   { return (7011 - flushes); }
		case 1178589:   { return (7012 - flushes); }
		case 785726:    { return (7013 - flushes); }
		case 4569617:   { return (7014 - flushes); }
		case 3866599:   { return (7015 - flushes); }
		case 2460563:   { return (7016 - flushes); }
		case 1757545:   { return (7017 - flushes); }
		case 1054527:   { return (7018 - flushes); }
		case 703018:    { return (7019 - flushes); }
		case 2956811:   { return (7020 - flushes); }
		case 1881607:   { return (7021 - flushes); }
		case 1344005:   { return (7022 - flushes); }
		case 806403:    { return (7023 - flushes); }
		case 537602:    { return (7024 - flushes); }
		case 1592129:   { return (7025 - flushes); }
		case 1137235:   { return (7026 - flushes); }
		case 682341:    { return (7027 - flushes); }
		case 454894:    { return (7028 - flushes); }
		case 723695:    { return (7029 - flushes); }
		case 434217:    { return (7030 - flushes); }
		case 289478:    { return (7031 - flushes); }
		case 310155:    { return (7032 - flushes); }
		case 206770:    { return (7033 - flushes); }
		case 124062:    { return (7034 - flushes); }
		case 3774901:   { return (7035 - flushes); }
		case 3194147:   { return (7036 - flushes); }
		case 2032639:   { return (7037 - flushes); }
		case 1451885:   { return (7038 - flushes); }
		case 871131:    { return (7039 - flushes); }
		case 580754:    { return (7040 - flushes); }
		case 2442583:   { return (7041 - flushes); }
		case 1554371:   { return (7042 - flushes); }
		case 1110265:   { return (7043 - flushes); }
		case 666159:    { return (7044 - flushes); }
		case 444106:    { return (7045 - flushes); }
		case 1315237:   { return (7046 - flushes); }
		case 939455:    { return (7047 - flushes); }
		case 563673:    { return (7048 - flushes); }
		case 375782:    { return (7049 - flushes); }
		case 597835:    { return (7050 - flushes); }
		case 358701:    { return (7051 - flushes); }
		case 239134:    { return (7052 - flushes); }
		case 256215:    { return (7053 - flushes); }
		case 170810:    { return (7054 - flushes); }
		case 102486:    { return (7055 - flushes); }
		case 2185469:   { return (7056 - flushes); }
		case 1390753:   { return (7057 - flushes); }
		case 993395:    { return (7058 - flushes); }
		case 596037:    { return (7059 - flushes); }
		case 397358:    { return (7060 - flushes); }
		case 1176791:   { return (7061 - flushes); }
		case 840565:    { return (7062 - flushes); }
		case 504339:    		{ return (7063 - flushes); }
		case 336226:    		{ return (7064 - flushes); }
		case 534905:    		{ return (7065 - flushes); }
		case 320943:    		{ return (7066 - flushes); }
		case 213962:    		{ return (7067 - flushes); }
		case 229245:    		{ return (7068 - flushes); }
		case 152830:    		{ return (7069 - flushes); }
		case 91698:             { return (7070 - flushes); }
		case 899899:    		{ return (7071 - flushes); }
		case 642785:    		{ return (7072 - flushes); }
		case 385671:    		{ return (7073 - flushes); }
		case 257114:    		{ return (7074 - flushes); }
		case 409045:    		{ return (7075 - flushes); }
		case 245427:    		{ return (7076 - flushes); }
		case 163618:    		{ return (7077 - flushes); }
		case 175305:    		{ return (7078 - flushes); }
		case 116870:    		{ return (7079 - flushes); }
		case 70122:             { return (7080 - flushes); }
		case 346115:    		{ return (7081 - flushes); }
		case 207669:    		{ return (7082 - flushes); }
		case 138446:    		{ return (7083 - flushes); }
		case 148335:    		{ return (7084 - flushes); }
		case 98890:             { return (7085 - flushes); }
		case 59334:             { return (7086 - flushes); }
		case 94395:             { return (7087 - flushes); }
		case 62930:             { return (7088 - flushes); }
		case 37758:             { return (7089 - flushes); }
		case 26970:             { return (7090 - flushes); }
		case 2993887:   		{ return (7091 - flushes); }
		case 2533289:   		{ return (7092 - flushes); }
		case 1612093:   		{ return (7093 - flushes); }
		case 1151495:   		{ return (7094 - flushes); }
		case 690897:    		{ return (7095 - flushes); }
		case 460598:    		{ return (7096 - flushes); }
		case 1937221:   		{ return (7097 - flushes); }
		case 1232777:   		{ return (7098 - flushes); }
		case 880555:    		{ return (7099 - flushes); }
		case 528333:    		{ return (7100 - flushes); }
		case 352222:   		 	{ return (7101 - flushes); }
		case 1043119:   		{ return (7102 - flushes); }
		case 745085:    		{ return (7103 - flushes); }
		case 447051:    		{ return (7104 - flushes); }
		case 298034:    		{ return (7105 - flushes); }
		case 474145:    		{ return (7106 - flushes); }
		case 284487:    		{ return (7107 - flushes); }
		case 189658:    		{ return (7108 - flushes); }
		case 203205:    		{ return (7109 - flushes); }
		case 135470:    		{ return (7110 - flushes); }
		case 81282:             { return (7111 - flushes); }
		case 1733303:   		{ return (7112 - flushes); }
		case 1103011:   		{ return (7113 - flushes); }
		case 787865:    		{ return (7114 - flushes); }
		case 472719:    		{ return (7115 - flushes); }
		case 315146:    		{ return (7116 - flushes); }
		case 933317:    		{ return (7117 - flushes); }
		case 666655:    		{ return (7118 - flushes); }
		case 399993:    		{ return (7119 - flushes); }
		case 266662:    		{ return (7120 - flushes); }
		case 424235:    		{ return (7121 - flushes); }
		case 254541:    		{ return (7122 - flushes); }
		case 169694:    		{ return (7123 - flushes); }
		case 181815:    		{ return (7124 - flushes); }
		case 121210:    		{ return (7125 - flushes); }
		case 72726:             { return (7126 - flushes); }
		case 713713:    		{ return (7127 - flushes); }
		case 509795:    		{ return (7128 - flushes); }
		case 305877:    		{ return (7129 - flushes); }
		case 203918:    		{ return (7130 - flushes); }
		case 324415:    		{ return (7131 - flushes); }
		case 194649:    		{ return (7132 - flushes); }
		case 129766:    		{ return (7133 - flushes); }
		case 139035:    		{ return (7134 - flushes); }
		case 92690:             { return (7135 - flushes); }
		case 55614:             { return (7136 - flushes); }
		case 274505:    		{ return (7137 - flushes); }
		case 164703:    		{ return (7138 - flushes); }
		case 109802:    		{ return (7139 - flushes); }
		case 117645:    		{ return (7140 - flushes); }
		case 78430:             { return (7141 - flushes); }
		case 47058:             { return (7142 - flushes); }
		case 74865:             { return (7143 - flushes); }
		case 49910:             { return (7144 - flushes); }
		case 29946:             { return (7145 - flushes); }
		case 21390:             { return (7146 - flushes); }
		case 1431859:   		{ return (7147 - flushes); }
		case 911183:    		{ return (7148 - flushes); }
		case 650845:    		{ return (7149 - flushes); }
		case 390507:    		{ return (7150 - flushes); }
		case 260338:    		{ return (7151 - flushes); }
		case 771001:    		{ return (7152 - flushes); }
		case 550715:    		{ return (7153 - flushes); }
		case 330429:    		{ return (7154 - flushes); }
		case 220286:    		{ return (7155 - flushes); }
		case 350455:    		{ return (7156 - flushes); }
		case 210273:    		{ return (7157 - flushes); }
		case 140182:    		{ return (7158 - flushes); }
		case 150195:    		{ return (7159 - flushes); }
		case 100130:    		{ return (7160 - flushes); }
		case 60078:             { return (7161 - flushes); }
		case 589589:    		{ return (7162 - flushes); }
		case 421135:    		{ return (7163 - flushes); }
		case 252681:    		{ return (7164 - flushes); }
		case 168454:    		{ return (7165 - flushes); }
		case 267995:    		{ return (7166 - flushes); }
		case 160797:    		{ return (7167 - flushes); }
		case 107198:    		{ return (7168 - flushes); }
		case 114855:    		{ return (7169 - flushes); }
		case 76570:             { return (7170 - flushes); }
		case 45942:             { return (7171 - flushes); }
		case 226765:    		{ return (7172 - flushes); }
		case 136059:    		{ return (7173 - flushes); }
		case 90706:             { return (7174 - flushes); }
		case 97185:             { return (7175 - flushes); }
		case 64790:             { return (7176 - flushes); }
		case 38874:             { return (7177 - flushes); }
		case 61845:             { return (7178 - flushes); }
		case 41230:             { return (7179 - flushes); }
		case 24738:             { return (7180 - flushes); }
		case 17670:             { return (7181 - flushes); }
		case 527527:    		{ return (7182 - flushes); }
		case 376805:    		{ return (7183 - flushes); }
		case 226083:    		{ return (7184 - flushes); }
		case 150722:    		{ return (7185 - flushes); }
		case 239785:    		{ return (7186 - flushes); }
		case 143871:    		{ return (7187 - flushes); }
		case 95914:             { return (7188 - flushes); }
		case 102765:    		{ return (7189 - flushes); }
		case 68510:             { return (7190 - flushes); }
		case 41106:             { return (7191 - flushes); }
		case 202895:    		{ return (7192 - flushes); }
		case 121737:    		{ return (7193 - flushes); }
		case 81158:             { return (7194 - flushes); }
		case 86955:             { return (7195 - flushes); }
		case 57970:             { return (7196 - flushes); }
		case 34782:             { return (7197 - flushes); }
		case 55335:             { return (7198 - flushes); }
		case 36890:             { return (7199 - flushes); }
		case 22134:             { return (7200 - flushes); }
		case 15810:             { return (7201 - flushes); }
		case 155155:   			{ return (7202 - flushes); }
		case 93093:             { return (7203 - flushes); }
		case 62062:             { return (7204 - flushes); }
		case 66495:             { return (7205 - flushes); }
		case 44330:             { return (7206 - flushes); }
		case 26598:             { return (7207 - flushes); }
		case 42315:             { return (7208 - flushes); }
		case 28210:             { return (7209 - flushes); }
		case 16926:             { return (7210 - flushes); }
		case 12090:             { return (7211 - flushes); }
		case 35805:             { return (7212 - flushes); }
		case 23870:             { return (7213 - flushes); }
		case 14322:             { return (7214 - flushes); }
		case 10230:             { return (7215 - flushes); }
		case 6510:              { return (7216 - flushes); }
		case 2369851:   		{ return (7217 - flushes); } // Jack - High
		case 1508087:   		{ return (7218 - flushes); }
		case 1077205:   		{ return (7219 - flushes); }
		case 646323:    		{ return (7220 - flushes); }
		case 430882:    		{ return (7221 - flushes); }
		case 1812239:   		{ return (7222 - flushes); }
		case 1153243:   		{ return (7223 - flushes); }
		case 823745:    		{ return (7224 - flushes); }
		case 494247:    		{ return (7225 - flushes); }
		case 329498:    		{ return (7226 - flushes); }
		case 975821:    		{ return (7227 - flushes); }
		case 697015:    		{ return (7228 - flushes); }
		case 418209:    		{ return (7229 - flushes); }
		case 278806:    		{ return (7230 - flushes); }
		case 443555:    		{ return (7231 - flushes); }
		case 266133:    		{ return (7232 - flushes); }
		case 177422:    		{ return (7233 - flushes); }
		case 190095:    		{ return (7234 - flushes); }
		case 126730:    		{ return (7235 - flushes); }
		case 76038:             { return (7236 - flushes); }
		case 1621477:   		{ return (7237 - flushes); }
		case 1031849:   		{ return (7238 - flushes); }
		case 737035:    		{ return (7239 - flushes); }
		case 442221:    		{ return (7240 - flushes); }
		case 294814:    		{ return (7241 - flushes); }
		case 873103:    		{ return (7242 - flushes); }
		case 623645:    		{ return (7243 - flushes); }
		case 374187:    		{ return (7244 - flushes); }
		case 249458:   		 	{ return (7245 - flushes); }
		case 396865:    		{ return (7246 - flushes); }
		case 238119:    		{ return (7247 - flushes); }
		case 158746:    		{ return (7248 - flushes); }
		case 170085:    		{ return (7249 - flushes); }
		case 113390:    		{ return (7250 - flushes); }
		case 68034:             { return (7251 - flushes); }
		case 667667:    		{ return (7252 - flushes); }
		case 476905:   		 	{ return (7253 - flushes); }
		case 286143:    		{ return (7254 - flushes); }
		case 190762:    		{ return (7255 - flushes); }
		case 303485:    		{ return (7256 - flushes); }
		case 182091:    		{ return (7257 - flushes); }
		case 121394:    		{ return (7258 - flushes); }
		case 130065:    		{ return (7259 - flushes); }
		case 86710:     	    { return (7260 - flushes); }
		case 52026:             { return (7261 - flushes); }
		case 256795:    		{ return (7262 - flushes); }
		case 154077:    		{ return (7263 - flushes); }
		case 102718:    		{ return (7264 - flushes); }
		case 110055:    		{ return (7265 - flushes); }
		case 73370:             { return (7266 - flushes); }
		case 44022:             { return (7267 - flushes); }
		case 70035:             { return (7268 - flushes); }
		case 46690:             { return (7269 - flushes); }
		case 28014:             { return (7270 - flushes); }
		case 20010:             { return (7271 - flushes); }
		case 1339481:   		{ return (7272 - flushes); }
		case 852397:    		{ return (7273 - flushes); }
		case 608855:    		{ return (7274 - flushes); }
		case 365313:    		{ return (7275 - flushes); }
		case 243542:    		{ return (7276 - flushes); }
		case 721259:    		{ return (7277 - flushes); }
		case 515185:    		{ return (7278 - flushes); }
		case 309111:    		{ return (7279 - flushes); }
		case 206074:    		{ return (7280 - flushes); }
		case 327845:    		{ return (7281 - flushes); }
		case 196707:    		{ return (7282 - flushes); }
		case 131138:    		{ return (7283 - flushes); }
		case 140505:    		{ return (7284 - flushes); }
		case 93670:             { return (7285 - flushes); }
		case 56202:             { return (7286 - flushes); }
		case 551551:    		{ return (7287 - flushes); }
		case 393965:    		{ return (7288 - flushes); }
		case 236379:    		{ return (7289 - flushes); }
		case 157586:    		{ return (7290 - flushes); }
		case 250705:    		{ return (7291 - flushes); }
		case 150423:    		{ return (7292 - flushes); }
		case 100282:    		{ return (7293 - flushes); }
		case 107445:    		{ return (7294 - flushes); }
		case 71630:             { return (7295 - flushes); }
		case 42978:             { return (7296 - flushes); }
		case 212135:    		{ return (7297 - flushes); }
		case 127281:    		{ return (7298 - flushes); }
		case 84854:             { return (7299 - flushes); }
		case 90915:             { return (7300 - flushes); }
		case 60610:             { return (7301 - flushes); }
		case 36366:             { return (7302 - flushes); }
		case 57855:             { return (7303 - flushes); }
		case 38570:             { return (7304 - flushes); }
		case 23142:             { return (7305 - flushes); }
		case 16530:             { return (7306 - flushes); }
		case 493493:   			{ return (7307 - flushes); }
		case 352495:    		{ return (7308 - flushes); }
		case 211497:    		{ return (7309 - flushes); }
		case 140998:    		{ return (7310 - flushes); }
		case 224315:    		{ return (7311 - flushes); }
		case 134589:    		{ return (7312 - flushes); }
		case 89726:             { return (7313 - flushes); }
		case 96135:             { return (7314 - flushes); }
		case 64090:             { return (7315 - flushes); }
		case 38454:             { return (7316 - flushes); }
		case 189805:    		{ return (7317 - flushes); }
		case 113883:    		{ return (7318 - flushes); }
		case 75922:             { return (7319 - flushes); }
		case 81345:             { return (7320 - flushes); }
		case 54230:             { return (7321 - flushes); }
		case 32538:             { return (7322 - flushes); }
		case 51765:             { return (7323 - flushes); }
		case 34510:             { return (7324 - flushes); }
		case 20706:             { return (7325 - flushes); }
		case 14790:             { return (7326 - flushes); }
		case 145145:    		{ return (7327 - flushes); }
		case 87087:             { return (7328 - flushes); }
		case 58058:             { return (7329 - flushes); }
		case 62205:             { return (7330 - flushes); }
		case 41470:             { return (7331 - flushes); }
		case 24882:             { return (7332 - flushes); }
		case 39585:             { return (7333 - flushes); }
		case 26390:             { return (7334 - flushes); }
		case 15834:             { return (7335 - flushes); }
		case 11310:             { return (7336 - flushes); }
		case 33495:             { return (7337 - flushes); }
		case 22330:             { return (7338 - flushes); }
		case 13398:             { return (7339 - flushes); }
		case 9570:              { return (7340 - flushes); }
		case 6090:              { return (7341 - flushes); }
		case 676039:    		{ return (7342 - flushes); } // Ten - High
		case 482885:    		{ return (7343 - flushes); }
		case 289731:    		{ return (7344 - flushes); }
		case 193154:    		{ return (7345 - flushes); }
		case 572033:    		{ return (7346 - flushes); }
		case 408595:    		{ return (7347 - flushes); }
		case 245157:    		{ return (7348 - flushes); }
		case 163438:    		{ return (7349 - flushes); }
		case 260015:    		{ return (7350 - flushes); }
		case 156009:    		{ return (7351 - flushes); }
		case 104006:    		{ return (7352 - flushes); }
		case 111435:    		{ return (7353 - flushes); }
		case 74290:             { return (7354 - flushes); }
		case 44574:             { return (7355 - flushes); }
		case 437437:    		{ return (7356 - flushes); }
		case 312455:    		{ return (7357 - flushes); }
		case 187473:    		{ return (7358 - flushes); }
		case 124982:    		{ return (7359 - flushes); }
		case 198835:    		{ return (7360 - flushes); }
		case 119301:    		{ return (7361 - flushes); }
		case 79534:             { return (7362 - flushes); }
		case 85215:             { return (7363 - flushes); }
		case 56810:             { return (7364 - flushes); }
		case 34086:             { return (7365 - flushes); }
		case 168245:    		{ return (7366 - flushes); }
		case 100947:    		{ return (7367 - flushes); }
		case 67298:             { return (7368 - flushes); }
		case 72105:             { return (7369 - flushes); }
		case 48070:             { return (7370 - flushes); }
		case 28842:             { return (7371 - flushes); }
		case 45885:             { return (7372 - flushes); }
		case 30590:             { return (7373 - flushes); }
		case 18354:             { return (7374 - flushes); }
		case 13110:             { return (7375 - flushes); }
		case 391391:    		{ return (7376 - flushes); }
		case 279565:    		{ return (7377 - flushes); }
		case 167739:    		{ return (7378 - flushes); }
		case 111826:    		{ return (7379 - flushes); }
		case 177905:    		{ return (7380 - flushes); }
		case 106743:    		{ return (7381 - flushes); }
		case 71162:             { return (7382 - flushes); }
		case 76245:             { return (7383 - flushes); }
		case 50830:             { return (7384 - flushes); }
		case 30498:             { return (7385 - flushes); }
		case 150535:    		{ return (7386 - flushes); }
		case 90321:             { return (7387 - flushes); }
		case 60214:             { return (7388 - flushes); }
		case 64515:             { return (7389 - flushes); }
		case 43010:             { return (7390 - flushes); }
		case 25806:             { return (7391 - flushes); }
		case 41055:             { return (7392 - flushes); }
		case 27370:             { return (7393 - flushes); }
		case 16422:             { return (7394 - flushes); }
		case 11730:             { return (7395 - flushes); }
		case 115115:    		{ return (7396 - flushes); }
		case 69069:             { return (7397 - flushes); }
		case 46046:             { return (7398 - flushes); }
		case 49335:             { return (7399 - flushes); }
		case 32890:             { return (7400 - flushes); }
		case 19734:             { return (7401 - flushes); }
		case 31395:             { return (7402 - flushes); }
		case 20930:             { return (7403 - flushes); }
		case 12558:             { return (7404 - flushes); }
		case 8970:              { return (7405 - flushes); }
		case 26565:             { return (7406 - flushes); }
		case 17710:             { return (7407 - flushes); }
		case 10626:             { return (7408 - flushes); }
		case 7590:              { return (7409 - flushes); }
		case 4830:              { return (7410 - flushes); }
		case 230945:    		{ return (7411 - flushes); } // Nine - High
		case 138567:    		{ return (7412 - flushes); }
		case 92378:             { return (7413 - flushes); }
		case 146965:    		{ return (7414 - flushes); }
		case 88179:             { return (7415 - flushes); }
		case 58786:             { return (7416 - flushes); }
		case 62985:             { return (7417 - flushes); }
		case 41990:             { return (7418 - flushes); }
		case 25194:             { return (7419 - flushes); }
		case 124355:    		{ return (7420 - flushes); }
		case 74613:             { return (7421 - flushes); }
		case 49742:             { return (7422 - flushes); }
		case 53295:             { return (7423 - flushes); }
		case 35530:             { return (7424 - flushes); }
		case 21318:             { return (7425 - flushes); }
		case 33915:             { return (7426 - flushes); }
		case 22610:             { return (7427 - flushes); }
		case 13566:             { return (7428 - flushes); }
		case 9690:              { return (7429 - flushes); }
		case 95095:             { return (7430 - flushes); }
		case 57057:             { return (7431 - flushes); }
		case 38038:             { return (7432 - flushes); }
		case 40755:             { return (7433 - flushes); }
		case 27170:             { return (7434 - flushes); }
		case 16302:             { return (7435 - flushes); }
		case 25935:             { return (7436 - flushes); }
		case 17290:             { return (7437 - flushes); }
		case 10374:             { return (7438 - flushes); }
		case 7410:              { return (7439 - flushes); }
		case 21945:             { return (7440 - flushes); }
		case 14630:             { return (7441 - flushes); }
		case 8778:              { return (7442 - flushes); }
		case 6270:              { return (7443 - flushes); }
		case 3990:              { return (7444 - flushes); }
		case 51051:             { return (7445 - flushes); } // Eight - High
		case 34034:             { return (7446 - flushes); }
		case 36465:             { return (7447 - flushes); }
		case 24310:             { return (7448 - flushes); }
		case 14586:             { return (7449 - flushes); }
		case 23205:             { return (7450 - flushes); }
		case 15470:             { return (7451 - flushes); }
		case 9282:              { return (7452 - flushes); }
		case 6630:              { return (7453 - flushes); }
		case 19635:             { return (7454 - flushes); }
		case 13090:             { return (7455 - flushes); }
		case 7854:              { return (7456 - flushes); }
		case 5610:              { return (7457 - flushes); }
		case 3570:              { return (7458 - flushes); }
		case 10010:             { return (7459 - flushes); } // Seven - High
		case 6006:              { return (7460 - flushes); }
		case 4290:              { return (7461 - flushes); }
		case 2730:              { return (7462 - flushes); }
	}
	return -1;
}

stock rankname(rank, &first, &second)
{
	new returnstr[32];
	returnstr = "None";
	if(rank > 7458) { first = SEVEN; returnstr = "Seven-High"; }
	else if(rank > 7444) { first = EIGHT; returnstr = "Eight-High"; }
	else if(rank > 7410) { first = NINE; returnstr = "Nine-High"; }
	else if(rank > 7341) { first = TEN; returnstr = "Ten-High"; }
	else if(rank > 7216) { first = JACK; returnstr = "Jack-High"; }
	else if(rank > 7007) { first = QUEEN; returnstr = "Queen-High"; }
	else if(rank > 6678) { first = KING; returnstr = "King-High"; }
	else if(rank > 6185) { first = ACE; returnstr = "Ace-High"; }
	else if(rank > 5965) { first = TWO; returnstr = "Pair of Deuces"; }
	else if(rank > 5745) { first = THREE; returnstr = "Pair of Treys"; }
	else if(rank > 5525) { first = FOUR; returnstr = "Pair of Fours"; }
	else if(rank > 5305) { first = FIVE; returnstr = "Pair of Fives"; }
	else if(rank > 5085) { first = SIX; returnstr = "Pair of Sixes"; }
	else if(rank > 4865) { first = SEVEN; returnstr = "Pair of Sevens"; }
	else if(rank > 4645) { first = EIGHT; returnstr = "Pair of Eights"; }
	else if(rank > 4425) { first = NINE; returnstr = "Pair of Nines"; }
	else if(rank > 4205) { first = TEN; returnstr = "Pair of Tens"; }
	else if(rank > 3985) { first = JACK; returnstr = "Pair of Jacks"; }
	else if(rank > 3765) { first = QUEEN; returnstr = "Pair of Queens"; }
	else if(rank > 3545) { first = KING; returnstr = "Pair of Kings"; }
	else if(rank > 3325) { first = ACE; returnstr = "Pair of Aces"; }
	else if(rank > 3314) { first = THREE; second = TWO; returnstr = "Treys and Deuces"; }
	else if(rank > 3303) { first = FOUR; second = TWO; returnstr = "Fours and Deuces"; }
	else if(rank > 3292) { first = FOUR; second = THREE; returnstr = "Fours and Treys"; }
	else if(rank > 3281) { first = FIVE; second = TWO; returnstr = "Fives and Deuces"; }
	else if(rank > 3270) { first = FIVE; second = THREE; returnstr = "Fives and Treys"; }
	else if(rank > 3259) { first = FIVE; second = FOUR; returnstr = "Fives and Fours"; }
	else if(rank > 3248) { first = SIX; second = TWO; returnstr = "Sixes and Deuces"; }
	else if(rank > 3237) { first = SIX; second = THREE; returnstr = "Sixes and Treys"; }
	else if(rank > 3226) { first = SIX; second = FOUR; returnstr = "Sixes and Fours"; }
	else if(rank > 3215) { first = SIX; second = FIVE; returnstr = "Sixes and Fives"; }
	else if(rank > 3204) { first = SEVEN; second = TWO; returnstr = "Sevens and Deuces"; }
	else if(rank > 3193) { first = SEVEN; second = THREE; returnstr = "Sevens and Treys"; }
	else if(rank > 3182) { first = SEVEN; second = FOUR; returnstr = "Sevens and Fours"; }
	else if(rank > 3171) { first = SEVEN; second = FIVE; returnstr = "Sevens and Fives"; }
	else if(rank > 3160) { first = SEVEN; second = SIX; returnstr = "Sevens and Sixes"; }
	else if(rank > 3149) { first = EIGHT; second = TWO; returnstr = "Eights and Deuces"; }
	else if(rank > 3138) { first = EIGHT; second = THREE; returnstr = "Eights and Treys"; }
	else if(rank > 3127) { first = EIGHT; second = FOUR; returnstr = "Eights and Fours"; }
	else if(rank > 3116) { first = EIGHT; second = FIVE; returnstr = "Eights and Fives"; }
	else if(rank > 3105) { first = EIGHT; second = SIX; returnstr = "Eights and Sixes"; }
	else if(rank > 3094) { first = EIGHT; second = SEVEN; returnstr = "Eights and Sevens"; }
	else if(rank > 3083) { first = NINE; second = TWO; returnstr = "Nines and Deuces"; }
	else if(rank > 3072) { first = NINE; second = THREE; returnstr = "Nines and Treys"; }
	else if(rank > 3061) { first = NINE; second = FOUR; returnstr = "Nines and Fours"; }
	else if(rank > 3050) { first = NINE; second = FIVE; returnstr = "Nines and Fives"; }
	else if(rank > 3039) { first = NINE; second = SIX; returnstr = "Nines and Sixes"; }
	else if(rank > 3028) { first = NINE; second = SEVEN; returnstr = "Nines and Sevens"; }
	else if(rank > 3017) { first = NINE; second = EIGHT; returnstr = "Nines and Eights"; }
	else if(rank > 3006) { first = TEN; second = TWO; returnstr = "Tens and Deuces"; }
	else if(rank > 2995) { first = TEN; second = THREE; returnstr = "Tens and Treys"; }
	else if(rank > 2984) { first = TEN; second = FOUR; returnstr = "Tens and Fours"; }
	else if(rank > 2973) { first = TEN; second = FIVE; returnstr = "Tens and Fives"; }
	else if(rank > 2962) { first = TEN; second = SIX; returnstr = "Tens and Sixes"; }
	else if(rank > 2951) { first = TEN; second = SEVEN; returnstr = "Tens and Sevens"; }
	else if(rank > 2940) { first = TEN; second = EIGHT; returnstr = "Tens and Eights"; }
	else if(rank > 2929) { first = TEN; second = NINE; returnstr = "Tens and Nines"; }
	else if(rank > 2918) { first = JACK; second = TWO; returnstr = "Jacks and Deuces"; }
	else if(rank > 2907) { first = JACK; second = THREE; returnstr = "Jacks and Treys"; }
	else if(rank > 2896) { first = JACK; second = FOUR; returnstr = "Jacks and Fours"; }
	else if(rank > 2885) { first = JACK; second = FIVE; returnstr = "Jacks and Fives"; }
	else if(rank > 2874) { first = JACK; second = SIX; returnstr = "Jacks and Sixes"; }
	else if(rank > 2863) { first = JACK; second = SEVEN; returnstr = "Jacks and Sevens"; }
	else if(rank > 2852) { first = JACK; second = EIGHT; returnstr = "Jacks and Eights"; }
	else if(rank > 2841) { first = JACK; second = NINE; returnstr = "Jacks and Nines"; }
	else if(rank > 2830) { first = JACK; second = TEN; returnstr = "Jacks and Tens"; }
	else if(rank > 2819) { first = QUEEN; second = TWO; returnstr = "Queens and Deuces"; }
	else if(rank > 2808) { first = QUEEN; second = THREE; returnstr = "Queens and Treys"; }
	else if(rank > 2797) { first = QUEEN; second = FOUR; returnstr = "Queens and Fours"; }
	else if(rank > 2786) { first = QUEEN; second = FIVE; returnstr = "Queens and Fives"; }
	else if(rank > 2775) { first = QUEEN; second = SIX; returnstr = "Queens and Sixes"; }
	else if(rank > 2764) { first = QUEEN; second = SEVEN; returnstr = "Queens and Sevens"; }
	else if(rank > 2753) { first = QUEEN; second = EIGHT; returnstr = "Queens and Eights"; }
	else if(rank > 2742) { first = QUEEN; second = NINE; returnstr = "Queens and Nines"; }
	else if(rank > 2731) { first = QUEEN; second = TEN; returnstr = "Queens and Tens"; }
	else if(rank > 2720) { first = QUEEN; second = JACK; returnstr = "Queens and Jacks"; }
	else if(rank > 2709) { first = KING; second = TWO; returnstr = "Kings and Deuces"; }
	else if(rank > 2698) { first = KING; second = THREE; returnstr = "Kings and Treys"; }
	else if(rank > 2687) { first = KING; second = FOUR; returnstr = "Kings and Fours"; }
	else if(rank > 2676) { first = KING; second = FIVE; returnstr = "Kings and Fives"; }
	else if(rank > 2665) { first = KING; second = SIX; returnstr = "Kings and Sixes"; }
	else if(rank > 2654) { first = KING; second = SEVEN; returnstr = "Kings and Sevens"; }
	else if(rank > 2643) { first = KING; second = EIGHT; returnstr = "Kings and Eights"; }
	else if(rank > 2632) { first = KING; second = NINE; returnstr = "Kings and Nines"; }
	else if(rank > 2621) { first = KING; second = TEN; returnstr = "Kings and Tens"; }
	else if(rank > 2610) { first = KING; second = JACK; returnstr = "Kings and Jacks"; }
	else if(rank > 2599) { first = KING; second = QUEEN; returnstr = "Kings and Queens"; }
	else if(rank > 2588) { first = ACE; second = TWO; returnstr = "Aces and Deuces"; }
	else if(rank > 2577) { first = ACE; second = THREE; returnstr = "Aces and Treys"; }
	else if(rank > 2566) { first = ACE; second = FOUR; returnstr = "Aces and Fours"; }
	else if(rank > 2555) { first = ACE; second = FIVE; returnstr = "Aces and Fives"; }
	else if(rank > 2544) { first = ACE; second = SIX; returnstr = "Aces and Sixes"; }
	else if(rank > 2533) { first = ACE; second = SEVEN; returnstr = "Aces and Sevens"; }
	else if(rank > 2522) { first = ACE; second = EIGHT; returnstr = "Aces and Eights"; }
	else if(rank > 2511) { first = ACE; second = NINE; returnstr = "Aces and Nines"; }
	else if(rank > 2500) { first = ACE; second = TEN; returnstr = "Aces and Tens"; }
	else if(rank > 2489) { first = ACE; second = JACK; returnstr = "Aces and Jacks"; }
	else if(rank > 2478) { first = ACE; second = QUEEN; returnstr = "Aces and Queens"; }
	else if(rank > 2467) { first = ACE; second = KING; returnstr = "Aces and Kings"; }
	else if(rank > 2401) { first = TWO; returnstr = "Three Deuces"; }
	else if(rank > 2335) { first = THREE; returnstr = "Three Treys"; }
	else if(rank > 2269) { first = FOUR; returnstr = "Three Fours"; }
	else if(rank > 2203) { first = FIVE; returnstr = "Three Fives"; }
	else if(rank > 2137) { first = SIX; returnstr = "Three Sixes"; }
	else if(rank > 2071) { first = SEVEN; returnstr = "Three Sevens"; }
	else if(rank > 2005) { first = EIGHT; returnstr = "Three Eights"; }
	else if(rank > 1939) { first = NINE; returnstr = "Three Nines"; }
	else if(rank > 1873) { first = TEN; returnstr = "Three Tens"; }
	else if(rank > 1807) { first = JACK; returnstr = "Three Jacks"; }
	else if(rank > 1741) { first = QUEEN; returnstr = "Three Queens"; }
	else if(rank > 1675) { first = KING; returnstr = "Three Kings"; }
	else if(rank > 1609) { first = ACE; returnstr = "Three Aces"; }
	else if(rank > 1608) { first = FIVE; returnstr = "Five-High Straight"; }
	else if(rank > 1607) { first = SIX; returnstr = "Six-High Straight"; }
	else if(rank > 1606) { first = SEVEN; returnstr = "Seven-High Straight"; }
	else if(rank > 1605) { first = EIGHT; returnstr = "Eight-High Straight"; }
	else if(rank > 1604) { first = NINE; returnstr = "Nine-High Straight"; }
	else if(rank > 1603) { first = TEN; returnstr = "Ten-High Straight"; }
	else if(rank > 1602) { first = JACK; returnstr = "Jack-High Straight"; }
	else if(rank > 1601) { first = QUEEN; returnstr = "Queen-High Straight"; }
	else if(rank > 1600) { first = KING; returnstr = "King-High Straight"; }
	else if(rank > 1599) { first = ACE; returnstr = "Ace-High Straight"; }
	else if(rank > 1595) { first = SEVEN; returnstr = "Seven-High Flush"; }
	else if(rank > 1581) { first = EIGHT; returnstr = "Eight-High Flush"; }
	else if(rank > 1547) { first = NINE; returnstr = "Nine-High Flush"; }
	else if(rank > 1478) { first = TEN; returnstr = "Ten-High Flush"; }
	else if(rank > 1353) { first = JACK; returnstr = "Jack-High Flush"; }
	else if(rank > 1144) { first = QUEEN; returnstr = "Queen-High Flush"; }
	else if(rank > 815) { first = KING; returnstr = "King-High Flush"; }
	else if(rank > 322) { first = ACE; returnstr = "Ace-High Flush"; }
	else if(rank > 321) { first = TWO; second = THREE; returnstr = "Deuces Full over Treys"; }
	else if(rank > 320) { first = TWO; second = FOUR; returnstr = "Deuces Full over Fours"; }
	else if(rank > 319) { first = TWO; second = FIVE; returnstr = "Deuces Full over Fives"; }
	else if(rank > 318) { first = TWO; second = SIX; returnstr = "Deuces Full over Sixes"; }
	else if(rank > 317) { first = TWO; second = SEVEN; returnstr = "Deuces Full over Sevens"; }
	else if(rank > 316) { first = TWO; second = EIGHT; returnstr = "Deuces Full over Eights"; }
	else if(rank > 315) { first = TWO; second = NINE; returnstr = "Deuces Full over Nines"; }
	else if(rank > 314) { first = TWO; second = TEN; returnstr = "Deuces Full over Tens"; }
	else if(rank > 313) { first = TWO; second = JACK; returnstr = "Deuces Full over Jacks"; }
	else if(rank > 312) { first = TWO; second = QUEEN; returnstr = "Deuces Full over Queens"; }
	else if(rank > 311) { first = TWO; second = KING; returnstr = "Deuces Full over Kings"; }
	else if(rank > 310) { first = TWO; second = ACE; returnstr = "Deuces Full over Aces"; }
	else if(rank > 309) { first = THREE; second = TWO; returnstr = "Treys Full over Deuces"; }
	else if(rank > 308) { first = THREE; second = FOUR; returnstr = "Treys Full over Fours"; }
	else if(rank > 307) { first = THREE; second = FIVE; returnstr = "Treys Full over Fives"; }
	else if(rank > 306) { first = THREE; second = SIX; returnstr = "Treys Full over Sixes"; }
	else if(rank > 305) { first = THREE; second = SEVEN; returnstr = "Treys Full over Sevens"; }
	else if(rank > 304) { first = THREE; second = EIGHT; returnstr = "Treys Full over Eights"; }
	else if(rank > 303) { first = THREE; second = NINE; returnstr = "Treys Full over Nines"; }
	else if(rank > 302) { first = THREE; second = TEN; returnstr = "Treys Full over Tens"; }
	else if(rank > 301) { first = THREE; second = JACK; returnstr = "Treys Full over Jacks"; }
	else if(rank > 300) { first = THREE; second = QUEEN; returnstr = "Treys Full over Queens"; }
	else if(rank > 299) { first = THREE; second = KING; returnstr = "Treys Full over Kings"; }
	else if(rank > 298) { first = THREE; second = ACE; returnstr = "Treys Full over Aces"; }
	else if(rank > 297) { first = FOUR; second = TWO; returnstr = "Fours Full over Deuces"; }
	else if(rank > 296) { first = FOUR; second = THREE; returnstr = "Fours Full over Treys"; }
	else if(rank > 295) { first = FOUR; second = FIVE; returnstr = "Fours Full over Fives"; }
	else if(rank > 294) { first = FOUR; second = SIX; returnstr = "Fours Full over Sixes"; }
	else if(rank > 293) { first = FOUR; second = SEVEN; returnstr = "Fours Full over Sevens"; }
	else if(rank > 292) { first = FOUR; second = EIGHT; returnstr = "Fours Full over Eights"; }
	else if(rank > 291) { first = FOUR; second = NINE; returnstr = "Fours Full over Nines"; }
	else if(rank > 290) { first = FOUR; second = TEN; returnstr = "Fours Full over Tens"; }
	else if(rank > 289) { first = FOUR; second = JACK; returnstr = "Fours Full over Jacks"; }
	else if(rank > 288) { first = FOUR; second = QUEEN; returnstr = "Fours Full over Queens"; }
	else if(rank > 287) { first = FOUR; second = KING; returnstr = "Fours Full over Kings"; }
	else if(rank > 286) { first = FOUR; second = ACE; returnstr = "Fours Full over Aces"; }
	else if(rank > 285) { first = FIVE; second = TWO; returnstr = "Fives Full over Deuces"; }
	else if(rank > 284) { first = FIVE; second = THREE; returnstr = "Fives Full over Treys"; }
	else if(rank > 283) { first = FIVE; second = FOUR; returnstr = "Fives Full over Fours"; }
	else if(rank > 282) { first = FIVE; second = SIX; returnstr = "Fives Full over Sixes"; }
	else if(rank > 281) { first = FIVE; second = SEVEN; returnstr = "Fives Full over Sevens"; }
	else if(rank > 280) { first = FIVE; second = EIGHT; returnstr = "Fives Full over Eights"; }
	else if(rank > 279) { first = FIVE; second = NINE; returnstr = "Fives Full over Nines"; }
	else if(rank > 278) { first = FIVE; second = TEN; returnstr = "Fives Full over Tens"; }
	else if(rank > 277) { first = FIVE; second = JACK; returnstr = "Fives Full over Jacks"; }
	else if(rank > 276) { first = FIVE; second = QUEEN; returnstr = "Fives Full over Queens"; }
	else if(rank > 275) { first = FIVE; second = KING; returnstr = "Fives Full over Kings"; }
	else if(rank > 274) { first = FIVE; second = ACE; returnstr = "Fives Full over Aces"; }
	else if(rank > 273) { first = SIX; second = TWO; returnstr = "Sixes Full over Deuces"; }
	else if(rank > 272) { first = SIX; second = THREE; returnstr = "Sixes Full over Treys"; }
	else if(rank > 271) { first = SIX; second = FOUR; returnstr = "Sixes Full over Fours"; }
	else if(rank > 270) { first = SIX; second = FIVE; returnstr = "Sixes Full over Fives"; }
	else if(rank > 269) { first = SIX; second = SEVEN; returnstr = "Sixes Full over Sevens"; }
	else if(rank > 268) { first = SIX; second = EIGHT; returnstr = "Sixes Full over Eights"; }
	else if(rank > 267) { first = SIX; second = NINE; returnstr = "Sixes Full over Nines"; }
	else if(rank > 266) { first = SIX; second = TEN; returnstr = "Sixes Full over Tens"; }
	else if(rank > 265) { first = SIX; second = JACK; returnstr = "Sixes Full over Jacks"; }
	else if(rank > 264) { first = SIX; second = QUEEN; returnstr = "Sixes Full over Queens"; }
	else if(rank > 263) { first = SIX; second = KING; returnstr = "Sixes Full over Kings"; }
	else if(rank > 262) { first = SIX; second = ACE; returnstr = "Sixes Full over Aces"; }
	else if(rank > 261) { first = SEVEN; second = TWO; returnstr = "Sevens Full over Deuces"; }
	else if(rank > 260) { first = SEVEN; second = THREE; returnstr = "Sevens Full over Treys"; }
	else if(rank > 259) { first = SEVEN; second = FOUR; returnstr = "Sevens Full over Fours"; }
	else if(rank > 258) { first = SEVEN; second = FIVE; returnstr = "Sevens Full over Fives"; }
	else if(rank > 257) { first = SEVEN; second = SIX; returnstr = "Sevens Full over Sixes"; }
	else if(rank > 256) { first = SEVEN; second = EIGHT; returnstr = "Sevens Full over Eights"; }
	else if(rank > 255) { first = SEVEN; second = NINE; returnstr = "Sevens Full over Nines"; }
	else if(rank > 254) { first = SEVEN; second = TEN; returnstr = "Sevens Full over Tens"; }
	else if(rank > 253) { first = SEVEN; second = JACK; returnstr = "Sevens Full over Jacks"; }
	else if(rank > 252) { first = SEVEN; second = QUEEN; returnstr = "Sevens Full over Queens"; }
	else if(rank > 251) { first = SEVEN; second = KING; returnstr = "Sevens Full over Kings"; }
	else if(rank > 250) { first = SEVEN; second = ACE; returnstr = "Sevens Full over Aces"; }
	else if(rank > 249) { first = EIGHT; second = TWO; returnstr = "Eights Full over Deuces"; }
	else if(rank > 248) { first = EIGHT; second = THREE; returnstr = "Eights Full over Treys"; }
	else if(rank > 247) { first = EIGHT; second = FOUR; returnstr = "Eights Full over Fours"; }
	else if(rank > 246) { first = EIGHT; second = FIVE; returnstr = "Eights Full over Fives"; }
	else if(rank > 245) { first = EIGHT; second = SIX; returnstr = "Eights Full over Sixes"; }
	else if(rank > 244) { first = EIGHT; second = SEVEN; returnstr = "Eights Full over Sevens"; }
	else if(rank > 243) { first = EIGHT; second = NINE; returnstr = "Eights Full over Nines"; }
	else if(rank > 242) { first = EIGHT; second = TEN; returnstr = "Eights Full over Tens"; }
	else if(rank > 241) { first = EIGHT; second = JACK; returnstr = "Eights Full over Jacks"; }
	else if(rank > 240) { first = EIGHT; second = QUEEN; returnstr = "Eights Full over Queens"; }
	else if(rank > 239) { first = EIGHT; second = KING; returnstr = "Eights Full over Kings"; }
	else if(rank > 238) { first = EIGHT; second = ACE; returnstr = "Eights Full over Aces"; }
	else if(rank > 237) { first = NINE; second = TWO; returnstr = "Nines Full over Deuces"; }
	else if(rank > 236) { first = NINE; second = THREE; returnstr = "Nines Full over Treys"; }
	else if(rank > 235) { first = NINE; second = FOUR; returnstr = "Nines Full over Fours"; }
	else if(rank > 234) { first = NINE; second = FIVE; returnstr = "Nines Full over Fives"; }
	else if(rank > 233) { first = NINE; second = SIX; returnstr = "Nines Full over Sixes"; }
	else if(rank > 232) { first = NINE; second = SEVEN; returnstr = "Nines Full over Sevens"; }
	else if(rank > 231) { first = NINE; second = EIGHT; returnstr = "Nines Full over Eights"; }
	else if(rank > 230) { first = NINE; second = TEN; returnstr = "Nines Full over Tens"; }
	else if(rank > 229) { first = NINE; second = JACK; returnstr = "Nines Full over Jacks"; }
	else if(rank > 228) { first = NINE; second = QUEEN; returnstr = "Nines Full over Queens"; }
	else if(rank > 227) { first = NINE; second = KING; returnstr = "Nines Full over Kings"; }
	else if(rank > 226) { first = NINE; second = ACE; returnstr = "Nines Full over Aces"; }
	else if(rank > 225) { first = TEN; second = TWO; returnstr = "Tens Full over Deuces"; }
	else if(rank > 224) { first = TEN; second = THREE; returnstr = "Tens Full over Treys"; }
	else if(rank > 223) { first = TEN; second = FOUR; returnstr = "Tens Full over Fours"; }
	else if(rank > 222) { first = TEN; second = FIVE; returnstr = "Tens Full over Fives"; }
	else if(rank > 221) { first = TEN; second = SIX; returnstr = "Tens Full over Sixes"; }
	else if(rank > 220) { first = TEN; second = SEVEN; returnstr = "Tens Full over Sevens"; }
	else if(rank > 219) { first = TEN; second = EIGHT; returnstr = "Tens Full over Eights"; }
	else if(rank > 218) { first = TEN; second = NINE; returnstr = "Tens Full over Nines"; }
	else if(rank > 217) { first = TEN; second = JACK; returnstr = "Tens Full over Jacks"; }
	else if(rank > 216) { first = TEN; second = QUEEN; returnstr = "Tens Full over Queens"; }
	else if(rank > 215) { first = TEN; second = KING; returnstr = "Tens Full over Kings"; }
	else if(rank > 214) { first = TEN; second = ACE; returnstr = "Tens Full over Aces"; }
	else if(rank > 213) { first = JACK; second = TWO; returnstr = "Jacks Full over Deuces"; }
	else if(rank > 212) { first = JACK; second = THREE; returnstr = "Jacks Full over Treys"; }
	else if(rank > 211) { first = JACK; second = FOUR; returnstr = "Jacks Full over Fours"; }
	else if(rank > 210) { first = JACK; second = FIVE; returnstr = "Jacks Full over Fives"; }
	else if(rank > 209) { first = JACK; second = SIX; returnstr = "Jacks Full over Sixes"; }
	else if(rank > 208) { first = JACK; second = SEVEN; returnstr = "Jacks Full over Sevens"; }
	else if(rank > 207) { first = JACK; second = EIGHT; returnstr = "Jacks Full over Eights"; }
	else if(rank > 206) { first = JACK; second = NINE; returnstr = "Jacks Full over Nines"; }
	else if(rank > 205) { first = JACK; second = TEN; returnstr = "Jacks Full over Tens"; }
	else if(rank > 204) { first = JACK; second = QUEEN; returnstr = "Jacks Full over Queens"; }
	else if(rank > 203) { first = JACK; second = KING; returnstr = "Jacks Full over Kings"; }
	else if(rank > 202) { first = JACK; second = ACE; returnstr = "Jacks Full over Aces"; }
	else if(rank > 201) { first = QUEEN; second = TWO; returnstr = "Queens Full over Deuces"; }
	else if(rank > 200) { first = QUEEN; second = THREE; returnstr = "Queens Full over Treys"; }
	else if(rank > 199) { first = QUEEN; second = FOUR; returnstr = "Queens Full over Fours"; }
	else if(rank > 198) { first = QUEEN; second = FIVE; returnstr = "Queens Full over Fives"; }
	else if(rank > 197) { first = QUEEN; second = SIX; returnstr = "Queens Full over Sixes"; }
	else if(rank > 196) { first = QUEEN; second = SEVEN; returnstr = "Queens Full over Sevens"; }
	else if(rank > 195) { first = QUEEN; second = EIGHT; returnstr = "Queens Full over Eights"; }
	else if(rank > 194) { first = QUEEN; second = NINE; returnstr = "Queens Full over Nines"; }
	else if(rank > 193) { first = QUEEN; second = TEN; returnstr = "Queens Full over Tens"; }
	else if(rank > 192) { first = QUEEN; second = JACK; returnstr = "Queens Full over Jacks"; }
	else if(rank > 191) { first = QUEEN; second = KING; returnstr = "Queens Full over Kings"; }
	else if(rank > 190) { first = QUEEN; second = ACE; returnstr = "Queens Full over Aces"; }
	else if(rank > 189) { first = KING; second = TWO; returnstr = "Kings Full over Deuces"; }
	else if(rank > 188) { first = KING; second = THREE; returnstr = "Kings Full over Treys"; }
	else if(rank > 187) { first = KING; second = FOUR; returnstr = "Kings Full over Fours"; }
	else if(rank > 186) { first = KING; second = FIVE; returnstr = "Kings Full over Fives"; }
	else if(rank > 185) { first = KING; second = SIX; returnstr = "Kings Full over Sixes"; }
	else if(rank > 184) { first = KING; second = SEVEN; returnstr = "Kings Full over Sevens"; }
	else if(rank > 183) { first = KING; second = EIGHT; returnstr = "Kings Full over Eights"; }
	else if(rank > 182) { first = KING; second = NINE; returnstr = "Kings Full over Nines"; }
	else if(rank > 181) { first = KING; second = TEN; returnstr = "Kings Full over Tens"; }
	else if(rank > 180) { first = KING; second = JACK; returnstr = "Kings Full over Jacks"; }
	else if(rank > 179) { first = KING; second = QUEEN; returnstr = "Kings Full over Queens"; }
	else if(rank > 178) { first = KING; second = ACE; returnstr = "Kings Full over Aces"; }
	else if(rank > 177) { first = ACE; second = TWO; returnstr = "Aces Full over Deuces"; }
	else if(rank > 176) { first = ACE; second = THREE; returnstr = "Aces Full over Treys"; }
	else if(rank > 175) { first = ACE; second = FOUR; returnstr = "Aces Full over Fours"; }
	else if(rank > 174) { first = ACE; second = FIVE; returnstr = "Aces Full over Fives"; }
	else if(rank > 173) { first = ACE; second = SIX; returnstr = "Aces Full over Sixes"; }
	else if(rank > 172) { first = ACE; second = SEVEN; returnstr = "Aces Full over Sevens"; }
	else if(rank > 171) { first = ACE; second = EIGHT; returnstr = "Aces Full over Eights"; }
	else if(rank > 170) { first = ACE; second = NINE; returnstr = "Aces Full over Nines"; }
	else if(rank > 169) { first = ACE; second = TEN; returnstr = "Aces Full over Tens"; }
	else if(rank > 168) { first = ACE; second = JACK; returnstr = "Aces Full over Jacks"; }
	else if(rank > 167) { first = ACE; second = QUEEN; returnstr = "Aces Full over Queens"; }
	else if(rank > 166) { first = ACE; second = KING; returnstr = "Aces Full over Kings"; }
	else if(rank > 154) { first = TWO; returnstr = "Four Deuces"; }
	else if(rank > 142) { first = THREE; returnstr = "Four Treys"; }
	else if(rank > 130) { first = FOUR; returnstr = "Four Fours"; }
	else if(rank > 118) { first = FIVE; returnstr = "Four Fives"; }
	else if(rank > 106) { first = SIX; returnstr = "Four Sixes"; }
	else if(rank > 94) { first = SEVEN; returnstr = "Four Sevens"; }
	else if(rank > 82) { first = EIGHT; returnstr = "Four Eights"; }
	else if(rank > 70) { first = NINE; returnstr = "Four Nines"; }
	else if(rank > 58) { first = TEN; returnstr = "Four Tens"; }
	else if(rank > 46) { first = JACK; returnstr = "Four Jacks"; }
	else if(rank > 34) { first = QUEEN; returnstr = "Four Queens"; }
	else if(rank > 22) { first = KING; returnstr = "Four Kings"; }
	else if(rank > 10) { first = ACE; returnstr = "Four Aces"; }
	else if(rank > 9) { first = FIVE; returnstr = "Five-High Straight Flush"; }
	else if(rank > 8) { first = SIX; returnstr = "Six-High Straight Flush"; }
	else if(rank > 7) { first = SEVEN; returnstr = "Seven-High Straight Flush"; }
	else if(rank > 6) { first = EIGHT; returnstr = "Eight-High Straight Flush"; }
	else if(rank > 5) { first = NINE; returnstr = "Nine-High Straight Flush"; }
	else if(rank > 4) { first = TEN; returnstr = "Ten-High Straight Flush"; }
	else if(rank > 3) { first = JACK; returnstr = "Jack-High Straight Flush"; }
	else if(rank > 2) { first = QUEEN; returnstr = "Queen-High Straight Flush"; }
	else if(rank > 1) { first = KING; returnstr = "King-High Straight Flush"; }
	else if(rank > 0) { first = ACE; returnstr = "Royal Flush"; }
	return returnstr;
}

//Animation vorladen
stock PreloadAnims(playerid)
{
    ServerAnim(playerid, "BOMBER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "AIRPORT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "Attractors", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BAR", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BASEBALL", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BD_FIRE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BEACH", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "benchpress", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BF_injection", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKED", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKEH", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKELEAP", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKES", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKEV", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BIKE_DBZ", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BMX", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BOMBER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BOX", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BSKTBALL", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BUDDY", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "BUS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CAMERA", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CAR", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CARRY", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CAR_CHAT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CASINO", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CHAINSAW", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CHOPPA", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CLOTHES", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "COACH", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "COLT45", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "Blowjobz", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "COP_AMBIENT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "COP_DVBYZ", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CRACK", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "CRIB", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DAM_JUMP", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DANCING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DEALER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DILDO", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DODGE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DOZER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "DRIVEBYS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FAT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FIGHT_B", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FIGHT_C", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FIGHT_D", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FIGHT_E", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FINALE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FINALE2", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FLAME", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "Flowers", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "FOOD", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "Freeweights", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GANGS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GHANDS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GHETTO_DB", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "goggles", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GRAFFITI", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GRAVEYARD", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GRENADE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "GYMNASIUM", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "HAIRCUTS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "HEIST9", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "INT_HOUSE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "INT_OFFICE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "INT_SHOP", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "JST_BUISNESS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "KART", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "KISSING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "KNIFE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "LAPDAN1", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "LAPDAN2", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "LAPDAN3", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "LOWRIDER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MD_CHASE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MD_END", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MEDIC", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MISC", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MTB", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "MUSCULAR", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "NEVADA", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "ON_LOOKERS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "OTB", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PARACHUTE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PARK", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PAULNMAC", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "ped", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PLAYER_DVBYS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PLAYIDLES", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "POLICE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "POOL", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "POOR", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "PYTHON", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "QUAD", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "QUAD_DBZ", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "RAPPING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "RIFLE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "RIOT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "ROB_BANK", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "RUSTLER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "RYDER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SCRATCHING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SHAMAL", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SHOP", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SHOTGUN", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SILENCED", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SKATE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SMOKING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SNIPER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SPRAYCAN", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "STRIP", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SUNBATHE", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SWAT", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SWEET", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SWIM", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "SWORD", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "TANK", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "TATTOOS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "TEC", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "TRAIN", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "TRUCK", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "UZI", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "VAN", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "VENDING", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "VORTEX", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "WAYFARER", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "WEAPONS", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "WUZI", "null", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid,"SNM","SPANKINGW", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid,"ped","abseil", 0.0, 0, 0, 0, 0, 0);
    ServerAnim(playerid, "ON_LOOKERS","wave_loop", 4.0, 1, 1, 1, 1, 0, 1);
    ServerAnim(playerid, "CRACK","crckdeth1", 4.0, 1, 1, 1, 1, 0, 1);
    ServerAnim(playerid, "CRACK","crckdeth2", 4.0, 1, 1, 1, 1, 0, 1);
    ServerAnim(playerid, "CRACK","crckidle1", 4.0, 1, 1, 1, 1, 0, 1);
    ServerAnim(playerid, "PED", "IDLE_CHAT", 0.0, 0, 0, 0, 0, 0);
    ClearAnimations(playerid);
    return 1;
}

//AddCommasToInt
stock AddCommasToInt(number)
{
    new tStr[16];
    new number2 = number;
    if(number < 0)
	{
		number = number * -1;
	}
    format(tStr, sizeof(tStr), "%d", number);
    new iPos = strlen(tStr),iCount = 1;
    while(iPos > 0)
    {
        if(strlen(tStr) < 4) break;
		if(iCount == 4)
		{
	    	iCount = 0;
	    	strins(tStr, ".", iPos, 1);
    	    iPos++;
        }
        iCount++;
        iPos--;
    }
    if(number2 < 0) format(tStr, sizeof(tStr), "-%s", tStr);
    return tStr;
}

//Geld System
stock GivePlayerEuro(playerid,euros)
{
	//Geld Operation
    ResetPlayerMoney(playerid);
	SetPVarInt(playerid,"Euros",GetPVarInt(playerid,"Euros")+euros);
	SetPVarInt(playerid, "LastEuro", euros);
	//Textdraw Setzen
	new cashtext[35];
	if(GetPVarInt(playerid,"MoneyAnzeige") == 1)
	{
		format(cashtext,35,"%s Euro",AddCommasToInt(GetPVarInt(playerid,"Euros")));
		PlayerTextDrawSetString(playerid,Money[2][playerid],cashtext);
	}
	if(GetPVarInt(playerid,"LastSpawn") == 0 && euros != 0)
	{
		if(GetPVarInt(playerid,"LastEuroSet") == 1)
		{
		    KillTimer(MoneySet[playerid]);
		    SetPVarInt(playerid, "LastEuroSet", 0);
		}
		if(euros >= 0)
		{
			format(cashtext,35,"~g~+%s Euro",AddCommasToInt(euros));
		}
		else
		{
		    format(cashtext,35,"~r~-%s Euro",AddCommasToInt(euros*-1));
		}
		if(GetPVarInt(playerid,"MoneyAnzeige") == 1)
		{
			PlayerTextDrawSetString(playerid,Money[3][playerid],cashtext);
		}
		SetPVarInt(playerid, "LastEuroSet", 1);
		MoneySet[playerid] = SetTimerEx("MoneyUnSet",5189,false,"i",playerid);
	}
	return 1;
}

stock GetPlayerEuros(playerid)
{
	return GetPVarInt(playerid,"Euros");
}

stock ResetPlayerEuro(playerid)
{
	SetPVarInt(playerid,"Euros",0);
	GivePlayerEuro(playerid,0);
	return 1;
}

//PlayerTextDrawInit
stock PlayerTextDrawInit(playerid)
{
	//Debug
	new PlayerText:tmppt = CreatePlayerTextDraw(playerid,616.000000, 78.000000, "~n~~n~");
	PlayerTextDrawBackgroundColor(playerid,tmppt, 255);
	PlayerTextDrawFont(playerid,tmppt, 1);
	PlayerTextDrawLetterSize(playerid,tmppt, 0.800000, 1.200000);
	PlayerTextDrawColor(playerid,tmppt, -1);
	PlayerTextDrawSetOutline(playerid,tmppt, 0);
	PlayerTextDrawSetProportional(playerid,tmppt, 1);
	PlayerTextDrawSetShadow(playerid,tmppt, 1);
	PlayerTextDrawUseBox(playerid,tmppt, 1);
	PlayerTextDrawBoxColor(playerid,tmppt, 0x1564F500);
	PlayerTextDrawTextSize(playerid,tmppt, 492.000000, 31.000000);
	return 1;
}

//TextDrawInit
stock TextDrawInit()
{
	//Textdraws
	//Schwarzer Hintergrund
	BlackBackground = TextDrawCreate(0.000000,0.000000,"~n~~n~~n~");
	TextDrawUseBox(BlackBackground,1);
	TextDrawBoxColor(BlackBackground,0x000000ff);
	TextDrawTextSize(BlackBackground,658.000000,11.000000);
	TextDrawAlignment(BlackBackground,0);
	TextDrawBackgroundColor(BlackBackground,0x000000ff);
	TextDrawFont(BlackBackground,3);
	TextDrawLetterSize(BlackBackground,1.000000,17.100002);
	TextDrawColor(BlackBackground,0x000000ff);
	TextDrawSetOutline(BlackBackground,1);
	TextDrawSetProportional(BlackBackground,1);
	TextDrawSetShadow(BlackBackground,1);
	//Schwarze Balken
	MainMenu[0] = TextDrawCreate(-160.000000, -8.000000, "~n~");
	TextDrawBackgroundColor(MainMenu[0], 255);
	TextDrawFont(MainMenu[0], 1);
	TextDrawLetterSize(MainMenu[0], 0.500000, 12.800006);
	TextDrawColor(MainMenu[0], -1);
	TextDrawSetOutline(MainMenu[0], 0);
	TextDrawSetProportional(MainMenu[0], 1);
	TextDrawSetShadow(MainMenu[0], 1);
	TextDrawUseBox(MainMenu[0], 1);
	TextDrawBoxColor(MainMenu[0], 255);
	TextDrawTextSize(MainMenu[0], 790.000000, 310.000000);
	TextDrawSetSelectable(MainMenu[0], 0);
	MainMenu[1] = TextDrawCreate(-160.000000, 110.500000, "~n~");
	TextDrawBackgroundColor(MainMenu[1], 255);
	TextDrawFont(MainMenu[1], 1);
	TextDrawLetterSize(MainMenu[1], 0.500000, -0.100000);
	TextDrawColor(MainMenu[1], -1);
	TextDrawSetOutline(MainMenu[1], 0);
	TextDrawSetProportional(MainMenu[1], 1);
	TextDrawSetShadow(MainMenu[1], 1);
	TextDrawUseBox(MainMenu[1], 1);
	TextDrawBoxColor(MainMenu[1], 358938111);
	TextDrawTextSize(MainMenu[1], 790.000000, 310.000000);
	TextDrawSetSelectable(MainMenu[1], 0);
	MainMenu[2] = TextDrawCreate(-160.000000, 331.000000, "~n~");
	TextDrawBackgroundColor(MainMenu[2], 255);
	TextDrawFont(MainMenu[2], 1);
	TextDrawLetterSize(MainMenu[2], 0.500000, 21.200000);
	TextDrawColor(MainMenu[2], -1);
	TextDrawSetOutline(MainMenu[2], 0);
	TextDrawSetProportional(MainMenu[2], 1);
	TextDrawSetShadow(MainMenu[2], 1);
	TextDrawUseBox(MainMenu[2], 1);
	TextDrawBoxColor(MainMenu[2], 255);
	TextDrawTextSize(MainMenu[2], 790.000000, 310.000000);
	TextDrawSetSelectable(MainMenu[2], 0);
	MainMenu[3] = TextDrawCreate(-160.000000, 329.000000, "~n~");
	TextDrawBackgroundColor(MainMenu[3], 255);
	TextDrawFont(MainMenu[3], 1);
	TextDrawLetterSize(MainMenu[3], 0.500000, -0.100000);
	TextDrawColor(MainMenu[3], -1);
	TextDrawSetOutline(MainMenu[3], 0);
	TextDrawSetProportional(MainMenu[3], 1);
	TextDrawSetShadow(MainMenu[3], 1);
	TextDrawUseBox(MainMenu[3], 1);
	TextDrawBoxColor(MainMenu[3], 358938111);
	TextDrawTextSize(MainMenu[3], 790.000000, 310.000000);
	TextDrawSetSelectable(MainMenu[3], 0);
	//Intro Text
	Intro[0] = TextDrawCreate(182.500000, 379.000000, "Es gibt mehr als 6000 verschiedene Server . . .");
	TextDrawColor(Intro[0], -65281);
	TextDrawBackgroundColor(Intro[0], 255);
	TextDrawFont(Intro[0], 1);
	TextDrawLetterSize(Intro[0], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[0], 0);
	TextDrawSetProportional(Intro[0], 1);
	TextDrawSetShadow(Intro[0], 1);
	//Intro Text 2
	Intro[1] = TextDrawCreate(182.500000, 379.000000, "Doch nur einen Server der neuen Generation!");
	TextDrawColor(Intro[1], -65281);
	TextDrawBackgroundColor(Intro[1], 255);
	TextDrawFont(Intro[1], 1);
	TextDrawLetterSize(Intro[1], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[1], 0);
	TextDrawSetProportional(Intro[1], 1);
	TextDrawSetShadow(Intro[1], 1);
	//Intro Text 3
	Intro[2] = TextDrawCreate(182.500000, 379.000000, "Nemesus-Roleplay presents . . .");
	TextDrawColor(Intro[2], 0x0041FFFF);
	TextDrawBackgroundColor(Intro[2], 255);
	TextDrawFont(Intro[2], 1);
	TextDrawLetterSize(Intro[2], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[2], 0);
	TextDrawSetProportional(Intro[2], 1);
	TextDrawSetShadow(Intro[2], 1);
	//Intro Text 4
	Intro[3] = TextDrawCreate(182.500000, 379.000000, "einen brandneuen SA-MP Server!");
	TextDrawColor(Intro[3], 0xFEFEFEFF);
	TextDrawBackgroundColor(Intro[3], 255);
	TextDrawFont(Intro[3], 1);
	TextDrawLetterSize(Intro[3], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[3], 0);
	TextDrawSetProportional(Intro[3], 1);
	TextDrawSetShadow(Intro[3], 1);
	//Intro Text 5
	Intro[4] = TextDrawCreate(182.500000, 379.000000, "mit einer interaktiven Welt");
	TextDrawColor(Intro[4], 0xFEFEFEFF);
	TextDrawBackgroundColor(Intro[4], 255);
	TextDrawFont(Intro[4], 1);
	TextDrawLetterSize(Intro[4], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[4], 0);
	TextDrawSetProportional(Intro[4], 1);
	TextDrawSetShadow(Intro[4], 1);
	//Intro Text 6
	Intro[5] = TextDrawCreate(182.500000, 379.000000, "sei dabei und erlebe die unfassbare Geschichte von NRP!");
	TextDrawColor(Intro[5], 0xFEFEFEFF);
	TextDrawBackgroundColor(Intro[5], 255);
	TextDrawFont(Intro[5], 1);
	TextDrawLetterSize(Intro[5], 0.360000, 1.300000);
	TextDrawSetOutline(Intro[5], 0);
	TextDrawSetProportional(Intro[5], 1);
	TextDrawSetShadow(Intro[5], 1);
	//Skinauswahl + Accessoires
	Skin[0] = TextDrawCreate(264.000000, 320.000000, "~n~~n~~n~");
	TextDrawBackgroundColor(Skin[0], 255);
	TextDrawFont(Skin[0], 0);
	TextDrawLetterSize(Skin[0], 0.770000, 2.099999);
	TextDrawColor(Skin[0], -1);
	TextDrawSetOutline(Skin[0], 0);
	TextDrawSetProportional(Skin[0], 1);
	TextDrawSetShadow(Skin[0], 1);
	TextDrawUseBox(Skin[0], 1);
	TextDrawBoxColor(Skin[0], 0x00000067);
	TextDrawTextSize(Skin[0], 373.000000, 0.000000);
	TextDrawSetSelectable(Skin[0], 0);
	Skin[1] = TextDrawCreate(280.590000, 302.000000, "Auswahl");
	TextDrawBackgroundColor(Skin[1], 255);
	TextDrawFont(Skin[1], 0);
	TextDrawLetterSize(Skin[1], 0.699999, 2.500000);
	TextDrawColor(Skin[1], 0x1564F5FF);
	TextDrawSetOutline(Skin[1], 0);
	TextDrawSetProportional(Skin[1], 1);
	TextDrawSetShadow(Skin[1], 1);
	TextDrawSetSelectable(Skin[1], 0);
	Skin[2] = TextDrawCreate(272.000000, 334.000000, "Weiter");
	TextDrawBackgroundColor(Skin[2], 255);
	TextDrawFont(Skin[2], 1);
	TextDrawLetterSize(Skin[2], 0.350000, 1.000000);
	TextDrawColor(Skin[2], -1);
	TextDrawSetOutline(Skin[2], 0);
	TextDrawSetProportional(Skin[2], 1);
	TextDrawSetShadow(Skin[2], 1);
	TextDrawSetSelectable(Skin[2], 1);
	Skin[3] = TextDrawCreate(319.000000, 334.000000, "Zurueck");
	TextDrawBackgroundColor(Skin[3] , 255);
	TextDrawFont(Skin[3] , 1);
	TextDrawLetterSize(Skin[3] , 0.329999, 1.000000);
	TextDrawColor(Skin[3] , -1);
	TextDrawSetOutline(Skin[3] , 0);
	TextDrawSetProportional(Skin[3] , 1);
	TextDrawSetShadow(Skin[3] , 1);
	TextDrawSetSelectable(Skin[3] , 1);
	Skin[4]  = TextDrawCreate(284.000000, 356.000000, "Auswahl");
	TextDrawBackgroundColor(Skin[4], 255);
	TextDrawFont(Skin[4], 1);
	TextDrawLetterSize(Skin[4], 0.500000, 1.000000);
	TextDrawColor(Skin[4], -1);
	TextDrawSetOutline(Skin[4], 0);
	TextDrawSetProportional(Skin[4], 1);
	TextDrawSetShadow(Skin[4], 1);
	TextDrawSetSelectable(Skin[4], 1);
	//Offene Tickets
	OTickets = TextDrawCreate(491.000000, 162.000000, "Offene Einweisungen: ~r~Keine~w~~n~Offene Tickets:~n~~n~~r~Keine");
	TextDrawBackgroundColor(OTickets, 255);
	TextDrawFont(OTickets, 1);
	TextDrawLetterSize(OTickets, 0.270000, 1.000000);
	TextDrawColor(OTickets, -1);
	TextDrawSetOutline(OTickets, 0);
	TextDrawSetProportional(OTickets, 1);
	TextDrawSetShadow(OTickets, 1);
	TextDrawSetSelectable(OTickets, 0);
	//DJ Textdraw
	DJText = TextDrawCreate(545.000000, 56.000000, "DJ-Modus");
	TextDrawBackgroundColor(DJText, 65535);
	TextDrawFont(DJText, 1);
	TextDrawLetterSize(DJText, 0.500000, 1.000000);
	TextDrawColor(DJText, -1);
	TextDrawSetOutline(DJText, 1);
	TextDrawSetProportional(DJText, 1);
	TextDrawSetSelectable(DJText, 0);
	//VR Textdraw
	VRText = TextDrawCreate(545.000000, 56.000000, "VR-Modus");
	TextDrawBackgroundColor(VRText, 65535);
	TextDrawFont(VRText, 1);
	TextDrawLetterSize(VRText, 0.500000, 1.000000);
	TextDrawColor(VRText, -1);
	TextDrawSetOutline(VRText, 1);
	TextDrawSetProportional(VRText, 1);
	TextDrawSetSelectable(VRText, 0);
	//Blitzertextdraw Flasheffekt
	flash = TextDrawCreate(-20.000000,2.000000,"|");
	TextDrawUseBox(flash,1);
	TextDrawBoxColor(flash,0xffffff66);
	TextDrawTextSize(flash,660.000000,22.000000);
	TextDrawAlignment(flash,0);
	TextDrawBackgroundColor(flash,0x000000ff);
	TextDrawFont(flash,3);
	TextDrawLetterSize(flash,1.000000,52.200000);
	TextDrawColor(flash,0xffffffff);
	TextDrawSetOutline(flash,1);
	TextDrawSetProportional(flash,1);
	TextDrawSetShadow(flash,1);
	//Countdown
	Count[0] = TextDrawCreate(616.000000, 113.000000, "~n~~n~~n~~n~");
	TextDrawBackgroundColor(Count[0], 255);
	TextDrawFont(Count[0], 1);
	TextDrawLetterSize(Count[0], 0.500000, 1.000000);
	TextDrawColor(Count[0], -1);
	TextDrawSetOutline(Count[0], 0);
	TextDrawSetProportional(Count[0], 1);
	TextDrawSetShadow(Count[0], 1);
	TextDrawUseBox(Count[0], 1);
	TextDrawBoxColor(Count[0], 103);
	TextDrawTextSize(Count[0], 487.000000, 0.000000);
	TextDrawSetSelectable(Count[0], 0);
	Count[1] = TextDrawCreate(546.500000, 111.000000, "~y~Countdown");
	TextDrawAlignment(Count[1], 2);
	TextDrawBackgroundColor(Count[1], 255);
	TextDrawFont(Count[1], 1);
	TextDrawLetterSize(Count[1], 0.260000, 1.000000);
	TextDrawColor(Count[1], -1);
	TextDrawSetOutline(Count[1], 0);
	TextDrawSetProportional(Count[1], 1);
	TextDrawSetShadow(Count[1], 1);
	TextDrawSetSelectable(Count[1], 0);
	Count[2] = TextDrawCreate(547.500000, 138.000000, "~w~Grund: ~y~Serverrestart");
	TextDrawAlignment(Count[2], 2);
	TextDrawBackgroundColor(Count[2], 255);
	TextDrawFont(Count[2], 1);
	TextDrawLetterSize(Count[2], 0.200000, 1.000000);
	TextDrawColor(Count[2], -1);
	TextDrawSetOutline(Count[2], 0);
	TextDrawSetProportional(Count[2], 1);
	TextDrawSetShadow(Count[2], 1);
	TextDrawSetSelectable(Count[2], 0);
	Count[3] = TextDrawCreate(546.500000, 125.000000, "~y~12:50");
	TextDrawBackgroundColor(Count[3], 255);
	TextDrawFont(Count[3], 1);
	TextDrawLetterSize(Count[3], 0.180000, 1.000000);
	TextDrawColor(Count[3], -1);
	TextDrawSetOutline(Count[3], 0);
	TextDrawSetProportional(Count[3], 1);
	TextDrawSetShadow(Count[3], 1);
	TextDrawSetSelectable(Count[3], 0);
	Count[4] = TextDrawCreate(528.500000, 122.000000, "ld_grav:timer");
	TextDrawBackgroundColor(Count[4], 255);
	TextDrawFont(Count[4], 4);
	TextDrawLetterSize(Count[4], 0.300000, 1.000000);
	TextDrawColor(Count[4], -1);
	TextDrawSetOutline(Count[4], 0);
	TextDrawSetProportional(Count[4], 1);
	TextDrawSetShadow(Count[4], 1);
	TextDrawUseBox(Count[4], 1);
	TextDrawBoxColor(Count[4], 255);
	TextDrawTextSize(Count[4], 13.000000, 14.000000);
	TextDrawSetSelectable(Count[4], 0);
	//Shop
	Shop[0] = TextDrawCreate(108.000000, 130.000000, "~n~~n~~n~~n~~n~");
	TextDrawBackgroundColor(Shop[0], 255);
	TextDrawFont(Shop[0], 1);
	TextDrawLetterSize(Shop[0], 0.500000, 6.699999);
	TextDrawColor(Shop[0], -1);
	TextDrawSetOutline(Shop[0], 0);
	TextDrawSetProportional(Shop[0], 1);
	TextDrawSetShadow(Shop[0], 1);
	TextDrawUseBox(Shop[0], 1);
	TextDrawBoxColor(Shop[0], 103);
	TextDrawTextSize(Shop[0], 500.000000, 2.000000);
	TextDrawSetSelectable(Shop[0], 0);
	Shop[1] = TextDrawCreate(206.000000, 130.000000, "Coins - Ein u. Umtauschservice");
	TextDrawBackgroundColor(Shop[1], 255);
	TextDrawFont(Shop[1], 0);
	TextDrawLetterSize(Shop[1], 0.600000, 2.099998);
	TextDrawColor(Shop[1], 358938111);
	TextDrawSetOutline(Shop[1], 0);
	TextDrawSetProportional(Shop[1], 1);
	TextDrawSetShadow(Shop[1], 1);
	TextDrawSetSelectable(Shop[1], 0);
	Shop[2] = TextDrawCreate(129.000000, 163.000000, "560");
	TextDrawBackgroundColor(Shop[2], 103);
	TextDrawFont(Shop[2], 5);
	TextDrawLetterSize(Shop[2], 0.400000, 0.599999);
	TextDrawColor(Shop[2], -1);
	TextDrawSetOutline(Shop[2], 1);
	TextDrawSetProportional(Shop[2], 1);
	TextDrawUseBox(Shop[2], 1);
	TextDrawBoxColor(Shop[2], 103);
	TextDrawTextSize(Shop[2], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[2], 10281);
	TextDrawSetPreviewRot(Shop[2], 2.000000, 22.000000, 190.000000, 1.000000);
	TextDrawSetSelectable(Shop[2], 0);
	Shop[3] = TextDrawCreate(141.000000, 213.000000, "Fahrzeugslots");
	TextDrawBackgroundColor(Shop[3], 255);
	TextDrawFont(Shop[3], 1);
	TextDrawLetterSize(Shop[3], 0.289999, 1.000000);
	TextDrawColor(Shop[3], -1);
	TextDrawSetOutline(Shop[3], 0);
	TextDrawSetProportional(Shop[3], 1);
	TextDrawSetShadow(Shop[3], 1);
	TextDrawSetSelectable(Shop[3], 1);
	Shop[4] = TextDrawCreate(255.000000, 163.000000, "560");
	TextDrawBackgroundColor(Shop[4], 103);
	TextDrawFont(Shop[4], 5);
	TextDrawLetterSize(Shop[4], 0.400000, 0.599999);
	TextDrawColor(Shop[4], -1);
	TextDrawSetOutline(Shop[4], 1);
	TextDrawSetProportional(Shop[4], 1);
	TextDrawUseBox(Shop[4], 1);
	TextDrawBoxColor(Shop[4], 103);
	TextDrawTextSize(Shop[4], 92.000000, 65.000000);
	#if defined Samp03dl
	TextDrawSetPreviewModel(Shop[4], 21018);
	#else
	TextDrawSetPreviewModel(Shop[4], 22);
	#endif
	TextDrawSetPreviewRot(Shop[4], -16.000000, 0.000000, 20.000000, 1.450000);
	TextDrawSetSelectable(Shop[4], 0);
	Shop[5] = TextDrawCreate(282.400000, 213.000000, "Pri. Skin");
	TextDrawBackgroundColor(Shop[5], 255);
	TextDrawFont(Shop[5], 1);
	TextDrawLetterSize(Shop[5], 0.289999, 1.000000);
	TextDrawColor(Shop[5], -1);
	TextDrawSetOutline(Shop[5], 0);
	TextDrawSetProportional(Shop[5], 1);
	TextDrawSetShadow(Shop[5], 1);
	TextDrawSetSelectable(Shop[5], 1);
	Shop[6] = TextDrawCreate(379.000000, 163.000000, "560");
	TextDrawBackgroundColor(Shop[6], 103);
	TextDrawFont(Shop[6], 5);
	TextDrawLetterSize(Shop[6], 0.400000, 0.599999);
	TextDrawColor(Shop[6], -1);
	TextDrawSetOutline(Shop[6], 1);
	TextDrawSetProportional(Shop[6], 1);
	TextDrawUseBox(Shop[6], 1);
	TextDrawBoxColor(Shop[6], 103);
	TextDrawTextSize(Shop[6], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[6], 19134);
	TextDrawSetPreviewRot(Shop[6], -16.000000, 0.000000, 80.000000, 2.000000);
	TextDrawSetSelectable(Shop[6], 0);
	Shop[7] = TextDrawCreate(400.000000, 213.000000, "Erf. Boost");
	TextDrawBackgroundColor(Shop[7], 255);
	TextDrawFont(Shop[7], 1);
	TextDrawLetterSize(Shop[7], 0.289999, 1.000000);
	TextDrawColor(Shop[7], -1);
	TextDrawSetOutline(Shop[7], 0);
	TextDrawSetProportional(Shop[7], 1);
	TextDrawSetShadow(Shop[7], 1);
	TextDrawSetSelectable(Shop[7], 1);
	Shop[8] = TextDrawCreate(129.000000, 240.000000, "560");
	TextDrawBackgroundColor(Shop[8], 103);
	TextDrawFont(Shop[8], 5);
	TextDrawLetterSize(Shop[8], 0.400000, 0.599999);
	TextDrawColor(Shop[8], -1);
	TextDrawSetOutline(Shop[8], 1);
	TextDrawSetProportional(Shop[8], 1);
	TextDrawUseBox(Shop[8], 1);
	TextDrawBoxColor(Shop[8], 103);
	TextDrawTextSize(Shop[8], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[8], 1273);
	TextDrawSetPreviewRot(Shop[8], 2.000000, 22.000000, 140.000000, 2.000000);
	TextDrawSetSelectable(Shop[8], 0);
	Shop[9] = TextDrawCreate(154.000000, 289.000000, "Hausslots");
	TextDrawBackgroundColor(Shop[9], 255);
	TextDrawFont(Shop[9], 1);
	TextDrawLetterSize(Shop[9], 0.289999, 1.000000);
	TextDrawColor(Shop[9], -1);
	TextDrawSetOutline(Shop[9], 0);
	TextDrawSetProportional(Shop[9], 1);
	TextDrawSetShadow(Shop[9], 1);
	TextDrawSetSelectable(Shop[9], 1);
	Shop[10] = TextDrawCreate(255.000000, 240.000000, "560");
	TextDrawBackgroundColor(Shop[10], 103);
	TextDrawFont(Shop[10], 5);
	TextDrawLetterSize(Shop[10], 0.400000, 0.599999);
	TextDrawColor(Shop[10], -1);
	TextDrawSetOutline(Shop[10], 1);
	TextDrawSetProportional(Shop[10], 1);
	TextDrawUseBox(Shop[10], 1);
	TextDrawBoxColor(Shop[10], 103);
	TextDrawTextSize(Shop[10], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[10], 1274);
	TextDrawSetPreviewRot(Shop[10], 1.000000, 1.000000, 140.000000, 2.000000);
	TextDrawSetSelectable(Shop[10], 0);
	Shop[11] = TextDrawCreate(283.000000, 289.000000, "Premium");
	TextDrawBackgroundColor(Shop[11], 255);
	TextDrawFont(Shop[11], 1);
	TextDrawLetterSize(Shop[11], 0.289999, 1.000000);
	TextDrawColor(Shop[11], -1);
	TextDrawSetOutline(Shop[11], 0);
	TextDrawSetProportional(Shop[11], 1);
	TextDrawSetShadow(Shop[11], 1);
	TextDrawSetSelectable(Shop[11], 1);
	Shop[13] = TextDrawCreate(379.000000, 240.000000, "560");
	TextDrawBackgroundColor(Shop[13], 103);
	TextDrawFont(Shop[13], 5);
	TextDrawLetterSize(Shop[13], 0.400000, 0.599999);
	TextDrawColor(Shop[13], -1);
	TextDrawSetOutline(Shop[13], 1);
	TextDrawSetProportional(Shop[13], 1);
	TextDrawUseBox(Shop[13], 1);
	TextDrawBoxColor(Shop[13], 103);
	TextDrawTextSize(Shop[13], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[13], 18873);
	TextDrawSetPreviewRot(Shop[13], -16.000000, 0.000000, -55.000000, 1.000000);
	TextDrawSetSelectable(Shop[13], 0);
	Shop[14] = TextDrawCreate(394.000000, 289.000000, "Handynummer");
	TextDrawBackgroundColor(Shop[14], 255);
	TextDrawFont(Shop[14], 1);
	TextDrawLetterSize(Shop[14], 0.289999, 1.000000);
	TextDrawColor(Shop[14], -1);
	TextDrawSetOutline(Shop[14], 0);
	TextDrawSetProportional(Shop[14], 1);
	TextDrawSetShadow(Shop[14], 1);
	TextDrawSetSelectable(Shop[14], 1);
	Shop[15] = TextDrawCreate(129.000000, 317.000000, "560");
	TextDrawBackgroundColor(Shop[15], 103);
	TextDrawFont(Shop[15], 5);
	TextDrawLetterSize(Shop[15], 0.400000, 0.599999);
	TextDrawColor(Shop[15], -1);
	TextDrawSetOutline(Shop[15], 1);
	TextDrawSetProportional(Shop[15], 1);
	TextDrawUseBox(Shop[15], 1);
	TextDrawBoxColor(Shop[15], 103);
	TextDrawTextSize(Shop[15], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[15], 18648);
	TextDrawSetPreviewRot(Shop[15], 2.000000, 22.000000, 140.000000, 1.500000);
	TextDrawSetSelectable(Shop[15], 0);
	Shop[16] = TextDrawCreate(146.000000, 366.000000, "Neonlichter");
	TextDrawBackgroundColor(Shop[16], 255);
	TextDrawFont(Shop[16], 1);
	TextDrawLetterSize(Shop[16], 0.289999, 1.000000);
	TextDrawColor(Shop[16], -1);
	TextDrawSetOutline(Shop[16], 0);
	TextDrawSetProportional(Shop[16], 1);
	TextDrawSetShadow(Shop[16], 1);
	TextDrawSetSelectable(Shop[16], 1);
	Shop[17] = TextDrawCreate(255.000000, 317.000000, "560");
	TextDrawBackgroundColor(Shop[17], 103);
	TextDrawFont(Shop[17], 5);
	TextDrawLetterSize(Shop[17], 0.400000, 0.599999);
	TextDrawColor(Shop[17], -1);
	TextDrawSetOutline(Shop[17], 1);
	TextDrawSetProportional(Shop[17], 1);
	TextDrawUseBox(Shop[17], 1);
	TextDrawBoxColor(Shop[17], 103);
	TextDrawTextSize(Shop[17], 92.000000, 65.000000);
	TextDrawSetPreviewModel(Shop[17], 1239);
	TextDrawSetPreviewRot(Shop[17], 0.000000, 0.000000, 180.000000, 1.500000);
	TextDrawSetSelectable(Shop[17], 0);
	Shop[18] = TextDrawCreate(280.000000, 366.000000, "Sonstiges");
	TextDrawBackgroundColor(Shop[18], 255);
	TextDrawFont(Shop[18], 1);
	TextDrawLetterSize(Shop[18], 0.289999, 1.000000);
	TextDrawColor(Shop[18], -1);
	TextDrawSetOutline(Shop[18], 0);
	TextDrawSetProportional(Shop[18], 1);
	TextDrawSetShadow(Shop[18], 1);
	TextDrawSetSelectable(Shop[18], 1);
	Shop[12] = TextDrawCreate(477.000000, 132.000000, "ld_beat:cross");
	TextDrawBackgroundColor(Shop[12], 255);
	TextDrawFont(Shop[12], 4);
	TextDrawLetterSize(Shop[12], -0.199999, -1.000000);
	TextDrawColor(Shop[12], -1);
	TextDrawSetOutline(Shop[12], 0);
	TextDrawSetProportional(Shop[12], 1);
	TextDrawSetShadow(Shop[12], 1);
	TextDrawUseBox(Shop[12], 1);
	TextDrawBoxColor(Shop[12], 255);
	TextDrawTextSize(Shop[12], 19.000000, 16.000000);
	TextDrawSetSelectable(Shop[12], 1);
	//Flashbang
 	for (new t = 1; t <= 4; t++)
  	{
   		flashbangStage[t] = TextDrawCreate(-20.000000,2.000000,"|");
     	TextDrawUseBox(flashbangStage[t],1);
      	TextDrawTextSize(flashbangStage[t],660.000000,22.000000);
       	TextDrawAlignment(flashbangStage[t],0);
        TextDrawFont(flashbangStage[t],3);
        TextDrawLetterSize(flashbangStage[t],1.000000,52.200000);
        TextDrawBackgroundColor(flashbangStage[t],0x000000ff);
        TextDrawColor(flashbangStage[t],0x000000ff);
        TextDrawSetOutline(flashbangStage[t],1);
        TextDrawSetProportional(flashbangStage[t],1);
        TextDrawSetShadow(flashbangStage[t],1);
     }
	TextDrawBoxColor(flashbangStage[1],0xffffffff);
 	TextDrawBoxColor(flashbangStage[2],0xffffffaa);
  	TextDrawBoxColor(flashbangStage[3],0xffffff55);
   	TextDrawBoxColor(flashbangStage[4],0xffffff22);
   	//Pieper
   	Pieper[0] = TextDrawCreate(226.000000, 404.000000, "~n~~n~");
	TextDrawBackgroundColor(Pieper[0], 255);
	TextDrawFont(Pieper[0], 1);
	TextDrawLetterSize(Pieper[0], 0.500000, 1.600000);
	TextDrawColor(Pieper[0], -1);
	TextDrawSetOutline(Pieper[0], 0);
	TextDrawSetProportional(Pieper[0], 1);
	TextDrawSetShadow(Pieper[0], 1);
	TextDrawUseBox(Pieper[0], 1);
	TextDrawBoxColor(Pieper[0], 103);
	TextDrawTextSize(Pieper[0], 440.000000, 0.000000);
	TextDrawSetSelectable(Pieper[0], 0);
	Pieper[1] = TextDrawCreate(227.000000, 397.000000, "Pieper");
	TextDrawBackgroundColor(Pieper[1], 255);
	TextDrawFont(Pieper[1], 1);
	TextDrawLetterSize(Pieper[1], 0.440000, 1.100000);
	TextDrawColor(Pieper[1], -1);
	TextDrawSetOutline(Pieper[1], 0);
	TextDrawSetProportional(Pieper[1], 1);
	TextDrawSetShadow(Pieper[1], 1);
	TextDrawSetSelectable(Pieper[1], 0);
	Pieper[2] = TextDrawCreate(228.000000, 415.000000, "~y~Neuer Brand beim Holzhaus - Burger Shot-Nord!");
	TextDrawBackgroundColor(Pieper[2], 255);
	TextDrawFont(Pieper[2], 1);
	TextDrawLetterSize(Pieper[2], 0.230000, 1.000000);
	TextDrawColor(Pieper[2], -1);
	TextDrawSetOutline(Pieper[2], 0);
	TextDrawSetProportional(Pieper[2], 1);
	TextDrawSetShadow(Pieper[2], 1);
	TextDrawSetSelectable(Pieper[2], 0);
	return 1;
}

//Countdown
stock StartCountdown(minuten,sekunden,grund[])
{
	new string[65];
	//Zeit
	Countdown = 1;
	CountMinuten = minuten;
	CountSekunden = sekunden;
	if(CountSekunden > 3)
	{
		if(CountSekunden < 10)
		{
			if (CountMinuten <= 9){format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
				else {format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
		}
		else
		{
			if (CountMinuten <= 9){format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
				else {format(string,25,"~y~%d:%d",CountMinuten,CountSekunden);}
		}
	}
	else
	{
		if(CountSekunden < 10)
		{
			if(CountMinuten == 0)
 			{
				if (CountMinuten <= 9){format(string,25,"~r~0%d:0%d",CountMinuten,CountSekunden);}
					else {format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
			}
			else
			{
				if (CountMinuten <= 9){format(string,25,"~y~0%d:0%d",CountMinuten,CountSekunden);}
					else {format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
			}
		}
		else
		{
			if (CountMinuten <= 9){format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
				else {format(string,25,"~y~%02d:%02d",CountMinuten,CountSekunden);}
		}
	}
	TextDrawSetString(Count[3],string);
	//Grund
	format(string,sizeof(string),"~w~Grund: ~y~%s", grund);
	TextDrawSetString(Count[2],string);
	//Countdown anzeigen
 	for(new i; i<MAX_PLAYERS; i++)
 	{
  		if(i != INVALID_PLAYER_ID && IsPlayerConnected(i) && !IsPlayerNPC(i))
    	{
			if(SpielerInfo[i][pCountdown] == 0 && SpielerInfo[i][pTutorial] == 1 && SpielerInfo[i][pGameIntro] == 0 && GetPVarInt(i, "moebel_active") == 0 && GetPVarInt(i,"HandTaser") == 0 && !HolzPlayer(i) &&
			!HatVehicleNitro(GetPlayerVehicleID(i)) && GetPVarInt(i, "HausInfo") == 0 && GetPVarInt(i, "Videomode") == 0)
			{
			    if(IsPlayerInAnyVehicle(i) && IsAStaatCar(GetPlayerVehicleID(i))) continue;
				TextDrawShowForPlayer(i, Count[0]);
				TextDrawShowForPlayer(i, Count[1]);
				TextDrawShowForPlayer(i, Count[2]);
				TextDrawShowForPlayer(i, Count[3]);
				TextDrawShowForPlayer(i, Count[4]);
			}
		}
	}
	return 1;
}

stock StopCountdown()
{
	if(Countdown == 0) return 1;
	if(Countdown == 1)
	{
	 	for(new i; i<MAX_PLAYERS; i++)
	 	{
	  		if(i != INVALID_PLAYER_ID && IsPlayerConnected(i) && !IsPlayerNPC(i))
	    	{
				TextDrawHideForPlayer(i, Count[0]);
				TextDrawHideForPlayer(i, Count[1]);
				TextDrawHideForPlayer(i, Count[2]);
				TextDrawHideForPlayer(i, Count[3]);
				TextDrawHideForPlayer(i, Count[4]);
			}
		}
	}
	return 1;
}

//Offline Info
stock CreateOfflineInfo(playerid)
{
	new string[255],name[MAX_PLAYER_NAME];
	for(new oi=1;oi<MAX_OFFLINEPICKUPS;oi++)
	{
	    if(OfflineInfo[oi][Ocreated] == false)
	    {
	        OfflineInfo[oi][Ocreated] = true;
	        GetPlayerPos(playerid,OfflineInfo[oi][Opos][0],OfflineInfo[oi][Opos][1],OfflineInfo[oi][Opos][2]);
	        OfflineInfo[oi][Ovirtualworld] = GetPlayerVirtualWorld(playerid);
	        format(OfflineInfo[oi][Oname], MAX_PLAYER_NAME, SpielerInfo[playerid][pRP_Name]);
	        format(name,MAX_PLAYER_NAME,"%s",str_replace("_"," ",OfflineInfo[oi][Oname]));
	        OfflineInfo[oi][Odeletetime] = gettime() + (6*60);
	        OfflineInfo[oi][Odeletetime2] = gettime() + (5*60);
    		format(string,sizeof(string),"{FFFF00}Spieler Offline Information\n{FFFFFF}Name: %s",name);
			OfflineInfo3Dtext[oi] = CreateDynamic3DTextLabel(string,COLOR_WHITE,OfflineInfo[oi][Opos][0],OfflineInfo[oi][Opos][1],OfflineInfo[oi][Opos][2]+0.6,15.0);
			OfflineInfo[oi][Opickup] = CreateDynamicPickup(1314,1,OfflineInfo[oi][Opos][0],OfflineInfo[oi][Opos][1],OfflineInfo[oi][Opos][2],-1);
		    return oi;
		}
	}
	return 0;
}

stock DeleteOfflineInfo(oi)
{
    if(OfflineInfo[oi][Ocreated] == true)
	{
	    DestroyDynamicPickup(OfflineInfo[oi][Opickup]);
	    OfflineInfo[oi][Opickup] = INVALID_PICKUP_ID;
	    if(OfflineInfo3Dtext[oi] != INVALID_3D_TEXT)
	    {
		    DestroyDynamic3DTextLabel(OfflineInfo3Dtext[oi]);
		    OfflineInfo3Dtext[oi] = INVALID_3D_TEXT;
		}
	    OfflineInfo[oi][Opos][0] = 0;
		OfflineInfo[oi][Opos][1] = 0;
		OfflineInfo[oi][Opos][2] = 0;
		OfflineInfo[oi][Ovirtualworld] = 0;
	    format(OfflineInfo[oi][Oname], MAX_PLAYER_NAME, "Keiner");
	    OfflineInfo[oi][Odeletetime] = 0;
	    OfflineInfo[oi][Odeletetime2] = 0;
	    OfflineInfo[oi][Ocreated] = false;
	}
	return oi;
}

stock DeleteOfflineInfoEx(playerid)
{
   	for(new oi=1;oi<MAX_OFFLINEPICKUPS;oi++)
	{
	    if(OfflineInfo[oi][Ocreated] == true)
	    {
  			if(strcmp(SpielerInfo[playerid][pRP_Name], OfflineInfo[oi][Oname], true) == 0)
			{
			    if(OfflineInfo3Dtext[oi] != INVALID_3D_TEXT)
			    {
				    DestroyDynamic3DTextLabel(OfflineInfo3Dtext[oi]);
				    OfflineInfo3Dtext[oi] = INVALID_3D_TEXT;
				}
				DestroyDynamicPickup(OfflineInfo[oi][Opickup]);
				OfflineInfo[oi][Opickup] = INVALID_PICKUP_ID;
			    OfflineInfo[oi][Opos][0] = 0;
				OfflineInfo[oi][Opos][1] = 0;
				OfflineInfo[oi][Opos][2] = 0;
				OfflineInfo[oi][Ovirtualworld] = 0;
				format(OfflineInfo[oi][Oname], MAX_PLAYER_NAME, "Keiner");
			    OfflineInfo[oi][Odeletetime] = 0;
			    OfflineInfo[oi][Odeletetime2] = 0;
			    OfflineInfo[oi][Ocreated] = false;
			}
		}
	}
	return 1;
}

//IsGateAdmin
stock IsGateAdmin(playerid)
{
	if((SpielerInfo[playerid][pAdminlevel] >= 4 || HatMapSonderRechte(playerid)) && GetPVarInt(playerid, "Adminduty") == 1)
	{
	    return 1;
	}
	return 0;
}

//Speedo Textdraw
stock CreateSpeedo(playerid)
{
    if(GetPVarInt(playerid, "Speedometer") == 1) return 1;
	//Textdraws
	if(Speedo[0][playerid] == PlayerText:INVALID_TEXT_DRAW)
	{
		Speedo[0][playerid] = CreatePlayerTextDraw(playerid,636.000000, 350.000000, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~");
		PlayerTextDrawBackgroundColor(playerid,Speedo[0][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[0][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[0][playerid], 0.500000, 1.000000);
		PlayerTextDrawColor(playerid,Speedo[0][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[0][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[0][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[0][playerid], 1);
		PlayerTextDrawUseBox(playerid,Speedo[0][playerid], 1);
		PlayerTextDrawBoxColor(playerid,Speedo[0][playerid], 103);
		PlayerTextDrawTextSize(playerid,Speedo[0][playerid], 490.000000, 17.000000);
		PlayerTextDrawSetSelectable(playerid,Speedo[0][playerid], 0);
		Speedo[1][playerid] = CreatePlayerTextDraw(playerid,536.000000, 349.000000, "~r~122 KM/h");
		PlayerTextDrawBackgroundColor(playerid,Speedo[1][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[1][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[1][playerid], 0.330000, 1.299999);
		PlayerTextDrawColor(playerid,Speedo[1][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[1][playerid], 1);
		PlayerTextDrawSetProportional(playerid,Speedo[1][playerid], 1);
		PlayerTextDrawSetSelectable(playerid,Speedo[1][playerid], 0);
		Speedo[2][playerid] = CreatePlayerTextDraw(playerid,511.000000, 393.000000, "Fahrzeug: Sultan");
		PlayerTextDrawBackgroundColor(playerid,Speedo[2][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[2][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[2][playerid], 0.250000, 1.000000);
		PlayerTextDrawColor(playerid,Speedo[2][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[2][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[2][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[2][playerid], 1);
		PlayerTextDrawSetSelectable(playerid,Speedo[2][playerid], 0);
		Speedo[3][playerid] = CreatePlayerTextDraw(playerid,512.000000, 404.000000, "Kilometer: 17500,53 KM");
		PlayerTextDrawBackgroundColor(playerid,Speedo[3][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[3][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[3][playerid], 0.250000, 1.000000);
		PlayerTextDrawColor(playerid,Speedo[3][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[3][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[3][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[3][playerid], 1);
		PlayerTextDrawSetSelectable(playerid,Speedo[3][playerid], 0);
		Speedo[4][playerid] = CreatePlayerTextDraw(playerid,512.000000, 415.000000, "Treibstoff: Benzin");
		PlayerTextDrawBackgroundColor(playerid,Speedo[4][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[4][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[4][playerid], 0.250000, 1.000000);
		PlayerTextDrawColor(playerid,Speedo[4][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[4][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[4][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[4][playerid], 1);
		PlayerTextDrawSetSelectable(playerid,Speedo[4][playerid], 0);
		Speedo[5][playerid] = CreatePlayerTextDraw(playerid,499.000000, 383.000000, "hud:radar_hostpital");
		PlayerTextDrawBackgroundColor(playerid,Speedo[5][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[5][playerid], 4);
		PlayerTextDrawLetterSize(playerid,Speedo[5][playerid], 0.469999, 0.899999);
		PlayerTextDrawColor(playerid,Speedo[5][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[5][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[5][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[5][playerid], 1);
		PlayerTextDrawUseBox(playerid,Speedo[5][playerid], 1);
		PlayerTextDrawBoxColor(playerid,Speedo[5][playerid], -240);
		PlayerTextDrawTextSize(playerid,Speedo[5][playerid], 9.000000, 9.000000);
		PlayerTextDrawSetPreviewModel(playerid, Speedo[5][playerid], 1650);
		PlayerTextDrawSetPreviewRot(playerid, Speedo[5][playerid], -16.000000, 0.000000, -55.000000, 1.000000);
		PlayerTextDrawSetSelectable(playerid,Speedo[5][playerid], 0);
		Speedo[6][playerid] = CreatePlayerTextDraw(playerid,499.000000, 371.000000, "hud:radar_torenoranch");
		PlayerTextDrawBackgroundColor(playerid,Speedo[6][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[6][playerid], 4);
		PlayerTextDrawLetterSize(playerid,Speedo[6][playerid], 0.469999, 0.899999);
		PlayerTextDrawColor(playerid,Speedo[6][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[6][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[6][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[6][playerid], 1);
		PlayerTextDrawUseBox(playerid,Speedo[6][playerid], 1);
		PlayerTextDrawBoxColor(playerid,Speedo[6][playerid], -240);
		PlayerTextDrawTextSize(playerid,Speedo[6][playerid], 9.000000, 9.000000);
		PlayerTextDrawSetPreviewModel(playerid, Speedo[6][playerid], 1650);
		PlayerTextDrawSetPreviewRot(playerid, Speedo[6][playerid], -16.000000, 0.000000, -55.000000, 1.000000);
		PlayerTextDrawSetSelectable(playerid,Speedo[6][playerid], 0);
		Speedo[7][playerid] = CreatePlayerTextDraw(playerid,501.000000, 351.000000, "ld_beat:up ");
		PlayerTextDrawBackgroundColor(playerid,Speedo[7][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[7][playerid], 4);
		PlayerTextDrawLetterSize(playerid,Speedo[7][playerid], 0.469999, 0.899999);
		PlayerTextDrawColor(playerid,Speedo[7][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[7][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[7][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[7][playerid], 1);
		PlayerTextDrawUseBox(playerid,Speedo[7][playerid], 1);
		PlayerTextDrawBoxColor(playerid,Speedo[7][playerid], -240);
		PlayerTextDrawTextSize(playerid,Speedo[7][playerid], 9.000000, 9.000000);
		PlayerTextDrawSetPreviewModel(playerid, Speedo[7][playerid], 1650);
		PlayerTextDrawSetPreviewRot(playerid, Speedo[7][playerid], -16.000000, 0.000000, -55.000000, 1.000000);
		PlayerTextDrawSetSelectable(playerid,Speedo[7][playerid], 0);
		Speedo[8][playerid] = CreatePlayerTextDraw(playerid,512.000000, 427.000000, "Status: ~g~T ~g~M ~r~B ~g~H ~y~L");
		PlayerTextDrawBackgroundColor(playerid,Speedo[8][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[8][playerid], 1);
		PlayerTextDrawLetterSize(playerid,Speedo[8][playerid], 0.250000, 1.000000);
		PlayerTextDrawColor(playerid,Speedo[8][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[8][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[8][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[8][playerid], 1);
		PlayerTextDrawSetSelectable(playerid,Speedo[8][playerid], 0);
		Speedo[9][playerid] = CreatePlayerTextDraw(playerid,616.000000, 350.000000, "hud:radar_centre ");
		PlayerTextDrawBackgroundColor(playerid,Speedo[9][playerid], 255);
		PlayerTextDrawFont(playerid,Speedo[9][playerid], 4);
		PlayerTextDrawLetterSize(playerid,Speedo[9][playerid], 0.469998, 0.899999);
		PlayerTextDrawColor(playerid,Speedo[9][playerid], -1);
		PlayerTextDrawSetOutline(playerid,Speedo[9][playerid], 0);
		PlayerTextDrawSetProportional(playerid,Speedo[9][playerid], 1);
		PlayerTextDrawSetShadow(playerid,Speedo[9][playerid], 1);
		PlayerTextDrawUseBox(playerid,Speedo[9][playerid], 1);
		PlayerTextDrawBoxColor(playerid,Speedo[9][playerid], -240);
		PlayerTextDrawTextSize(playerid,Speedo[9][playerid], 9.000000, 9.000000);
		PlayerTextDrawSetPreviewModel(playerid, Speedo[9][playerid], 1650);
		PlayerTextDrawSetPreviewRot(playerid, Speedo[9][playerid], -16.000000, 0.000000, -55.000000, 1.000000);
		PlayerTextDrawSetSelectable(playerid,Speedo[9][playerid], 0);
		SetTimerEx("CreateSpeedo2",151,false,"i",playerid);
	}
	PlayerTextDrawShow(playerid,Speedo[0][playerid]);
 	PlayerTextDrawShow(playerid,Speedo[1][playerid]);
 	PlayerTextDrawShow(playerid,Speedo[2][playerid]);
  	PlayerTextDrawShow(playerid,Speedo[3][playerid]);
   	PlayerTextDrawShow(playerid,Speedo[4][playerid]);
    PlayerTextDrawShow(playerid,Speedo[5][playerid]);
    PlayerTextDrawShow(playerid,Speedo[6][playerid]);
    PlayerTextDrawShow(playerid,Speedo[7][playerid]);
	PlayerTextDrawShow(playerid,Speedo[8][playerid]);
	PlayerTextDrawShow(playerid,Speedo[9][playerid]);
	SetPVarInt(playerid, "Speedometer", 1);
	return 1;
}

forward CreateSpeedo2(playerid);
public CreateSpeedo2(playerid)
{
	if(IsPlayerConnected(playerid))
	{
	    if(IsPlayerInAnyVehicle(playerid))
	    {
			new string[55],Float:health,Float:health2;
			if(Speedo[0][playerid] != PlayerText:INVALID_TEXT_DRAW)
			{
				format(string, sizeof(string), "Fahrzeug: %s", VehicleNames[GetVehicleModel(GetPlayerVehicleID(playerid)) -400]);
				PlayerTextDrawSetString(playerid,Speedo[2][playerid],string);
				format(string,sizeof(string),"Treibstoff: %s",GetVehicleStandartGasName(GetPlayerVehicleID(playerid)));
				PlayerTextDrawSetString(playerid,Speedo[4][playerid],string);
			}
			if(SpeedoBar[0][playerid] == INVALID_PLAYER_BAR_ID)
			{
				SpeedoBar[0][playerid] = CreatePlayerProgressBar(playerid, 501.000000, 363.000000, 126.500000, 4.699998, COLOR_GREEN, GetVehicleModelTopSpeed(GetVehicleModel(GetPlayerVehicleID(playerid))), 0);
				SetPlayerProgressBarValue(playerid, SpeedoBar[0][playerid], GetVehicleSpeed(GetPlayerVehicleID(playerid)));
			}
			if(SpeedoBar[2][playerid] == INVALID_PLAYER_BAR_ID)
			{
			    health2 = GetVehicleMaxHealth(GetPlayerVehicleID(playerid));
			    if(health2 <= 0.0)
			    {
					health2 = 1000.0;
			    }
			    GetVehicleHealth(GetPlayerVehicleID(playerid),health);
		  		SpeedoBar[2][playerid] = CreatePlayerProgressBar(playerid, 512.000000, 385.000000, 115.500000, 4.699998, COLOR_LIGHTRED, health2, 0);
		    	SetPlayerProgressBarValue(playerid, SpeedoBar[2][playerid], health);
			}
			if(SpeedoBar[1][playerid] == INVALID_PLAYER_BAR_ID)
			{
			    if(GasMax[GetVehicleModel(GetPlayerVehicleID(playerid))-400] <= 0 || GasMax[GetVehicleModel(GetPlayerVehicleID(playerid))-400] >= 750)
			    {
			        GasMax[GetVehicleModel(GetPlayerVehicleID(playerid))-400] = 150;
			    }
		 		SpeedoBar[1][playerid] = CreatePlayerProgressBar(playerid, 512.000000, 374.000000, 115.500000, 4.699998, 0xA52A2AAA, GasMax[GetVehicleModel(GetPlayerVehicleID(playerid))-400], 0);
		 		if(Tankmenge[GetPlayerVehicleID(playerid)] >= 0 && Tankmenge[GetPlayerVehicleID(playerid)] <= 750)
				{
		 			SetPlayerProgressBarValue(playerid, SpeedoBar[1][playerid], Tankmenge[GetPlayerVehicleID(playerid)]);
				}
				else
				{
				    Tankmenge[GetPlayerVehicleID(playerid)] = 0;
				    SetPlayerProgressBarValue(playerid, SpeedoBar[1][playerid], 0);
				}
			}
			UpdateSpeedometer(playerid);
		}
		else
		{
			if(!IsPlayerInAnyVehicle(playerid))
			{
			 	if(SpeedoBar[0][playerid] != INVALID_PLAYER_BAR_ID)
			  	{
					DestroyPlayerProgressBar(playerid, SpeedoBar[0][playerid]);
					SpeedoBar[0][playerid] = INVALID_PLAYER_BAR_ID;
				}
				if(SpeedoBar[1][playerid] != INVALID_PLAYER_BAR_ID)
			  	{
					DestroyPlayerProgressBar(playerid, SpeedoBar[1][playerid]);
					SpeedoBar[1][playerid] = INVALID_PLAYER_BAR_ID;
				}
				if(SpeedoBar[2][playerid] != INVALID_PLAYER_BAR_ID)
			  	{
					DestroyPlayerProgressBar(playerid, SpeedoBar[2][playerid]);
					SpeedoBar[2][playerid] = INVALID_PLAYER_BAR_ID;
				}
			}
		}
	}
	return 1;
}

stock DeleteSpeedo(playerid)
{
    if(GetPVarInt(playerid, "Speedometer") == 0) return 1;
	PlayerTextDrawHide(playerid,Speedo[0][playerid]);
 	PlayerTextDrawHide(playerid,Speedo[1][playerid]);
  	PlayerTextDrawHide(playerid,Speedo[2][playerid]);
   	PlayerTextDrawHide(playerid,Speedo[3][playerid]);
    PlayerTextDrawHide(playerid,Speedo[4][playerid]);
   	PlayerTextDrawHide(playerid,Speedo[5][playerid]);
    PlayerTextDrawHide(playerid,Speedo[6][playerid]);
   	if(Speedo[7][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
    	PlayerTextDrawHide(playerid,Speedo[7][playerid]);
	}
	if(Speedo[9][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawHide(playerid,Speedo[8][playerid]);
	}
	if(Speedo[9][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawHide(playerid,Speedo[9][playerid]);
	}
	PlayerTextDrawDestroy(playerid,Speedo[0][playerid]);
 	PlayerTextDrawDestroy(playerid,Speedo[1][playerid]);
  	PlayerTextDrawDestroy(playerid,Speedo[2][playerid]);
   	PlayerTextDrawDestroy(playerid,Speedo[3][playerid]);
    PlayerTextDrawDestroy(playerid,Speedo[4][playerid]);
   	PlayerTextDrawDestroy(playerid,Speedo[5][playerid]);
    PlayerTextDrawDestroy(playerid,Speedo[6][playerid]);
   	if(Speedo[7][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
    	PlayerTextDrawDestroy(playerid,Speedo[7][playerid]);
	}
	if(Speedo[8][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawDestroy(playerid,Speedo[8][playerid]);
	}
	if(Speedo[9][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
		PlayerTextDrawDestroy(playerid,Speedo[9][playerid]);
	}
	Speedo[0][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[1][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[2][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[3][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[4][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[5][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[6][playerid] = PlayerText:INVALID_TEXT_DRAW;
	if(Speedo[7][playerid] != PlayerText:INVALID_TEXT_DRAW)
	{
		Speedo[7][playerid] = PlayerText:INVALID_TEXT_DRAW;
	}
	Speedo[8][playerid] = PlayerText:INVALID_TEXT_DRAW;
	Speedo[9][playerid] = PlayerText:INVALID_TEXT_DRAW;
 	if(SpeedoBar[0][playerid] != INVALID_PLAYER_BAR_ID)
  	{
		DestroyPlayerProgressBar(playerid, SpeedoBar[0][playerid]);
		SpeedoBar[0][playerid] = INVALID_PLAYER_BAR_ID;
	}
	if(SpeedoBar[1][playerid] != INVALID_PLAYER_BAR_ID)
  	{
		DestroyPlayerProgressBar(playerid, SpeedoBar[1][playerid]);
		SpeedoBar[1][playerid] = INVALID_PLAYER_BAR_ID;
	}
	if(SpeedoBar[2][playerid] != INVALID_PLAYER_BAR_ID)
  	{
		DestroyPlayerProgressBar(playerid, SpeedoBar[2][playerid]);
		SpeedoBar[2][playerid] = INVALID_PLAYER_BAR_ID;
	}
	SetPVarInt(playerid, "Speedometer", 0);
	return 1;
}

/*//Speedo Textdraw (alt)
stock CreateSpeedo(playerid)
{
	Speedo[10][playerid] = CreatePlayerTextDraw(playerid,510.000000, 337.000000, "~n~~n~~n~~n~~n~~n~~n~~n~");
	PlayerTextDrawBackgroundColor(playerid,Speedo[10][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[10][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[10][playerid], 0.239999, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[10][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[10][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[10][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[10][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[10][playerid], 1);
	PlayerTextDrawBoxColor(playerid,Speedo[10][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[10][playerid], 624.000000, 477.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[10][playerid], 0);
    Speedo[0][playerid] = CreatePlayerTextDraw(playerid,510.000000, 337.000000, "Geschwindigkeit: 101 KM/h");
	PlayerTextDrawBackgroundColor(playerid,Speedo[0][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[0][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[0][playerid], 0.240000, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[0][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[0][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[0][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[0][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[0][playerid], 0);
	PlayerTextDrawBoxColor(playerid,Speedo[0][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[0][playerid], 624.000000, 240.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[0][playerid], 0);
	Speedo[1][playerid] = CreatePlayerTextDraw(playerid,510.000000, 350.000000, "Zustand: 100%");
	PlayerTextDrawBackgroundColor(playerid,Speedo[1][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[1][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[1][playerid], 0.240000, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[1][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[1][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[1][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[1][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[1][playerid], 0);
	PlayerTextDrawBoxColor(playerid,Speedo[1][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[1][playerid], 624.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[1][playerid], 0);
	Speedo[3][playerid] = CreatePlayerTextDraw(playerid,564.000000, 324.500000, "Fahrzeug");
	PlayerTextDrawBackgroundColor(playerid,Speedo[3][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[3][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[3][playerid], 0.410000, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[3][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[3][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[3][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[3][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[3][playerid], 1);
	PlayerTextDrawBoxColor(playerid,Speedo[3][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[3][playerid], 624.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[3][playerid], 0);
	Speedo[4][playerid] = CreatePlayerTextDraw(playerid,510.000000, 376.000000, "Kilometerst.: ~g~0,0 KM");
	PlayerTextDrawBackgroundColor(playerid,Speedo[1][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[4][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[4][playerid], 0.240000, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[4][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[4][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[4][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[4][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[4][playerid], 0);
	PlayerTextDrawBoxColor(playerid,Speedo[4][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[4][playerid], 624.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[4][playerid], 0);
	Speedo[5][playerid] = CreatePlayerTextDraw(playerid,510.000000, 388.500000, "-");
	PlayerTextDrawBackgroundColor(playerid,Speedo[5][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[5][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[5][playerid], 7.920002, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[5][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[5][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[5][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[5][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[5][playerid], 0);
	PlayerTextDrawBoxColor(playerid,Speedo[5][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[5][playerid], 624.000000, 1.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[5][playerid], 0);
	Speedo[6][playerid] = CreatePlayerTextDraw(playerid,510.000000, 401.000000, "~r~Motor");
	PlayerTextDrawBackgroundColor(playerid,Speedo[6][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[6][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[6][playerid], 0.239999, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[6][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[6][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[6][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[6][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[6][playerid], 0);
	PlayerTextDrawBoxColor(playerid,Speedo[6][playerid], 0x00000067);
	PlayerTextDrawTextSize(playerid,Speedo[6][playerid], 624.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[6][playerid], 0);
	Speedo[7][playerid] = CreatePlayerTextDraw(playerid,553.000000, 401.000000, "~r~Tueren");
	PlayerTextDrawBackgroundColor(playerid,Speedo[7][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[7][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[7][playerid], 0.239999, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[7][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[7][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[7][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[7][playerid], 1);
	PlayerTextDrawSetSelectable(playerid,Speedo[7][playerid], 0);
	Speedo[8][playerid] = CreatePlayerTextDraw(playerid,601.000000, 401.000000, "~r~Licht");
	PlayerTextDrawBackgroundColor(playerid,Speedo[8][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[8][playerid], 1);
	PlayerTextDrawLetterSize(playerid,Speedo[8][playerid], 0.239999, 1.000000);
	PlayerTextDrawColor(playerid,Speedo[8][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[8][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[8][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[8][playerid], 1);
	PlayerTextDrawSetSelectable(playerid,Speedo[8][playerid], 0);
	Speedo[11][playerid] = CreatePlayerTextDraw(playerid,579.000000, 351.000000, "ld_poke:holdon");
	PlayerTextDrawBackgroundColor(playerid,Speedo[11][playerid], 255);
	PlayerTextDrawFont(playerid,Speedo[11][playerid], 4);
	PlayerTextDrawLetterSize(playerid,Speedo[11][playerid], 0.200000, 4.399999);
	PlayerTextDrawColor(playerid,Speedo[11][playerid], -1);
	PlayerTextDrawSetOutline(playerid,Speedo[11][playerid], 0);
	PlayerTextDrawSetProportional(playerid,Speedo[11][playerid], 1);
	PlayerTextDrawSetShadow(playerid,Speedo[11][playerid], 1);
	PlayerTextDrawUseBox(playerid,Speedo[11][playerid], 1);
	PlayerTextDrawBoxColor(playerid,Speedo[11][playerid], 255);
	PlayerTextDrawTextSize(playerid,Speedo[11][playerid], 33.000000, 8.000000);
	PlayerTextDrawSetSelectable(playerid,Speedo[11][playerid], 0);
	return 1;
}

stock DeleteSpeedo(playerid)
{
	PlayerTextDrawDestroy(playerid, Speedo[0][playerid]);
 	PlayerTextDrawDestroy(playerid, Speedo[1][playerid]);
  	PlayerTextDrawDestroy(playerid, Speedo[2][playerid]);
   	PlayerTextDrawDestroy(playerid, Speedo[3][playerid]);
   	PlayerTextDrawDestroy(playerid, Speedo[4][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[5][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[6][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[7][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[8][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[10][playerid]);
    PlayerTextDrawDestroy(playerid, Speedo[11][playerid]);
    return 1;
}*/

//GetVehicleComponentName (C) by ziggi
static gComponentName[][64 char] = {
	!"Pro Spoiler",
	!"Win Spoiler",
	!"Drag Spoiler",
	!"Alpha Spoiler",
	!"Champ Scoop Hood",
	!"Fury Scoop Hood",
	!"Roof Scoop",
	!"Right Sideskirt",
	!"5000ml Nitro",
	!"2500ml Nitro",
	!"10000ml Nitro",
	!"Race Scoop Hood",
	!"Worx Scoop Hood",
	!"Round Fog Lamps",
	!"Champ Spoiler",
	!"Race Spoiler",
	!"Worx Spoiler",
	!"Left Sideskirt",
	!"Upswept Exhaust",
	!"Twin Exhaust",
	!"Large Exhaust",
	!"Medium Exhaust",
	!"Small Exhaust",
	!"Fury Spoiler",
	!"Square Fog Lamps",
	!"Offroad Wheels",
	!"Right Alien Sideskirt",
	!"Left Alien Sideskirt",
	!"Alien Exhaust",
	!"X-Flow Exhaust",
	!"Left X-Flow Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Alien Roof Vent",
	!"X-Flow Roof Vent",
	!"Alien Exhaust",
	!"X-Flow Roof Vent",
	!"Right Alien Sideskirt",
	!"X-Flow Exhaust",
	!"Alien Roof Vent",
	!"Left X-Flow Sideskirt",
	!"Left Alien Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Right Chrome Sideskirt",
	!"Slamin Exhaust",
	!"Chrome Exhaust",
	!"X-Flow Exhaust",
	!"Alien Exhaust",
	!"Right Alien Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Alien Spoiler",
	!"X-Flow Spoiler",
	!"Left Alien Sideskirt",
	!"Left X-Flow Sideskirt",
	!"X-Flow Roof",
	!"Alien Roof",
	!"Alien Roof",
	!"Right Alien Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Alien Spoiler",
	!"X-Flow Exhaust",
	!"X-Flow Spoiler",
	!"X-Flow Roof",
	!"Left Alien Sideskirt",
	!"Left X-Flow Sideskirt",
	!"Alien Exhaust",
	!"Alien Exhaust",
	!"X-Flow Exhaust",
	!"Alien Roof",
	!"X-Flow Roof",
	!"Right Alien Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Left Alien Sideskirt",
	!"Left X-Flow Sideskirt",
	!"Shadow Wheels",
	!"Mega Wheels",
	!"Rimshine Wheels",
	!"Wires Wheels",
	!"Classic Wheels",
	!"Twist Wheels",
	!"Cutter Wheels",
	!"Switch Wheels",
	!"Grove Wheels",
	!"Import Wheels",
	!"Dollar Wheels",
	!"Trance Wheels",
	!"Atomic Wheels",
	!"Stereo Sound",
	!"Hydraulics",
	!"Alien Roof",
	!"X-Flow Exhaust",
	!"Right Alien Sideskirt",
	!"X-Flow Roof",
	!"Alien Exhaust",
	!"Left X-Flow Sideskirt",
	!"Left Alien Sideskirt",
	!"Right X-Flow Sideskirt",
	!"Ahab Wheels",
	!"Virtual Wheels",
	!"Access Wheels",
	!"Left Chrome Sideskirt",
	!"Chrome Grill Bullbar",
	!"Left 'Chrome Flames' Sideskirt",
	!"Left 'Chrome Strip' Sideskirt",
	!"Corvetible Roof",
	!"Chrome Exhaust",
	!"Slamin Exhaust",
	!"Right 'Chrome Arches' Sideskirt",
	!"Left 'Chrome Strip' Sideskirt",
	!"Right 'Chrome Strip' Sideskirt",
	!"Chrome Rear Bullbars",
	!"Slamin Rear Bullbars",
	!"Little Front Sign?",
	!"Little Front Sign?",
	!"Chrome Exhaust",
	!"Slamin Exhaust",
	!"Chrome Front Bullbars",
	!"Slamin Front Bullbars",
	!"Chrome Front Bumper",
	!"Right 'Chrome Trim' Sideskirt",
	!"Right 'Wheelcovers' Sideskirt",
	!"Left 'Chrome Trim' Sideskirt",
	!"Left 'Wheelcovers' Sideskirt",
	!"Right 'Chrome Flames' Sideskirt",
	!"Bullbar Chrome Bars",
	!"Left 'Chrome Arches' Sideskirt",
	!"Bullbar Chrome Lights",
	!"Chrome Exhaust",
	!"Slamin Exhaust",
	!"Vinyl Hardtop",
	!"Chrome Exhaust",
	!"Hardtop Roof",
	!"Softtop Roof",
	!"Slamin Exhaust",
	!"Right 'Chrome Strip' Sideskirt",
	!"Right 'Chrome Strip' Sideskirt",
	!"Slamin Exhaust",
	!"Chrome Exhaust",
	!"Left 'Chrome Strip' Sideskirt",
	!"Alien Spoiler",
	!"X-Flow Spoiler",
	!"X-Flow Rear Bumper",
	!"Alien Rear Bumper",
	!"Left Oval Vents",
	!"Right Oval Vents",
	!"Left Square Vents",
	!"Right Square Vents",
	!"X-Flow Spoiler",
	!"Alien Spoiler",
	!"X-Flow Rear Bumper",
	!"Alien Rear Bumper",
	!"Alien Rear Bumper",
	!"X-Flow Rear Bumper",
	!"X-Flow Front Bumper",
	!"Alien Front Bumper",
	!"Alien Rear Bumper",
	!"Alien Front Bumper",
	!"X-Flow Rear Bumper",
	!"X-Flow Front Bumper",
	!"X-Flow Spoiler",
	!"Alien Rear Bumper",
	!"Alien Front Bumper",
	!"X-Flow Rear Bumper",
	!"Alien Spoiler",
	!"X-Flow Spoiler",
	!"Alien Spoiler",
	!"X-Flow Front Bumper",
	!"Alien Front Bumper",
	!"X-Flow Rear Bumper",
	!"Alien Rear Bumper",
	!"Alien Front Bumper",
	!"X-Flow Front Bumper",
	!"Alien Front Bumper",
	!"X-Flow Front Bumper",
	!"X-Flow Front Bumper",
	!"Chrome Front Bumper",
	!"Slamin Front Bumper",
	!"Chrome Rear Bumper",
	!"Slamin Rear Bumper",
	!"Slamin Rear Bumper",
	!"Chrome Front Bumper",
	!"Chrome Rear Bumper",
	!"Slamin Front Bumper",
	!"Chrome Front Bumper",
	!"Slamin Rear Bumper",
	!"Chrome Rear Bumper",
	!"Slamin Front Bumper",
	!"Slamin Rear Bumper",
	!"Chrome Rear Bumper",
	!"Slamin Front Bumper",
	!"Chrome Front Bumper",
	!"Slamin Front Bumper",
	!"Chrome Front Bumper",
	!"Chrome Rear Bumper",
	!"Slamin Rear Bumper"
};

stock GetVehicleComponentName(componentid, cname[], size = sizeof(cname))
{
	new index = componentid - 1000;
	if (index < 0 || index >= sizeof(gComponentName))
	{
		return 0;
	}
	return strunpack(cname, gComponentName[index], size);
}

//GetVehicleComponentPrice
static const s_ComponentPriceArray[][] =
{
	{1005, 299},    {1004, 350},    {1012, 250},    {1011, 420},
 	{1143, 299},    {1145, 350},    {1020, 250},    {1021, 400},
  	{1022, 299},    {1019, 300},    {1018, 350},    {1013, 350},
   	{1024, 50},     {1008, 10500},    {1009, 7500},  {1010, 15500},
    {1006, 80},     {1001, 550},    {1014, 400},    {1002, 400},
    {1023, 350},    {1015, 500},    {1016, 400},    {1003, 250},
    {1000, 400},    {1007, 500},    {1017, 500},    {1046, 710},
    {1045, 510},    {1153, 1200},   {1152, 910},    {1150, 1090},
    {1151, 840},    {1054, 210},    {1053, 130},    {1049, 810},
    {1050, 620},    {1047, 670},    {1048, 530},    {1065, 850},
    {1066, 750},    {1160, 1050},   {1173, 950},    {1159, 1050},
    {1161, 950},    {1067, 250},    {1068, 400},    {1162, 650},
    {1158, 550},    {1069, 550},    {1070, 450},    {1034, 790},
    {1037, 690},    {1171, 990},    {1172, 900},    {1149, 3500},
    {1148, 890},    {1038, 190},    {1035, 299},    {1147, 600},
    {1146, 490},    {1036, 500},    {1039, 390},    {1064, 830},
    {1059, 720},    {1155, 1030},   {1157, 930},    {1154, 1030},
    {1156, 920},    {1055, 230},    {1061, 180},    {1058, 620},
    {1060, 530},    {1056, 520},    {1057, 430},    {1028, 770},
    {1029, 680},    {1169, 970},    {1170, 880},    {1141, 980},
    {1140, 870},    {1032, 270},    {1033, 220},    {1138, 580},
    {1139, 470},    {1026, 480},    {1031, 370},    {1092, 750},
    {1089, 650},    {1166, 950},    {1165, 850},    {1168, 950},
    {1167, 850},    {1088, 299},    {1091, 350},    {1164, 550},
   	{1163, 450},    {1090, 450},    {1093, 350},    {1128, 3340},
    {1103, 3250},   {1184, 2150},   {1183, 2040},   {1182, 2130},
    {1181, 2050},   {1104, 1610},   {1105, 1540},   {1108, 780},
    {1126, 3340},   {1127, 3250},   {1179, 2150},   {1185, 2040},
    {1180, 2130},   {1178, 2050},   {1122, 780},    {1106, 780},
    {1100, 940},    {1123, 860},    {1125, 1120},   {1130, 3380},
    {1131, 3290},   {1189, 2200},   {1188, 2080},   {1187, 2175},
    {1186, 2095},   {1129, 1650},   {1132, 1590},   {1133, 830},
    {1044, 500},    {1043, 500},    {1174, 3500},   {1175, 900},
    {1176, 3500},   {1177, 900},    {1042, 3500},   {1113, 3340},
    {1114, 3250},   {1117, 2040},   {1115, 2130},   {1116, 2050},
    {1109, 1610},   {1110, 1540},   {1118, 780},    {1119, 940},
    {1136, 3500},   {1135, 2990},   {1191, 1040},   {1190, 1200},
    {1192, 940},    {1193, 1100},   {1134, 800},    {1079, 1030},
    {1075, 980},    {1077, 1620},   {1083, 1560},   {1082, 820},
    {1085, 770},    {1074, 1030},   {1081, 1230},   {1080, 900},
    {1073, 1100},   {1078, 1200},   {1076, 1560},   {1084, 1350},
    {1025, 3500},   {1096, 3500},   {1097, 620},    {1098, 1140},
    {1086, 350},    {1087, 2990}
};

stock GetVehicleComponentPrice(componentid)
{
    for (new i = 0; i < sizeof(s_ComponentPriceArray); i ++)
    {
        if (s_ComponentPriceArray[i][0] == componentid)
        {
            return s_ComponentPriceArray[i][1];
        }
    }
    return 0;
}

//GetVehicleCameraPos (C) Pasha
stock GetVehicleCameraPos( vehicleid, &Float:x, &Float:y, &Float:z, Float:xoff=0.0, Float:yoff=0.0, Float:zoff=0.0 )
{
    new Float:rot;
    GetVehicleZAngle( vehicleid, rot );
    rot = 360 - rot;
    GetVehiclePos( vehicleid, x, y, z );
    x = floatsin( rot, degrees ) * yoff + floatcos( rot, degrees ) * xoff + x;
    y = floatcos( rot, degrees ) * yoff - floatsin( rot, degrees ) * xoff + y;
    z = zoff + z;
    return 1;
}

//GetVehicleInfrontID
stock GetVehicleInfrontID(vehid)
{
    new Float: temp = 6.5,j = 0,Float: a, Float: x1, Float: y1, Float: z1, Float: x2, Float: y2, Float: z2;
	for(new i = 0, x = GetVehiclePoolSize(); i <= x; i++)
	{
        GetVehiclePos (vehid, x1, y1, z1);
        GetVehicleZAngle (vehid, a);
        if (IsValidVehicle(i) && i != vehid)
        {
        	if (GetVehiclePos (i, x2, y2, z2))
         	{
          		new Float: distance = floatsqroot (floatpower ((x1 - x2), 2) + floatpower ((y1 - y2), 2) + floatpower ((z1 - z2), 2));
            	GetVehicleZAngle (vehid, a);
				if (distance < 35.5)
    			{
       				x1 = x1 + (distance * floatsin(-a, degrees));
           			y1 = y1 + (distance * floatcos(-a, degrees));
					distance = floatsqroot ((floatpower ((x1 - x2), 2)) + (floatpower ((y1 - y2), 2)));
     				if (temp > distance)
         			{
            			temp = distance;
               			j = i;
                  	}
            	}
    		}
     	}
 	}
  	if (temp < 6.5) return j;
 	return -1;
}

