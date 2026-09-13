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
  {
    region: "North India",
    state: "Punjab",
    title: "Sarson da Saag with Makki di Roti",
    ingredients: ["Mustard greens", "Spinach", "Ginger", "Green chili", "Maize flour", "Ghee"],
    instructions:
      "Wash the mustard greens and spinach thoroughly and roughly chop them along with the ginger and green chili. Add them to a heavy pot with a splash of water and boil for about 25 to 30 minutes until the leaves are fully soft and wilted. Drain any excess water, then mash the greens coarsely with a wooden masher, leaving some texture rather than a smooth puree. Return the mash to the pot, stir in a spoonful of maize flour to thicken it, and simmer uncovered for another 10 to 15 minutes, stirring occasionally so it does not stick. In a small pan, heat ghee and add chopped garlic, cooking until it turns golden and fragrant, then pour this tempering over the saag and mix well. To make the flatbreads, knead maize flour with warm water into a soft dough and pat it directly into rounds on a floured surface, since it does not stretch like wheat dough. Cook each flatbread on a hot griddle for two to three minutes per side, pressing gently with a cloth or spatula until brown spots appear and the edges look dry. Serve the hot saag topped with a generous knob of ghee alongside the warm makki di roti.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/52/Sarson-Ka-Saag.jpg",
  },
  {
    region: "North India",
    state: "Punjab",
    title: "Butter Chicken",
    ingredients: ["Chicken", "Yogurt", "Tomato", "Butter", "Cream", "Garam masala", "Kasuri methi"],
    instructions:
      "Cut boneless chicken into bite-sized pieces and mix with yogurt, ginger-garlic paste, chili powder, and a pinch of salt, then let it marinate for at least 30 minutes. Heat a grill pan or skillet until very hot and sear the marinated chicken in batches for three to four minutes per side until lightly charred on the edges and just cooked through, then set aside. In a separate pan, melt butter and sauté chopped onion and ginger-garlic paste until softened and golden. Add pureed tomatoes and cook over medium heat for 15 to 20 minutes, stirring occasionally, until the raw smell disappears and the mixture thickens and darkens. Blend the tomato mixture until smooth, then return it to the pan and stir in garam masala, kasuri methi crushed between your palms, and a little sugar to balance the acidity. Lower the heat and stir in cream, then add the seared chicken pieces and simmer gently for 8 to 10 minutes until the chicken is fully cooked and coated in a glossy orange-red gravy. Finish with a final swirl of cream and a small knob of butter before serving hot with rice or naan.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/97/Butter_chicken_with_rumali_roti.jpg",
  },
  {
    region: "North India",
    state: "Punjab",
    title: "Amritsari Kulcha",
    ingredients: ["Maida", "Potato", "Spices", "Butter"],
    instructions:
      "Mix maida with a little yogurt, baking powder, salt, and water into a soft dough, then knead for five minutes until smooth and cover to rest for at least two hours. Boil and mash potatoes while still warm, then mix in chopped green chili, coriander, ajwain, and salt to make the stuffing. Divide the rested dough into equal balls, flatten each into a small disc, and place a portion of the potato filling in the center. Gather the edges of the dough over the filling and pinch to seal, then gently flatten the stuffed ball and roll it out carefully into a thick oval so the filling does not tear through. Sprinkle the top with nigella seeds and chopped coriander, pressing them lightly into the surface. Cook the kulcha in a very hot tandoor, or on a preheated heavy skillet covered with a lid, for two to three minutes on each side until puffed and golden-brown patches appear. Brush generously with melted butter as soon as it comes off the heat and serve warm with chole or pickle.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Amritsari_Kulcha.jpg",
  },
  {
    region: "North India",
    state: "Haryana",
    title: "Bajre ki Khichdi",
    ingredients: ["Pearl millet (bajra)", "Moong dal", "Turmeric", "Ghee"],
    instructions:
      "Rinse the pearl millet and split moong dal separately until the water runs mostly clear. Soak the millet in water for at least two hours, or overnight, so it cooks evenly and softens properly. Drain the millet and combine it with the moong dal, turmeric, and salt in a pressure cooker or heavy pot, adding about four cups of water for every cup of grain. Pressure cook for four to five whistles, or simmer covered on the stovetop for 35 to 40 minutes, stirring occasionally, until the millet and dal break down into a soft, porridge-like consistency. If the khichdi looks too thick once cooked, stir in a little hot water to loosen it to a spoonable consistency. In a small pan, heat ghee and add cumin seeds, letting them sizzle for a few seconds until fragrant. Pour the ghee-cumin tempering over the khichdi, stir once, and serve hot, ideally with a dollop of extra ghee on top.",
    photo: null,
  },
  {
    region: "North India",
    state: "Haryana",
    title: "Kadhi Pakora",
    ingredients: ["Besan", "Yogurt", "Mustard seeds", "Curry leaves"],
    instructions:
      "Whisk besan with a little water and a pinch of salt into a thick batter, then deep-fry spoonfuls in hot oil for two to three minutes until golden and crisp, and drain on paper towels to make the pakoras. In a separate bowl, whisk yogurt with besan and water until completely smooth and lump-free, then season with turmeric, chili powder, and salt. Pour this mixture into a pot and bring it to a gentle simmer over low heat, stirring constantly so the yogurt does not curdle, for about 15 to 20 minutes until it thickens slightly. Heat oil or ghee in a small pan and add mustard seeds, cumin, and curry leaves, letting them sizzle and pop for about 30 seconds. Pour this tempering into the simmering kadhi and stir to combine. Drop the fried pakoras into the hot kadhi and let them simmer together for five to seven minutes so they soak up the tangy gravy and soften slightly at the edges. Serve hot, garnished with a little extra tempering or chopped coriander, alongside steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/67/Kadhi_Pakora.jpg",
  },
  {
    region: "North India",
    state: "Himachal Pradesh",
    title: "Dham",
    ingredients: ["Rajma", "Black chana", "Rice", "Himachali spice blend"],
    instructions:
      "Soak the rajma and black chana separately in water overnight so they cook evenly the next day. Pressure cook the rajma with salt and a little turmeric for about six to eight whistles until completely soft and creamy inside. In a separate batch, pressure cook the black chana until tender, then simmer it with a blend of Himachali spices, ginger, and yogurt until the gravy thickens. Cook the rice separately, either plain or lightly flavored with whole spices, until each grain is fluffy and fully done. Prepare a yogurt-based side, such as a sweetened curry, by whisking yogurt with a little besan and sugar and simmering it gently until thickened. Assemble the different components as a festive thali, arranging the rajma, black chana curry, rice, and yogurt preparation together on one large plate or banana leaf. Serve warm, allowing diners to mix the components as they like in the traditional communal style.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Kangri_Dham.jpg",
  },
  {
    region: "North India",
    state: "Himachal Pradesh",
    title: "Siddu",
    ingredients: ["Wheat flour", "Yeast", "Poppy seed/nut filling"],
    instructions:
      "Dissolve yeast in warm water with a pinch of sugar and let it sit for 10 minutes until it turns frothy. Mix the yeast mixture into wheat flour with a little salt and knead into a soft, smooth dough, then cover and let it rise in a warm place for about two hours until doubled in size. Meanwhile, prepare the filling by lightly toasting poppy seeds or nuts and grinding them coarsely with a little sugar or salt to taste. Punch down the risen dough and divide it into equal portions, then flatten each portion slightly and place a spoonful of filling in the center. Gather the edges up and around the filling, pinching to seal, then shape each piece into a smooth ball. Arrange the stuffed balls in a steamer lined with a damp cloth, leaving space between them, and steam over boiling water for about 20 to 25 minutes until they look puffed and feel firm to the touch. Serve the siddu warm, split open and drizzled generously with melted ghee, or alongside a spicy chutney.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/93/Siddu.JPG",
  },
  {
    region: "North India",
    state: "Himachal Pradesh",
    title: "Chana Madra",
    ingredients: ["Chickpeas", "Yogurt", "Whole spices", "Ghee"],
    instructions:
      "Soak dried chickpeas overnight, then drain and pressure cook them with salt until completely tender, about six to seven whistles. Whisk yogurt well in a bowl until smooth, taking care to bring it to room temperature first so it does not split when heated. Heat ghee in a heavy-bottomed pan and add whole spices such as cloves, cinnamon, and black cardamom, letting them sizzle for about 30 seconds until aromatic. Lower the heat and gradually pour in the whisked yogurt, stirring continuously in one direction to prevent curdling. Add the boiled chickpeas along with a splash of their cooking liquid, then simmer gently on low heat for 15 to 20 minutes, stirring frequently, until the gravy thickens and coats the chickpeas. Season with salt and a touch of sugar to balance the tang of the yogurt. Finish with an extra spoon of warm ghee stirred through just before serving, and pair with steamed rice.",
    photo: null,
  },
  {
    region: "North India",
    state: "Jammu & Kashmir",
    title: "Rogan Josh",
    ingredients: ["Lamb", "Yogurt", "Kashmiri red chili", "Fennel"],
    instructions:
      "Pat the lamb pieces dry and season lightly with salt. Heat oil or ghee in a heavy pot and sear the lamb in batches over high heat for four to five minutes per batch until well browned on all sides, then set aside. In the same pot, add whole spices like cloves, cinnamon, and bay leaf along with chopped onion, and cook until the onion turns soft and golden. Stir in ginger-garlic paste and cook for another minute until the raw smell fades, then add Kashmiri red chili powder and fennel powder, stirring quickly so the spices toast without burning. Return the seared lamb to the pot along with whisked yogurt added a spoonful at a time, stirring constantly over low heat so it does not split. Add enough water to just cover the meat, bring to a simmer, then cover and cook on low heat for about an hour to an hour and a half, stirring occasionally, until the lamb is fork-tender and the gravy has turned a deep brick-red and thickened. Adjust salt, let it rest for a few minutes off the heat, and serve hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/43/Mutton_rogan_josh.jpg",
  },
  {
    region: "North India",
    state: "Jammu & Kashmir",
    title: "Yakhni",
    ingredients: ["Meat", "Yogurt", "Whole spices"],
    instructions:
      "Place the meat in a heavy pot with whole spices such as bay leaf, black cardamom, cloves, and cinnamon, along with enough water to cover it generously. Bring to a boil, skim off any scum that rises to the surface, then reduce the heat and simmer covered for about 45 minutes to an hour until the meat is tender. Strain the broth if you prefer a cleaner yakhni, reserving both the meat and the flavorful stock. Whisk yogurt in a separate bowl until smooth, then temper it gradually with a few spoonfuls of the hot broth to bring it to a similar temperature before combining, which helps prevent curdling. Return the meat and broth to the pot, stir in the tempered yogurt slowly over low heat, and simmer gently for another 15 to 20 minutes without letting it boil hard. Season with salt and, if desired, a little ground fennel or ginger powder for extra warmth. Serve hot as a light, tangy curry alongside steamed rice.",
    photo: null,
  },
  {
    region: "North India",
    state: "Jammu & Kashmir",
    title: "Dum Aloo",
    ingredients: ["Baby potatoes", "Yogurt/tomato gravy", "Spices"],
    instructions:
      "Wash the baby potatoes and prick each one a few times with a fork so the flavors can penetrate during frying. Deep-fry or shallow-fry the potatoes in hot oil for six to eight minutes, turning occasionally, until the skins turn golden-brown and slightly wrinkled, then drain and set aside. In a pan, heat oil and sauté chopped onions until golden, then add ginger-garlic paste and cook for another minute. Stir in tomato puree or whisked yogurt along with turmeric, chili powder, and coriander powder, and cook over medium heat for 8 to 10 minutes until the mixture thickens and the oil begins to separate at the edges. Add the fried potatoes to the gravy along with a splash of water, stirring gently to coat each piece. Cover the pan tightly and let the potatoes cook on low heat, or dum, for 12 to 15 minutes, shaking the pan occasionally instead of stirring, until the potatoes are infused with the spices and the gravy clings thickly to them. Finish with a sprinkle of garam masala and fresh coriander before serving hot with rice or flatbread.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/ec/Kashmiri_Dum_Aaloo.JPG",
  },
  {
    region: "North India",
    state: "Jammu & Kashmir",
    title: "Kashmiri Pulao",
    ingredients: ["Rice", "Saffron", "Milk", "Dried fruit"],
    instructions:
      "Rinse the rice under cold water until the water runs clear, then soak it for 20 to 30 minutes and drain well. Warm the milk gently and steep a pinch of saffron threads in it for at least 10 minutes until the milk turns golden and fragrant. Heat ghee in a heavy pot and add whole spices such as cinnamon, cloves, and green cardamom, letting them sizzle briefly until aromatic. Add the drained rice and sauté gently for two to three minutes, stirring carefully so the grains do not break. Pour in the saffron milk along with enough water to cook the rice, using roughly one and three-quarter cups of liquid for every cup of rice, and season with salt. Bring to a boil, then reduce the heat to low, cover tightly, and let the rice steam undisturbed for about 15 to 18 minutes until all the liquid is absorbed and the grains are tender. In a separate small pan, lightly fry chopped dried fruits and nuts in a little ghee until golden, then fold them gently into the finished rice along with a few strands of extra saffron. Let the pulao rest covered for five minutes before fluffing gently with a fork and serving.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/a7/Kashmiri_pulao_%28cropped%29.JPG",
  },
  {
    region: "North India",
    state: "Uttar Pradesh",
    title: "Lucknowi Biryani",
    ingredients: ["Meat", "Rice", "Saffron", "Whole spices"],
    instructions:
      "Marinate the meat in yogurt, ginger-garlic paste, red chili powder, and a portion of the whole spice blend for at least two hours, or overnight in the refrigerator for best results. Cook the marinated meat in a heavy pot with sliced fried onions over medium heat until it is about eighty percent done and the gravy has thickened slightly, then set aside. Rinse and soak basmati rice for 30 minutes, then boil it in salted water with whole spices until it is about seventy percent cooked, still firm at the core, and drain immediately. Spread half of the meat mixture in the base of a heavy-bottomed pot, then layer the par-boiled rice evenly on top. Repeat with the remaining meat and rice, then scatter fried onions, saffron soaked in warm milk, and a drizzle of ghee over the top layer. Seal the pot tightly with a lid, using a ring of dough around the rim if needed to trap the steam completely. Cook on very low heat, or dum, for 25 to 30 minutes, allowing the residual steam to finish cooking the rice and let the flavors of the meat infuse upward through the grains. Rest the biryani for five to ten minutes before opening the lid, then gently fold the layers together from bottom to top and serve hot.",
    photo: null,
  },
  {
    region: "North India",
    state: "Uttar Pradesh",
    title: "Tunday Kababi",
    ingredients: ["Minced meat", "Raw papaya", "Spice paste"],
    instructions:
      "Finely mince the meat, ideally using a fine mincer or food processor, so the texture becomes almost paste-like. Peel and grate a small amount of raw papaya, then mix it thoroughly into the meat to help tenderize it. Blend a spice paste from roasted gram flour, fried onions, ginger, garlic, and a mix of warm spices such as cloves, mace, and dried rose petals. Combine the spice paste with the minced meat and papaya, kneading the mixture well with your hands for several minutes until it becomes smooth and slightly sticky. Cover and refrigerate the mixture for at least 30 minutes to firm up, which makes shaping easier. Wet your palms lightly and shape the mixture into small, flat, coin-sized patties. Heat a small amount of ghee on a flat griddle over medium heat and shallow-fry the patties for two to three minutes per side until browned and cooked through, taking care not to press down so they stay tender. Serve hot, traditionally with thin rumali roti and sliced onions.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/8/88/Tunday_Kebabs.jpg",
  },
  {
    region: "North India",
    state: "Uttar Pradesh",
    title: "Petha",
    ingredients: ["Ash gourd", "Sugar syrup"],
    instructions:
      "Peel the ash gourd, remove the seeds and pith, and cut the flesh into small even cubes or rectangular pieces. Prick each piece all over with a fork or skewer so the sugar syrup can soak in fully later. Soak the pricked pieces in a lime-water solution for about two hours, which firms up the texture and keeps the pieces from turning mushy. Rinse the pieces thoroughly under running water to remove all traces of the lime solution, then blanch them in boiling water for five to seven minutes until they turn translucent at the edges. Drain the pieces and prepare a sugar syrup by dissolving sugar in water and simmering until it reaches a light, single-thread consistency. Add the blanched ash gourd pieces to the hot syrup and simmer gently for 20 to 25 minutes, occasionally spooning syrup over the top, until the pieces turn fully translucent and have absorbed the sweetness. If desired, stir in a few drops of rose water or a pinch of cardamom powder toward the end for extra fragrance. Let the petha cool completely in the syrup before draining and storing, or lightly dust with sugar for a drier finish.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Petha-from-Agra.JPG",
  },
  {
    region: "North India",
    state: "Uttarakhand",
    title: "Kafuli",
    ingredients: ["Spinach", "Fenugreek leaves", "Spices"],
    instructions:
      "Wash the spinach and fenugreek leaves thoroughly to remove any grit, then roughly chop them. Boil the leaves in a little water for about 10 minutes until fully wilted and soft. Drain the greens, reserving the cooking liquid, and mash them coarsely using a hand masher, leaving some texture. Heat a little oil or ghee in a pan and add cumin seeds along with chopped garlic and green chili, sautéing until fragrant and lightly golden. Add the mashed greens back to the pan along with a splash of the reserved cooking liquid to loosen the mixture. Stir in a spoonful of rice flour or besan mixed with water to help thicken the gravy slightly. Simmer everything together on low heat for eight to ten minutes, stirring occasionally, until the mixture is well combined and lightly thickened. Season with salt and serve hot with steamed rice.",
    photo: null,
  },
  {
    region: "North India",
    state: "Uttarakhand",
    title: "Bhatt ki Churkani",
    ingredients: ["Black soybeans", "Garlic", "Ginger"],
    instructions:
      "Soak the black soybeans in plenty of water overnight, as their tough skin needs a long soak to soften properly. Drain and rinse the soaked beans, then pressure cook them with fresh water and a pinch of salt for about eight to ten whistles until they are completely soft, since black soybeans take noticeably longer than most lentils. Once cooked, mash a small portion of the beans against the side of the pot to help naturally thicken the dish while leaving the rest whole. Heat mustard oil in a pan until it just starts to smoke lightly, then let it cool slightly before adding chopped garlic and ginger, sautéing until golden and fragrant. Add chopped onion and cook until softened, followed by turmeric and red chili powder, stirring quickly so the spices do not scorch. Pour in the cooked black soybeans along with their liquid, adjusting the consistency with extra water if needed. Simmer everything together for 10 to 12 minutes so the flavors meld, then season with salt. Finish with a final tempering of cumin seeds fried in ghee poured over the top, and serve hot with rice.",
    photo: null,
  },
  {
    region: "North India",
    state: "Uttarakhand",
    title: "Aloo ke Gutke",
    ingredients: ["Potato", "Mustard seeds", "Red chili"],
    instructions:
      "Wash and boil the potatoes whole, with the skin on, until they are just tender when pierced with a knife but still hold their shape, about 15 to 18 minutes. Drain and let the potatoes cool slightly, then peel them and cut into rough, bite-sized chunks. Heat mustard oil in a pan until it shimmers, then add mustard seeds and let them pop for a few seconds. Add dried red chilies and a pinch of asafoetida, stirring briefly until fragrant. Add the potato chunks to the pan along with turmeric and red chili powder, tossing gently so every piece is coated in the spiced oil. Increase the heat slightly and pan-fry the potatoes for 10 to 12 minutes, stirring only occasionally so the pieces have a chance to develop crisp, golden edges without breaking apart. Season with salt and a squeeze of lemon juice toward the end for brightness. Garnish with fresh coriander and serve hot as a side dish.",
    photo: null,
  },
  {
    region: "North India",
    state: "Rajasthan",
    title: "Dal Baati Churma",
    ingredients: ["Wheat dough", "Mixed lentils", "Ghee", "Jaggery"],
    instructions:
      "Knead a stiff wheat-flour dough with a little ghee, salt, and water until firm, then shape it into small round balls and let them rest for 15 minutes. Bake the baati balls in a preheated oven at around 180 degrees Celsius, or roast them over low coals if available, for 30 to 35 minutes, turning occasionally, until the outside is firm and golden-brown all over. While the baati bake, rinse a mix of lentils such as toor, chana, and moong dal, then pressure cook them with turmeric and salt until soft. Prepare a tempering of ghee, cumin seeds, asafoetida, and chopped tomatoes, then stir it into the cooked lentils and simmer for 10 minutes to blend the flavors into a rich dal. For the churma, crumble a portion of extra baked or fried wheat dough into fine crumbs, either by hand or in a food processor. Mix the crumbs with melted ghee, powdered sugar or jaggery, and a pinch of cardamom powder until it forms a slightly sticky, sweet mixture. To serve, crack open the hot baati and generously soak them in melted ghee. Plate the baati alongside the dal and a portion of churma for the classic three-part combination.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Rajasthani_Dal_Bati_Churma_-_Gurugram_-_Haryana_-_03.jpg",
  },
  {
    region: "North India",
    state: "Rajasthan",
    title: "Laal Maas",
    ingredients: ["Mutton", "Yogurt", "Mathania chili"],
    instructions:
      "Cut the mutton into medium pieces and marinate it in whisked yogurt along with ginger-garlic paste and a portion of the Mathania chili paste, letting it sit for at least an hour. Soak dried Mathania chilies in warm water for 20 minutes, then grind them into a smooth, deep-red paste. Heat ghee or mustard oil in a heavy pot and sauté sliced onions until deeply golden-brown, which builds the base flavor of the curry. Add the marinated mutton and sear it over high heat for five to seven minutes, stirring occasionally, until the outside firms up and browns lightly. Stir in the ground Mathania chili paste along with a few whole spices like cloves and black cardamom, cooking for two to three minutes until fragrant. Add enough water to just cover the meat, bring to a boil, then reduce the heat, cover, and simmer for 45 minutes to an hour, stirring occasionally, until the mutton is tender and the gravy has turned a deep, glossy red. If the gravy is too thin, uncover and simmer a little longer to reduce it to a thicker consistency. Season with salt, let it rest briefly, and serve hot with rice or roti.",
    photo: null,
  },
  {
    region: "North India",
    state: "Rajasthan",
    title: "Ker Sangri",
    ingredients: ["Dried desert beans & berries", "Mustard oil"],
    instructions:
      "Soak the dried ker berries and sangri beans separately in water overnight, changing the water once if possible, since both need thorough rehydration. Drain the soaked ker and sangri, then boil them together in fresh water with a pinch of salt for 15 to 20 minutes until tender, then drain well. Heat mustard oil in a pan until it shimmers slightly, then add cumin seeds, asafoetida, and dried red chilies, letting them sizzle for a few seconds. Add chopped onions if using, and sauté until softened and lightly golden. Stir in the boiled ker and sangri along with turmeric, red chili powder, and coriander powder, mixing well so the spices coat everything evenly. Cook uncovered over medium heat for 10 to 12 minutes, stirring occasionally, until any excess moisture evaporates and the mixture looks dry and well-roasted. Add a splash of tangy amchur powder or a squeeze of lemon toward the end for brightness, then season with salt. Serve warm or at room temperature as a tangy, textured side dish that keeps well for several days.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/ab/Ker_Sangri.jpg",
  },
  {
    region: "North India",
    state: "Delhi/NCR",
    title: "Chaat",
    ingredients: ["Fried dough/potato", "Chickpeas", "Yogurt", "Tamarind chutney"],
    instructions:
      "Prepare the base by deep-frying small pieces of dough until puffed and golden, or boiling and cubing potatoes, depending on the style of chaat you are making. Boil chickpeas separately with a little salt until tender, then drain and cool. Whisk plain yogurt with a pinch of sugar and salt until smooth and slightly runny, adjusting with a splash of milk if it is too thick. Prepare a sweet tamarind chutney by simmering tamarind pulp with jaggery and a pinch of roasted cumin until thickened, and a sharp green chutney by blending mint, coriander, and green chili with a little water. In a serving bowl or plate, layer the fried dough or boiled potato with the boiled chickpeas. Drizzle generously with the whisked yogurt, followed by both the tamarind and green chutneys. Sprinkle with chaat masala, roasted cumin powder, chopped onion, and fresh coriander for crunch and freshness. Finish with a scatter of crisp sev on top and serve immediately so the base stays crunchy against the toppings.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/00/Chaat_stand_in_mussoorie.jpg",
    isStreetFood: true,
  },
  {
    region: "North India",
    state: "Delhi/NCR",
    title: "Pani Puri (Golgappa)",
    ingredients: ["Semolina/wheat puris", "Boiled potato", "Chickpeas", "Tamarind water", "Mint-coriander water"],
    instructions:
      "Prepare small semolina or wheat puris by rolling out very thin dough, cutting into small rounds, and deep-frying them in hot oil until they puff up into hollow, crisp shells, then drain and let them cool completely. Boil potatoes until tender, then peel and mash them coarsely with boiled chickpeas, chaat masala, and a little salt to make the filling. Blend fresh mint and coriander leaves with green chili, ginger, and a little water into a smooth green mixture, then mix it into a large jug of chilled water along with tamarind pulp, black salt, roasted cumin powder, and a squeeze of lemon to make the tangy pani. Taste the pani and adjust the balance of spicy, tangy, and salty flavors until it is sharp and refreshing. Just before serving, tap a small hole in the top of each puri with your thumb to keep it from collapsing. Spoon in a little of the potato-chickpea filling, then dunk the filled puri briefly into the spiced water so it fills up. Lift it out immediately and eat it whole in one bite, since the crisp shell softens within seconds once filled. Repeat one puri at a time so each is eaten fresh and crisp rather than sitting and going soggy.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/95/Pani_Puri.JPG",
    isStreetFood: true,
  },
  {
    region: "North India",
    state: "Delhi/NCR",
    title: "Nihari",
    ingredients: ["Meat shank", "Whole spices", "Wheat flour"],
    instructions:
      "Choose a well-marbled cut of meat shank with some bone-in pieces for richness, and rinse it clean. Toast whole spices such as fennel, coriander seeds, cloves, and black cardamom in a dry pan for a minute until fragrant, then grind them coarsely. Heat oil in a large heavy pot and brown the meat shank pieces on all sides over high heat for about eight to ten minutes total. Add sliced onions and cook until they turn soft and golden, then stir in ginger-garlic paste and the ground spice mix, cooking for another two minutes until aromatic. Pour in enough hot water to fully submerge the meat, bring it to a boil, then reduce the heat to the lowest setting, cover tightly, and let it simmer very slowly for at least four to six hours, or ideally overnight, until the meat is falling-apart tender. Whisk wheat flour with a little cold water into a smooth slurry, then stir it gradually into the simmering pot to thicken the broth, cooking for another 15 to 20 minutes until it reaches a rich, glossy consistency. Skim off any excess fat that rises to the surface, or reserve it to spoon back over the top for flavor. Adjust the salt, and serve piping hot garnished with julienned ginger, chopped coriander, green chilies, and a squeeze of lime.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/2/24/Nihari.JPG",
  },
  {
    region: "West India",
    state: "Gujarat",
    title: "Dhokla",
    ingredients: ["Rice/besan batter", "Mustard seeds", "Curry leaves"],
    instructions:
      "Mix rice flour or a rice-lentil batter, or use besan for khaman-style dhokla, with yogurt and water into a thick, smooth batter, then cover and let it ferment in a warm place for six to eight hours, or overnight, until slightly airy and faintly sour-smelling. Just before steaming, whisk in a pinch of baking soda or fruit salt along with a little lemon juice, which will make the batter bubble and become light. Pour the batter immediately into a greased steaming tin, since the aeration fades quickly once the soda is added. Steam over boiling water for 15 to 20 minutes, checking doneness by inserting a toothpick into the center, which should come out clean. Let the steamed dhokla cool for a few minutes in the tin before turning it out and cutting into squares or diamonds. Heat oil in a small pan and add mustard seeds, letting them pop, then add curry leaves, green chili, and a pinch of asafoetida. Pour this hot tempering evenly over the cut dhokla pieces, along with a little sugar-water if a sweeter finish is desired. Garnish with grated coconut and chopped coriander before serving at room temperature.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/40/Gujarati_Dhokla_%28Khaman_Dhokla%29.jpg",
  },
  {
    region: "West India",
    state: "Gujarat",
    title: "Undhiyu",
    ingredients: ["Winter vegetables", "Fenugreek dumplings", "Spices"],
    instructions:
      "Prepare the fenugreek dumplings first by mixing fresh fenugreek leaves with besan, spices, and a little oil into a firm dough, shaping it into small logs, and steaming or lightly frying them until set. Wash and prepare the winter vegetables, cutting purple yams, sweet potatoes, baby potatoes, eggplant, and surti papdi beans into uniform pieces so they cook evenly. Grind a masala paste from fresh coconut, coriander, green chili, ginger, garlic, and roasted peanuts. Stuff a portion of this paste into slits cut in the eggplant and other vegetables that can hold filling. Heat oil in a large heavy pot, add mustard and cumin seeds along with a pinch of asafoetida, then layer in the vegetables starting with those that take longest to cook. Add the remaining ground paste, season with salt and a little jaggery for the traditional sweet-savory balance, and cover the pot tightly. Cook on low heat for 30 to 40 minutes, stirring gently every so often to avoid mashing the vegetables, until everything is tender. Add the steamed fenugreek dumplings during the last 10 minutes so they soak up flavor without disintegrating, then serve hot.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/5e/Undhiyu.jpg",
  },
  {
    region: "West India",
    state: "Gujarat",
    title: "Thepla",
    ingredients: ["Wheat flour", "Fenugreek leaves", "Spices"],
    instructions:
      "Combine wheat flour with finely chopped fresh fenugreek leaves, yogurt, turmeric, red chili powder, and a spoon of oil in a large bowl. Gradually add water and knead into a soft, pliable dough, similar in consistency to regular roti dough, then let it rest for 15 to 20 minutes covered with a damp cloth. Divide the dough into small balls and roll each one out thinly on a lightly floured surface into an even round. Heat a flat griddle over medium heat until hot, then place a rolled thepla on it. Cook for about a minute until small bubbles form on the surface, then flip it over. Drizzle a little oil around the edges and on top, and press gently with a spatula so it cooks evenly and develops light brown spots on both sides. Flip once or twice more as needed until fully cooked and slightly crisp at the edges, then remove from the griddle. Stack the cooked theplas and serve warm, or let them cool completely if packing them for travel, since they keep well for a few days.",
    photo: null,
  },
  {
    region: "West India",
    state: "Gujarat",
    title: "Khandvi",
    ingredients: ["Besan", "Yogurt", "Mustard seeds"],
    instructions:
      "Whisk besan with buttermilk or a mix of yogurt and water, along with turmeric, ginger paste, and salt, into a completely smooth, lump-free batter. Pour the batter into a heavy-bottomed pan and cook over medium-low heat, stirring constantly and scraping the bottom, for about 10 to 12 minutes. Test for doneness by spreading a small dab of the mixture on the back of a plate, where it is ready when it sets almost immediately and can be rolled without sticking to your finger. Working quickly while the mixture is still hot, spread thin layers onto the backs of large plates or a clean countertop using a spatula, aiming for an even, thin coating. Let the spread mixture cool for just a few minutes until it is firm enough to handle but still pliable. Cut the set sheets into strips about two inches wide, then gently roll each strip into a tight spiral. Arrange the rolled khandvi on a serving plate, then heat oil in a small pan and add mustard seeds, curry leaves, and sesame seeds, letting them sizzle before pouring the tempering over the rolls. Garnish with grated coconut and chopped coriander before serving at room temperature.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/7/7d/Khandvi%2C_Gujarati_snack.jpg",
  },
  {
    region: "West India",
    state: "Maharashtra",
    title: "Puran Poli",
    ingredients: ["Wheat dough", "Lentil-jaggery filling"],
    instructions:
      "Cook chana dal with water until completely soft, then drain any excess liquid and mash it well while still warm. Return the mashed dal to the pan with jaggery and cook over low heat, stirring constantly, until the mixture thickens into a smooth, dry paste that holds its shape, then stir in a pinch of cardamom powder and let it cool completely to form the puran filling. Knead a soft wheat dough with a little oil and water, then let it rest for at least 30 minutes covered with a damp cloth. Divide the dough into balls slightly larger than the portions of puran filling you have prepared. Flatten a dough ball into a small disc, place a ball of puran filling in the center, then gather the edges up and around the filling and pinch to seal completely. Gently flatten the stuffed ball and roll it out carefully on a lightly floured surface into a thin, even round, being careful not to let the filling break through. Heat a griddle over medium heat and cook the poli for about a minute per side, adding a little ghee around the edges, until light golden-brown spots appear on both sides. Serve warm with an extra spoon of ghee drizzled on top.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/a7/Maharashtrian_Puran_Poli.jpg",
  },
  {
    region: "West India",
    state: "Maharashtra",
    title: "Misal Pav",
    ingredients: ["Sprouted lentils", "Spicy gravy", "Bread rolls"],
    instructions:
      "Soak whole moong beans overnight, then drain and let them sprout for a day or two in a warm, covered spot until small tails appear. Boil the sprouted lentils in salted water until just tender but not mushy, then drain and set aside. Prepare the spicy rassa by grinding onion, garlic, coconut, and a blend of dried red chilies into a smooth paste, then cooking it in oil with additional spices for 10 to 12 minutes until deeply red and fragrant. Add the boiled sprouts to the rassa along with enough water to make a thin, spicy gravy, and simmer for another 10 minutes so the flavors combine. Split and lightly toast the bread rolls on a griddle with a little butter until warm and slightly crisp on the surface. To assemble, place a portion of farsan, or crunchy mixed snacks, in a bowl and ladle the hot sprouted-lentil rassa generously over it. Top with chopped raw onion, fresh coriander, and a squeeze of lime. Serve immediately alongside the toasted bread rolls so the farsan stays crunchy against the hot gravy.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/0a/MISAL_PAV.JPG",
    isStreetFood: true,
  },
  {
    region: "West India",
    state: "Maharashtra",
    title: "Vada Pav",
    ingredients: ["Potato", "Gram-flour batter", "Bread roll"],
    instructions:
      "Boil potatoes until fully tender, then drain, peel, and mash them coarsely. Heat oil in a pan and temper mustard seeds, curry leaves, chopped green chili, ginger, and garlic, then add the mashed potato along with turmeric and salt, mixing well and cooking for a few minutes until fragrant. Let the potato mixture cool slightly, then shape it into small, even balls. Whisk besan with water, a pinch of turmeric, and salt into a thick, smooth batter with a texture that coats the back of a spoon. Dip each potato ball into the batter, coating it fully, then carefully lower it into hot oil. Deep-fry the coated balls for three to four minutes, turning occasionally, until the batter turns golden-brown and crisp all over. Slice the bread rolls almost in half and spread a layer of garlic chutney and green chutney on the inside. Place a hot fried vada inside each roll and press gently to close, serving immediately while the vada is still crisp and hot.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/63/Vada_Pav.jpg",
    isStreetFood: true,
  },
  {
    region: "West India",
    state: "Maharashtra",
    title: "Pav Bhaji",
    ingredients: ["Mixed vegetables", "Butter", "Pav bhaji masala", "Bread rolls"],
    instructions:
      "Boil a mix of vegetables such as potatoes, cauliflower, carrots, peas, and capsicum together in salted water until completely soft, then drain, reserving a little of the cooking liquid. Mash the boiled vegetables coarsely with a potato masher, leaving some texture rather than making it perfectly smooth. Heat a generous amount of butter in a large flat pan and sauté finely chopped onions until soft and translucent. Add chopped tomatoes and cook until they break down into a thick, pulpy base, then stir in pav bhaji masala and red chili powder, cooking for another minute until fragrant. Add the mashed vegetables to the pan along with a splash of the reserved cooking water, and mash and stir everything together vigorously with the back of the spoon or a masher directly in the pan. Simmer the bhaji over medium heat for 15 to 20 minutes, mashing and stirring frequently, until it thickens into a smooth, well-blended mash, adjusting salt and butter to taste. Slice the bread rolls horizontally without separating them fully, then toast them on a hot griddle with butter on both cut sides until golden and slightly crisp. Serve the hot bhaji topped with a final pat of butter, chopped onion, and fresh coriander, with the buttered pav and a lime wedge on the side.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Pav_bhaji.JPG",
    isStreetFood: true,
  },
  {
    region: "West India",
    state: "Goa",
    title: "Vindaloo",
    ingredients: ["Meat", "Vinegar", "Garlic", "Chili"],
    instructions:
      "Toast dried red chilies, cumin seeds, black peppercorns, and cloves briefly in a dry pan until fragrant, then grind them with garlic and vinegar into a smooth, thick paste. Coat the meat pieces thoroughly in this vinegar-garlic-chili paste, cover, and marinate in the refrigerator for at least two hours, or ideally overnight, so the flavors penetrate deeply. Heat oil in a heavy pot and sauté sliced onions until they turn a deep golden-brown, which builds the base sweetness of the curry. Add the marinated meat along with all of its marinade, and cook over medium-high heat for five to seven minutes, stirring occasionally, until the outside of the meat is browned. Add a little water, bring to a boil, then reduce the heat, cover, and simmer for 45 minutes to an hour, or longer for tougher cuts, until the meat is tender and the gravy has thickened. Check the seasoning partway through, adjusting salt and adding a touch of sugar or extra vinegar to balance the tang and heat as needed. Uncover and simmer for a final few minutes if the gravy needs to reduce and thicken further. Let the vindaloo rest for a few minutes before serving hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e0/Chicken_Vindaloo.jpeg",
  },
  {
    region: "West India",
    state: "Goa",
    title: "Xacuti",
    ingredients: ["Coconut", "Whole spices", "Chicken/meat"],
    instructions:
      "Dry-roast a mix of whole spices, dried red chilies, and freshly grated coconut in a pan over medium heat, stirring constantly, until the coconut turns a deep golden-brown and the spices smell toasted, being careful not to burn them. Let the roasted mixture cool slightly, then grind it with a little water into a smooth, thick paste. Heat oil in a heavy pot and sauté chopped onions until soft and lightly browned. Add the ground xacuti paste to the pot along with ginger-garlic paste, and cook over medium heat for five to six minutes, stirring frequently, until the raw aroma fades and the oil begins to separate at the edges. Add the chicken or meat pieces and stir to coat them thoroughly in the roasted spice paste. Pour in enough water to bring the gravy to your desired consistency, then cover and simmer for 25 to 35 minutes, or longer for tougher meat, until the meat is fully cooked and tender. Uncover and let the gravy simmer a little longer if it needs to thicken further, stirring occasionally to prevent sticking. Season with salt, and serve hot with steamed rice or Goan bread.",
    photo: null,
  },
  {
    region: "West India",
    state: "Goa",
    title: "Sorpotel",
    ingredients: ["Pork", "Offal", "Vinegar", "Spices"],
    instructions:
      "Clean the pork and offal thoroughly, then cut into small, even cubes. Boil the meat and offal separately in water with a little salt and turmeric until just cooked through, then drain and reserve the cooking liquid. Grind a paste from dried red chilies, garlic, ginger, and a blend of warm spices such as cumin, peppercorns, and cinnamon, using vinegar instead of water to bind it. Heat oil in a heavy pot and sauté chopped onions until golden-brown. Add the ground spice paste and cook for several minutes, stirring frequently, until the raw smell disappears and the paste darkens slightly. Add the boiled meat and offal to the pot along with some of the reserved cooking liquid and additional vinegar to taste, then bring to a simmer. Cover and cook on low heat for 30 to 40 minutes, stirring occasionally, until the meat is very tender and the gravy has thickened into a rich, dark, tangy sauce. Traditionally sorpotel tastes even better the next day, so let it rest overnight if possible before reheating gently and serving with rice or bread.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/1/1c/Goa_Sorpotel.jpg",
  },
  {
    region: "South India",
    state: "Kerala",
    title: "Appam with Stew",
    ingredients: ["Fermented rice-coconut batter", "Coconut milk"],
    instructions:
      "Soak raw rice for four to six hours, then grind it with cooked rice and grated coconut into a smooth, slightly thick batter, adding a little sugar and yeast or toddy if using the traditional method. Cover the batter and let it ferment in a warm place for eight to ten hours, or overnight, until it becomes bubbly and slightly risen. Just before cooking, stir the batter gently and thin it with a little water if it has thickened too much overnight. Heat a curved appam pan over medium heat, then pour in a ladleful of batter and immediately swirl the pan in a circular motion so the batter coats the sides thinly while pooling slightly thicker in the center. Cover the pan with a lid and cook for two to three minutes until the edges turn lacy and golden-brown and the center looks soft and cooked through, with no need to flip it. For the stew, sauté sliced onions, ginger, garlic, and green chili in a little oil until softened, then add cubed vegetables or meat along with whole spices like cinnamon and cloves. Pour in thin coconut milk first and simmer until the main ingredient is nearly cooked, then add thick coconut milk at the end and warm it gently without letting it boil hard, which can cause it to split. Serve the hot appam alongside a generous ladle of the mildly spiced coconut stew.",
    photo: null,
  },
  {
    region: "South India",
    state: "Kerala",
    title: "Fish Moilee",
    ingredients: ["Fish", "Coconut milk", "Curry leaves"],
    instructions:
      "Clean the fish and cut it into pieces, then rub lightly with turmeric and salt and set aside for 15 minutes. Heat coconut oil in a wide pan and add sliced onions, cooking until soft and translucent but not browned. Add ginger, garlic, and slit green chilies, sautéing for a minute until fragrant, then stir in turmeric and a little black pepper. Pour in thin coconut milk and bring it to a gentle simmer, then slide in the fish pieces carefully so they do not break. Cook the fish gently on low heat for eight to ten minutes, spooning the liquid over the top occasionally, until it turns opaque and flakes easily with a fork. Add curry leaves and a splash of thick coconut milk toward the end, warming it through for another two to three minutes without letting the pot boil hard. Adjust the salt and add a small squeeze of lime or a splash of vinegar for a light tang. Serve warm with steamed rice or appam.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Fish_Moilee_Kerala_Style_%28aka_KeralaFish_Molly%29.JPG",
  },
  {
    region: "South India",
    state: "Kerala",
    title: "Avial",
    ingredients: ["Mixed vegetables", "Coconut", "Cumin"],
    instructions:
      "Cut a mix of vegetables such as drumstick, carrot, raw banana, yam, and beans into uniform batons about two inches long so they cook evenly. Boil the harder vegetables first in a little water with turmeric and salt, adding the quicker-cooking ones a few minutes later so everything finishes tender at roughly the same time. While the vegetables cook, grind fresh coconut with cumin seeds and a green chili into a coarse, slightly grainy paste, adding only a little water. Once the vegetables are just tender and most of the water has evaporated, stir in the coconut-cumin paste and mix gently. Simmer for another two to three minutes so the raw coconut flavor mellows slightly, without letting the vegetables overcook. Stir in a spoonful of whisked yogurt or a squeeze of raw mango for tang, if using, and remove from the heat. Drizzle generously with raw coconut oil and scatter fresh curry leaves over the top, stirring once to combine. Serve warm or at room temperature alongside rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/2/25/Aviyal.JPG",
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Sambar",
    ingredients: ["Toor dal", "Tamarind", "Vegetables"],
    instructions:
      "Rinse toor dal and pressure cook it with turmeric and a little oil until completely soft and mushy, then whisk it smooth. Soak tamarind in warm water for 15 minutes, then squeeze out and strain the pulp to get a tangy tamarind extract. Cut mixed vegetables such as drumstick, pumpkin, eggplant, and shallots into chunks, then boil them in the tamarind water with a little turmeric and salt until just tender. Stir in sambar powder and let the vegetable mixture simmer for five minutes so the raw spice smell cooks off. Add the cooked, mashed toor dal to the pot along with enough water to reach a medium-thick, pourable consistency. Simmer everything together for another 10 to 12 minutes, stirring occasionally, until the flavors meld and the vegetables are fully cooked through. Heat a little oil or ghee in a small pan and temper mustard seeds, dried red chilies, curry leaves, and a pinch of asafoetida until fragrant. Pour the tempering over the sambar and serve hot with steamed rice, idli, or dosa.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d3/Sambar._a_south_Indian_papular_dish.JPG",
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Chettinad Chicken",
    ingredients: ["Chicken", "Roasted spice blend"],
    instructions:
      "Dry-roast a mix of whole spices such as dried red chilies, coriander seeds, fennel seeds, black peppercorns, and star anise in a pan over medium heat until fragrant and lightly darkened. Let the roasted spices cool, then grind them with a small amount of grated coconut into a coarse, aromatic masala paste. Marinate cleaned chicken pieces briefly in turmeric and salt while you prepare the rest of the dish. Heat oil in a heavy pot and sauté chopped onions until deeply golden, then add ginger-garlic paste and curry leaves, cooking until fragrant. Add chopped tomatoes and cook until they soften and break down into a thick base. Stir in the ground Chettinad masala paste and cook for a few minutes over low heat, stirring frequently, until the raw aroma disappears and the oil starts to separate. Add the chicken pieces, mix well to coat them thoroughly, then cover and simmer for 20 to 25 minutes, stirring occasionally, until the chicken is cooked through and the gravy has thickened around it. Adjust salt and garnish with fresh curry leaves before serving hot with rice or dosa.",
    photo: null,
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Rasam",
    ingredients: ["Tamarind", "Tomato", "Pepper", "Cumin"],
    instructions:
      "Soak tamarind in warm water for 15 minutes, then extract the pulp by squeezing and straining, discarding the fibers. Combine the tamarind extract with chopped tomatoes, turmeric, and a little water in a pot, then bring to a simmer for about 10 minutes until the tomatoes soften. Crush black pepper and cumin seeds coarsely, either with a mortar and pestle or a rolling pin, and add them to the simmering pot along with rasam powder. If using, mash a small spoonful of cooked toor dal and its water into the pot to give the rasam a bit of body. Simmer everything together gently for another five to seven minutes, letting the flavors combine, but do not let it boil hard for too long or the aroma will dull. Heat a little ghee or oil in a small pan and temper mustard seeds, curry leaves, dried red chili, and a pinch of asafoetida until they sizzle and pop. Pour the tempering over the rasam and immediately cover the pot for a minute to trap the aroma. Garnish with fresh coriander and serve hot as a thin, tangy soup alongside rice, or sip it on its own.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/f/fa/Rasam.JPG",
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Koottu",
    ingredients: ["Chana dal/Toor dal", "Mixed vegetables", "Coconut", "Cumin"],
    instructions:
      "Cut mixed vegetables into small, even pieces and rinse chana dal or toor dal. Combine the vegetables and dal in a pot with water, turmeric, and salt, then cook, either on the stovetop or in a pressure cooker, until both the vegetables and lentils are fully soft. Meanwhile, grind fresh coconut with cumin seeds and a green chili into a smooth paste using a small amount of water. Once the vegetable-lentil mixture is cooked, stir in the ground coconut paste and mix well to combine evenly. Simmer the koottu on low heat for five to seven minutes so the coconut paste cooks through and the mixture thickens slightly. Heat a little oil in a small pan and temper mustard seeds and curry leaves until they pop and turn fragrant. Pour the tempering over the koottu and stir once to combine. Serve warm as a side dish alongside rice and sambar or rasam.",
    photo: null,
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Vadu Manga (Tamil Nadu Pickle)",
    ingredients: ["Baby mangoes (vadu manga)", "Mustard seeds", "Red chili powder", "Sesame oil", "Salt"],
    instructions:
      "Select firm, unripe baby mangoes with the stem still attached, then wash them well and pat them completely dry with a cloth, since any moisture can cause the pickle to spoil. Leave the washed mangoes out to air-dry fully for a few hours, or even a full day, until there is absolutely no surface moisture left. In a large bowl, mix red chili powder, mustard powder, and salt together thoroughly. Add the dried baby mangoes to the spice mix and toss well, using clean, dry hands to rub the coating evenly into each mango, especially around the stem. Pack the coated mangoes tightly into a clean, completely dry glass or ceramic jar. Pour sesame oil over the mangoes until they are fully submerged, which protects them from air and moisture. Seal the jar and store it in a cool, dry place, shaking or stirring gently once a day for the first week to redistribute the spices and oil. Let the pickle mature for at least two to three weeks, tasting occasionally, until the mangoes turn soft and deeply flavored before serving in small quantities alongside rice.",
    photo: null,
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Chettinad Biryani",
    ingredients: ["Seeraga samba rice", "Chicken/mutton", "Roasted spice blend", "Curd", "Fried onions"],
    instructions:
      "Dry-roast whole spices such as star anise, stone flower, fennel seeds, and dried red chilies, then grind them into a coarse, aromatic Chettinad spice blend. Marinate the meat in whisked curd, the ground spice blend, ginger-garlic paste, and salt for at least an hour. Heat oil in a heavy pot and fry sliced onions until deeply golden and crisp, then remove a portion to use as garnish later. In the same pot, add the marinated meat and cook over medium-high heat, stirring occasionally, for 15 to 20 minutes until the meat releases its juices and the mixture reduces into a thick, well-cooked masala. Wash and soak seeraga samba rice for 20 minutes, then parboil it in salted water with a few whole spices until about seventy percent cooked, and drain. Spread a layer of the parboiled rice over the cooked meat masala in the same pot, then drizzle with a little ghee and scatter some fried onions and chopped mint or coriander on top. Cover the pot tightly and cook on very low heat, or dum, for 20 to 25 minutes, allowing the rice to finish cooking in the trapped steam and absorb the flavors of the masala below. Let it rest for five minutes, then gently fluff and mix from bottom to top before serving hot, garnished with the reserved fried onions.",
    photo: null,
  },
  {
    region: "South India",
    state: "Tamil Nadu",
    title: "Chicken 65",
    ingredients: ["Chicken", "Yogurt", "Ginger-garlic paste", "Red chili powder", "Curry leaves"],
    instructions:
      "Cut boneless chicken into small, bite-sized cubes and pat them dry. In a bowl, combine the chicken with whisked yogurt, ginger-garlic paste, red chili powder, a little turmeric, and a beaten egg if using, mixing until the pieces are well coated. Sprinkle in cornflour and a little rice flour, tossing again so each piece is evenly coated in a thin batter that will help it turn crisp. Cover and marinate in the refrigerator for at least 30 minutes, or up to two hours for deeper flavor. Heat oil in a deep pan or wok until it is hot enough that a small piece of batter sizzles immediately on contact. Fry the chicken pieces in small batches for four to five minutes each, turning occasionally, until they turn deep red-brown and crisp on the outside and are fully cooked through, then drain on paper towels. In a separate pan, heat a little oil and quickly sauté curry leaves, slit green chilies, and crushed garlic until fragrant and slightly crisp. Toss the fried chicken through this tempering so every piece picks up the aroma, then serve immediately while hot and crisp.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Chicken_65_Dry.jpg",
    isStreetFood: true,
  },
  {
    region: "South India",
    state: "Karnataka",
    title: "Bisi Bele Bath",
    ingredients: ["Rice", "Lentils", "Vegetables", "Spice powder"],
    instructions:
      "Rinse rice and toor dal together, then pressure cook them with turmeric and a splash of oil until both are completely soft and slightly mushy. Meanwhile, dry-roast a mix of spices such as coriander seeds, dried red chilies, cinnamon, and cloves along with a little grated coconut, then grind them into a fine bisi bele bath powder. Cut a mix of vegetables such as carrots, beans, drumstick, and potato into small, even pieces. In a separate pot, boil the vegetables with tamarind extract and a little salt until they are just tender. Add the cooked rice-dal mixture to the pot with the vegetables, along with the ground bisi bele bath powder, and mix everything together thoroughly. Adjust the consistency with hot water so the dish becomes a thick, porridge-like one-pot meal, then simmer for another 10 minutes, stirring occasionally, so the flavors combine fully. Heat ghee in a small pan and temper mustard seeds, curry leaves, cashews, and a pinch of asafoetida until the cashews turn golden. Pour the tempering over the bisi bele bath and serve hot, ideally with a side of crisp fried papad or boondi raita.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/04/Bisi_Bele_Bath_%28Bisibelebath%29.JPG",
  },
  {
    region: "South India",
    state: "Karnataka",
    title: "Mysore Masala Dosa",
    ingredients: ["Fermented rice-lentil batter", "Red chutney", "Potato"],
    instructions:
      "Soak rice and urad dal separately for four to six hours, then grind each into a smooth batter and combine them, seasoning with salt. Cover the combined batter and let it ferment in a warm place for eight to ten hours, or overnight, until it rises and turns slightly bubbly. Boil potatoes until tender, then peel, mash coarsely, and cook them briefly with a mustard-curry leaf tempering, chopped onion, and turmeric to make the potato masala filling. Grind a red chutney from dried red chilies, garlic, and a little tamarind or tomato into a smooth, spicy paste. Heat a flat griddle over medium-high heat, then pour a ladleful of batter in the center and spread it outward in a thin, even circular motion to form a large, thin dosa. Drizzle a little oil around the edges, then spread a thin layer of the red chutney evenly across the surface of the dosa while it cooks. Once the underside turns golden and crisp, about two to three minutes, spoon a line of the potato masala along the center. Fold the dosa over the filling and slide it off the griddle, serving immediately while still crisp, alongside coconut chutney and sambar.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e5/Mysore_Masala_Dosa.jpg",
  },
  {
    region: "South India",
    state: "Andhra Pradesh",
    title: "Andhra Chicken Curry",
    ingredients: ["Chicken", "Guntur chili", "Tamarind"],
    instructions:
      "Marinate chicken pieces in turmeric, salt, and a little red chili powder while preparing the rest of the ingredients. Grind dried Guntur chilies with a little water into a fiery, deep-red chili paste, adjusting the quantity based on how spicy you want the final curry. Heat oil in a heavy pot and sauté chopped onions until they turn a deep golden-brown, which forms the flavor base. Add ginger-garlic paste and the ground Guntur chili paste, cooking for two to three minutes over medium heat until fragrant and the raw smell fades. Add chopped tomatoes and cook until they break down completely into a thick, pulpy base, about eight to ten minutes. Add the marinated chicken pieces and stir well to coat them in the masala, then cover and cook on medium-low heat for 15 to 20 minutes, stirring occasionally, until the chicken is fully cooked and tender. Stir in tamarind extract for tang, and simmer uncovered for another five minutes so the gravy thickens to your desired consistency. Garnish with fresh coriander and serve hot with steamed rice.",
    photo: null,
  },
  {
    region: "South India",
    state: "Andhra Pradesh",
    title: "Gongura Pachadi",
    ingredients: ["Gongura (sorrel) leaves", "Chilies"],
    instructions:
      "Wash the gongura leaves thoroughly and roughly chop them, discarding any thick stems. Heat a little oil in a pan and add dried red chilies along with a pinch of fenugreek seeds and cumin, roasting briefly until fragrant, then set them aside to cool. In the same pan, add the chopped gongura leaves along with a little salt and turmeric, and cook over medium heat, stirring frequently, for about 10 to 12 minutes until the leaves wilt completely and turn soft and pulpy. Let the cooked leaves cool slightly, then grind them together with the roasted red chilies and spices into a coarse, slightly chunky paste, adding very little or no water since the leaves release their own moisture. Heat a little more oil in the pan and temper mustard seeds, chopped garlic, and curry leaves until the garlic turns golden and fragrant. Add the ground gongura paste back into the pan and cook for another five minutes, stirring well, to let the tempering flavors combine into the relish. Adjust the salt, keeping in mind that gongura leaves are naturally quite sour and tangy. Serve at room temperature as a tangy side relish alongside rice and ghee, or with hot rotis.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e8/A_famous_andhra_side_dish._Gongura_paccaDi.JPG",
  },
  {
    region: "South India",
    state: "Telangana",
    title: "Hyderabadi Biryani",
    ingredients: ["Meat", "Rice", "Whole spices"],
    instructions:
      "Marinate the meat in thick yogurt, ginger-garlic paste, red chili powder, fried onions, mint, and a squeeze of lime for at least two hours, or overnight for deeper flavor. Wash and soak long-grain basmati rice for 30 minutes, then boil it in generously salted water with whole spices like bay leaf, cinnamon, and cardamom until it is about seventy percent cooked, still firm at the core, then drain. Heat a heavy-bottomed pot and spread the marinated meat evenly across the base. Layer the par-boiled rice on top of the meat in an even layer, then scatter fried onions, chopped mint, coriander, and saffron soaked in warm milk over the surface. Drizzle melted ghee over the top and seal the pot tightly with a lid, sealing the rim with a strip of dough if you want to trap the steam completely. Place the pot on a very low flame, or on a heavy griddle to diffuse the heat, and cook undisturbed for 35 to 40 minutes so the meat cooks through in the sealed steam while the rice absorbs its flavor from below. Turn off the heat and let the biryani rest, still sealed, for 10 minutes before opening. Gently mix the layers together from bottom to top just before serving, so the rice and meat combine without turning mushy, and serve hot with raita.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d1/Hyderabadi_Biryani.jpg",
  },
  {
    region: "South India",
    state: "Telangana",
    title: "Mirchi ka Salan",
    ingredients: ["Long green chilies", "Peanut-sesame gravy"],
    instructions:
      "Select long, mild green chilies, wash them, and make a slit down one side without cutting all the way through, leaving the stem intact. Lightly fry the chilies in oil for two to three minutes until they blister slightly and turn a duller green, then set them aside. Dry-roast peanuts and sesame seeds separately in a pan until they turn golden and fragrant, then let them cool and grind them together into a coarse paste with a little water. Heat oil in a pot and sauté chopped onions until golden-brown, then add ginger-garlic paste and cook until fragrant. Stir in the peanut-sesame paste along with turmeric, red chili powder, and tamarind extract, and cook over low heat for five to seven minutes, stirring frequently to prevent it from sticking or burning. Add enough water to bring the gravy to a medium consistency, then bring it to a gentle simmer. Add the fried chilies to the gravy and let them simmer together for 10 to 12 minutes until they soften further and take on the flavor of the sauce. Adjust the salt and tang with more tamarind if needed, and serve as a tangy, nutty accompaniment to biryani.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Hyderabadi_Biryani_with_Raita%2C_Mirchi_Ka_Salan_and_Salad.JPG",
  },
  {
    region: "East India",
    state: "West Bengal",
    title: "Shorshe Ilish",
    ingredients: ["Hilsa fish", "Mustard paste"],
    instructions:
      "Soak yellow and black mustard seeds together in water for about 20 minutes to soften them slightly. Grind the soaked mustard seeds with a green chili and a little salt into a smooth paste, adding just enough water to keep it from turning too watery, and let it rest briefly so the bitterness mellows. Clean the hilsa fish pieces gently, keeping them intact since hilsa is delicate and can break apart easily. Rub the fish lightly with turmeric and salt, and let it sit for 10 minutes. Heat mustard oil in a shallow pan until it just begins to shimmer, then add a pinch of nigella seeds and slit green chilies. Mix the mustard paste with a little water and pour it into the pan, letting it simmer gently for two to three minutes. Carefully slide the fish pieces into the mustard gravy in a single layer, cover, and simmer on low heat for eight to ten minutes without stirring vigorously, occasionally spooning the gravy over the top, until the fish is just cooked through. Finish with a drizzle of raw mustard oil over the top for extra pungency, and serve hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/c/cc/Shorshe_Ilish_Maach.jpg",
  },
  {
    region: "East India",
    state: "West Bengal",
    title: "Machher Jhol",
    ingredients: ["Fish", "Potato", "Tomato"],
    instructions:
      "Clean the fish pieces and rub them with turmeric and salt, then shallow-fry them briefly in mustard oil for a minute or two on each side until lightly firmed up, and set aside. In the same oil, add a pinch of nigella or cumin seeds and let them sizzle. Add chopped potatoes and sauté for a few minutes until they start to turn lightly golden at the edges. Add chopped tomatoes, turmeric, and a little chili powder, cooking until the tomatoes soften into a light base. Pour in enough water to make a thin broth, season with salt, and bring it to a boil. Simmer until the potatoes are almost tender, about 10 minutes, then gently slide the fried fish pieces back into the broth. Cook on low heat for another five to seven minutes, spooning the broth over the fish occasionally, until the potatoes are fully cooked and the fish is heated through and tender. Finish with a little extra mustard oil or a pinch of garam masala, and serve hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Bata_macher_jhol-MB03.jpg",
  },
  {
    region: "East India",
    state: "West Bengal",
    title: "Mishti Doi",
    ingredients: ["Milk", "Jaggery", "Yogurt culture"],
    instructions:
      "Pour full-fat milk into a heavy-bottomed pot and bring it to a boil, then reduce the heat and simmer for 20 to 25 minutes, stirring occasionally, until it reduces slightly and thickens. In a separate small pan, melt jaggery with a splash of water over low heat until it dissolves into a smooth syrup, then strain it to remove any impurities. Stir the jaggery syrup into the warm milk, mixing well until fully combined and the milk takes on a light caramel color. Let the sweetened milk cool until it is warm to the touch, roughly the temperature of bathwater, since milk that is too hot or too cool will not set properly. Whisk in a spoonful of live yogurt culture until evenly distributed through the milk. Pour the mixture into small earthen pots or a heatproof dish, cover loosely, and place it in a warm, undisturbed spot, such as an oven with just the light on, for six to eight hours, or until it sets into a soft, wobbly curd. Once set, refrigerate the mishti doi for at least two hours to firm up and chill fully before serving. Serve cold, straight from the pot, as a sweet, caramel-toned dessert.",
    photo: null,
  },
  {
    region: "East India",
    state: "West Bengal",
    title: "Kolkata Kathi Roll",
    ingredients: ["Wheat paratha", "Egg", "Chicken/paneer skewers", "Onion", "Chutney"],
    instructions:
      "Marinate cubes of chicken or paneer in yogurt, ginger-garlic paste, and a blend of spices for at least 30 minutes. Thread the marinated pieces onto skewers, or simply pan-sear them in a hot skillet, cooking for six to eight minutes and turning occasionally until charred at the edges and cooked through. Knead a soft wheat dough for the paratha, divide it into balls, and roll each one out into a thin round, brushing with a little oil and folding before rolling again to build flaky layers. Heat a griddle and cook the paratha on both sides with a little oil until light golden spots appear. While the paratha is still on the griddle and mostly cooked, crack a beaten egg over the top and spread it evenly, then flip the paratha so the egg cooks onto its surface and sets, about a minute. Remove the egg-coated paratha from the griddle and lay it flat on a clean surface. Place the grilled filling down the center, along with sliced onions, a squeeze of lime, and your choice of green or tamarind chutney. Roll the paratha tightly around the filling, wrap the bottom half in paper to hold it together, and serve immediately while warm.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/6/6b/Kolkata_Kathi_Roll.jpg",
    isStreetFood: true,
  },
  {
    region: "East India",
    state: "West Bengal",
    title: "Jhal Muri",
    ingredients: ["Puffed rice", "Mustard oil", "Chopped onion", "Peanuts", "Chickpeas", "Green chili"],
    instructions:
      "Place puffed rice in a large mixing bowl, checking that it is fresh and crisp before you begin. Drizzle a little mustard oil over the puffed rice and toss well so every grain is lightly coated, which gives the dish its distinctive pungent aroma. Add finely chopped onion, tomato, and green chili to the bowl. Mix in roasted peanuts and boiled chickpeas for crunch and protein. Sprinkle in chaat masala, a pinch of turmeric, and salt, tossing everything together thoroughly so the seasoning coats all the ingredients evenly. Add a squeeze of fresh lime juice and toss once more to brighten the flavors. Taste and adjust the salt, chili, or lime as needed, keeping in mind the mix should be tangy, spicy, and slightly pungent from the mustard oil. Serve immediately in a paper cone or bowl, since puffed rice loses its crispness quickly once mixed with the wet ingredients.",
    photo: null,
    isStreetFood: true,
  },
  {
    region: "East India",
    state: "Odisha",
    title: "Dalma",
    ingredients: ["Lentils", "Vegetables"],
    instructions:
      "Rinse the lentils and combine them with a mix of vegetables such as pumpkin, raw banana, and potato cut into chunks. Add turmeric, a little salt, and enough water to a pressure cooker, then cook for three to four whistles until the lentils are soft and the vegetables are tender. Once the pressure releases naturally, open the cooker and mash the mixture lightly with the back of a spoon to bring it to a thick, slightly chunky consistency. Heat ghee in a small pan and add cumin seeds, dried red chili, and a pinch of asafoetida, letting them sizzle until fragrant. If desired, add a small piece of grated coconut or ginger paste to the tempering for extra depth. Pour the tempering over the cooked dal-vegetable mixture and stir well to combine. Simmer for another five minutes on low heat so the flavors settle, adjusting the consistency with a little hot water if it has thickened too much. Serve hot with steamed rice as a comforting, everyday stew.",
    photo: null,
  },
  {
    region: "East India",
    state: "Odisha",
    title: "Pakhala Bhata",
    ingredients: ["Cooked rice", "Water"],
    instructions:
      "Cook rice as you normally would, using slightly more water than usual so the grains turn a little softer than usual. Once the rice is cooked, let it cool to room temperature. Transfer the cooled rice to a clean container and add enough water to submerge it completely, along with a small piece of dried red chili or a spoon of leftover yogurt to help kick off natural fermentation. Cover the container loosely and let it sit at room temperature overnight, or for at least eight hours, allowing the rice to soften further and develop a mild, tangy aroma. The next day, check that the rice has turned soft and the water has taken on a faintly sour smell, which signals it has fermented properly. Refrigerate the fermented rice and water for an hour or two before serving so it is properly chilled. Serve the pakhala bhata cold in a bowl with a little extra water, topped with a pinch of salt. Pair it with simple accompaniments such as fried potatoes, fried green chilies, or a piece of dried fish for a traditional, refreshing meal, especially in hot weather.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/53/Pakhala_Bhata_and_Aloo_Bhaja.jpg",
  },
  {
    region: "East India",
    state: "Bihar",
    title: "Litti Chokha",
    ingredients: ["Wheat dough", "Sattu", "Roasted vegetables"],
    instructions:
      "Mix wheat flour with a little ghee and salt, then gradually add water and knead into a firm, slightly stiff dough, and let it rest for 20 minutes. Dry-roast sattu, or roasted gram flour, and mix it with chopped onion, garlic, ginger, green chili, ajwain, mustard oil, lemon juice, and salt to make a crumbly, aromatic stuffing. Divide the rested dough into balls, flatten each one into a small disc, and place a generous portion of the sattu stuffing in the center. Gather the edges of the dough around the filling and pinch to seal tightly, then roll gently between your palms to smooth into a round ball, taking care not to let the filling escape. Bake the stuffed balls in a preheated oven at around 200 degrees Celsius for 25 to 30 minutes, turning occasionally, until the outside is firm and lightly browned, or roast them over hot coals for the traditional smoky flavor. While the litti bakes, roast eggplant, tomatoes, and potatoes directly over an open flame or under a broiler, turning occasionally, until the skins char and blister and the insides turn completely soft, about 15 to 20 minutes. Peel the charred vegetables, discard the skins, and mash the flesh together with chopped onion, garlic, green chili, mustard oil, and salt to make the smoky chokha. Crack open the hot litti, drizzle generously with ghee, and serve alongside the mashed chokha.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Des_iLitti_Chokha.jpg",
  },
  {
    region: "East India",
    state: "Bihar",
    title: "Sattu Paratha",
    ingredients: ["Wheat dough", "Sattu filling"],
    instructions:
      "Dry-roast sattu lightly in a pan for a minute to freshen its aroma, then mix it with chopped onion, green chili, ginger, ajwain, mustard oil, lemon juice, and salt to form a moist, crumbly filling. Knead a soft wheat dough with a little oil and water, then divide it into balls and let them rest for 15 minutes. Flatten a dough ball into a small disc and place a portion of the sattu filling in the center. Gather the edges of the dough over the filling and pinch to seal, then flatten the stuffed ball gently and dust it with a little flour. Carefully roll it out into a slightly thick round, applying even pressure so the filling does not break through the dough. Heat a griddle over medium heat and place the rolled paratha on it, cooking for a minute until small bubbles appear on the surface. Flip and drizzle a little ghee around the edges, then press gently with a spatula and cook both sides for another two to three minutes until golden-brown spots appear and the paratha is cooked through. Serve hot with a dollop of extra ghee, yogurt, or pickle on the side.",
    photo: null,
  },
  {
    region: "Central India",
    state: "Madhya Pradesh",
    title: "Bhopali Gosht Korma",
    ingredients: ["Meat", "Onion", "Yogurt"],
    instructions:
      "Cut the meat into medium pieces and marinate briefly with a little salt, ginger-garlic paste, and yogurt while you prepare the rest of the ingredients. Heat oil or ghee in a heavy pot and fry sliced onions until they turn a deep golden-brown, then set aside a portion for garnish and grind the rest into a smooth paste with a splash of water. Add whole spices such as cinnamon, cloves, and green cardamom to the same pot and let them sizzle briefly until fragrant. Add the marinated meat and sear it over medium-high heat for five to seven minutes, stirring occasionally, until it is browned on the outside. Stir in the fried onion paste along with red chili powder and coriander powder, mixing well to coat the meat evenly. Whisk in yogurt gradually, a spoonful at a time, stirring constantly over low heat to prevent it from splitting. Add enough water to reach your desired gravy consistency, then cover and simmer on low heat for 45 minutes to an hour, stirring occasionally, until the meat is tender and the gravy has thickened and turned rich and glossy. Garnish with the reserved fried onions and serve hot with rice or roti.",
    photo: null,
  },
  {
    region: "Central India",
    state: "Madhya Pradesh",
    title: "Poha",
    ingredients: ["Flattened rice", "Mustard seeds", "Peanuts"],
    instructions:
      "Place flattened rice, or poha, in a colander and rinse briefly under running water, then drain well and set aside to soften for a few minutes, taking care not to soak it too long or it will turn mushy. Heat oil in a pan and add mustard seeds, letting them pop, followed by cumin seeds and a pinch of asafoetida. Add chopped green chili, curry leaves, and finely chopped onion, sautéing until the onion turns soft and slightly translucent. Stir in roasted peanuts and a pinch of turmeric, mixing well so the oil turns a light yellow color. Gently add the softened poha to the pan, along with salt and a pinch of sugar, tossing carefully with a light hand so the delicate flakes do not break. Cover and cook on low heat for three to four minutes, tossing once or twice, until the poha is heated through and evenly coated with the spices. Squeeze fresh lime juice over the top and sprinkle with fresh coriander, tossing once more to combine. Serve warm, optionally topped with sev for crunch.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Poha%2C_a_snack_made_of_flattened_rice.jpg",
  },
  {
    region: "Central India",
    state: "Chhattisgarh",
    title: "Chila",
    ingredients: ["Fermented rice-lentil batter"],
    instructions:
      "Soak a mix of rice and lentils, such as urad dal or moong dal, together for four to six hours. Drain and grind the soaked rice and lentils with a little water into a smooth, pourable batter, then let it ferment for a few hours, or use it fresh with a pinch of salt if a quicker version is preferred. Season the batter with salt, chopped green chili, and finely chopped onion or coriander if desired. Heat a flat griddle over medium heat and lightly grease it with oil. Pour a ladleful of batter onto the center of the griddle and spread it outward in a circular motion with the back of the ladle to form a thin, even pancake. Drizzle a little oil around the edges and cook for two to three minutes until the underside turns golden-brown and slightly crisp. Flip carefully and cook the other side for another one to two minutes until fully set and lightly browned. Serve hot, folded or rolled, with chutney or pickle on the side.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/5d/Besan_chilla.jpg",
  },
  {
    region: "Central India",
    state: "Chhattisgarh",
    title: "Aamat",
    ingredients: ["Bamboo shoots", "Vegetables"],
    instructions:
      "Clean the bamboo shoots thoroughly and slice them thinly, then soak them in water for about 30 minutes to reduce any bitterness, changing the water once if needed. Cut the accompanying vegetables, such as potato, beans, or local greens, into bite-sized pieces. Heat a little oil in a pot and add a pinch of mustard seeds or a simple tempering, depending on the local variation. Add the sliced bamboo shoots and vegetables to the pot along with turmeric and salt. Pour in enough water to just cover the ingredients and bring it to a boil. Reduce the heat and simmer gently for 20 to 25 minutes, stirring occasionally, until the bamboo shoots turn tender and the vegetables are fully cooked. Taste and adjust the seasoning, keeping the flavor light and mildly spiced in the traditional tribal style rather than heavily spiced. Serve hot as a simple, brothy side dish alongside steamed rice.",
    photo: null,
  },
  {
    region: "Northeast India",
    state: "Assam",
    title: "Fish Tenga",
    ingredients: ["Fish", "Tomato/elephant apple"],
    instructions:
      "Clean the fish pieces and rub them lightly with turmeric and salt, then shallow-fry them briefly in a little oil for a minute or two per side until lightly firmed, and set aside. In the same pan, add a pinch of fenugreek seeds and let them sizzle for a few seconds until fragrant. Add chopped tomatoes, or sliced elephant apple if using, and cook until they soften and break down slightly, which builds the sour base of the broth. Pour in water and bring it to a gentle boil, seasoning with salt and a little turmeric. Add slit green chilies to the broth for gentle heat. Carefully slide the fried fish pieces into the simmering broth and cook on low heat for eight to ten minutes, without stirring too much, until the fish is cooked through and tender. Taste the broth and adjust the sourness by adding a little more tomato or elephant apple if it needs more tang. Serve hot as a light, sour broth alongside steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/5/54/Masor_Tenga.jpg",
  },
  {
    region: "Northeast India",
    state: "Assam",
    title: "Khar",
    ingredients: ["Raw papaya/vegetables", "Alkaline ash-water"],
    instructions:
      "Prepare the alkaline ash-water by filtering water through dried banana peel or bamboo ash if you have access to it, or use a store-bought khar substitute, straining it until clear. Peel and cut raw papaya or other chosen vegetables into medium chunks. Heat a little oil in a pot and add a simple tempering of mustard seeds or a pinch of ginger and garlic, sautéing briefly until fragrant. Add the chopped vegetables to the pot and stir to coat them in the oil. Pour in the alkaline khar water along with a little plain water to help the vegetables cook through, and season with salt. Bring to a boil, then reduce the heat and simmer for 15 to 20 minutes, stirring occasionally, until the vegetables turn very soft and slightly break down, which is characteristic of this dish. Taste and adjust the seasoning, keeping in mind the khar water itself lends a distinctive earthy, mildly alkaline flavor that should remain noticeable but not overwhelming. Serve warm as a traditional first course, often eaten before the rest of an Assamese meal.",
    photo: null,
  },
  {
    region: "Northeast India",
    state: "Manipur",
    title: "Eromba",
    ingredients: ["Boiled vegetables", "Fermented fish", "Chili"],
    instructions:
      "Boil a mix of vegetables, such as potato, beans, and local greens, in water with a pinch of salt until completely soft. Drain the vegetables, reserving a little of the cooking water, and mash them coarsely with a spoon or masher, leaving some texture. Roast a piece of fermented fish, or ngari, directly over a flame or in a dry pan for a minute or two on each side until it becomes fragrant and slightly charred. Crush the roasted fermented fish into small pieces or a rough paste using a mortar and pestle. Roast a few dried or fresh chilies directly over the flame as well, until they blister and soften, then crush them along with the fermented fish. Combine the mashed vegetables with the crushed fermented fish and chili, mixing thoroughly by hand or with a spoon, adding a splash of the reserved cooking water if the mixture is too dry. Adjust the salt, keeping in mind that the fermented fish already carries a strong salty, pungent flavor. Serve at room temperature as a chunky, pungent side dish alongside steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/ae/Ingredients_for_making_traditional_Meitei_food%2C_Eromba_%28alias_Iromba%2C_Eronba%2C_Ironba%29_-_Classical_Meitei_cuisine_of_Kangleipak.jpg",
  },
  {
    region: "Northeast India",
    state: "Manipur",
    title: "Chak-hao Kheer",
    ingredients: ["Black rice", "Milk", "Sugar"],
    instructions:
      "Rinse the black rice a couple of times, then soak it in water for at least two hours, or ideally overnight, since the tough outer bran layer takes time to soften. Drain the soaked rice and combine it with milk in a heavy-bottomed pot, bringing it to a gentle boil. Reduce the heat to low and simmer the rice in the milk for 40 to 45 minutes, stirring frequently to prevent it from sticking or scorching on the bottom, until the grains soften and the milk thickens. As it cooks, the mixture will gradually take on a deep purple hue naturally released from the black rice. Add sugar once the rice is mostly tender, stirring well until it dissolves completely, then continue simmering for another 10 to 15 minutes until the kheer reaches a thick, creamy, pudding-like consistency. If desired, stir in a pinch of cardamom powder or a few chopped nuts for added flavor and texture near the end of cooking. Remove from the heat and let it cool slightly, since the kheer will continue to thicken as it cools. Serve warm or chilled, depending on preference.",
    photo: null,
  },
  {
    region: "Northeast India",
    state: "Nagaland",
    title: "Smoked Pork with Bamboo Shoot",
    ingredients: ["Smoked pork", "Fermented bamboo shoot"],
    instructions:
      "Cut the smoked pork into bite-sized pieces, checking that any tough or overly charred bits are trimmed away. Soak the fermented bamboo shoot briefly in water and drain, which softens its texture and tempers its sharp aroma slightly. Heat a little oil in a heavy pot and add chopped garlic, ginger, and dried red chilies, sautéing until fragrant. Add the smoked pork pieces and stir-fry for a few minutes so they pick up flavor from the aromatics and release some of their smoky fat. Add the fermented bamboo shoot to the pot along with a little water, stirring to combine everything evenly. Cover and simmer on low heat for 25 to 30 minutes, stirring occasionally, until the pork is tender and the bamboo shoot has softened and absorbed the smoky, spicy flavors of the pot. Check the seasoning, adding salt carefully since both the smoked pork and fermented bamboo shoot can already be quite salty and pungent. Serve hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/e/e7/Naga_style_smoked_Pork_ribs_with_bamboo_shoots_and_rice.jpg",
  },
  {
    region: "Northeast India",
    state: "Nagaland",
    title: "Axone",
    ingredients: ["Fermented soybean", "Pork/vegetables"],
    instructions:
      "Cut pork into bite-sized pieces, or prepare a mix of vegetables if making the vegetarian version. Heat a little oil in a pan and add chopped garlic, ginger, and dried red chilies, sautéing until fragrant. Add the pork, or vegetables, and stir-fry over medium-high heat for several minutes until lightly browned or softened. Crumble the fermented soybean, or axone, directly into the pan, mashing it slightly with the back of a spoon to help it distribute evenly through the dish. Stir everything together well, letting the pungent aroma of the fermented soybean bloom as it heats through for a couple of minutes. Add a little water to help everything cook together, then cover and simmer on low heat for 20 to 25 minutes, or longer if using pork, until the meat is tender and the flavors have melded. Taste and adjust the salt carefully, since fermented soybean is naturally salty and intensely flavored. Serve hot with steamed rice, being mindful that the aroma is strong and distinctive even after cooking.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/4a/Naga_Smoked_Pork_with_Axone_%28Fermented_Soyabeans%29.jpg",
  },
  {
    region: "Northeast India",
    state: "Meghalaya",
    title: "Jadoh",
    ingredients: ["Rice", "Pork", "Local spices"],
    instructions:
      "Rinse the rice and set it aside while you prepare the pork. Cut the pork into small pieces, including a little fat if available, since the rendered fat is part of what flavors the rice. Heat a heavy pot and cook the pork pieces over medium heat, stirring occasionally, until they release their fat and turn lightly browned, about eight to ten minutes. Add chopped onion, ginger, and garlic to the pot, sautéing until softened and fragrant in the rendered pork fat. Stir in local spices and a small amount of turmeric, along with a little pork blood if using the traditional preparation, mixing well to coat the meat. Add the rinsed rice to the pot and stir so the grains get coated in the flavorful fat and spices. Pour in the appropriate amount of water for the rice, season with salt, then cover and cook on low heat for about 20 minutes, without stirring, until the rice is tender and has absorbed all the liquid and flavor. Let it rest covered for five minutes, then fluff gently and serve hot as a smoky, savory one-pot rice dish.",
    photo: null,
  },
  {
    region: "Northeast India",
    state: "Sikkim",
    title: "Momos",
    ingredients: ["Wheat wrappers", "Meat/vegetable filling"],
    instructions:
      "Knead a simple dough from wheat flour, water, and a pinch of salt until smooth, then cover and let it rest for 20 to 30 minutes. Prepare the filling by finely chopping or mincing your choice of meat or vegetables, then mix with grated ginger, garlic, chopped spring onion, a little soy sauce, and salt. Divide the rested dough into small balls and roll each one out into a thin, round wrapper, keeping the edges slightly thinner than the center. Place a small spoonful of filling in the center of each wrapper. Gather the edges of the wrapper up around the filling and pleat them together at the top, pinching firmly to seal so the filling does not leak out during steaming. Lightly grease a steamer basket or line it with cabbage leaves to prevent sticking, then arrange the momos with space between them. Steam over boiling water for 12 to 15 minutes until the wrappers turn slightly translucent and the filling is fully cooked through. Serve hot immediately with a spicy tomato-chili chutney on the side.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/36/Momo101.jpg",
    isStreetFood: true,
  },
  {
    region: "Northeast India",
    state: "Sikkim",
    title: "Thukpa",
    ingredients: ["Noodles", "Broth", "Vegetables", "Meat"],
    instructions:
      "Prepare a broth by simmering meat bones or a vegetable stock base with garlic, ginger, and a few whole spices for at least 30 minutes to build a flavorful base. Strain the broth if needed, then return it to the pot and bring it back to a simmer. Heat a little oil in a separate pan and sauté chopped garlic, ginger, and sliced vegetables such as carrot, cabbage, and bell pepper until just softened. Add these sautéed vegetables to the simmering broth along with a splash of soy sauce and a pinch of chili powder for depth. If using meat, add thin slices to the broth at this stage and let them cook through, about five to seven minutes. Cook the noodles separately in boiling water according to their type until just tender, then drain. Divide the cooked noodles among serving bowls and ladle the hot broth with vegetables and meat over the top. Garnish with chopped spring onion and fresh coriander, and serve immediately while piping hot.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg",
  },
  {
    region: "Union Territory",
    state: "Puducherry",
    title: "Meen Kuzhambu",
    ingredients: ["Fish", "Tamarind", "Coconut"],
    instructions:
      "Soak tamarind in warm water for 15 minutes, then squeeze and strain to get a tangy extract. Clean the fish pieces and rub them lightly with turmeric and salt, setting them aside while you prepare the gravy base. Heat oil in a clay pot or heavy pan and add mustard seeds and fenugreek seeds, letting them sizzle briefly. Add chopped shallots, garlic, and curry leaves, sautéing until the shallots turn soft and lightly golden. Stir in chopped tomatoes and cook until they soften, then add sambar powder or a mix of chili and coriander powder, along with a little grated coconut if using, cooking for a few minutes until fragrant. Pour in the tamarind extract along with enough water to reach a medium gravy consistency, then bring it to a boil and let it simmer for 10 minutes so the raw tamarind smell cooks off. Gently slide the fish pieces into the simmering gravy and cook on low heat for eight to ten minutes, without stirring too vigorously, until the fish is cooked through and the gravy has thickened slightly. Let the curry rest for a few minutes off the heat, since the flavor deepens as it sits, and serve hot with steamed rice.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d0/Meen_Khuzambu_%28South_India_Fish_gravy%29.jpg",
  },
  {
    region: "Union Territory",
    state: "Ladakh",
    title: "Thukpa (Ladakhi style) / Skyu",
    ingredients: ["Wheat", "Barley", "Vegetables"],
    instructions:
      "Knead a firm dough from wheat flour and water, then let it rest for 15 to 20 minutes so it becomes easier to shape. For skyu, pinch off small pieces of the rested dough and press each one between your thumb and forefinger to form little thumb-shaped or shell-shaped pieces; for noodle-style thukpa, roll and cut the dough into strips instead. Heat a little oil in a heavy pot and sauté chopped garlic, ginger, and onion until fragrant and lightly softened. Add sliced vegetables such as carrot, turnip, and potato, along with cubed meat if using, and stir-fry for a few minutes. Pour in water or stock to cover the ingredients generously, season with salt, and bring to a boil. Simmer for about 15 minutes until the vegetables and meat are partly cooked, then add the shaped dough pieces or noodles directly into the simmering broth. Cook for another 10 to 12 minutes, stirring gently now and then, until the dough pieces turn tender and slightly chewy and the meat, if used, is fully cooked. Adjust the seasoning and serve hot in bowls, garnished with chopped coriander if available, to warm up against the high-altitude cold.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg",
  },
  {
    region: "Union Territory",
    state: "Andaman & Nicobar",
    title: "Grilled Reef Fish",
    ingredients: ["Fresh reef fish", "Minimal seasoning"],
    instructions:
      "Clean the reef fish thoroughly, scaling and gutting it if it is whole, then pat it completely dry with paper towels. Make a few shallow diagonal cuts on both sides of the fish so the seasoning and heat penetrate evenly. Rub the fish lightly with salt, a little black pepper, and a touch of oil, keeping the seasoning minimal so the natural sweetness of the fish remains the star of the dish. If desired, tuck a few slices of garlic, lime, or fresh herbs into the slits or the cavity for subtle extra aroma. Let the fish rest for 15 to 20 minutes at room temperature so the seasoning settles in before cooking. Prepare an open flame or hot grill and lightly oil the grates to prevent sticking. Grill the fish for four to six minutes per side, depending on its size, turning carefully once the skin releases easily from the grates, until the flesh turns opaque and flakes easily with a fork. Serve immediately with a wedge of lime, letting the smoky char and clean flavor of the fish speak for itself.",
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
