// ~50 dishes across 24 non-India countries, researched to broaden the seed
// catalog beyond India per the "whole world, no boundaries" pivot. Every
// `photo` below is `null` — the research pass that produced this file
// couldn't verify (or even confidently guess) real Wikimedia Commons URLs
// for these dishes without browsing them, and a broken image link is worse
// than the existing SVG placeholder fallback (see prisma/seed.ts). Treat
// finding real, licensed photos for these as a pre-launch follow-up, same as
// the caveat already on several India entries above.
import type { SeedDish } from "./seed-data";

export const worldDishes: SeedDish[] = [
  // ===== China =====
  {
    region: "East Asia",
    state: "Sichuan",
    country: "China",
    title: "Kung Pao Chicken",
    ingredients: ["Chicken thigh", "Peanuts", "Dried red chilies", "Sichuan peppercorns", "Garlic", "Ginger", "Scallions", "Soy sauce"],
    instructions: "Dice boneless chicken thigh and marinate briefly in soy sauce and cornstarch. Heat oil in a wok until smoking, then quickly stir-fry dried chilies and Sichuan peppercorns until fragrant. Add the chicken and stir-fry over high heat until just cooked through. Toss in garlic, ginger, and scallions, then add roasted peanuts and a savory-sweet sauce of soy sauce, vinegar, and sugar. Stir everything together for another minute so the sauce coats the chicken, then serve immediately over steamed rice.",
    photo: null,
  },
  {
    region: "East Asia",
    state: "Beijing",
    country: "China",
    title: "Jiaozi (Dumplings)",
    ingredients: ["Ground pork", "Napa cabbage", "Garlic chives", "Ginger", "Soy sauce", "Sesame oil", "Wheat dumpling wrappers"],
    instructions: "Finely chop napa cabbage, salt it, then squeeze out the excess water before mixing with ground pork, garlic chives, ginger, soy sauce, and sesame oil. Place a spoonful of filling in the center of each round dumpling wrapper and fold the edges into pleats to seal. Boil the dumplings in batches until they float and the wrapper turns translucent, or pan-fry them for a crisp bottom. Serve hot with a dipping sauce of black vinegar, soy sauce, and chili oil.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "East Asia",
    state: "Sichuan",
    country: "China",
    title: "Mapo Tofu",
    ingredients: ["Soft tofu", "Ground pork", "Fermented broad bean paste", "Sichuan peppercorns", "Garlic", "Scallions", "Chili oil"],
    instructions: "Cut soft tofu into cubes and simmer briefly in salted water to firm it up. In a wok, fry ground pork until browned, then stir in fermented broad bean paste, garlic, and chili oil until deeply fragrant. Add stock and the tofu cubes, simmering gently so the tofu absorbs the sauce without breaking apart. Thicken the sauce with a little cornstarch slurry and finish with a generous dusting of ground toasted Sichuan peppercorns and chopped scallions.",
    photo: null,
  },

  // ===== Japan =====
  {
    region: "East Asia",
    state: "Fukuoka",
    country: "Japan",
    title: "Ramen",
    ingredients: ["Wheat noodles", "Pork bones", "Soy sauce", "Miso", "Green onions", "Soft-boiled egg", "Nori", "Bamboo shoots"],
    instructions: "Simmer pork bones for many hours until the broth turns rich and milky white, skimming occasionally. Season a portion of the broth with soy sauce or miso depending on the style being made. Cook fresh wheat ramen noodles separately until just tender, then drain and place them in a bowl. Ladle the hot broth over the noodles and top with sliced pork, a soft-boiled egg, green onions, nori, and bamboo shoots before serving immediately.",
    photo: null,
  },
  {
    region: "East Asia",
    state: "Osaka",
    country: "Japan",
    title: "Okonomiyaki",
    ingredients: ["Cabbage", "Flour", "Eggs", "Pork belly", "Okonomiyaki sauce", "Mayonnaise", "Bonito flakes", "Dried seaweed powder"],
    instructions: "Whisk flour, grated nagaimo or water, and eggs into a batter, then fold in a generous amount of shredded cabbage. Pour the batter onto a hot griddle in a thick round and lay strips of pork belly on top. Cook until golden on both sides, flipping carefully so the cabbage inside steams through. Finish by brushing with sweet okonomiyaki sauce, drizzling mayonnaise in lines, and sprinkling bonito flakes and seaweed powder over the top.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Thailand =====
  {
    region: "Southeast Asia",
    state: "Bangkok",
    country: "Thailand",
    title: "Pad Thai",
    ingredients: ["Rice noodles", "Shrimp", "Eggs", "Bean sprouts", "Tamarind paste", "Fish sauce", "Palm sugar", "Peanuts"],
    instructions: "Soak flat rice noodles in warm water until pliable, then drain. Stir-fry shrimp in a hot wok, push to one side, and scramble an egg in the empty space before mixing everything together. Add the noodles along with a sauce made from tamarind paste, fish sauce, and palm sugar, tossing constantly so the noodles cook evenly and soak up the sauce. Finish with bean sprouts and chopped peanuts, tossing briefly, then serve with lime wedges and chili flakes on the side.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Southeast Asia",
    state: "Isaan",
    country: "Thailand",
    title: "Som Tam (Green Papaya Salad)",
    ingredients: ["Green papaya", "Long beans", "Tomatoes", "Garlic", "Dried shrimp", "Peanuts", "Fish sauce", "Lime"],
    instructions: "Shred unripe green papaya into thin strands. Pound garlic and chilies in a mortar, then add tomatoes and long beans and bruise them lightly to release their juices. Add the shredded papaya along with fish sauce, lime juice, palm sugar, and dried shrimp, pounding and tossing everything together with a spoon. Finish with crushed peanuts and serve fresh with sticky rice and grilled chicken.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Vietnam =====
  {
    region: "Southeast Asia",
    state: "Hanoi",
    country: "Vietnam",
    title: "Pho",
    ingredients: ["Rice noodles", "Beef bones", "Beef slices", "Star anise", "Cinnamon", "Fish sauce", "Bean sprouts", "Fresh herbs"],
    instructions: "Simmer beef bones with charred onion and ginger for several hours to build a clear, fragrant broth, skimming impurities as it cooks. Toast star anise, cinnamon, and other spices and add them to the pot along with fish sauce to season the broth. Cook flat rice noodles until soft and place them in a bowl with thin raw slices of beef. Pour the boiling broth directly over the beef so it cooks instantly, then serve with bean sprouts, fresh herbs, and lime on the side.",
    photo: null,
  },
  {
    region: "Southeast Asia",
    state: "Ho Chi Minh City",
    country: "Vietnam",
    title: "Banh Mi",
    ingredients: ["Baguette", "Pork pate", "Grilled pork or cold cuts", "Pickled carrot and daikon", "Cucumber", "Cilantro", "Chili", "Mayonnaise"],
    instructions: "Split a crisp French-style baguette and spread pate and mayonnaise along the inside. Layer in grilled pork or cold cuts, then add quick-pickled carrot and daikon for crunch and acidity. Add fresh cucumber slices, cilantro sprigs, and sliced chili peppers. Press the sandwich together and serve immediately while the bread is still crackly.",
    photo: null,
    isStreetFood: true,
  },

  // ===== South Korea =====
  {
    region: "East Asia",
    state: "Jeonju",
    country: "South Korea",
    title: "Bibimbap",
    ingredients: ["Rice", "Beef", "Spinach", "Bean sprouts", "Carrots", "Shiitake mushrooms", "Fried egg", "Gochujang"],
    instructions: "Cook and season a variety of vegetables separately, such as spinach, bean sprouts, carrots, and mushrooms, each with a little sesame oil, garlic, and salt. Marinate thin strips of beef in soy sauce, sugar, and garlic, then quickly stir-fry them. Arrange a bowl of warm rice and top it with the seasoned vegetables and beef in separate sections, then place a fried egg in the center. Add a spoonful of gochujang, and mix everything together thoroughly just before eating.",
    photo: null,
  },
  {
    region: "East Asia",
    state: "Seoul",
    country: "South Korea",
    title: "Korean Fried Chicken",
    ingredients: ["Chicken wings", "Potato starch", "Garlic", "Soy sauce", "Gochujang", "Rice syrup", "Sesame seeds"],
    instructions: "Coat chicken pieces in a thin potato starch batter and fry them until lightly golden. Let the chicken rest, then fry it a second time at a higher temperature until the skin turns very crisp. For the classic spicy version, simmer gochujang, garlic, soy sauce, and rice syrup into a glossy glaze. Toss the hot fried chicken in the glaze and sprinkle with sesame seeds before serving.",
    photo: null,
  },

  // ===== Indonesia =====
  {
    region: "Southeast Asia",
    state: "Jakarta",
    country: "Indonesia",
    title: "Nasi Goreng",
    ingredients: ["Cooked rice", "Shallots", "Garlic", "Sweet soy sauce", "Shrimp paste", "Chicken or shrimp", "Egg", "Cucumber"],
    instructions: "Pound or blend shallots, garlic, and a little shrimp paste into a fragrant paste. Fry the paste in oil until aromatic, then add diced chicken or shrimp and cook through. Add day-old cooked rice and sweet soy sauce, breaking up clumps and stir-frying until the rice is evenly coated and slightly charred at the edges. Top with a fried egg and serve with sliced cucumber and prawn crackers.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Southeast Asia",
    state: "Java",
    country: "Indonesia",
    title: "Satay",
    ingredients: ["Chicken or beef", "Peanuts", "Sweet soy sauce", "Garlic", "Shallots", "Coriander", "Lemongrass", "Bamboo skewers"],
    instructions: "Cut meat into small cubes and marinate with garlic, shallots, coriander, and sweet soy sauce. Thread the marinated pieces onto bamboo skewers. Grill the skewers over hot charcoal, turning frequently and basting with more marinade until nicely charred. Serve with a rich peanut sauce made from ground roasted peanuts, sweet soy sauce, garlic, and a touch of lime.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Sri Lanka =====
  {
    region: "South Asia",
    state: "Colombo",
    country: "Sri Lanka",
    title: "Kottu Roti",
    ingredients: ["Godhamba roti", "Egg", "Onion", "Cabbage", "Carrot", "Curry leaves", "Chicken", "Curry sauce"],
    instructions: "Chop leftover flatbread called godhamba roti into small strips. On a hot flat griddle, stir-fry onions, curry leaves, and shredded vegetables with a little curry powder. Push the vegetables aside, scramble an egg in the same space, then add diced cooked chicken and the chopped roti. Using two metal scrapers, chop and toss everything together vigorously while adding spoonfuls of curry sauce, until the roti is evenly mixed and slightly crisped.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "South Asia",
    state: "Colombo",
    country: "Sri Lanka",
    title: "Hoppers (Appa)",
    ingredients: ["Rice flour", "Coconut milk", "Yeast", "Sugar", "Egg", "Salt"],
    instructions: "Mix rice flour with coconut milk, a little sugar, and yeast, then let the batter ferment for several hours until bubbly. Heat a small curved hopper pan and swirl in a ladle of batter, tilting the pan so it coats the sides thinly while pooling slightly in the middle. Crack an egg into the center for egg hoppers, then cover with a lid and cook until the edges turn lacy and golden and the center sets. Lift the hopper out gently and serve warm with spicy sambal or curry.",
    photo: null,
  },

  // ===== Nepal =====
  {
    region: "South Asia",
    state: "Kathmandu",
    country: "Nepal",
    title: "Momo",
    ingredients: ["Ground buffalo or chicken", "Onion", "Garlic", "Ginger", "Cilantro", "Cumin", "Wheat flour dumpling wrappers"],
    instructions: "Mix ground meat with finely chopped onion, garlic, ginger, cilantro, and warming spices to make a juicy filling. Place a spoonful of filling in a thin round dough wrapper and pleat the edges closed into a small purse shape. Arrange the dumplings in a steamer basket and steam until the wrappers turn glossy and the filling is cooked through. Serve hot with a tangy tomato-based achar dipping sauce.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "South Asia",
    state: "Kathmandu",
    country: "Nepal",
    title: "Dal Bhat",
    ingredients: ["Lentils", "Rice", "Turmeric", "Cumin", "Garlic", "Ginger", "Seasonal vegetables", "Ghee"],
    instructions: "Boil lentils with turmeric until soft, then temper them with a sizzling mix of ghee, cumin, garlic, and ginger poured in at the end. Cook a separate vegetable curry using whatever seasonal vegetables are on hand, seasoned simply with onion, garlic, and spices. Steam rice until fluffy. Serve the rice as the base with the lentil soup, vegetable curry, and pickles arranged around the plate, refilling portions as is customary.",
    photo: null,
  },

  // ===== Lebanon =====
  {
    region: "Middle East",
    state: "Beirut",
    country: "Lebanon",
    title: "Falafel",
    ingredients: ["Dried chickpeas", "Parsley", "Cilantro", "Garlic", "Onion", "Cumin", "Coriander"],
    instructions: "Soak dried chickpeas overnight, then drain without cooking them. Blend the chickpeas with parsley, cilantro, garlic, onion, and spices into a coarse, well-combined paste. Shape the mixture into small patties or balls and let them rest briefly so they hold together. Deep-fry until deeply golden and crisp outside while staying soft inside, then serve in flatbread with tahini sauce and pickled vegetables.",
    photo: null,
    isStreetFood: true,
    dietOverride: "vegan",
  },
  {
    region: "Middle East",
    state: "Beirut",
    country: "Lebanon",
    title: "Hummus",
    ingredients: ["Chickpeas", "Tahini", "Garlic", "Lemon juice", "Olive oil", "Cumin"],
    instructions: "Cook dried chickpeas until very soft, reserving some of the cooking liquid. Blend the chickpeas with tahini, garlic, lemon juice, and a little cooking liquid until completely smooth and creamy. Adjust the consistency and seasoning with more liquid, salt, and lemon as needed. Spread onto a plate, drizzle generously with olive oil, and serve with warm flatbread.",
    photo: null,
    dietOverride: "vegan",
  },

  // ===== Turkey =====
  {
    region: "Middle East",
    state: "Istanbul",
    country: "Turkey",
    title: "Doner Kebab",
    ingredients: ["Lamb or chicken", "Yogurt", "Garlic", "Paprika", "Flatbread", "Tomato", "Onion"],
    instructions: "Marinate thin layers of lamb or chicken in yogurt, garlic, and spices, then stack them onto a vertical rotisserie skewer. Roast the meat slowly as it turns, letting the outside crisp and caramelize while the skewer keeps rotating. Shave off thin slices from the crisped outer layer as customers order. Serve the sliced meat wrapped in flatbread with tomato, onion, and a garlicky yogurt or chili sauce.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Middle East",
    state: "Istanbul",
    country: "Turkey",
    title: "Menemen",
    ingredients: ["Eggs", "Tomatoes", "Green peppers", "Onion", "Olive oil", "Black pepper"],
    instructions: "Sauté sliced green peppers and onion in olive oil until softened. Add chopped tomatoes and cook down until they break into a thick, saucy mixture. Crack eggs directly into the pan and stir gently so they scramble loosely into the tomato mixture rather than forming a solid layer. Season with salt and pepper and serve straight from the pan with crusty bread.",
    photo: null,
  },

  // ===== Italy =====
  {
    region: "Mediterranean",
    state: "Naples",
    country: "Italy",
    title: "Pizza Margherita",
    ingredients: ["Pizza dough", "San Marzano tomatoes", "Mozzarella", "Fresh basil", "Olive oil", "Salt"],
    instructions: "Stretch a ball of well-fermented dough by hand into a thin round, leaving a slightly thicker rim. Spread crushed San Marzano tomatoes over the base and season lightly with salt. Tear fresh mozzarella into pieces and scatter it over the tomato layer along with a drizzle of olive oil. Bake in a very hot wood-fired oven for less than two minutes until the crust chars in spots, then finish with fresh basil leaves.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Mediterranean",
    state: "Rome",
    country: "Italy",
    title: "Spaghetti Carbonara",
    ingredients: ["Spaghetti", "Guanciale", "Eggs", "Pecorino Romano", "Black pepper"],
    instructions: "Cook diced guanciale slowly in a pan until it renders its fat and turns crisp. Meanwhile, whisk eggs with grated pecorino Romano and plenty of cracked black pepper. Cook spaghetti until al dente, then toss it directly in the pan with the guanciale and its fat off the heat. Quickly stir in the egg and cheese mixture along with a splash of starchy pasta water, tossing continuously so the eggs turn silky rather than scrambling.",
    photo: null,
  },
  {
    region: "Mediterranean",
    state: "Milan",
    country: "Italy",
    title: "Risotto alla Milanese",
    ingredients: ["Arborio rice", "Saffron", "Beef or vegetable stock", "Butter", "Parmesan", "White wine", "Onion"],
    instructions: "Sauté finely chopped onion in butter until soft, then add arborio rice and toast it briefly until the edges turn translucent. Deglaze with white wine and let it evaporate. Gradually ladle in hot stock infused with saffron, stirring frequently and adding more liquid only as the rice absorbs it. Once the rice is creamy and tender with a slight bite, finish with butter and grated Parmesan for a rich, golden risotto.",
    photo: null,
  },

  // ===== France =====
  {
    region: "Western Europe",
    state: "Paris",
    country: "France",
    title: "Croissant",
    ingredients: ["Flour", "Butter", "Yeast", "Milk", "Sugar", "Salt"],
    instructions: "Make a yeasted dough and chill it, then encase a slab of cold butter inside. Roll and fold the dough over the butter several times, chilling between folds, to build up many thin alternating layers. Roll the laminated dough thin and cut it into triangles, then shape each one into a crescent. Let the shaped croissants proof until puffy, then bake until deeply golden and flaky on the outside with a light, airy interior.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Western Europe",
    state: "Burgundy",
    country: "France",
    title: "Coq au Vin",
    ingredients: ["Chicken", "Red wine", "Bacon lardons", "Pearl onions", "Mushrooms", "Garlic", "Bay leaf", "Butter"],
    instructions: "Brown pieces of chicken along with bacon lardons in a heavy pot, then set them aside. In the same pot, soften pearl onions, mushrooms, and garlic. Return the chicken and bacon to the pot and pour in enough red wine to nearly cover everything, along with a bay leaf and herbs. Cover and simmer slowly until the chicken is tender and the sauce has reduced into a deep, glossy gravy, then finish with a knob of butter.",
    photo: null,
  },

  // ===== Spain =====
  {
    region: "Mediterranean",
    state: "Madrid",
    country: "Spain",
    title: "Tortilla Española",
    ingredients: ["Potatoes", "Eggs", "Onion", "Olive oil", "Salt"],
    instructions: "Slice potatoes and onion thinly and slowly confit them in a generous amount of olive oil until soft but not browned. Drain the potatoes and onion well, reserving the oil, and mix them into beaten eggs. Pour the mixture into a hot pan with a little of the reserved oil and cook over medium heat until the edges set. Flip the tortilla using a plate to cook the other side, aiming for a center that stays slightly soft and custardy.",
    photo: null,
  },
  {
    region: "Mediterranean",
    state: "Madrid",
    country: "Spain",
    title: "Churros",
    ingredients: ["Flour", "Water", "Salt", "Sugar", "Cinnamon", "Vegetable oil"],
    instructions: "Bring water, a little oil, and salt to a boil, then stir in flour vigorously off the heat to form a smooth, thick dough. Pipe the dough directly into hot oil using a star-tipped nozzle, forming long ridged strips. Fry until deep golden brown and crisp on the outside. Drain briefly, then toss in cinnamon sugar and serve hot with thick hot chocolate for dipping.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Greece =====
  {
    region: "Mediterranean",
    state: "Athens",
    country: "Greece",
    title: "Souvlaki",
    ingredients: ["Pork or chicken", "Olive oil", "Lemon juice", "Oregano", "Garlic", "Pita bread", "Tomato", "Tzatziki"],
    instructions: "Cut meat into cubes and marinate in olive oil, lemon juice, garlic, and oregano. Thread the marinated pieces onto skewers. Grill over hot coals, turning until charred outside and cooked through. Serve the skewers on their own or wrapped in warm pita with tomato, onion, and a cooling tzatziki sauce.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Mediterranean",
    state: "Athens",
    country: "Greece",
    title: "Moussaka",
    ingredients: ["Eggplant", "Ground lamb", "Tomatoes", "Onion", "Bechamel sauce", "Cinnamon", "Parmesan or kefalotyri"],
    instructions: "Slice eggplant and either fry or roast the slices until softened. Cook ground lamb with onion, tomatoes, and a pinch of cinnamon into a thick, well-seasoned sauce. Layer the eggplant and meat sauce in a baking dish, repeating as needed. Top generously with a rich bechamel sauce and grated cheese, then bake until the top turns golden and set.",
    photo: null,
  },

  // ===== United Kingdom =====
  {
    region: "Western Europe",
    state: "London",
    country: "United Kingdom",
    title: "Fish and Chips",
    ingredients: ["White fish fillets", "Flour", "Beer", "Potatoes", "Vegetable oil", "Salt", "Malt vinegar"],
    instructions: "Cut potatoes into thick chips and fry them once at a lower temperature to cook through, then set aside. Make a light batter by whisking flour with cold beer until smooth. Dip fish fillets in the batter and fry in hot oil until the coating turns crisp and golden and the fish is flaky inside. Fry the chips a second time at a higher temperature until crunchy, then serve everything together with salt and malt vinegar.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Western Europe",
    state: "England",
    country: "United Kingdom",
    title: "Shepherd's Pie",
    ingredients: ["Ground lamb", "Onion", "Carrots", "Peas", "Tomato paste", "Mashed potatoes", "Worcestershire sauce"],
    instructions: "Brown ground lamb with chopped onion and carrots, then stir in tomato paste and a splash of Worcestershire sauce along with some stock. Simmer the mixture until it thickens into a rich gravy, then stir in peas at the end. Spread the meat filling into a baking dish and cover completely with a thick layer of smooth mashed potatoes. Bake until the potato topping turns golden and slightly crisp at the edges.",
    photo: null,
  },

  // ===== Morocco =====
  {
    region: "North Africa",
    state: "Marrakech",
    country: "Morocco",
    title: "Chicken Tagine",
    ingredients: ["Chicken", "Preserved lemon", "Olives", "Onion", "Ginger", "Turmeric", "Saffron", "Cilantro"],
    instructions: "Brown chicken pieces with onion, ginger, turmeric, and a few threads of saffron in a tagine or heavy pot. Add a little water or stock, cover, and let the chicken simmer slowly until very tender. Stir in preserved lemon and olives toward the end of cooking so their flavor stays bright. Finish with fresh cilantro and serve with warm bread or couscous to soak up the sauce.",
    photo: null,
  },
  {
    region: "North Africa",
    state: "Marrakech",
    country: "Morocco",
    title: "Harira",
    ingredients: ["Lamb", "Lentils", "Chickpeas", "Tomatoes", "Celery", "Onion", "Flour", "Fresh herbs"],
    instructions: "Brown small pieces of lamb with onion, celery, and spices in a large pot. Add tomatoes, lentils, and soaked chickpeas along with plenty of water, then simmer until the lentils and meat are tender. Stir in a flour-and-water slurry to thicken the soup slightly, along with fresh cilantro and parsley. Simmer a little longer until the soup reaches a hearty, comforting consistency, then serve hot, traditionally to break the daily fast during Ramadan.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Ethiopia =====
  {
    region: "East Africa",
    state: "Addis Ababa",
    country: "Ethiopia",
    title: "Doro Wat",
    ingredients: ["Chicken", "Berbere spice", "Onion", "Garlic", "Ginger", "Niter kibbeh", "Hard-boiled eggs"],
    instructions: "Cook a large quantity of finely chopped onion slowly in a dry pot until deeply softened, then add niter kibbeh, garlic, and ginger. Stir in berbere spice paste and cook it until the oil separates and the mixture turns deep red and fragrant. Add chicken pieces and simmer slowly in the thick sauce until fully tender. Add whole hard-boiled eggs toward the end so they absorb the sauce, then serve with injera flatbread.",
    photo: null,
  },
  {
    region: "East Africa",
    state: "Addis Ababa",
    country: "Ethiopia",
    title: "Misir Wot",
    ingredients: ["Red lentils", "Berbere spice", "Onion", "Garlic", "Ginger", "Vegetable oil", "Tomato paste"],
    instructions: "Cook finely chopped onion in vegetable oil until soft and golden. Stir in garlic, ginger, and a generous amount of berbere spice paste, cooking until fragrant. Add tomato paste and red lentils along with water, then simmer until the lentils break down into a thick, richly spiced stew. Adjust the seasoning and serve scooped up with pieces of injera flatbread.",
    photo: null,
    dietOverride: "vegan",
  },

  // ===== Nigeria =====
  {
    region: "West Africa",
    state: "Lagos",
    country: "Nigeria",
    title: "Jollof Rice",
    ingredients: ["Rice", "Tomatoes", "Red bell pepper", "Onion", "Scotch bonnet pepper", "Vegetable oil", "Bay leaves", "Stock"],
    instructions: "Blend tomatoes, red bell pepper, onion, and scotch bonnet pepper into a smooth base. Fry the blended mixture in oil for a long while until it darkens and the raw taste cooks out. Add stock, bay leaves, and seasoning, then stir in rice. Cover and cook over low heat, stirring occasionally, until the rice is tender and has absorbed the sauce, developing a slightly smoky flavor at the bottom of the pot.",
    photo: null,
  },
  {
    region: "West Africa",
    state: "Lagos",
    country: "Nigeria",
    title: "Suya",
    ingredients: ["Beef", "Peanuts", "Ginger", "Garlic", "Cayenne pepper", "Paprika", "Onion", "Vegetable oil"],
    instructions: "Slice beef thinly and thread it onto skewers. Grind roasted peanuts with ground ginger, garlic, cayenne, and other spices into a dry, aromatic suya spice mix called yaji. Coat the skewered meat generously with oil and the spice mix. Grill over open flame, turning frequently, until the meat is charred outside and cooked through, then serve with sliced onion and tomato.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Egypt =====
  {
    region: "North Africa",
    state: "Cairo",
    country: "Egypt",
    title: "Koshari",
    ingredients: ["Rice", "Lentils", "Macaroni", "Chickpeas", "Tomato sauce", "Fried onions", "Garlic", "Vinegar"],
    instructions: "Cook rice, brown lentils, macaroni, and chickpeas separately until each is tender. Make a tangy tomato sauce with garlic and a touch of vinegar and chili. Layer the rice, lentils, macaroni, and chickpeas together in a bowl. Top generously with the spiced tomato sauce and a large handful of deeply fried crispy onions before serving.",
    photo: null,
    isStreetFood: true,
    dietOverride: "vegan",
  },
  {
    region: "North Africa",
    state: "Cairo",
    country: "Egypt",
    title: "Ful Medames",
    ingredients: ["Fava beans", "Garlic", "Lemon juice", "Olive oil", "Cumin", "Parsley"],
    instructions: "Simmer dried fava beans slowly until they turn very soft, or use pre-cooked beans for a quicker version. Mash the beans partially, leaving some texture, and stir in crushed garlic, lemon juice, and cumin. Drizzle generously with olive oil. Serve warm with parsley on top alongside flatbread, chopped tomato, and onion.",
    photo: null,
    dietOverride: "vegan",
  },

  // ===== United States =====
  {
    region: "North America",
    state: "United States",
    country: "United States",
    title: "Cheeseburger",
    ingredients: ["Ground beef", "Cheese", "Burger bun", "Lettuce", "Tomato", "Onion", "Pickles", "Mustard"],
    instructions: "Shape ground beef into patties and season simply with salt and pepper. Grill or pan-sear the patties over high heat, flipping once, and melt a slice of cheese on top near the end of cooking. Toast the burger buns lightly on the cut sides. Assemble the burger with lettuce, tomato, onion, and pickles, along with ketchup, mustard, or mayonnaise to taste.",
    photo: null,
  },
  {
    region: "North America",
    state: "North Carolina",
    country: "United States",
    title: "BBQ Pulled Pork",
    ingredients: ["Pork shoulder", "Vinegar", "Brown sugar", "Paprika", "Black pepper", "Cayenne pepper", "Burger bun"],
    instructions: "Rub a whole pork shoulder with a mix of paprika, brown sugar, and spices. Smoke the pork low and slow over wood for many hours until it becomes extremely tender. Shred the cooked meat by hand or with forks, discarding excess fat. Toss the shredded pork with a tangy vinegar-based sauce and serve piled on a soft bun with coleslaw.",
    photo: null,
  },

  // ===== Mexico =====
  {
    region: "Latin America",
    state: "Mexico City",
    country: "Mexico",
    title: "Tacos al Pastor",
    ingredients: ["Pork", "Dried guajillo chilies", "Achiote paste", "Pineapple", "Onion", "Cilantro", "Corn tortillas"],
    instructions: "Marinate thin slices of pork in a blend of dried guajillo chilies, achiote paste, vinegar, and spices. Stack the marinated pork onto a vertical spit along with a piece of pineapple on top, then roast it slowly, rotating as the outer layer crisps. Shave off thin slices of the charred, juicy pork directly onto small warm corn tortillas. Top with a small piece of grilled pineapple, chopped onion, and cilantro, then serve with lime and salsa.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Latin America",
    state: "Puebla",
    country: "Mexico",
    title: "Mole Poblano",
    ingredients: ["Dried chilies", "Chocolate", "Turkey or chicken", "Tomatoes", "Sesame seeds", "Almonds", "Cinnamon", "Onion"],
    instructions: "Toast an assortment of dried chilies and blend them with tomatoes, onion, garlic, and a mix of nuts and seeds. Cook the blended paste slowly in a pot, stirring often to keep it from sticking, until it deepens in color and flavor. Stir in a small amount of dark chocolate and warming spices, letting the sauce simmer until rich and glossy. Simmer pieces of turkey or chicken in the finished mole sauce until well coated and heated through, then serve over the meat with rice.",
    photo: null,
  },

  // ===== Brazil =====
  {
    region: "Latin America",
    state: "Rio de Janeiro",
    country: "Brazil",
    title: "Feijoada",
    ingredients: ["Black beans", "Pork ribs", "Sausage", "Bacon", "Onion", "Garlic", "Bay leaves", "Orange"],
    instructions: "Soak black beans, then simmer them slowly with pork ribs, bacon, and sausage until the meats are tender and the beans turn creamy. In a separate pan, sauté onion and garlic and stir this into the pot to deepen the flavor. Let everything simmer together until the stew thickens naturally. Serve the feijoada with rice, sautéed collard greens, and orange slices on the side to cut through the richness.",
    photo: null,
  },
  {
    region: "Latin America",
    state: "Minas Gerais",
    country: "Brazil",
    title: "Pão de Queijo",
    ingredients: ["Tapioca starch", "Cheese", "Milk", "Eggs", "Vegetable oil", "Salt"],
    instructions: "Heat milk, oil, and salt together and pour the hot liquid over tapioca starch, stirring until it forms a sticky dough. Let the dough cool slightly, then knead in eggs and a generous amount of grated cheese. Roll the dough into small balls and place them on a baking sheet. Bake until the little rolls puff up and turn golden outside while staying chewy and cheesy inside.",
    photo: null,
    isStreetFood: true,
  },

  // ===== Peru =====
  {
    region: "Latin America",
    state: "Lima",
    country: "Peru",
    title: "Ceviche",
    ingredients: ["White fish", "Lime juice", "Red onion", "Cilantro", "Aji chili", "Sweet potato", "Corn"],
    instructions: "Cut fresh raw white fish into bite-sized pieces. Toss the fish with plenty of freshly squeezed lime juice, thinly sliced red onion, chopped cilantro, and a touch of aji chili. Let the mixture marinate briefly, just long enough for the acid in the lime juice to firm and lightly cook the fish. Serve immediately with slices of boiled sweet potato and corn on the side.",
    photo: null,
  },
  {
    region: "Latin America",
    state: "Lima",
    country: "Peru",
    title: "Lomo Saltado",
    ingredients: ["Beef strips", "Onion", "Tomatoes", "Soy sauce", "French fries", "Rice", "Cilantro"],
    instructions: "Stir-fry strips of beef quickly over very high heat until browned but still tender. Add sliced onion and tomato wedges and toss briefly so they soften slightly while staying a bit crisp. Season with soy sauce and a splash of vinegar, tossing everything together in the hot pan. Fold in crisp French fries just before serving so they stay crunchy, and serve alongside steamed rice.",
    photo: null,
  },

  // ===== Australia =====
  {
    region: "Oceania",
    state: "Melbourne",
    country: "Australia",
    title: "Meat Pie",
    ingredients: ["Ground beef", "Onion", "Beef stock", "Worcestershire sauce", "Puff pastry", "Tomato sauce"],
    instructions: "Brown ground beef with chopped onion, then add stock and Worcestershire sauce and simmer until the mixture reduces into a thick, savory filling. Thicken the filling further with a little flour or cornstarch and let it cool. Line small pie tins with pastry, fill with the meat mixture, and top with a pastry lid, sealing the edges well. Bake until the pastry turns puffed and golden, then serve hot, traditionally with a squeeze of tomato sauce on top.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "Oceania",
    state: "Sydney",
    country: "Australia",
    title: "Lamington",
    ingredients: ["Sponge cake", "Chocolate icing", "Desiccated coconut", "Sugar", "Cocoa powder", "Butter"],
    instructions: "Bake a light vanilla sponge cake and let it cool completely, then cut it into small squares. Make a thin chocolate icing by mixing cocoa powder, sugar, and butter with a little hot water or milk. Dip each cake square into the chocolate icing, coating all sides. Immediately roll the coated squares in desiccated coconut before the icing sets, then let them firm up.",
    photo: null,
  },
];
