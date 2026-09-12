# India: State-wise Ingredients, Spices, Dishes, Cooking Instructions, Owner, Timestamps & Photos

Reference content for **kalabhavans.com** — a community recipe hub where visitors can browse regional dishes by state/country/ingredient, follow cooking instructions, rate and comment on dishes, and sign up to submit and share their own recipes (photo required on submission).

Cooking instructions below are concise, original method summaries (technique-level, not verbatim from any source) meant as a starting point for full recipe pages — quantities, timings, and step-by-step detail should be fleshed out per dish before publishing.

## v1.4 note — the site is now global; this doc is the original India-phase research

This document was written during the site's first phase, when Kalabhavans was an India-only catalog. After thinking it over, the site owner decided to open the whole site up to the world — *"there is no location constraints [on the web]... let us help the whole world collaborate and enjoy all the recipes/cuisines across the culture without any boundaries."* Everything below is still accurate as India content and hasn't been rewritten, but a few things have changed since it was written:

- The catalog has grown from the ~70 India dishes tabled below to **77 India dishes** (8 more were added directly to the codebase: Koottu, a Tamil Nadu-style mango pickle, Chettinad Biryani, and Chicken 65 for Tamil Nadu specifically, plus more street food — Pani Puri/Golgappa, Pav Bhaji, Kolkata Kathi Roll, Jhal Muri) **plus 50 dishes across 24 other countries** on every populated continent (China, Japan, Thailand, Vietnam, South Korea, Indonesia, Sri Lanka, Nepal, Lebanon, Turkey, Italy, France, Spain, Greece, UK, Morocco, Ethiopia, Nigeria, Egypt, USA, Mexico, Brazil, Peru, Australia) — **127 dishes across 25 countries in total.**
- Every recipe now also carries a `country`, a server-derived `continent`, a `diet` classification (vegetarian/vegan/non_vegetarian/eggetarian), and an `isStreetFood` flag, supporting faceted search by continent + country + region + diet + difficulty + street-food.
- The mission statement and disclaimer below (in their original, India-only wording) have been superseded by the global versions further down this doc, which match what's actually live on the site today (`app/page.tsx`, `app/about/page.tsx`, `components/Footer.tsx`, `app/legal/disclaimer/page.tsx`).
- The 8 new India dishes and all 50 world dishes live directly in code (`prisma/world-dishes-data.ts` and the additions to `prisma/seed-data.ts`), not in new rows in the tables below — this doc wasn't re-run as a research pass for them since the same photo-verification caveat and Owner/timestamp conventions established here already carried over directly into the code.
- For the current full picture — architecture, all v1.4 changes, MVP status, roadmap — see the companion doc `kalabhavans-website-plan.md` (now at v1.4).

Everything from here down is the original India-only research, kept as-is for reference.

## Ownership model

Every recipe on the site has an **Owner**:

- The **77 India seed dishes** (69 in the tables below, plus 8 added later directly to the codebase — see the v1.4 note above) are tagged **Owner: Internet** — they were compiled from general/public information on the internet as a starting catalog, not submitted by any member and not original to Kalabhavans (see the disclaimer below, superseded by the global version further down this doc).
- When a **registered member submits their own recipe**, the site automatically sets that member as the **Owner** (their account/display name), so every user-submitted recipe is clearly attributed to the person who shared it — distinct from the seed catalog.

## Timestamps

Every recipe also carries **Original Date/Time** (when it was first added to the catalog) and **Updated Date/Time** (when it was last edited). All dishes in the seed catalog — the 69 tabled below plus the 8 India additions and 50 world dishes added later — were compiled and entered on **12/09/2026 at 00:47** (America/Chicago), shown as both Original and Updated since none have been edited since creation. Format is **DD/MM/CCYY** for date and **HH:MM** (24-hour) for time throughout. On the live site, both timestamps are set/updated automatically by the system (Original Date/Time on creation, Updated Date/Time on every edit) — not manually entered — and are displayed to each viewer in *their own* local timezone.

