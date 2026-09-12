// Seed catalog for Kalabhavans.com — mirrors the "Website Development" project
// doc `kalabhavans-india-ingredients-dishes.md`. Every entry here is tagged
// Owner: Internet (compiled from general public information, not original to
// Kalabhavans or any member) — see docs/CONTENT.md and the site-wide
// disclaimer for the full explanation shown to visitors.
//
// `photo` links are UNVERIFIED placeholders sourced from Wikimedia Commons by
// an automated search that could not click-load them (see docs/CONTENT.md).
// Spot-check before relying on them, and replace with real photography before
// a public launch.
//
// Now that the site welcomes recipes from anywhere in the world (not just
// India), this file combines two lists — `indiaDishes` (the original ~70,
// unchanged below) and `worldDishes` (prisma/world-dishes-data.ts, ~50 dishes
// across 24 other countries) — into one `seedDishes` array. `country`
// defaults to "India" when omitted, which is why none of the original India
// entries below needed editing to pick up the new country/continent columns.
// `diet` isn't stored per-entry at all: it's inferred from `ingredients` at
// seed time (see lib/dish-classify.ts's inferDiet), unless a dish sets
// `dietOverride` for a hand-verified vegan dish.

import { worldDishes } from "./world-dishes-data";
import type { DietValue } from "../lib/dish-classify";

export type SeedDish = {
  region: string; // broad cultural zone tag, e.g. "North India", "East Asia" — not a DB column, just groups the region Tag
  state: string; // state/province/city — stored as Recipe.region
  country?: string; // defaults to "India" when omitted
  title: string;
  ingredients: string[];
  instructions: string; // split into numbered steps at seed time
  photo: string | null;
  isStreetFood?: boolean; // defaults to false
  dietOverride?: DietValue; // set ONLY for a hand-verified vegan dish — see inferDiet()
};

