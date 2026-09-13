-- Kalabhavans.com — adds real Wikimedia Commons photos to the recipes
-- added in the catalog-expansion pass, for the 107 of 123 new dishes
-- where a confident, specific match was found (the rest still show the
-- "Photo coming soon" placeholder rather than risk a wrong or broken image).
-- Matches each recipe by its slug. Same sourcing method as the site's other
-- photos: a real Commons file page found by search, with the direct image URL
-- computed from Wikimedia's public MD5-hash path scheme — these were not
-- individually browsed/loaded to confirm the file still exists (this sandbox
-- can't reach Wikimedia directly), so it's worth a quick visual spot-check on
-- the live site same as the original catalog's photos. Safe to re-run.
BEGIN;

-- Shrimp and Andouille Gumbo (Louisiana, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/78/Shrimp_and_crab_gumbo.jpg' WHERE "slug" = 'shrimp-and-andouille-gumbo-louisiana-united-states';
-- Fried Shrimp Po'Boy (Louisiana, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/89/Shrimppoboy.jpg' WHERE "slug" = 'fried-shrimp-poboy-louisiana-united-states';
-- Shrimp and Grits (South Carolina, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Commander''s_Palace_shrimp_&_grits.jpg' WHERE "slug" = 'shrimp-and-grits-south-carolina-united-states';
-- Texas Chili con Carne (Texas, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/22/Chili_con_carne_1.jpg' WHERE "slug" = 'texas-chili-con-carne-texas-united-states';
-- Austin-Style Breakfast Tacos (Texas, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Breakfast_tacos.jpg' WHERE "slug" = 'austin-style-breakfast-tacos-texas-united-states';
-- Chicago Deep-Dish Pizza (Illinois, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/bd/Chicago-style_pizza.jpg' WHERE "slug" = 'chicago-deep-dish-pizza-illinois-united-states';
-- Fried Cheese Curds (Wisconsin, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Fried_Cheese_Curds_Green_Bay_Wisconsin.JPG' WHERE "slug" = 'fried-cheese-curds-wisconsin-united-states';
-- New England Clam Chowder (Massachusetts, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/98/Clam_Chowder.JPG' WHERE "slug" = 'new-england-clam-chowder-massachusetts-united-states';
-- Maine Lobster Roll (Maine, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/7b/Lobster_roll.jpg' WHERE "slug" = 'maine-lobster-roll-maine-united-states';
-- Philly Cheesesteak (Pennsylvania, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/47/Philly_cheesesteak_sandwich.jpg' WHERE "slug" = 'philly-cheesesteak-pennsylvania-united-states';
-- Dungeness Crab Cakes (Washington, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Dungeness_crab_cake_at_Oso_-_Sarah_Stierch.jpg' WHERE "slug" = 'dungeness-crab-cakes-washington-united-states';
-- San Francisco Cioppino (California, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/69/Cioppino_S_(212622623).jpeg' WHERE "slug" = 'san-francisco-cioppino-california-united-states';
-- San Diego-Style California Burrito (California, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Lolita''s_CA_burrito.jpg' WHERE "slug" = 'san-diego-style-california-burrito-california-united-states';
-- Loco Moco (Hawaii, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/25/Homestyle_Hawaiian_loco_moco_-_1.jpg' WHERE "slug" = 'loco-moco-hawaii-united-states';
-- Ahi Poke Bowl (Hawaii, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Ahi_tuna_Poke.jpeg' WHERE "slug" = 'ahi-poke-bowl-hawaii-united-states';
-- Soup Beans and Skillet Cornbread (Kentucky, United States)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Skillet_cornbread.jpg' WHERE "slug" = 'soup-beans-and-skillet-cornbread-kentucky-united-states';
-- Arancini di Riso (Palermo, Italy)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Arancini_002.jpg' WHERE "slug" = 'arancini-di-riso-palermo-italy';
-- Ribollita (Florence, Italy)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/8b/Ribollita_toscana.JPG' WHERE "slug" = 'ribollita-florence-italy';
-- Tagliatelle al Ragù (Bologna, Italy)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/30/Tagliatelle_al_ragu_Bolognese.jpg' WHERE "slug" = 'tagliatelle-al-ragu-bologna-italy';
-- Char Siu Bao (Guangzhou, China)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Char_siu_bao.jpg' WHERE "slug" = 'char-siu-bao-guangzhou-china';
-- Crossing-the-Bridge Rice Noodles (Kunming, China)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Guo_Qiao_Mi_Xian.jpg' WHERE "slug" = 'crossing-the-bridge-rice-noodles-kunming-china';
-- Bun Bo Hue (Hue, Vietnam)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Bun_Bo_Hue.jpg' WHERE "slug" = 'bun-bo-hue-hue-vietnam';
-- Cao Lau (Hoi An, Vietnam)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/12/Cao_Lau_Hoi_An.JPG' WHERE "slug" = 'cao-lau-hoi-an-vietnam';
-- Cullen Skink (Moray, United Kingdom)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Cullen_Skink.JPG' WHERE "slug" = 'cullen-skink-moray-united-kingdom';
-- Cornish Pasty (Cornwall, United Kingdom)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/5/5b/Cornish_pasty_-_cut.jpeg' WHERE "slug" = 'cornish-pasty-cornwall-united-kingdom';
-- Baklava (Gaziantep, Turkey)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Baklava.jpg' WHERE "slug" = 'baklava-gaziantep-turkey';
-- Kuymak (Trabzon, Turkey)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Muhlama.jpg' WHERE "slug" = 'kuymak-trabzon-turkey';
-- Lahmacun (Şanlıurfa, Turkey)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Lahmacun.jpg' WHERE "slug" = 'lahmacun-sanliurfa-turkey';
-- Khao Soi (Chiang Mai, Thailand)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Khao_soi_Chiang_Mai.jpg' WHERE "slug" = 'khao-soi-chiang-mai-thailand';
-- Massaman Curry (Phuket, Thailand)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Massaman_curry,_Bang_Kapi,_Bangkok.jpg' WHERE "slug" = 'massaman-curry-phuket-thailand';
-- Moo Ping (Ayutthaya, Thailand)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/49/%E0%B8%A3%E0%B8%96%E0%B9%80%E0%B8%82%E0%B9%87%E0%B8%99%E0%B8%AB%E0%B8%A1%E0%B8%B9%E0%B8%9B%E0%B8%B4%E0%B9%89%E0%B8%87.jpg' WHERE "slug" = 'moo-ping-ayutthaya-thailand';
-- Jaffna Crab Curry (Jaffna, Sri Lanka)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Crab_curry_or_Nandu_Kulambu.jpg' WHERE "slug" = 'jaffna-crab-curry-jaffna-sri-lanka';
-- Lamprais (Kandy, Sri Lanka)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/43/Lamprais_(Sri_Lankan_cuisine).jpg' WHERE "slug" = 'lamprais-kandy-sri-lanka';
-- Paella Valenciana (Valencia, Spain)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/12/Paella_valenciana_01.jpg' WHERE "slug" = 'paella-valenciana-valencia-spain';
-- Gilda Pintxo (San Sebastian, Spain)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Gildas_en_Donostia.jpg' WHERE "slug" = 'gilda-pintxo-san-sebastian-spain';
-- Gazpacho Andaluz (Seville, Spain)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Gazpacho_andaluz.jpg' WHERE "slug" = 'gazpacho-andaluz-seville-spain';
-- Ssiat Hotteok (Busan, South Korea)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e2/Ssiat_hotteok.jpg' WHERE "slug" = 'ssiat-hotteok-busan-south-korea';
-- Dak Galbi (Chuncheon, South Korea)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Korean_Food_Dakgalbi.JPG' WHERE "slug" = 'dak-galbi-chuncheon-south-korea';
-- Rocoto Relleno (Arequipa, Peru)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/17/Rocoto_relleno.jpg' WHERE "slug" = 'rocoto-relleno-arequipa-peru';
-- Anticuchos (Cusco, Peru)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Anticucho.jpg' WHERE "slug" = 'anticuchos-cusco-peru';
-- Juane (Loreto, Peru)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Juane.JPG' WHERE "slug" = 'juane-loreto-peru';
-- Abacha (African Salad) (Abia, Nigeria)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/87/A_plate_of_abacha_(african_salad)_ready_for_consumption.jpg' WHERE "slug" = 'abacha-african-salad-abia-nigeria';
-- Amala with Ewedu and Gbegiri (Oyo, Nigeria)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/75/Amala_and_ewedu_with_gbegiri_soup.jpg' WHERE "slug" = 'amala-with-ewedu-and-gbegiri-oyo-nigeria';
-- Kilishi (Kano, Nigeria)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Kilishi.JPG' WHERE "slug" = 'kilishi-kano-nigeria';
-- Newari Choila (Bagmati Province, Nepal)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/26/Choila.jpg' WHERE "slug" = 'newari-choila-bagmati-province-nepal';
-- Terai-Style Chatpate (Dhanusha District, Nepal)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/73/Chatpate.jpg' WHERE "slug" = 'terai-style-chatpate-dhanusha-district-nepal';
-- Fes-Style Chicken Pastilla (Fes, Morocco)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Pastilla_au_poulet_et_amandes.jpg' WHERE "slug" = 'fes-style-chicken-pastilla-fes-morocco';
-- Marrakech Maakouda (Marrakech, Morocco)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/21/Maakouda.jpg' WHERE "slug" = 'marrakech-maakouda-marrakech-morocco';
-- Essaouira Grilled Sardines (Essaouira, Morocco)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Sardines_Titus_du_Maroc.JPG' WHERE "slug" = 'essaouira-grilled-sardines-essaouira-morocco';
-- Oaxacan Tlayudas (Oaxaca, Mexico)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/23/Tlayuda_con_chorizo_en_Oaxaca.jpg' WHERE "slug" = 'oaxacan-tlayudas-oaxaca-mexico';
-- Yucatecan Cochinita Pibil (Yucatan, Mexico)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/84/Cochinita_pibil_2.jpg' WHERE "slug" = 'yucatecan-cochinita-pibil-yucatan-mexico';
-- Pescado a la Veracruzana (Veracruz, Mexico)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6d/HuachinangoVeracruzana.JPG' WHERE "slug" = 'pescado-a-la-veracruzana-veracruz-mexico';
-- Tripoli-Style Knafeh (Tripoli, Lebanon)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Knafeh.jpg' WHERE "slug" = 'tripoli-style-knafeh-tripoli-lebanon';
-- Fukuoka Tonkotsu Ramen (Fukuoka, Japan)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Hakata_Style_48-Hour_Tonkotsu_Ramen.jpg' WHERE "slug" = 'fukuoka-tonkotsu-ramen-fukuoka-japan';
-- Osaka Takoyaki (Osaka, Japan)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Takoyaki.jpg' WHERE "slug" = 'osaka-takoyaki-osaka-japan';
-- Hokkaido Ishikari Nabe (Ishikari, Japan)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/89/Ishikari_nabe_by_Adonis_Chen_in_Hokkaido.jpg' WHERE "slug" = 'hokkaido-ishikari-nabe-ishikari-japan';
-- Yogyakarta Gudeg (Yogyakarta, Indonesia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/46/Gudeg_Wijilan_Yogyakarta_Ayam.JPG' WHERE "slug" = 'yogyakarta-gudeg-yogyakarta-indonesia';
-- Padang Beef Rendang (Padang, Indonesia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Nasi_Padang_With_beef_rendang.jpg' WHERE "slug" = 'padang-beef-rendang-padang-indonesia';
-- Balinese Sate Lilit (Gianyar, Indonesia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/f/ff/Sate_Lilit.jpg' WHERE "slug" = 'balinese-sate-lilit-gianyar-indonesia';
-- Thessaloniki Bougatsa (Thessaloniki, Greece)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Bougatsa.png' WHERE "slug" = 'thessaloniki-bougatsa-thessaloniki-greece';
-- Peloponnese Gemista (Messenia, Greece)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Gemista.jpg' WHERE "slug" = 'peloponnese-gemista-messenia-greece';
-- Provençal Ratatouille (Provence-Alpes-Côte d'Azur, France)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/27/Ratatouille.jpg' WHERE "slug" = 'provencal-ratatouille-provence-alpes-cote-dazur-france';
-- Breton Galette Complète (Finistère, France)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Galette_complete_sur_billig.jpg' WHERE "slug" = 'breton-galette-complete-finistere-france';
-- Alsatian Tarte Flambée (Bas-Rhin, France)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/64/Tarte_flamb%C3%A9e_02.JPG' WHERE "slug" = 'alsatian-tarte-flambee-bas-rhin-france';
-- Gondar Doro Wat (Gondar, Ethiopia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/61/Injera_and_doro_wat.jpg' WHERE "slug" = 'gondar-doro-wat-gondar-ethiopia';
-- Tigray Tihlo (Mekelle, Ethiopia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Eating_Traditional_Tihlo%2C_Ethiopia.jpg' WHERE "slug" = 'tigray-tihlo-mekelle-ethiopia';
-- Addis Ababa Meat Sambusa (Addis Ababa, Ethiopia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/37/Ethiopian_Sambusa.jpg' WHERE "slug" = 'addis-ababa-meat-sambusa-addis-ababa-ethiopia';
-- Cairo Koshari (Cairo, Egypt)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Egyptian_food_Koshary.jpg' WHERE "slug" = 'cairo-koshari-cairo-egypt';
-- Alexandria Samak Meshwi (Alexandria, Egypt)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/96/Samak_mashwi.jpg' WHERE "slug" = 'alexandria-samak-meshwi-alexandria-egypt';
-- Aswan Ful Medames (Aswan, Egypt)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Ful_medames.jpg' WHERE "slug" = 'aswan-ful-medames-aswan-egypt';
-- Bahian Acarajé (Salvador, Brazil)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/29/Baiana-acaraj%C3%A9-Salvador.jpg' WHERE "slug" = 'bahian-acaraje-salvador-brazil';
-- Minas Gerais Feijão Tropeiro (Ouro Preto, Brazil)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Feij%C3%A3o_tropeiro.jpg' WHERE "slug" = 'minas-gerais-feijao-tropeiro-ouro-preto-brazil';
-- Gaúcho Churrasco Picanha (Porto Alegre, Brazil)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/f/fb/Picanha_barbecue.jpg' WHERE "slug" = 'gaucho-churrasco-picanha-porto-alegre-brazil';
-- Melbourne Meat Pie (Melbourne, Australia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Aussie_meat_pie_(cropped).jpg' WHERE "slug" = 'melbourne-meat-pie-melbourne-australia';
-- Adelaide Pie Floater (Adelaide, Australia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Pie_floater_in_Adelaide_SA.jpg' WHERE "slug" = 'adelaide-pie-floater-adelaide-australia';
-- Montreal Poutine (Montreal, Canada)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Poutine.JPG' WHERE "slug" = 'montreal-poutine-montreal-canada';
-- Halifax Donair (Nova Scotia, Canada)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/5/50/King_of_Donairs.JPG' WHERE "slug" = 'halifax-donair-nova-scotia-canada';
-- Alberta Beef and Barley Stew (Alberta, Canada)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/a/a8/Vegetable_beef_barley_soup.jpg' WHERE "slug" = 'alberta-beef-and-barley-stew-alberta-canada';
-- Munich Weisswurst (Munich, Germany)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/71/Weißwurst-1.jpg' WHERE "slug" = 'munich-weisswurst-munich-germany';
-- Berlin Currywurst (Berlin, Germany)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/d/da/CurryWurst.jpg' WHERE "slug" = 'berlin-currywurst-berlin-germany';
-- Rhineland Sauerbraten (North Rhine-Westphalia, Germany)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/8/88/Sauerbraten.jpg' WHERE "slug" = 'rhineland-sauerbraten-north-rhine-westphalia-germany';
-- Buenos Aires Choripán (Buenos Aires, Argentina)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/28/Choripán_San_Telmo.jpg' WHERE "slug" = 'buenos-aires-choripan-buenos-aires-argentina';
-- Salta-Style Locro (Salta, Argentina)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Locro_argentino.JPG' WHERE "slug" = 'salta-style-locro-salta-argentina';
-- Patagonian Spit-Roasted Lamb (Chubut, Argentina)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Cordero_patagonico_al_asador_Neuquen.JPG' WHERE "slug" = 'patagonian-spit-roasted-lamb-chubut-argentina';
-- Bogotá Ajiaco (Bogotá, Colombia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/0/05/Ajiaco_in_Bogotá.jpg' WHERE "slug" = 'bogota-ajiaco-bogota-colombia';
-- Medellín Bandeja Paisa (Medellín, Colombia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/12/Bandeja_paisa_(5082434401).jpg' WHERE "slug" = 'medellin-bandeja-paisa-medellin-colombia';
-- Cartagena Arepa de Huevo (Bolívar, Colombia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Arepa_de_huevo.jpg' WHERE "slug" = 'cartagena-arepa-de-huevo-bolivar-colombia';
-- Lahori Nihari (Lahore, Pakistan)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/24/Nihari.JPG' WHERE "slug" = 'lahori-nihari-lahore-pakistan';
-- Peshawari Chapli Kebab (Peshawar, Pakistan)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/96/Peshawari_Chapli_Kabab_by_Chef_Nina.jpg' WHERE "slug" = 'peshawari-chapli-kebab-peshawar-pakistan';
-- Dhaka Kacchi Biryani (Dhaka, Bangladesh)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Mutton_Kacchi_Biriyani_Sultan_Dine.jpg' WHERE "slug" = 'dhaka-kacchi-biryani-dhaka-bangladesh';
-- Chattogram Mezban Beef Curry (Chattogram, Bangladesh)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/77/Mezbani_meal_from_a_famous_restaurant_in_Chittagong_Bangladesh.jpg' WHERE "slug" = 'chattogram-mezban-beef-curry-chattogram-bangladesh';
-- Old Dhaka Fuchka (Old Dhaka, Bangladesh)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/15/Fuchka_Bengali_food_from_Rajshahi.jpg' WHERE "slug" = 'old-dhaka-fuchka-old-dhaka-bangladesh';
-- Pampanga-Style Sisig (Pampanga, Philippines)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/4/48/Sizzling_Sisig.jpg' WHERE "slug" = 'pampanga-style-sisig-pampanga-philippines';
-- Iloilo La Paz Batchoy (Iloilo, Philippines)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/7/76/LaPazBatchoy.jpg' WHERE "slug" = 'iloilo-la-paz-batchoy-iloilo-philippines';
-- Camarines Sur Bicol Express (Camarines Sur, Philippines)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Bicol_Express.jpg' WHERE "slug" = 'camarines-sur-bicol-express-camarines-sur-philippines';
-- Penang Char Kway Teow (Penang, Malaysia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/0/04/Char_kway_teow.jpg' WHERE "slug" = 'penang-char-kway-teow-penang-malaysia';
-- Kuala Lumpur Nasi Lemak (Kuala Lumpur, Malaysia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/3/34/Nasi_lemak.jpg' WHERE "slug" = 'kuala-lumpur-nasi-lemak-kuala-lumpur-malaysia';
-- Sarawak Laksa (Sarawak, Malaysia)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Laksa_Sarawak.JPG' WHERE "slug" = 'sarawak-laksa-sarawak-malaysia';
-- Warsaw Pierogi Ruskie (Warsaw, Poland)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Pierogi_ruskie_ze_skwarkami_na_stole.jpg' WHERE "slug" = 'warsaw-pierogi-ruskie-warsaw-poland';
-- Kraków Obwarzanek (Kraków, Poland)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/9/97/Obwarzanki_krakowskie.jpg' WHERE "slug" = 'krakow-obwarzanek-krakow-poland';
-- Évora Açorda Alentejana (Évora, Portugal)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/23/A%C3%A7orda_%C3%A0_Alentejana.jpg' WHERE "slug" = 'evora-acorda-alentejana-evora-portugal';
-- Algarve Cataplana de Marisco (Faro, Portugal)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/b/ba/A_pork,_prawn_and_clams_Cataplana.JPG' WHERE "slug" = 'algarve-cataplana-de-marisco-faro-portugal';
-- Porto Francesinha (Porto, Portugal)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/6/60/Francesinha_especial.JPG' WHERE "slug" = 'porto-francesinha-porto-portugal';
-- Portland Jerk Chicken (Portland, Jamaica)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/1/19/Jerk_chicken_plate.jpg' WHERE "slug" = 'portland-jerk-chicken-portland-jamaica';
-- Saint Elizabeth Escovitch Fish (Saint Elizabeth, Jamaica)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/27/Escoveitch_fish_Jamaica.jpg' WHERE "slug" = 'saint-elizabeth-escovitch-fish-saint-elizabeth-jamaica';
-- Rotorua Hangi (Bay of Plenty, New Zealand)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Hangi_prepare.jpg' WHERE "slug" = 'rotorua-hangi-bay-of-plenty-new-zealand';
-- Canterbury Whitebait Fritters (Canterbury, New Zealand)
UPDATE "recipes" SET "imageUrl" = 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Whitebait_Fritter.JPG' WHERE "slug" = 'canterbury-whitebait-fritters-canterbury-new-zealand';

COMMIT;