## ⚠️ Important caveat on the photo links below

These are **candidate placeholder photos only, not verified or production-ready**. They were sourced from Wikimedia Commons (public domain / Creative Commons licensed) by an automated search, but this session's sandbox blocks direct network access to wikipedia.org/wikimedia.org, so the exact image URLs were *computed* from confirmed file titles rather than *loaded and click-checked*. Before using any of these on the live site:

1. Open each URL in a browser and confirm it actually loads the correct image (a few, like URLs with unusual punctuation in the filename, are more likely to be malformed — flagged below).
2. Visit the linked Commons file page and confirm the exact license (CC0, CC-BY, or CC-BY-SA) — CC-BY and CC-BY-SA both require attribution credit near the image; CC0/public domain does not.
3. Treat all of these as **temporary development placeholders**. For the real launched site, replace with the business's own original food photography — that's both more authentic/on-brand and removes any licensing question entirely.

**Coverage for the 69 dishes tabled below: photos found for 47; 22 are marked "Not found"** (no reliably free-licensed photo exists for that specific dish) and will need either a commissioned/original photo or a stock photo sourced individually later. The 8 India dishes and 50 world dishes added afterward directly to the codebase all have `photo: null` (same reasoning — the research pass judged a wrong/broken link worse than the site's placeholder image) — see `kalabhavans-website-plan.md` v1.4 section 0 and `DEPLOYMENT.md`'s pre-launch checklist for the current, accurate photo-coverage status across the full 127-dish catalog.

## North India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Punjab | Sarson da Saag + Makki di Roti | Internet | 12/09/2026 | 00:47 | Mustard greens, spinach, ginger, green chili, maize flour, ghee | Boil mustard greens and spinach with ginger and chili until soft, mash, and simmer with a ghee-garlic tempering until thick. Serve with maize-flour flatbreads cooked on a hot griddle, finished with ghee. | [Sarson da Saag](https://upload.wikimedia.org/wikipedia/commons/5/52/Sarson-Ka-Saag.jpg) / [Makki di Roti](https://upload.wikimedia.org/wikipedia/commons/4/49/Makki_Di_Roti.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Punjab | Butter Chicken | Internet | 12/09/2026 | 00:47 | Chicken, yogurt, tomato, butter, cream, garam masala, kasuri methi | Marinate chicken in yogurt and spices, then grill or pan-sear until charred. Simmer in a tomato-butter-cream gravy until the chicken is coated and tender. | [Photo](https://upload.wikimedia.org/wikipedia/commons/9/97/Butter_chicken_with_rumali_roti.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Punjab | Amritsari Kulcha | Internet | 12/09/2026 | 00:47 | Maida, potato, spices, butter | Knead a dough, stuff with spiced mashed potato, roll out, and cook in a tandoor or hot skillet until puffed and golden; brush with butter. | [Photo](https://upload.wikimedia.org/wikipedia/commons/b/b2/Amritsari_Kulcha.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Haryana | Bajre ki Khichdi | Internet | 12/09/2026 | 00:47 | Pearl millet (bajra), moong dal, turmeric, ghee | Cook millet with split moong dal, turmeric, and salt until soft and porridge-like, then finish with a ghee-cumin tempering. | Not found | 12/09/2026 | 00:47 |
| Haryana | Kadhi Pakora | Internet | 12/09/2026 | 00:47 | Besan, yogurt, mustard seeds, curry leaves | Fry gram-flour fritters, then simmer in a tangy yogurt-besan gravy tempered with mustard seeds and curry leaves until thickened. | [Photo](https://upload.wikimedia.org/wikipedia/commons/6/67/Kadhi_Pakora.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Himachal Pradesh | Dham | Internet | 12/09/2026 | 00:47 | Rajma, black chana, rice, Himachali spice blend | Slow-cook rajma, black chana, and rice-based sides separately with local spice blends, then serve together as a festive thali. | [Photo](https://upload.wikimedia.org/wikipedia/commons/6/6a/Kangri_Dham.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Himachal Pradesh | Siddu | Internet | 12/09/2026 | 00:47 | Wheat flour, yeast, poppy seed/nut filling | Prepare a yeasted wheat dough, stuff with a nutty filling, shape into balls, and steam until cooked through; serve with ghee or chutney. | [Photo](https://upload.wikimedia.org/wikipedia/commons/9/93/Siddu.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Himachal Pradesh | Chana Madra | Internet | 12/09/2026 | 00:47 | Chickpeas, yogurt, whole spices, ghee | Simmer boiled chickpeas in a yogurt-based gravy flavored with whole spices, finished with ghee. | Not found | 12/09/2026 | 00:47 |
| Jammu & Kashmir | Rogan Josh | Internet | 12/09/2026 | 00:47 | Lamb, yogurt, Kashmiri red chili, fennel | Sear lamb, then slow-cook in a yogurt gravy flavored with Kashmiri red chili and fennel until deeply colored and tender. | [Photo](https://upload.wikimedia.org/wikipedia/commons/4/43/Mutton_rogan_josh.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Jammu & Kashmir | Yakhni | Internet | 12/09/2026 | 00:47 | Meat, yogurt, whole spices | Simmer meat in a yogurt-based broth with whole spices until tender and mildly tangy. | Not found | 12/09/2026 | 00:47 |
| Jammu & Kashmir | Dum Aloo | Internet | 12/09/2026 | 00:47 | Baby potatoes, yogurt/tomato gravy, spices | Fry baby potatoes, then slow-cook (dum) in a spiced gravy until infused with flavor. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/ec/Kashmiri_Dum_Aaloo.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Jammu & Kashmir | Kashmiri Pulao | Internet | 12/09/2026 | 00:47 | Rice, saffron, milk, dried fruit | Sauté rice briefly, then cook with saffron-infused milk, dried fruits, and mild whole spices until fluffy. | [Photo](https://upload.wikimedia.org/wikipedia/commons/a/a7/Kashmiri_pulao_(cropped).JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Uttar Pradesh | Lucknowi Biryani | Internet | 12/09/2026 | 00:47 | Meat, rice, saffron, whole spices | Layer partially cooked spiced meat and par-boiled rice, seal the pot, and cook on low heat (dum) so flavors and aroma infuse the rice. | Not found | 12/09/2026 | 00:47 |
| Uttar Pradesh | Tunday Kababi | Internet | 12/09/2026 | 00:47 | Minced meat, raw papaya, spice paste | Blend minced meat with a spice paste and raw papaya for tenderness, shape into small patties, and shallow-fry on a griddle. | [Photo](https://upload.wikimedia.org/wikipedia/commons/8/88/Tunday_Kebabs.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Uttar Pradesh | Petha | Internet | 12/09/2026 | 00:47 | Ash gourd, sugar syrup | Boil ash gourd cubes in a sugar syrup with flavorings until translucent and candied. | [Photo](https://upload.wikimedia.org/wikipedia/commons/b/b4/Petha-from-Agra.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Uttarakhand | Kafuli | Internet | 12/09/2026 | 00:47 | Spinach, fenugreek leaves, spices | Cook and mash leafy greens, then simmer with a mild spiced gravy. | Not found | 12/09/2026 | 00:47 |
| Uttarakhand | Bhatt ki Churkani | Internet | 12/09/2026 | 00:47 | Black soybeans, garlic, ginger | Cook black soybeans until soft, then temper with garlic, ginger, and local spices. | Not found | 12/09/2026 | 00:47 |
| Uttarakhand | Aloo ke Gutke | Internet | 12/09/2026 | 00:47 | Potato, mustard seeds, red chili | Boil potato chunks, then pan-fry with mustard seeds, red chili, and turmeric until crisp-edged. | Not found | 12/09/2026 | 00:47 |
| Rajasthan | Dal Baati Churma | Internet | 12/09/2026 | 00:47 | Wheat dough, mixed lentils, ghee, jaggery | Bake wheat-flour dough balls until crusty, serve with spiced mixed-lentil dal, and crumble sweetened wheat (churma) alongside. | [Photo](https://upload.wikimedia.org/wikipedia/commons/9/9c/Rajasthani_Dal_Bati_Churma_-_Gurugram_-_Haryana_-_03.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Rajasthan | Laal Maas | Internet | 12/09/2026 | 00:47 | Mutton, yogurt, Mathania chili | Marinate mutton in yogurt and chili, then slow-cook until the gravy turns deep red and the meat is tender. | Not found | 12/09/2026 | 00:47 |
| Rajasthan | Ker Sangri | Internet | 12/09/2026 | 00:47 | Dried desert beans & berries, mustard oil | Soak and cook the dried beans and berries, then stir-fry with mustard oil and regional spices. | [Photo](https://upload.wikimedia.org/wikipedia/commons/a/ab/Ker_Sangri.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Delhi/NCR | Chaat | Internet | 12/09/2026 | 00:47 | Fried dough/potato, chickpeas, yogurt, tamarind chutney | Combine fried dough or boiled potatoes with chickpeas, yogurt, and chutneys for a tangy, layered snack. | [Photo](https://upload.wikimedia.org/wikipedia/commons/0/00/Chaat_stand_in_mussoorie.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Delhi/NCR | Nihari | Internet | 12/09/2026 | 00:47 | Meat shank, whole spices, wheat flour | Slow-cook meat shank overnight with whole spices and a wheat-flour thickener until meltingly tender. | [Photo](https://upload.wikimedia.org/wikipedia/commons/2/24/Nihari.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |

## West India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Gujarat | Dhokla | Internet | 12/09/2026 | 00:47 | Rice/besan batter, mustard seeds, curry leaves | Ferment the batter, steam until spongy, then top with a mustard-curry leaf tempering. | [Photo](https://upload.wikimedia.org/wikipedia/commons/4/40/Gujarati_Dhokla_(Khaman_Dhokla).jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Gujarat | Undhiyu | Internet | 12/09/2026 | 00:47 | Winter vegetables, fenugreek dumplings, spices | Slow-cook a mix of vegetables and dumplings together with Gujarati spices until melded. | [Photo](https://upload.wikimedia.org/wikipedia/commons/5/5e/Undhiyu.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Gujarat | Thepla | Internet | 12/09/2026 | 00:47 | Wheat flour, fenugreek leaves, spices | Knead spiced dough with fenugreek leaves, roll thin, and cook on a griddle with a little oil. | Not found | 12/09/2026 | 00:47 |
| Gujarat | Khandvi | Internet | 12/09/2026 | 00:47 | Besan, yogurt, mustard seeds | Cook a seasoned besan-yogurt batter until thick, spread thin, roll once cooled, and top with a tempering. | [Photo](https://upload.wikimedia.org/wikipedia/commons/7/7d/Khandvi,_Gujarati_snack.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Maharashtra | Puran Poli | Internet | 12/09/2026 | 00:47 | Wheat dough, lentil-jaggery filling | Stuff a sweet lentil-jaggery filling inside a wheat dough, roll flat, and cook on a griddle with ghee. | [Photo](https://upload.wikimedia.org/wikipedia/commons/a/a7/Maharashtrian_Puran_Poli.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Maharashtra | Misal Pav | Internet | 12/09/2026 | 00:47 | Sprouted lentils, spicy gravy, bread rolls | Top sprouted-lentil curry with spicy gravy (rassa), farsan, and onions; serve with soft bread rolls. | [Photo](https://upload.wikimedia.org/wikipedia/commons/0/0a/MISAL_PAV.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Maharashtra | Vada Pav | Internet | 12/09/2026 | 00:47 | Potato, gram-flour batter, bread roll | Deep-fry a spiced mashed-potato ball in gram-flour batter and serve inside a bread roll with chutneys. | [Photo](https://upload.wikimedia.org/wikipedia/commons/6/63/Vada_Pav.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Goa | Vindaloo | Internet | 12/09/2026 | 00:47 | Meat, vinegar, garlic, chili | Marinate meat in a vinegar-garlic-chili paste and slow-cook until tender and tangy-spicy. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/e0/Chicken_Vindaloo.jpeg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Goa | Xacuti | Internet | 12/09/2026 | 00:47 | Coconut, whole spices, chicken/meat | Roast and grind coconut with whole spices, then simmer with meat until the gravy thickens. | Not found | 12/09/2026 | 00:47 |
| Goa | Sorpotel | Internet | 12/09/2026 | 00:47 | Pork, offal, vinegar, spices | Cook pork and offal with vinegar, garlic, and a blend of spices until rich and tangy. | [Photo](https://upload.wikimedia.org/wikipedia/commons/1/1c/Goa_Sorpotel.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |

## South India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Kerala | Appam with Stew | Internet | 12/09/2026 | 00:47 | Fermented rice-coconut batter, coconut milk | Ferment the batter, cook in a curved pan for lacy edges, and pair with a mildly spiced coconut-milk stew. | Not found | 12/09/2026 | 00:47 |
| Kerala | Fish Moilee | Internet | 12/09/2026 | 00:47 | Fish, coconut milk, curry leaves | Simmer fish gently in a coconut-milk gravy flavored with curry leaves, ginger, and green chili. | [Photo](https://upload.wikimedia.org/wikipedia/commons/9/9e/Fish_Moilee_Kerala_Style_(aka_KeralaFish_Molly).JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Kerala | Avial | Internet | 12/09/2026 | 00:47 | Mixed vegetables, coconut, cumin | Cook mixed vegetables with a coconut-cumin paste, finished with coconut oil and curry leaves. | [Photo](https://upload.wikimedia.org/wikipedia/commons/2/25/Aviyal.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Tamil Nadu | Sambar | Internet | 12/09/2026 | 00:47 | Toor dal, tamarind, vegetables | Cook lentils with tamarind, vegetables, and sambar powder into a tangy, mildly spiced stew. | [Photo](https://upload.wikimedia.org/wikipedia/commons/d/d3/Sambar._a_south_Indian_papular_dish.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Tamil Nadu | Chettinad Chicken | Internet | 12/09/2026 | 00:47 | Chicken, roasted spice blend | Roast and grind a spice blend, then cook chicken in the masala until rich and aromatic. | Not found | 12/09/2026 | 00:47 |
| Tamil Nadu | Rasam | Internet | 12/09/2026 | 00:47 | Tamarind, tomato, pepper, cumin | Simmer tamarind extract with tomatoes, pepper, cumin, and lentil water into a thin, tangy soup. | [Photo](https://upload.wikimedia.org/wikipedia/commons/f/fa/Rasam.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Karnataka | Bisi Bele Bath | Internet | 12/09/2026 | 00:47 | Rice, lentils, vegetables, spice powder | Cook rice and lentils with vegetables and a spiced powder into a one-pot dish. | [Photo](https://upload.wikimedia.org/wikipedia/commons/0/04/Bisi_Bele_Bath_(Bisibelebath).JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Karnataka | Mysore Masala Dosa | Internet | 12/09/2026 | 00:47 | Fermented rice-lentil batter, red chutney, potato | Spread fermented batter thin on a griddle and fill with a spicy red chutney and potato masala. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/e5/Mysore_Masala_Dosa.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Andhra Pradesh | Andhra Chicken Curry | Internet | 12/09/2026 | 00:47 | Chicken, Guntur chili, tamarind | Cook chicken in a fiery chili-based gravy with onions and tamarind for tang. | Not found | 12/09/2026 | 00:47 |
| Andhra Pradesh | Gongura Pachadi | Internet | 12/09/2026 | 00:47 | Gongura (sorrel) leaves, chilies | Cook sour gongura leaves down with chilies and spices into a tangy relish. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/e8/A_famous_andhra_side_dish._Gongura_paccaDi.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Telangana | Hyderabadi Biryani | Internet | 12/09/2026 | 00:47 | Meat, rice, whole spices | Marinate meat, layer with par-cooked rice, and cook on dum so the flavors infuse the rice fully. | [Photo](https://upload.wikimedia.org/wikipedia/commons/d/d1/Hyderabadi_Biryani.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Telangana | Mirchi ka Salan | Internet | 12/09/2026 | 00:47 | Long green chilies, peanut-sesame gravy | Cook chilies in a peanut-sesame gravy until they soften and the gravy thickens. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/e3/Hyderabadi_Biryani_with_Raita,_Mirchi_Ka_Salan_and_Salad.JPG) — Wikimedia Commons (combo plate, not a standalone shot — crop before using) | 12/09/2026 | 00:47 |

## East India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| West Bengal | Shorshe Ilish | Internet | 12/09/2026 | 00:47 | Hilsa fish, mustard paste | Simmer fish in a mustard-paste gravy with green chili until infused. | [Photo](https://upload.wikimedia.org/wikipedia/commons/c/cc/Shorshe_Ilish_Maach.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| West Bengal | Machher Jhol | Internet | 12/09/2026 | 00:47 | Fish, potato, tomato | Cook fish in a light, spiced potato-tomato broth. | [Photo](https://upload.wikimedia.org/wikipedia/commons/3/3f/Bata_macher_jhol-MB03.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| West Bengal | Mishti Doi | Internet | 12/09/2026 | 00:47 | Milk, jaggery, yogurt culture | Sweeten milk with jaggery, set with a yogurt culture, and let it ferment until thick and caramel-toned. | Not found | 12/09/2026 | 00:47 |
| Odisha | Dalma | Internet | 12/09/2026 | 00:47 | Lentils, vegetables | Cook lentils with vegetables and a light tempering into a comforting stew. | Not found | 12/09/2026 | 00:47 |
| Odisha | Pakhala Bhata | Internet | 12/09/2026 | 00:47 | Cooked rice, water | Ferment cooked rice in water overnight and serve chilled with accompaniments. | [Photo](https://upload.wikimedia.org/wikipedia/commons/5/53/Pakhala_Bhata_and_Aloo_Bhaja.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Bihar | Litti Chokha | Internet | 12/09/2026 | 00:47 | Wheat dough, sattu, roasted vegetables | Stuff wheat dough balls with roasted gram flour (sattu), bake or roast until crusty, and serve with a smoky mashed vegetable side. | [Photo](https://upload.wikimedia.org/wikipedia/commons/c/cf/Des_iLitti_Chokha.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Bihar | Sattu Paratha | Internet | 12/09/2026 | 00:47 | Wheat dough, sattu filling | Stuff a spiced roasted-gram-flour filling into wheat dough and cook on a griddle with ghee. | Not found | 12/09/2026 | 00:47 |

## Central India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Madhya Pradesh | Bhopali Gosht Korma | Internet | 12/09/2026 | 00:47 | Meat, onion, yogurt | Slow-cook meat in a rich onion-yogurt gravy until tender. | Not found | 12/09/2026 | 00:47 |
| Madhya Pradesh | Poha | Internet | 12/09/2026 | 00:47 | Flattened rice, mustard seeds, peanuts | Sauté flattened rice with mustard seeds, turmeric, peanuts, and onions until fluffy and flavored. | [Photo](https://upload.wikimedia.org/wikipedia/commons/f/f4/Poha,_a_snack_made_of_flattened_rice.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Chhattisgarh | Chila | Internet | 12/09/2026 | 00:47 | Fermented rice-lentil batter | Cook the fermented batter on a griddle into a savory pancake. | [Photo](https://upload.wikimedia.org/wikipedia/commons/5/5d/Besan_chilla.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Chhattisgarh | Aamat | Internet | 12/09/2026 | 00:47 | Bamboo shoots, vegetables | Simmer bamboo shoots and vegetables in a mildly spiced tribal-style broth. | Not found | 12/09/2026 | 00:47 |

## Northeast India

| State | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Assam | Fish Tenga | Internet | 12/09/2026 | 00:47 | Fish, tomato/elephant apple | Cook fish in a light, sour broth flavored with tomatoes or elephant apple. | [Photo](https://upload.wikimedia.org/wikipedia/commons/5/54/Masor_Tenga.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Assam | Khar | Internet | 12/09/2026 | 00:47 | Raw papaya/vegetables, alkaline ash-water | Cook vegetables with filtered ash-water (khar) for a distinctive earthy flavor. | Not found | 12/09/2026 | 00:47 |
| Manipur | Eromba | Internet | 12/09/2026 | 00:47 | Boiled vegetables, fermented fish, chili | Mash boiled vegetables with fermented fish and chili into a chunky, pungent side dish. | [Photo](https://upload.wikimedia.org/wikipedia/commons/a/ae/Ingredients_for_making_traditional_Meitei_food,_Eromba_(alias_Iromba,_Eronba,_Ironba)_-_Classical_Meitei_cuisine_of_Kangleipak.jpg) — Wikimedia Commons (shows raw ingredients, not the finished plated dish) | 12/09/2026 | 00:47 |
| Manipur | Chak-hao Kheer | Internet | 12/09/2026 | 00:47 | Black rice, milk, sugar | Simmer black rice in milk with sugar until thick and naturally purple-hued. | Not found | 12/09/2026 | 00:47 |
| Nagaland | Smoked Pork with Bamboo Shoot | Internet | 12/09/2026 | 00:47 | Smoked pork, fermented bamboo shoot | Simmer smoked pork with fermented bamboo shoot and chili until tender. | [Photo](https://upload.wikimedia.org/wikipedia/commons/e/e7/Naga_style_smoked_Pork_ribs_with_bamboo_shoots_and_rice.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Nagaland | Axone | Internet | 12/09/2026 | 00:47 | Fermented soybean, pork/vegetables | Cook fermented soybean with pork or vegetables into a pungent, flavorful curry. | [Photo](https://upload.wikimedia.org/wikipedia/commons/4/4a/Naga_Smoked_Pork_with_Axone_(Fermented_Soyabeans).jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Meghalaya | Jadoh | Internet | 12/09/2026 | 00:47 | Rice, pork, local spices | Cook rice with pork and spices together into a one-pot smoky rice dish. | [Photo — ⚠ likely malformed filename, verify](https://upload.wikimedia.org/wikipedia/commons/4/45/Jadoh_(Meghalaya.JPG) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Sikkim | Momos | Internet | 12/09/2026 | 00:47 | Wheat wrappers, meat/vegetable filling | Fold a spiced filling into thin dough wrappers and steam until cooked through. | [Photo](https://upload.wikimedia.org/wikipedia/commons/3/36/Momo101.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Sikkim | Thukpa | Internet | 12/09/2026 | 00:47 | Noodles, broth, vegetables, meat | Simmer noodles in a spiced broth with vegetables and meat. | [Photo](https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |

## Notable Union Territories

| UT | Dish | Owner | Orig. Date | Orig. Time | Key Ingredients & Spices | Cooking Instructions | Photo (unverified placeholder) | Updated Date | Updated Time |
|---|---|---|---|---|---|---|---|---|---|
| Puducherry | Meen Kuzhambu | Internet | 12/09/2026 | 00:47 | Fish, tamarind, coconut | Simmer fish in a tangy tamarind-coconut gravy influenced by both Tamil and French technique. | [Photo](https://upload.wikimedia.org/wikipedia/commons/d/d0/Meen_Khuzambu_(South_India_Fish_gravy).jpg) — Wikimedia Commons | 12/09/2026 | 00:47 |
| Ladakh | Thukpa/Skyu | Internet | 12/09/2026 | 00:47 | Wheat, barley, vegetables | Simmer hand-pulled dough pieces or noodles in a spiced vegetable/meat broth, Tibetan-Himalayan style. | Reuse [Thukpa photo](https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg) above (Skyu-specific photo not found) | 12/09/2026 | 00:47 |
| Andaman & Nicobar | Grilled Reef Fish | Internet | 12/09/2026 | 00:47 | Fresh reef fish, minimal seasoning | Marinate lightly and grill over open flame so the seafood's natural flavor shines. | Not found (generic dish name, unlikely a specific free photo exists) | 12/09/2026 | 00:47 |

## Recipe-hub feature notes (kalabhavans.com)

The site is a two-sided recipe hub: visitors browse and cook recipes from anywhere in the world, and registered members can upload and share their own recipes.

- **Cuisine Explorer**: filter recipes by continent, country, state/region, diet, difficulty, and street-food status — all facets combine (see `kalabhavans-website-plan.md` v1.4 for the full faceted-search design; the original concept here was filtering "the table above by state/region or key ingredient").
- **Recipe pages**: each dish becomes a full recipe page — ingredients list with quantities, numbered steps (expanded from the summaries above for the India dishes), prep/cook time, servings, difficulty, **owner/attribution** (linked to a public cook profile), **original date/time and updated date/time** (shown in the viewer's own local timezone), continent/country/region + diet + street-food badges, **photo (required)**, optional video, a rating + comments section, and a **Cook Mode** view for distraction-free cooking.
- **Owner/attribution**: every recipe shows who it came from. The full seed catalog (this doc's India dishes plus the world dishes added later) displays **Owner: Internet**. When a registered member submits a recipe, the platform automatically sets the Owner to that member (their account/display name), so their contribution is clearly credited and distinguishable from the seed catalog — and the byline links to that member's public cook profile.
- **Timestamps**: every recipe records **Original Date/Time** (set once, automatically, at creation) and **Updated Date/Time** (refreshed automatically on every edit). Format: DD/MM/CCYY for date, HH:MM (24-hour) for time, displayed in the viewer's own timezone. These are system-generated, not user-entered, to keep them trustworthy.
- **User-submitted recipes**: registered members can submit their own recipes from any country using the same page template (title, country required, state/region optional, diet required, street-food checkbox, ingredients, steps, **required photo**, optional video). Submissions auto-publish immediately (community-driven), with reporting/flagging tools for after-the-fact moderation rather than pre-review — covering both recipes and comments.
- **Sign-up fields**: first name, last name, gender, age group, address (all collected), **email (mandatory)**, and **phone number (optional)**. Email is the required login/verification identifier.
- **Ratings & comments**: 1–5 star rating (one per user, editable) plus an open comment thread per recipe; the homepage features a "Top Rated" running ticker built from this data, with a minimum-rating-count threshold and periodic (not per-page-load) recomputation (see the website plan doc for details).

## Site-wide disclaimer

Displayed in the footer of every page, and again on each recipe page (this is the current, global wording — it supersedes the India-only version this doc originally shipped with):

> **Disclaimer:** The dishes, ingredients, and images referenced on this site for the initial seed catalog (all tagged **Owner: Internet** in our catalog) were found on the internet. Kalabhavans does not claim ownership or authorship of these dishes, their traditional recipes, or their regional culinary heritage — they belong to the diverse communities and cultures of every state and country they come from, across the world. Recipes submitted by members are owned and attributed to the member who shared them. Recipes on this site are shared for inspiration and home cooking. Try them at your own risk — Kalabhavans is not responsible for any errors, omissions, allergic reactions, or outcomes from preparing or consuming any dish made using recipes found here. Always use your own judgment regarding ingredients, food safety, and dietary or allergy needs.

## Public mission statement

For the homepage/About page (this is the current, global wording — it supersedes the India-only version this doc originally shipped with):

> Kalabhavans started as one family's effort to bring together India's regional dishes — and it's now open to every state and country. There are no borders on the web, so there are none here either: this is our attempt to help people everywhere collaborate on and enjoy each other's home cooking, everyday food, and street food, one dish, one ingredient, one story at a time. We're not claiming to be the definitive word on any cuisine; this is simply our effort to celebrate the world's culinary diversity and make it easy for anyone, anywhere, to discover and try these dishes at home, entirely at their own will and pace.