const indiaDishes: SeedDish[] = [
  // ── North India ──────────────────────────────────────────────────────────
  {
    region: "North India", state: "Punjab", title: "Sarson da Saag with Makki di Roti",
    ingredients: ["Mustard greens", "Spinach", "Ginger", "Green chili", "Maize flour", "Ghee"],
    instructions: "Boil mustard greens and spinach with ginger and chili until soft. Mash and simmer with a ghee-garlic tempering until thick. Cook maize-flour flatbreads on a hot griddle. Serve the saag with the flatbreads, finished with ghee.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/52/Sarson-Ka-Saag.jpg",
  },
  {
    region: "North India", state: "Punjab", title: "Butter Chicken",
    ingredients: ["Chicken", "Yogurt", "Tomato", "Butter", "Cream", "Garam masala", "Kasuri methi"],
    instructions: "Marinate chicken in yogurt and spices. Grill or pan-sear the chicken until charred. Simmer it in a tomato-butter-cream gravy. Cook until the chicken is coated and tender.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/97/Butter_chicken_with_rumali_roti.jpg",
  },
  {
    region: "North India", state: "Punjab", title: "Amritsari Kulcha",
    ingredients: ["Maida", "Potato", "Spices", "Butter"],
    instructions: "Knead a dough and let it rest. Stuff it with spiced mashed potato. Roll out and cook in a tandoor or hot skillet until puffed and golden. Brush with butter before serving.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Amritsari_Kulcha.jpg",
  },
  {
    region: "North India", state: "Haryana", title: "Bajre ki Khichdi",
    ingredients: ["Pearl millet (bajra)", "Moong dal", "Turmeric", "Ghee"],
    instructions: "Cook millet with split moong dal, turmeric, and salt until soft and porridge-like. Finish with a ghee-cumin tempering.",
    photo: null,
  },
  {
    region: "North India", state: "Haryana", title: "Kadhi Pakora",
    ingredients: ["Besan", "Yogurt", "Mustard seeds", "Curry leaves"],
    instructions: "Fry gram-flour fritters (pakora). Simmer them in a tangy yogurt-besan gravy. Temper with mustard seeds and curry leaves until thickened.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/67/Kadhi_Pakora.jpg",
  },
  {
    region: "North India", state: "Himachal Pradesh", title: "Dham",
    ingredients: ["Rajma", "Black chana", "Rice", "Himachali spice blend"],
    instructions: "Slow-cook rajma, black chana, and rice-based sides separately with local spice blends. Serve together as a festive thali.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Kangri_Dham.jpg",
  },
  {
    region: "North India", state: "Himachal Pradesh", title: "Siddu",
    ingredients: ["Wheat flour", "Yeast", "Poppy seed/nut filling"],
    instructions: "Prepare a yeasted wheat dough and let it rise. Stuff with a nutty filling and shape into balls. Steam until cooked through. Serve with ghee or chutney.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/93/Siddu.JPG",
  },
  {
    region: "North India", state: "Himachal Pradesh", title: "Chana Madra",
    ingredients: ["Chickpeas", "Yogurt", "Whole spices", "Ghee"],
    instructions: "Simmer boiled chickpeas in a yogurt-based gravy flavored with whole spices. Finish with ghee.",
    photo: null,
  },
  {
    region: "North India", state: "Jammu & Kashmir", title: "Rogan Josh",
    ingredients: ["Lamb", "Yogurt", "Kashmiri red chili", "Fennel"],
    instructions: "Sear the lamb. Slow-cook it in a yogurt gravy flavored with Kashmiri red chili and fennel until deeply colored and tender.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/43/Mutton_rogan_josh.jpg",
  },
  {
    region: "North India", state: "Jammu & Kashmir", title: "Yakhni",
    ingredients: ["Meat", "Yogurt", "Whole spices"],
    instructions: "Simmer meat in a yogurt-based broth with whole spices until tender and mildly tangy.",
    photo: null,
  },
  {
    region: "North India", state: "Jammu & Kashmir", title: "Dum Aloo",
    ingredients: ["Baby potatoes", "Yogurt/tomato gravy", "Spices"],
    instructions: "Fry baby potatoes until golden. Slow-cook (dum) in a spiced gravy until infused with flavor.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/ec/Kashmiri_Dum_Aaloo.JPG",
  },
  {
    region: "North India", state: "Jammu & Kashmir", title: "Kashmiri Pulao",
    ingredients: ["Rice", "Saffron", "Milk", "Dried fruit"],
    instructions: "Sauté rice briefly. Cook with saffron-infused milk, dried fruits, and mild whole spices until fluffy.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/a7/Kashmiri_pulao_%28cropped%29.JPG",
  },
  {
    region: "North India", state: "Uttar Pradesh", title: "Lucknowi Biryani",
    ingredients: ["Meat", "Rice", "Saffron", "Whole spices"],
    instructions: "Layer partially cooked spiced meat with par-boiled rice. Seal the pot and cook on low heat (dum) so the flavors and aroma infuse the rice.",
    photo: null,
  },
  {
    region: "North India", state: "Uttar Pradesh", title: "Tunday Kababi",
    ingredients: ["Minced meat", "Raw papaya", "Spice paste"],
    instructions: "Blend minced meat with a spice paste and raw papaya for tenderness. Shape into small patties. Shallow-fry on a griddle.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/8/88/Tunday_Kebabs.jpg",
  },
  {
    region: "North India", state: "Uttar Pradesh", title: "Petha",
    ingredients: ["Ash gourd", "Sugar syrup"],
    instructions: "Boil ash gourd cubes in a sugar syrup with flavorings until translucent and candied.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Petha-from-Agra.JPG",
  },
  {
    region: "North India", state: "Uttarakhand", title: "Kafuli",
    ingredients: ["Spinach", "Fenugreek leaves", "Spices"],
    instructions: "Cook and mash leafy greens. Simmer with a mild spiced gravy.",
    photo: null,
  },
  {
    region: "North India", state: "Uttarakhand", title: "Bhatt ki Churkani",
    ingredients: ["Black soybeans", "Garlic", "Ginger"],
    instructions: "Cook black soybeans until soft. Temper with garlic, ginger, and local spices.",
    photo: null,
  },
  {
    region: "North India", state: "Uttarakhand", title: "Aloo ke Gutke",
    ingredients: ["Potato", "Mustard seeds", "Red chili"],
    instructions: "Boil potato chunks. Pan-fry with mustard seeds, red chili, and turmeric until crisp-edged.",
    photo: null,
  },
  {
    region: "North India", state: "Rajasthan", title: "Dal Baati Churma",
    ingredients: ["Wheat dough", "Mixed lentils", "Ghee", "Jaggery"],
    instructions: "Bake wheat-flour dough balls (baati) until crusty. Serve with spiced mixed-lentil dal. Crumble sweetened wheat (churma) alongside.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Rajasthani_Dal_Bati_Churma_-_Gurugram_-_Haryana_-_03.jpg",
  },
  {
    region: "North India", state: "Rajasthan", title: "Laal Maas",
    ingredients: ["Mutton", "Yogurt", "Mathania chili"],
    instructions: "Marinate mutton in yogurt and Mathania chili. Slow-cook until the gravy turns deep red and the meat is tender.",
    photo: null,
  },
  {
    region: "North India", state: "Rajasthan", title: "Ker Sangri",
    ingredients: ["Dried desert beans & berries", "Mustard oil"],
    instructions: "Soak and cook the dried beans and berries. Stir-fry with mustard oil and regional spices.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Ker_Sangri.jpg",
  },
  {
    region: "North India", state: "Delhi/NCR", title: "Chaat",
    ingredients: ["Fried dough/potato", "Chickpeas", "Yogurt", "Tamarind chutney"],
    instructions: "Combine fried dough or boiled potatoes with chickpeas. Top with yogurt and chutneys for a tangy, layered snack.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/00/Chaat_stand_in_mussoorie.jpg",
    isStreetFood: true,
  },
  {
    region: "North India", state: "Delhi/NCR", title: "Pani Puri (Golgappa)",
    ingredients: ["Semolina/wheat puris", "Boiled potato", "Chickpeas", "Tamarind water", "Mint-coriander water"],
    instructions: "Fry small hollow puris until crisp and puffed. Fill each with mashed spiced potato and chickpeas. Fill the rest with tangy tamarind water or spicy mint-coriander water. Eat immediately, one at a time, before the puri softens.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/95/Pani_Puri.JPG",
    isStreetFood: true,
  },
  {
    region: "North India", state: "Delhi/NCR", title: "Nihari",
    ingredients: ["Meat shank", "Whole spices", "Wheat flour"],
    instructions: "Slow-cook meat shank overnight with whole spices and a wheat-flour thickener until meltingly tender.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/2/24/Nihari.JPG",
  },

  // ── West India ───────────────────────────────────────────────────────────
  {
    region: "West India", state: "Gujarat", title: "Dhokla",
    ingredients: ["Rice/besan batter", "Mustard seeds", "Curry leaves"],
    instructions: "Ferment the batter. Steam until spongy. Top with a mustard-curry leaf tempering.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/40/Gujarati_Dhokla_%28Khaman_Dhokla%29.jpg",
  },
  {
    region: "West India", state: "Gujarat", title: "Undhiyu",
    ingredients: ["Winter vegetables", "Fenugreek dumplings", "Spices"],
    instructions: "Slow-cook a mix of winter vegetables and fenugreek dumplings together with Gujarati spices until melded.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Undhiyu.jpg",
  },
  {
    region: "West India", state: "Gujarat", title: "Thepla",
    ingredients: ["Wheat flour", "Fenugreek leaves", "Spices"],
    instructions: "Knead spiced dough with fenugreek leaves. Roll thin and cook on a griddle with a little oil until browned.",
    photo: null,
  },
  {
    region: "West India", state: "Gujarat", title: "Khandvi",
    ingredients: ["Besan", "Yogurt", "Mustard seeds"],
    instructions: "Cook a seasoned besan-yogurt batter until thick. Spread thin, roll once cooled, and top with a tempering.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/7/7d/Khandvi%2C_Gujarati_snack.jpg",
  },
  {
    region: "West India", state: "Maharashtra", title: "Puran Poli",
    ingredients: ["Wheat dough", "Lentil-jaggery filling"],
    instructions: "Stuff a sweet lentil-jaggery filling inside a wheat dough. Roll flat and cook on a griddle with ghee.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/a7/Maharashtrian_Puran_Poli.jpg",
  },
  {
    region: "West India", state: "Maharashtra", title: "Misal Pav",
    ingredients: ["Sprouted lentils", "Spicy gravy", "Bread rolls"],
    instructions: "Top sprouted-lentil curry with spicy gravy (rassa), farsan, and onions. Serve with soft bread rolls.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/0a/MISAL_PAV.JPG",
    isStreetFood: true,
  },
  {
    region: "West India", state: "Maharashtra", title: "Vada Pav",
    ingredients: ["Potato", "Gram-flour batter", "Bread roll"],
    instructions: "Deep-fry a spiced mashed-potato ball in gram-flour batter. Serve inside a bread roll with chutneys.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/63/Vada_Pav.jpg",
    isStreetFood: true,
  },
  {
    region: "West India", state: "Maharashtra", title: "Pav Bhaji",
    ingredients: ["Mixed vegetables", "Butter", "Pav bhaji masala", "Bread rolls"],
    instructions: "Boil and mash a mix of vegetables. Cook the mash down with butter, onions, tomatoes, and pav bhaji masala until thick. Toast buttered bread rolls on a griddle. Serve the bhaji hot with the pav and a squeeze of lime.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Pav_bhaji.JPG",
    isStreetFood: true,
  },
  {
    region: "West India", state: "Goa", title: "Vindaloo",
    ingredients: ["Meat", "Vinegar", "Garlic", "Chili"],
    instructions: "Marinate meat in a vinegar-garlic-chili paste. Slow-cook until tender and tangy-spicy.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e0/Chicken_Vindaloo.jpeg",
  },
  {
    region: "West India", state: "Goa", title: "Xacuti",
    ingredients: ["Coconut", "Whole spices", "Chicken/meat"],
    instructions: "Roast and grind coconut with whole spices. Simmer with meat until the gravy thickens.",
    photo: null,
  },
  {
    region: "West India", state: "Goa", title: "Sorpotel",
    ingredients: ["Pork", "Offal", "Vinegar", "Spices"],
    instructions: "Cook pork and offal with vinegar, garlic, and a blend of spices until rich and tangy.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/1/1c/Goa_Sorpotel.jpg",
  },

  // ── South India ──────────────────────────────────────────────────────────
  {
    region: "South India", state: "Kerala", title: "Appam with Stew",
    ingredients: ["Fermented rice-coconut batter", "Coconut milk"],
    instructions: "Ferment the batter. Cook in a curved pan for lacy edges. Pair with a mildly spiced coconut-milk stew.",
    photo: null,
  },
  {
    region: "South India", state: "Kerala", title: "Fish Moilee",
    ingredients: ["Fish", "Coconut milk", "Curry leaves"],
    instructions: "Simmer fish gently in a coconut-milk gravy flavored with curry leaves, ginger, and green chili.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Fish_Moilee_Kerala_Style_%28aka_KeralaFish_Molly%29.JPG",
  },
  {
    region: "South India", state: "Kerala", title: "Avial",
    ingredients: ["Mixed vegetables", "Coconut", "Cumin"],
    instructions: "Cook mixed vegetables with a coconut-cumin paste. Finish with coconut oil and curry leaves.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/2/25/Aviyal.JPG",
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Sambar",
    ingredients: ["Toor dal", "Tamarind", "Vegetables"],
    instructions: "Cook lentils with tamarind, vegetables, and sambar powder into a tangy, mildly spiced stew.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d3/Sambar._a_south_Indian_papular_dish.JPG",
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Chettinad Chicken",
    ingredients: ["Chicken", "Roasted spice blend"],
    instructions: "Roast and grind a spice blend. Cook chicken in the masala until rich and aromatic.",
    photo: null,
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Rasam",
    ingredients: ["Tamarind", "Tomato", "Pepper", "Cumin"],
    instructions: "Simmer tamarind extract with tomatoes, pepper, cumin, and lentil water into a thin, tangy soup.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/f/fa/Rasam.JPG",
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Koottu",
    ingredients: ["Chana dal/Toor dal", "Mixed vegetables", "Coconut", "Cumin"],
    instructions: "Cook mixed vegetables with lentils until soft. Grind coconut with cumin and green chili into a paste and stir it in. Simmer briefly and finish with a mustard-curry leaf tempering.",
    photo: null,
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Vadu Manga (Tamil Nadu Pickle)",
    ingredients: ["Baby mangoes (vadu manga)", "Mustard seeds", "Red chili powder", "Sesame oil", "Salt"],
    instructions: "Wash and dry baby mangoes completely. Coat them in a mix of red chili powder, mustard powder, and salt. Pack into a jar, cover with sesame oil, and let it mature for several days, shaking occasionally, until deeply pickled.",
    photo: null,
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Chettinad Biryani",
    ingredients: ["Seeraga samba rice", "Chicken/mutton", "Roasted spice blend", "Curd", "Fried onions"],
    instructions: "Marinate meat in curd and a roasted Chettinad spice blend. Cook the marinated meat down into a thick masala. Layer with par-cooked short-grain seeraga samba rice and cook on low heat (dum) until the rice absorbs the masala's flavor. Fluff and serve topped with fried onions.",
    photo: null,
  },
  {
    region: "South India", state: "Tamil Nadu", title: "Chicken 65",
    ingredients: ["Chicken", "Yogurt", "Ginger-garlic paste", "Red chili powder", "Curry leaves"],
    instructions: "Marinate bite-sized chicken pieces in yogurt, ginger-garlic paste, red chili powder, and cornflour. Deep-fry until crisp and deeply red. Toss the fried chicken with a quick tempering of curry leaves, garlic, and green chilies. Serve hot as a starter or street-food snack.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Chicken_65_Dry.jpg",
    isStreetFood: true,
  },
  {
    region: "South India", state: "Karnataka", title: "Bisi Bele Bath",
    ingredients: ["Rice", "Lentils", "Vegetables", "Spice powder"],
    instructions: "Cook rice and lentils with vegetables and a spiced bisi bele bath powder into a one-pot dish.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/04/Bisi_Bele_Bath_%28Bisibelebath%29.JPG",
  },
  {
    region: "South India", state: "Karnataka", title: "Mysore Masala Dosa",
    ingredients: ["Fermented rice-lentil batter", "Red chutney", "Potato"],
    instructions: "Spread fermented batter thin on a griddle. Fill with a spicy red chutney and potato masala.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e5/Mysore_Masala_Dosa.jpg",
  },
  {
    region: "South India", state: "Andhra Pradesh", title: "Andhra Chicken Curry",
    ingredients: ["Chicken", "Guntur chili", "Tamarind"],
    instructions: "Cook chicken in a fiery Guntur-chili based gravy with onions and tamarind for tang.",
    photo: null,
  },
  {
    region: "South India", state: "Andhra Pradesh", title: "Gongura Pachadi",
    ingredients: ["Gongura (sorrel) leaves", "Chilies"],
    instructions: "Cook sour gongura leaves down with chilies and spices into a tangy chutney-like relish.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e8/A_famous_andhra_side_dish._Gongura_paccaDi.JPG",
  },
  {
    region: "South India", state: "Telangana", title: "Hyderabadi Biryani",
    ingredients: ["Meat", "Rice", "Whole spices"],
    instructions: "Marinate meat and layer with par-cooked rice. Cook on dum so the flavors infuse the rice fully.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d1/Hyderabadi_Biryani.jpg",
  },
  {
    region: "South India", state: "Telangana", title: "Mirchi ka Salan",
    ingredients: ["Long green chilies", "Peanut-sesame gravy"],
    instructions: "Cook long green chilies in a peanut-sesame gravy until the chilies soften and the gravy thickens.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Hyderabadi_Biryani_with_Raita%2C_Mirchi_Ka_Salan_and_Salad.JPG",
  },

  // ── East India ───────────────────────────────────────────────────────────
  {
    region: "East India", state: "West Bengal", title: "Shorshe Ilish",
    ingredients: ["Hilsa fish", "Mustard paste"],
    instructions: "Simmer hilsa fish in a mustard-paste gravy with green chili until infused.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/c/cc/Shorshe_Ilish_Maach.jpg",
  },
  {
    region: "East India", state: "West Bengal", title: "Machher Jhol",
    ingredients: ["Fish", "Potato", "Tomato"],
    instructions: "Cook fish in a light, spiced potato-tomato broth.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Bata_macher_jhol-MB03.jpg",
  },
  {
    region: "East India", state: "West Bengal", title: "Mishti Doi",
    ingredients: ["Milk", "Jaggery", "Yogurt culture"],
    instructions: "Sweeten milk with jaggery. Set with a yogurt culture and let it ferment until thick and caramel-toned.",
    photo: null,
  },
  {
    region: "East India", state: "West Bengal", title: "Kolkata Kathi Roll",
    ingredients: ["Wheat paratha", "Egg", "Chicken/paneer skewers", "Onion", "Chutney"],
    instructions: "Grill spiced chicken or paneer on a skewer until charred. Cook a paratha, crack an egg onto it partway through, and flip so the egg sets onto the bread. Lay the grilled filling, sliced onions, and chutney down the center. Roll tightly and serve wrapped in paper.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/6b/Kolkata_Kathi_Roll.jpg",
    isStreetFood: true,
  },
  {
    region: "East India", state: "West Bengal", title: "Jhal Muri",
    ingredients: ["Puffed rice", "Mustard oil", "Chopped onion", "Peanuts", "Chickpeas", "Green chili"],
    instructions: "Toss puffed rice with mustard oil, chopped onion, tomato, and green chili. Mix in roasted peanuts and boiled chickpeas. Season with chaat masala and a squeeze of lime. Serve immediately while the puffed rice is still crisp.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "East India", state: "Odisha", title: "Dalma",
    ingredients: ["Lentils", "Vegetables"],
    instructions: "Cook lentils with vegetables and a light tempering into a comforting stew.",
    photo: null,
  },
  {
    region: "East India", state: "Odisha", title: "Pakhala Bhata",
    ingredients: ["Cooked rice", "Water"],
    instructions: "Ferment cooked rice in water overnight. Serve chilled with accompaniments.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/53/Pakhala_Bhata_and_Aloo_Bhaja.jpg",
  },
  {
    region: "East India", state: "Bihar", title: "Litti Chokha",
    ingredients: ["Wheat dough", "Sattu", "Roasted vegetables"],
    instructions: "Stuff wheat dough balls with roasted gram flour (sattu). Bake or roast until crusty. Serve with a smoky mashed vegetable side.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Des_iLitti_Chokha.jpg",
  },
  {
    region: "East India", state: "Bihar", title: "Sattu Paratha",
    ingredients: ["Wheat dough", "Sattu filling"],
    instructions: "Stuff a spiced roasted-gram-flour filling into wheat dough. Cook on a griddle with ghee.",
    photo: null,
  },

  // ── Central India ────────────────────────────────────────────────────────
  {
    region: "Central India", state: "Madhya Pradesh", title: "Bhopali Gosht Korma",
    ingredients: ["Meat", "Onion", "Yogurt"],
    instructions: "Slow-cook meat in a rich onion-yogurt gravy until tender.",
    photo: null,
  },
  {
    region: "Central India", state: "Madhya Pradesh", title: "Poha",
    ingredients: ["Flattened rice", "Mustard seeds", "Peanuts"],
    instructions: "Sauté flattened rice with mustard seeds, turmeric, peanuts, and onions until fluffy and flavored.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Poha%2C_a_snack_made_of_flattened_rice.jpg",
  },
  {
    region: "Central India", state: "Chhattisgarh", title: "Chila",
    ingredients: ["Fermented rice-lentil batter"],
    instructions: "Cook the fermented batter on a griddle into a savory pancake.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/5d/Besan_chilla.jpg",
  },
  {
    region: "Central India", state: "Chhattisgarh", title: "Aamat",
    ingredients: ["Bamboo shoots", "Vegetables"],
    instructions: "Simmer bamboo shoots and vegetables in a mildly spiced tribal-style broth.",
    photo: null,
  },

  // ── Northeast India ──────────────────────────────────────────────────────
  {
    region: "Northeast India", state: "Assam", title: "Fish Tenga",
    ingredients: ["Fish", "Tomato/elephant apple"],
    instructions: "Cook fish in a light, sour broth flavored with tomatoes or elephant apple.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/54/Masor_Tenga.jpg",
  },
  {
    region: "Northeast India", state: "Assam", title: "Khar",
    ingredients: ["Raw papaya/vegetables", "Alkaline ash-water"],
    instructions: "Cook vegetables with filtered ash-water (khar) for a distinctive earthy flavor.",
    photo: null,
  },
  {
    region: "Northeast India", state: "Manipur", title: "Eromba",
    ingredients: ["Boiled vegetables", "Fermented fish", "Chili"],
    instructions: "Mash boiled vegetables with fermented fish and chili into a chunky, pungent side dish.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/ae/Ingredients_for_making_traditional_Meitei_food%2C_Eromba_%28alias_Iromba%2C_Eronba%2C_Ironba%29_-_Classical_Meitei_cuisine_of_Kangleipak.jpg",
  },
  {
    region: "Northeast India", state: "Manipur", title: "Chak-hao Kheer",
    ingredients: ["Black rice", "Milk", "Sugar"],
    instructions: "Simmer black rice in milk with sugar until thick and naturally purple-hued.",
    photo: null,
  },
  {
    region: "Northeast India", state: "Nagaland", title: "Smoked Pork with Bamboo Shoot",
    ingredients: ["Smoked pork", "Fermented bamboo shoot"],
    instructions: "Simmer smoked pork with fermented bamboo shoot and chili until tender.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e7/Naga_style_smoked_Pork_ribs_with_bamboo_shoots_and_rice.jpg",
  },
  {
    region: "Northeast India", state: "Nagaland", title: "Axone",
    ingredients: ["Fermented soybean", "Pork/vegetables"],
    instructions: "Cook fermented soybean with pork or vegetables into a pungent, flavorful curry.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Naga_Smoked_Pork_with_Axone_%28Fermented_Soyabeans%29.jpg",
  },
  {
    region: "Northeast India", state: "Meghalaya", title: "Jadoh",
    ingredients: ["Rice", "Pork", "Local spices"],
    instructions: "Cook rice with pork and spices together into a one-pot smoky rice dish.",
    // Flagged in docs/CONTENT.md as a likely-malformed source filename — left
    // out of the seed rather than risk a broken image at launch.
    photo: null,
  },
  {
    region: "Northeast India", state: "Sikkim", title: "Momos",
    ingredients: ["Wheat wrappers", "Meat/vegetable filling"],
    instructions: "Fold a spiced filling into thin dough wrappers. Steam until cooked through.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/36/Momo101.jpg",
    isStreetFood: true,
  },
  {
    region: "Northeast India", state: "Sikkim", title: "Thukpa",
    ingredients: ["Noodles", "Broth", "Vegetables", "Meat"],
    instructions: "Simmer noodles in a spiced broth with vegetables and meat.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg",
  },

  // ── Union Territories ────────────────────────────────────────────────────
  {
    region: "Union Territory", state: "Puducherry", title: "Meen Kuzhambu",
    ingredients: ["Fish", "Tamarind", "Coconut"],
    instructions: "Simmer fish in a tangy tamarind-coconut gravy influenced by both Tamil and French technique.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d0/Meen_Khuzambu_%28South_India_Fish_gravy%29.jpg",
  },
  {
    region: "Union Territory", state: "Ladakh", title: "Thukpa (Ladakhi style) / Skyu",
    ingredients: ["Wheat", "Barley", "Vegetables"],
    instructions: "Simmer hand-pulled dough pieces or noodles in a spiced vegetable/meat broth, Tibetan-Himalayan style.",
    // Reuses the Sikkim Thukpa photo — a Skyu-specific free photo was not found.
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg",
  },
  {
    region: "Union Territory", state: "Andaman & Nicobar", title: "Grilled Reef Fish",
    ingredients: ["Fresh reef fish", "Minimal seasoning"],
    instructions: "Marinate lightly. Grill over open flame so the seafood's natural flavor shines.",
    photo: null,
  },
];

// All seed rows share one Original/Updated timestamp: the moment this
// catalog was compiled (America/Chicago).
export const SEED_TIMESTAMP = new Date("2026-09-12T00:47:00-05:00");

// The full catalog: India's ~75 dishes (unchanged above — `country` defaults
// to "India" at seed time) plus ~50 dishes from 24 other countries across
// every populated continent (prisma/world-dishes-data.ts), researched
// separately and reviewed for diet-classification caution (see that file's
// header) before being merged in here.
export const seedDishes: SeedDish[] = [...indiaDishes, ...worldDishes];
