-- Kalabhavans.com — recipe catalog expansion (rewritten instructions).
-- Generated 2026-09-13T15:01:14.281Z. Replaces the cooking-steps for the 126
-- dishes already in the catalog (76 India + 50 other-country) with a much more
-- detailed rewrite. Matches each recipe by its existing slug (unchanged, since
-- title/state/country were not edited) and only touches recipe_steps + updatedAt —
-- originalAt, ingredients, tags, ratings, and comments are left untouched.
-- Safe to re-run.
BEGIN;


-- Sarson da Saag with Makki di Roti (Punjab, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8a7cee4c-6d6c-478e-bbba-64883d5eee89', "id", 1, 'Wash the mustard greens and spinach thoroughly and roughly chop them along with the ginger and green chili.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ea76ee4c-9f41-42ac-a0d7-67d7a4930ae2', "id", 2, 'Add them to a heavy pot with a splash of water and boil for about 25 to 30 minutes until the leaves are fully soft and wilted.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6c93e578-0bb9-4a71-8705-0a4c19eb8d18', "id", 3, 'Drain any excess water, then mash the greens coarsely with a wooden masher, leaving some texture rather than a smooth puree.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c492f01a-e892-4490-be00-20c5eb7b327d', "id", 4, 'Return the mash to the pot, stir in a spoonful of maize flour to thicken it, and simmer uncovered for another 10 to 15 minutes, stirring occasionally so it does not stick.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1e576637-9e8c-46a8-8df8-42b6bb3ac2d7', "id", 5, 'In a small pan, heat ghee and add chopped garlic, cooking until it turns golden and fragrant, then pour this tempering over the saag and mix well.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'decc65e8-7440-4e81-a572-a01fd5e5503b', "id", 6, 'To make the flatbreads, knead maize flour with warm water into a soft dough and pat it directly into rounds on a floured surface, since it does not stretch like wheat dough.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2fd48cc2-1409-468c-bc0a-61e1f8a67919', "id", 7, 'Cook each flatbread on a hot griddle for two to three minutes per side, pressing gently with a cloth or spatula until brown spots appear and the edges look dry.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a91ad0df-7b40-4744-8e8f-cb7caa09b54f', "id", 8, 'Serve the hot saag topped with a generous knob of ghee alongside the warm makki di roti.' FROM "recipes" WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'sarson-da-saag-with-makki-di-roti-punjab-india';

-- Butter Chicken (Punjab, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '95697080-6bfe-41ff-abfe-fbaf5c69878c', "id", 1, 'Cut boneless chicken into bite-sized pieces and mix with yogurt, ginger-garlic paste, chili powder, and a pinch of salt, then let it marinate for at least 30 minutes.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5bc7543b-128f-4d62-bdfb-e083f03bbd97', "id", 2, 'Heat a grill pan or skillet until very hot and sear the marinated chicken in batches for three to four minutes per side until lightly charred on the edges and just cooked through, then set aside.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '16917951-79fe-493f-8e7c-e134fcec736c', "id", 3, 'In a separate pan, melt butter and sauté chopped onion and ginger-garlic paste until softened and golden.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e88709aa-9d3b-479e-be79-a6f010744e68', "id", 4, 'Add pureed tomatoes and cook over medium heat for 15 to 20 minutes, stirring occasionally, until the raw smell disappears and the mixture thickens and darkens.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '80cb688b-1aa9-4bf1-b899-4f7de9e8dbf4', "id", 5, 'Blend the tomato mixture until smooth, then return it to the pan and stir in garam masala, kasuri methi crushed between your palms, and a little sugar to balance the acidity.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fc37ffea-fb5e-4a57-8478-86a743d9404a', "id", 6, 'Lower the heat and stir in cream, then add the seared chicken pieces and simmer gently for 8 to 10 minutes until the chicken is fully cooked and coated in a glossy orange-red gravy.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2aede8be-ccc5-435d-919e-60453e7fd06e', "id", 7, 'Finish with a final swirl of cream and a small knob of butter before serving hot with rice or naan.' FROM "recipes" WHERE "slug" = 'butter-chicken-punjab-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'butter-chicken-punjab-india';

-- Amritsari Kulcha (Punjab, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a3a0da5b-6f8d-42eb-9dd8-232159f9144b', "id", 1, 'Mix maida with a little yogurt, baking powder, salt, and water into a soft dough, then knead for five minutes until smooth and cover to rest for at least two hours.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'edeeed7a-1ea1-47dd-8304-598c796ab480', "id", 2, 'Boil and mash potatoes while still warm, then mix in chopped green chili, coriander, ajwain, and salt to make the stuffing.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dc32c53c-5d09-41d1-a3a4-7240a2b85e59', "id", 3, 'Divide the rested dough into equal balls, flatten each into a small disc, and place a portion of the potato filling in the center.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '123e6f85-37f0-4c0e-ae73-4e4b953c32df', "id", 4, 'Gather the edges of the dough over the filling and pinch to seal, then gently flatten the stuffed ball and roll it out carefully into a thick oval so the filling does not tear through.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9ae8b456-7ccd-4158-a847-3b690a9f101f', "id", 5, 'Sprinkle the top with nigella seeds and chopped coriander, pressing them lightly into the surface.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b0e539aa-d634-4f0e-bb8b-dcdc73243776', "id", 6, 'Cook the kulcha in a very hot tandoor, or on a preheated heavy skillet covered with a lid, for two to three minutes on each side until puffed and golden-brown patches appear.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4b952866-4fce-4ef4-b42b-4138a0d1daa3', "id", 7, 'Brush generously with melted butter as soon as it comes off the heat and serve warm with chole or pickle.' FROM "recipes" WHERE "slug" = 'amritsari-kulcha-punjab-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'amritsari-kulcha-punjab-india';

-- Bajre ki Khichdi (Haryana, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '899ff29b-16a5-4f66-b9d0-5864caff4e1c', "id", 1, 'Rinse the pearl millet and split moong dal separately until the water runs mostly clear.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '10dcc22b-dd0e-43a0-84b3-c4fae00f2d5c', "id", 2, 'Soak the millet in water for at least two hours, or overnight, so it cooks evenly and softens properly.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5ebc004f-5d0b-40c3-b29c-43dafe0ac933', "id", 3, 'Drain the millet and combine it with the moong dal, turmeric, and salt in a pressure cooker or heavy pot, adding about four cups of water for every cup of grain.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fc2d9008-a751-4cdd-86d2-24c8b16fa972', "id", 4, 'Pressure cook for four to five whistles, or simmer covered on the stovetop for 35 to 40 minutes, stirring occasionally, until the millet and dal break down into a soft, porridge-like consistency.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1bf25219-8efb-418b-85c4-a721fbd8e4f7', "id", 5, 'If the khichdi looks too thick once cooked, stir in a little hot water to loosen it to a spoonable consistency.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2bafe982-f36c-4a57-8686-5a58fff7c6e9', "id", 6, 'In a small pan, heat ghee and add cumin seeds, letting them sizzle for a few seconds until fragrant.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '82c71de7-39af-4de2-80ad-db7b90c55b19', "id", 7, 'Pour the ghee-cumin tempering over the khichdi, stir once, and serve hot, ideally with a dollop of extra ghee on top.' FROM "recipes" WHERE "slug" = 'bajre-ki-khichdi-haryana-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bajre-ki-khichdi-haryana-india';

-- Kadhi Pakora (Haryana, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cb1bb427-d515-45a2-a2aa-2b4b0ced7af4', "id", 1, 'Whisk besan with a little water and a pinch of salt into a thick batter, then deep-fry spoonfuls in hot oil for two to three minutes until golden and crisp, and drain on paper towels to make the pakoras.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9b119447-c90c-4841-aca7-0719e8bd1a50', "id", 2, 'In a separate bowl, whisk yogurt with besan and water until completely smooth and lump-free, then season with turmeric, chili powder, and salt.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f92b3ab2-50ed-4673-8e83-33a8c3467b4c', "id", 3, 'Pour this mixture into a pot and bring it to a gentle simmer over low heat, stirring constantly so the yogurt does not curdle, for about 15 to 20 minutes until it thickens slightly.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f56c0457-6cd8-4b75-93a0-b39b70670207', "id", 4, 'Heat oil or ghee in a small pan and add mustard seeds, cumin, and curry leaves, letting them sizzle and pop for about 30 seconds.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '17d50410-14f4-4acb-bdd1-e556846cf480', "id", 5, 'Pour this tempering into the simmering kadhi and stir to combine.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9a770b88-814b-4167-b867-6caf8eb7268f', "id", 6, 'Drop the fried pakoras into the hot kadhi and let them simmer together for five to seven minutes so they soak up the tangy gravy and soften slightly at the edges.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '63c5d5a9-42dd-4ffd-8bdc-81d79dbda2e2', "id", 7, 'Serve hot, garnished with a little extra tempering or chopped coriander, alongside steamed rice.' FROM "recipes" WHERE "slug" = 'kadhi-pakora-haryana-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kadhi-pakora-haryana-india';

-- Dham (Himachal Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0606d2a0-d8db-4162-ac3a-90332a9de85e', "id", 1, 'Soak the rajma and black chana separately in water overnight so they cook evenly the next day.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '564e82b9-912d-48ef-ab1e-307043af403a', "id", 2, 'Pressure cook the rajma with salt and a little turmeric for about six to eight whistles until completely soft and creamy inside.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7b09efe-91ac-4ec1-84ae-4a66e677dc17', "id", 3, 'In a separate batch, pressure cook the black chana until tender, then simmer it with a blend of Himachali spices, ginger, and yogurt until the gravy thickens.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '84e726c5-d75e-4950-9b3d-661430e0e21e', "id", 4, 'Cook the rice separately, either plain or lightly flavored with whole spices, until each grain is fluffy and fully done.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0b949dc-9cc4-4cac-a450-f4539d95cf7d', "id", 5, 'Prepare a yogurt-based side, such as a sweetened curry, by whisking yogurt with a little besan and sugar and simmering it gently until thickened.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '46eeddf9-820f-416d-97af-974aad4587fa', "id", 6, 'Assemble the different components as a festive thali, arranging the rajma, black chana curry, rice, and yogurt preparation together on one large plate or banana leaf.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd49a3d05-2b17-4c87-aa7a-def79bc5b0bd', "id", 7, 'Serve warm, allowing diners to mix the components as they like in the traditional communal style.' FROM "recipes" WHERE "slug" = 'dham-himachal-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dham-himachal-pradesh-india';

-- Siddu (Himachal Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8800d236-7e71-483f-a030-fda465934e32', "id", 1, 'Dissolve yeast in warm water with a pinch of sugar and let it sit for 10 minutes until it turns frothy.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b4e90157-4e77-4c66-8560-30e4b6162cd0', "id", 2, 'Mix the yeast mixture into wheat flour with a little salt and knead into a soft, smooth dough, then cover and let it rise in a warm place for about two hours until doubled in size.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '338e6e9d-fbee-4635-93d8-9cc61a1c6829', "id", 3, 'Meanwhile, prepare the filling by lightly toasting poppy seeds or nuts and grinding them coarsely with a little sugar or salt to taste.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '107f4d4c-6be8-4ade-a42d-2233a6564c78', "id", 4, 'Punch down the risen dough and divide it into equal portions, then flatten each portion slightly and place a spoonful of filling in the center.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '51522a7d-b279-4404-bf8e-c0a15f9f5ed2', "id", 5, 'Gather the edges up and around the filling, pinching to seal, then shape each piece into a smooth ball.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a94e4abf-ae7b-4bc9-ba69-955d10d339a7', "id", 6, 'Arrange the stuffed balls in a steamer lined with a damp cloth, leaving space between them, and steam over boiling water for about 20 to 25 minutes until they look puffed and feel firm to the touch.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4e568135-1771-4d78-84a4-fa7542077622', "id", 7, 'Serve the siddu warm, split open and drizzled generously with melted ghee, or alongside a spicy chutney.' FROM "recipes" WHERE "slug" = 'siddu-himachal-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'siddu-himachal-pradesh-india';

-- Chana Madra (Himachal Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '02a1b631-0d06-4f0d-b944-3f1f143e2a0c', "id", 1, 'Soak dried chickpeas overnight, then drain and pressure cook them with salt until completely tender, about six to seven whistles.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8089c91f-4917-4c31-934e-0d2a62193f7b', "id", 2, 'Whisk yogurt well in a bowl until smooth, taking care to bring it to room temperature first so it does not split when heated.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7a36153-0538-4033-963d-9392b05c5f3a', "id", 3, 'Heat ghee in a heavy-bottomed pan and add whole spices such as cloves, cinnamon, and black cardamom, letting them sizzle for about 30 seconds until aromatic.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fa01ff08-a9fc-4e2f-90dd-85e4c162b9b3', "id", 4, 'Lower the heat and gradually pour in the whisked yogurt, stirring continuously in one direction to prevent curdling.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a1acdc13-dc4c-4979-a24c-b251f2cdcd4d', "id", 5, 'Add the boiled chickpeas along with a splash of their cooking liquid, then simmer gently on low heat for 15 to 20 minutes, stirring frequently, until the gravy thickens and coats the chickpeas.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b8db417e-c640-4cc8-b9d7-de6be18b92ed', "id", 6, 'Season with salt and a touch of sugar to balance the tang of the yogurt.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dfddfc38-a2f7-433f-a31f-0f956bff3dd2', "id", 7, 'Finish with an extra spoon of warm ghee stirred through just before serving, and pair with steamed rice.' FROM "recipes" WHERE "slug" = 'chana-madra-himachal-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chana-madra-himachal-pradesh-india';

-- Rogan Josh (Jammu & Kashmir, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd331215c-fa31-4dc1-9596-22cd5235f63c', "id", 1, 'Pat the lamb pieces dry and season lightly with salt.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fbc395c7-ad62-432e-9955-784225821426', "id", 2, 'Heat oil or ghee in a heavy pot and sear the lamb in batches over high heat for four to five minutes per batch until well browned on all sides, then set aside.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd6a698e6-9c84-47e5-9188-bfda07f2d85c', "id", 3, 'In the same pot, add whole spices like cloves, cinnamon, and bay leaf along with chopped onion, and cook until the onion turns soft and golden.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6782e2e1-d692-4fbe-b730-43c04f542621', "id", 4, 'Stir in ginger-garlic paste and cook for another minute until the raw smell fades, then add Kashmiri red chili powder and fennel powder, stirring quickly so the spices toast without burning.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6e160eeb-55a6-4d56-9208-8387d86b1c25', "id", 5, 'Return the seared lamb to the pot along with whisked yogurt added a spoonful at a time, stirring constantly over low heat so it does not split.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cfeb06e5-d4b0-4e03-b9f3-528909efcb19', "id", 6, 'Add enough water to just cover the meat, bring to a simmer, then cover and cook on low heat for about an hour to an hour and a half, stirring occasionally, until the lamb is fork-tender and the gravy has turned a deep brick-red and thickened.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '327dde69-7fe5-41ab-a660-4c666e7d2453', "id", 7, 'Adjust salt, let it rest for a few minutes off the heat, and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'rogan-josh-jammu-and-kashmir-india';

-- Yakhni (Jammu & Kashmir, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c7a08536-42c7-4f3e-a1e3-e6b79b405b73', "id", 1, 'Place the meat in a heavy pot with whole spices such as bay leaf, black cardamom, cloves, and cinnamon, along with enough water to cover it generously.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd72156b0-bfa0-4014-9aaf-98f85f8cb3b9', "id", 2, 'Bring to a boil, skim off any scum that rises to the surface, then reduce the heat and simmer covered for about 45 minutes to an hour until the meat is tender.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cc22c2ce-065a-425d-9873-52987ed4312e', "id", 3, 'Strain the broth if you prefer a cleaner yakhni, reserving both the meat and the flavorful stock.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5a8a22c8-71a3-4d00-96d0-bbec1c948775', "id", 4, 'Whisk yogurt in a separate bowl until smooth, then temper it gradually with a few spoonfuls of the hot broth to bring it to a similar temperature before combining, which helps prevent curdling.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5c10ba14-13c0-4abe-baa1-047fe0097829', "id", 5, 'Return the meat and broth to the pot, stir in the tempered yogurt slowly over low heat, and simmer gently for another 15 to 20 minutes without letting it boil hard.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ca9a13af-bbd8-437a-892a-7cd9b10e870c', "id", 6, 'Season with salt and, if desired, a little ground fennel or ginger powder for extra warmth.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd2d7015c-679a-48b9-9349-0d8bbf787de7', "id", 7, 'Serve hot as a light, tangy curry alongside steamed rice.' FROM "recipes" WHERE "slug" = 'yakhni-jammu-and-kashmir-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'yakhni-jammu-and-kashmir-india';

-- Dum Aloo (Jammu & Kashmir, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '85c0360f-b60d-4905-82ab-32b29eda5d8e', "id", 1, 'Wash the baby potatoes and prick each one a few times with a fork so the flavors can penetrate during frying.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08c00e48-742d-43b9-86de-cf7c086ced15', "id", 2, 'Deep-fry or shallow-fry the potatoes in hot oil for six to eight minutes, turning occasionally, until the skins turn golden-brown and slightly wrinkled, then drain and set aside.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bf8fc19a-8030-4d62-b81d-c328da634536', "id", 3, 'In a pan, heat oil and sauté chopped onions until golden, then add ginger-garlic paste and cook for another minute.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f1e7d7f7-d71d-4eec-bc66-7ad90f6a0445', "id", 4, 'Stir in tomato puree or whisked yogurt along with turmeric, chili powder, and coriander powder, and cook over medium heat for 8 to 10 minutes until the mixture thickens and the oil begins to separate at the edges.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c26466f4-cda8-4904-a7a2-6b4126c1d304', "id", 5, 'Add the fried potatoes to the gravy along with a splash of water, stirring gently to coat each piece.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6343786a-7485-450a-b89f-28857ff62297', "id", 6, 'Cover the pan tightly and let the potatoes cook on low heat, or dum, for 12 to 15 minutes, shaking the pan occasionally instead of stirring, until the potatoes are infused with the spices and the gravy clings thickly to them.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f26bbd16-c479-4548-8f9f-0a8cbfec0283', "id", 7, 'Finish with a sprinkle of garam masala and fresh coriander before serving hot with rice or flatbread.' FROM "recipes" WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dum-aloo-jammu-and-kashmir-india';

-- Kashmiri Pulao (Jammu & Kashmir, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'db4ef632-0363-4ddd-a4b9-cede514c4a8c', "id", 1, 'Rinse the rice under cold water until the water runs clear, then soak it for 20 to 30 minutes and drain well.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '34bbf11d-a1c7-4a6e-bae4-8ce673be770e', "id", 2, 'Warm the milk gently and steep a pinch of saffron threads in it for at least 10 minutes until the milk turns golden and fragrant.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4e0ed685-e503-457e-8f90-2679b2701c0b', "id", 3, 'Heat ghee in a heavy pot and add whole spices such as cinnamon, cloves, and green cardamom, letting them sizzle briefly until aromatic.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '256f1f39-3d96-4216-a8e9-ec01d3f1043d', "id", 4, 'Add the drained rice and sauté gently for two to three minutes, stirring carefully so the grains do not break.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c3a27d4b-d362-4cec-ac46-a6afc7847bbf', "id", 5, 'Pour in the saffron milk along with enough water to cook the rice, using roughly one and three-quarter cups of liquid for every cup of rice, and season with salt.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '545ed548-23e7-4855-a039-51895a3b12cf', "id", 6, 'Bring to a boil, then reduce the heat to low, cover tightly, and let the rice steam undisturbed for about 15 to 18 minutes until all the liquid is absorbed and the grains are tender.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c5073eb7-c8d3-4d6f-9e1b-78a40a9e5dc4', "id", 7, 'In a separate small pan, lightly fry chopped dried fruits and nuts in a little ghee until golden, then fold them gently into the finished rice along with a few strands of extra saffron.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ea00e61b-b33a-4d8b-a796-aef729954105', "id", 8, 'Let the pulao rest covered for five minutes before fluffing gently with a fork and serving.' FROM "recipes" WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kashmiri-pulao-jammu-and-kashmir-india';

-- Lucknowi Biryani (Uttar Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '34f038d2-f047-4ec3-aea3-cdfcbb69ece9', "id", 1, 'Marinate the meat in yogurt, ginger-garlic paste, red chili powder, and a portion of the whole spice blend for at least two hours, or overnight in the refrigerator for best results.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e957383a-d5a6-4e92-a526-397145250915', "id", 2, 'Cook the marinated meat in a heavy pot with sliced fried onions over medium heat until it is about eighty percent done and the gravy has thickened slightly, then set aside.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a205815c-f805-4819-8f49-942190a6c08a', "id", 3, 'Rinse and soak basmati rice for 30 minutes, then boil it in salted water with whole spices until it is about seventy percent cooked, still firm at the core, and drain immediately.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '11bd2ae7-d162-40b8-ab2c-dc3d9326a7f9', "id", 4, 'Spread half of the meat mixture in the base of a heavy-bottomed pot, then layer the par-boiled rice evenly on top.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0fb0726d-4d3a-4442-ac4e-d7232fc50184', "id", 5, 'Repeat with the remaining meat and rice, then scatter fried onions, saffron soaked in warm milk, and a drizzle of ghee over the top layer.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '711a2202-38e6-46ab-8e8b-75e9bd8c8ad6', "id", 6, 'Seal the pot tightly with a lid, using a ring of dough around the rim if needed to trap the steam completely.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dcb6eebc-5ed2-4a7f-912c-9eb2e9069b56', "id", 7, 'Cook on very low heat, or dum, for 25 to 30 minutes, allowing the residual steam to finish cooking the rice and let the flavors of the meat infuse upward through the grains.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08dec24c-c15f-4e6e-9a3d-18e842c4b185', "id", 8, 'Rest the biryani for five to ten minutes before opening the lid, then gently fold the layers together from bottom to top and serve hot.' FROM "recipes" WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'lucknowi-biryani-uttar-pradesh-india';

-- Tunday Kababi (Uttar Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f3f6ddb5-1b41-47c6-866c-9587a7ef005a', "id", 1, 'Finely mince the meat, ideally using a fine mincer or food processor, so the texture becomes almost paste-like.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bc75ef88-3252-4681-a572-eb253f49e0d1', "id", 2, 'Peel and grate a small amount of raw papaya, then mix it thoroughly into the meat to help tenderize it.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2538d584-fd46-48df-b3a2-17d5969e6711', "id", 3, 'Blend a spice paste from roasted gram flour, fried onions, ginger, garlic, and a mix of warm spices such as cloves, mace, and dried rose petals.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '61d9ceaa-6ad6-4cc4-9e60-9e14e6409878', "id", 4, 'Combine the spice paste with the minced meat and papaya, kneading the mixture well with your hands for several minutes until it becomes smooth and slightly sticky.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5be44d83-b019-4eb4-a1d2-c468eb95b0e7', "id", 5, 'Cover and refrigerate the mixture for at least 30 minutes to firm up, which makes shaping easier.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dc98b327-6890-4c4e-aa4a-2687ee876ef4', "id", 6, 'Wet your palms lightly and shape the mixture into small, flat, coin-sized patties.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '806b6e2c-00e5-4747-b2d7-96416d788398', "id", 7, 'Heat a small amount of ghee on a flat griddle over medium heat and shallow-fry the patties for two to three minutes per side until browned and cooked through, taking care not to press down so they stay tender.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ec121938-61ce-4095-a58a-b13483635ea7', "id", 8, 'Serve hot, traditionally with thin rumali roti and sliced onions.' FROM "recipes" WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'tunday-kababi-uttar-pradesh-india';

-- Petha (Uttar Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0b9eeab0-0bb2-423c-a5b5-745e7c816af3', "id", 1, 'Peel the ash gourd, remove the seeds and pith, and cut the flesh into small even cubes or rectangular pieces.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b165abf4-3f5d-4943-a73c-b76b691c9cbd', "id", 2, 'Prick each piece all over with a fork or skewer so the sugar syrup can soak in fully later.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e9e0a575-73c1-4436-bb37-a9d625bf1119', "id", 3, 'Soak the pricked pieces in a lime-water solution for about two hours, which firms up the texture and keeps the pieces from turning mushy.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eea35b23-a81a-4025-87de-acc7971e8a75', "id", 4, 'Rinse the pieces thoroughly under running water to remove all traces of the lime solution, then blanch them in boiling water for five to seven minutes until they turn translucent at the edges.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2d622f88-7e03-4989-a233-650984d6cc35', "id", 5, 'Drain the pieces and prepare a sugar syrup by dissolving sugar in water and simmering until it reaches a light, single-thread consistency.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5dd6d326-5dc5-4082-b1e4-89dcb4135a0e', "id", 6, 'Add the blanched ash gourd pieces to the hot syrup and simmer gently for 20 to 25 minutes, occasionally spooning syrup over the top, until the pieces turn fully translucent and have absorbed the sweetness.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a162ccea-d406-44bf-be6f-1665c79c599e', "id", 7, 'If desired, stir in a few drops of rose water or a pinch of cardamom powder toward the end for extra fragrance.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08a4b44b-a230-45ce-9f70-4c0766a9babf', "id", 8, 'Let the petha cool completely in the syrup before draining and storing, or lightly dust with sugar for a drier finish.' FROM "recipes" WHERE "slug" = 'petha-uttar-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'petha-uttar-pradesh-india';

-- Kafuli (Uttarakhand, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6a52fb7e-e7d8-412e-99d2-a4e780ca41e2', "id", 1, 'Wash the spinach and fenugreek leaves thoroughly to remove any grit, then roughly chop them.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b3644ed7-84d6-4eab-97ca-9f3d5bfc8afe', "id", 2, 'Boil the leaves in a little water for about 10 minutes until fully wilted and soft.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a7f1c46d-1427-40a8-9379-1483d8ef7343', "id", 3, 'Drain the greens, reserving the cooking liquid, and mash them coarsely using a hand masher, leaving some texture.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bf3b8df4-97b5-4a2c-967d-bcbecc3278e5', "id", 4, 'Heat a little oil or ghee in a pan and add cumin seeds along with chopped garlic and green chili, sautéing until fragrant and lightly golden.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e8a652b2-e284-4b68-b420-528bb9c88626', "id", 5, 'Add the mashed greens back to the pan along with a splash of the reserved cooking liquid to loosen the mixture.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd8b95133-025e-47a8-b0d8-fe120e45d8db', "id", 6, 'Stir in a spoonful of rice flour or besan mixed with water to help thicken the gravy slightly.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'de2b5b8d-fe6e-4437-9d8d-7e3fb0475bca', "id", 7, 'Simmer everything together on low heat for eight to ten minutes, stirring occasionally, until the mixture is well combined and lightly thickened.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '65187a4d-c11d-41a2-a2ff-66b52fd25f6c', "id", 8, 'Season with salt and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'kafuli-uttarakhand-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kafuli-uttarakhand-india';

-- Bhatt ki Churkani (Uttarakhand, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0c10702-8a87-4e6b-af5d-ddd1c2ee718b', "id", 1, 'Soak the black soybeans in plenty of water overnight, as their tough skin needs a long soak to soften properly.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6ee60ef9-b0b5-4d0a-885e-b69ba9a3bd1e', "id", 2, 'Drain and rinse the soaked beans, then pressure cook them with fresh water and a pinch of salt for about eight to ten whistles until they are completely soft, since black soybeans take noticeably longer than most lentils.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0cfec160-ddb8-4c4e-bbc0-a76e98290b58', "id", 3, 'Once cooked, mash a small portion of the beans against the side of the pot to help naturally thicken the dish while leaving the rest whole.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2214ef5f-daa4-453a-8053-8d403d7c2c5e', "id", 4, 'Heat mustard oil in a pan until it just starts to smoke lightly, then let it cool slightly before adding chopped garlic and ginger, sautéing until golden and fragrant.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '86cf508c-d6e1-43c2-8acf-b025584b368b', "id", 5, 'Add chopped onion and cook until softened, followed by turmeric and red chili powder, stirring quickly so the spices do not scorch.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd41da3a9-b15d-4e30-b685-361825e0662b', "id", 6, 'Pour in the cooked black soybeans along with their liquid, adjusting the consistency with extra water if needed.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f103eab6-7d55-4a85-b666-a2a018c5aa8d', "id", 7, 'Simmer everything together for 10 to 12 minutes so the flavors meld, then season with salt.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd3cbc710-2467-4579-b21a-d05925fb7f67', "id", 8, 'Finish with a final tempering of cumin seeds fried in ghee poured over the top, and serve hot with rice.' FROM "recipes" WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bhatt-ki-churkani-uttarakhand-india';

-- Aloo ke Gutke (Uttarakhand, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'db6e56ae-f6f0-4e2e-a79f-5123e9948482', "id", 1, 'Wash and boil the potatoes whole, with the skin on, until they are just tender when pierced with a knife but still hold their shape, about 15 to 18 minutes.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7873b8b0-498a-49d7-b2d0-8011359e331e', "id", 2, 'Drain and let the potatoes cool slightly, then peel them and cut into rough, bite-sized chunks.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6d9459e5-e806-434f-b274-b9134317bfa2', "id", 3, 'Heat mustard oil in a pan until it shimmers, then add mustard seeds and let them pop for a few seconds.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e5e1c7dc-e62b-4d4f-8f17-009f9e45ab7c', "id", 4, 'Add dried red chilies and a pinch of asafoetida, stirring briefly until fragrant.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a5585591-0d22-4e98-b413-1d5ff4ffd594', "id", 5, 'Add the potato chunks to the pan along with turmeric and red chili powder, tossing gently so every piece is coated in the spiced oil.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eebd4d48-b31a-4383-a6a2-53449ccb24ce', "id", 6, 'Increase the heat slightly and pan-fry the potatoes for 10 to 12 minutes, stirring only occasionally so the pieces have a chance to develop crisp, golden edges without breaking apart.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dcffc603-9c60-4ef8-bfe8-12f2b7e62489', "id", 7, 'Season with salt and a squeeze of lemon juice toward the end for brightness.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7627f3c-5e5d-4780-beb4-0c76bc608832', "id", 8, 'Garnish with fresh coriander and serve hot as a side dish.' FROM "recipes" WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'aloo-ke-gutke-uttarakhand-india';

-- Dal Baati Churma (Rajasthan, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c2938a62-ac60-4583-b308-6c2dbb434e00', "id", 1, 'Knead a stiff wheat-flour dough with a little ghee, salt, and water until firm, then shape it into small round balls and let them rest for 15 minutes.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '417aa10c-e271-4032-b80a-08e588301fa3', "id", 2, 'Bake the baati balls in a preheated oven at around 180 degrees Celsius, or roast them over low coals if available, for 30 to 35 minutes, turning occasionally, until the outside is firm and golden-brown all over.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fcac7ab7-7b22-4f71-8c9c-ab444791dfa3', "id", 3, 'While the baati bake, rinse a mix of lentils such as toor, chana, and moong dal, then pressure cook them with turmeric and salt until soft.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '14eed992-2d99-4680-aca0-20e81d7fa614', "id", 4, 'Prepare a tempering of ghee, cumin seeds, asafoetida, and chopped tomatoes, then stir it into the cooked lentils and simmer for 10 minutes to blend the flavors into a rich dal.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8e27beac-e1f3-4ed3-85a4-2ade0df8ad30', "id", 5, 'For the churma, crumble a portion of extra baked or fried wheat dough into fine crumbs, either by hand or in a food processor.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f371d771-30ef-475a-b62b-4d2c156d4bdd', "id", 6, 'Mix the crumbs with melted ghee, powdered sugar or jaggery, and a pinch of cardamom powder until it forms a slightly sticky, sweet mixture.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '03cca2da-6e3b-4429-b2a8-5c8d61a4e303', "id", 7, 'To serve, crack open the hot baati and generously soak them in melted ghee.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ca378ccd-8f2a-4554-8dbc-df4d7177063d', "id", 8, 'Plate the baati alongside the dal and a portion of churma for the classic three-part combination.' FROM "recipes" WHERE "slug" = 'dal-baati-churma-rajasthan-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dal-baati-churma-rajasthan-india';

-- Laal Maas (Rajasthan, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '61191d6f-b3ce-4a29-ae12-e6241d8ddf6c', "id", 1, 'Cut the mutton into medium pieces and marinate it in whisked yogurt along with ginger-garlic paste and a portion of the Mathania chili paste, letting it sit for at least an hour.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '14c932fe-7000-4b5e-95cf-8d4aea78b295', "id", 2, 'Soak dried Mathania chilies in warm water for 20 minutes, then grind them into a smooth, deep-red paste.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '54559d51-fe18-4d86-869b-e2644f6b7918', "id", 3, 'Heat ghee or mustard oil in a heavy pot and sauté sliced onions until deeply golden-brown, which builds the base flavor of the curry.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8eee9cee-6a2d-41ae-baa8-c6ccb79b3589', "id", 4, 'Add the marinated mutton and sear it over high heat for five to seven minutes, stirring occasionally, until the outside firms up and browns lightly.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '33f3b90b-3cc4-434f-a99c-3c396b25d165', "id", 5, 'Stir in the ground Mathania chili paste along with a few whole spices like cloves and black cardamom, cooking for two to three minutes until fragrant.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0bc6b353-961d-4763-b43d-597fe65238f4', "id", 6, 'Add enough water to just cover the meat, bring to a boil, then reduce the heat, cover, and simmer for 45 minutes to an hour, stirring occasionally, until the mutton is tender and the gravy has turned a deep, glossy red.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'aa3460b6-0ee7-4538-b836-347c57130b49', "id", 7, 'If the gravy is too thin, uncover and simmer a little longer to reduce it to a thicker consistency.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '62060a1b-c910-4653-aa8f-6be0a2c9774a', "id", 8, 'Season with salt, let it rest briefly, and serve hot with rice or roti.' FROM "recipes" WHERE "slug" = 'laal-maas-rajasthan-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'laal-maas-rajasthan-india';

-- Ker Sangri (Rajasthan, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3b4258b6-a109-4099-b8b0-947d5fbaf085', "id", 1, 'Soak the dried ker berries and sangri beans separately in water overnight, changing the water once if possible, since both need thorough rehydration.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7bc88bd-ec06-46dc-b87b-696108379f19', "id", 2, 'Drain the soaked ker and sangri, then boil them together in fresh water with a pinch of salt for 15 to 20 minutes until tender, then drain well.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b0f2fd1d-5609-418c-a19c-72512183e205', "id", 3, 'Heat mustard oil in a pan until it shimmers slightly, then add cumin seeds, asafoetida, and dried red chilies, letting them sizzle for a few seconds.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b35fdde6-31cf-49d9-b384-2b33beb9660b', "id", 4, 'Add chopped onions if using, and sauté until softened and lightly golden.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ab8e54b4-a7a2-47da-add7-f25e547b73be', "id", 5, 'Stir in the boiled ker and sangri along with turmeric, red chili powder, and coriander powder, mixing well so the spices coat everything evenly.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd3363870-1b37-42fa-9f28-ef75fdbdf946', "id", 6, 'Cook uncovered over medium heat for 10 to 12 minutes, stirring occasionally, until any excess moisture evaporates and the mixture looks dry and well-roasted.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8d4dccbc-a02f-4029-bcaa-86eef045b4c4', "id", 7, 'Add a splash of tangy amchur powder or a squeeze of lemon toward the end for brightness, then season with salt.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '400d06a0-05ca-4aa2-9cac-22d840a90192', "id", 8, 'Serve warm or at room temperature as a tangy, textured side dish that keeps well for several days.' FROM "recipes" WHERE "slug" = 'ker-sangri-rajasthan-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'ker-sangri-rajasthan-india';

-- Chaat (Delhi/NCR, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chaat-delhincr-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '49c57753-78c3-4567-8d6f-bb259d9077df', "id", 1, 'Prepare the base by deep-frying small pieces of dough until puffed and golden, or boiling and cubing potatoes, depending on the style of chaat you are making.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '46c99e76-d8c8-4869-8a43-014021f7ce27', "id", 2, 'Boil chickpeas separately with a little salt until tender, then drain and cool.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '673f1d4b-f023-45e2-b639-ac0fb2788080', "id", 3, 'Whisk plain yogurt with a pinch of sugar and salt until smooth and slightly runny, adjusting with a splash of milk if it is too thick.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7c69bc3-93ed-441f-9e07-61f45531a12d', "id", 4, 'Prepare a sweet tamarind chutney by simmering tamarind pulp with jaggery and a pinch of roasted cumin until thickened, and a sharp green chutney by blending mint, coriander, and green chili with a little water.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08284d60-7d9b-487f-a765-87436c05811a', "id", 5, 'In a serving bowl or plate, layer the fried dough or boiled potato with the boiled chickpeas.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b1cb8b66-e4a9-42b4-afad-b51b7d323d65', "id", 6, 'Drizzle generously with the whisked yogurt, followed by both the tamarind and green chutneys.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f5667c56-c9d1-4bad-bebb-ca573c884797', "id", 7, 'Sprinkle with chaat masala, roasted cumin powder, chopped onion, and fresh coriander for crunch and freshness.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'da49ebf1-5238-4a89-9e9f-ce4e4dea64b2', "id", 8, 'Finish with a scatter of crisp sev on top and serve immediately so the base stays crunchy against the toppings.' FROM "recipes" WHERE "slug" = 'chaat-delhincr-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chaat-delhincr-india';

-- Pani Puri (Golgappa) (Delhi/NCR, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3778a581-59fe-4bae-86e5-0a276267379e', "id", 1, 'Prepare small semolina or wheat puris by rolling out very thin dough, cutting into small rounds, and deep-frying them in hot oil until they puff up into hollow, crisp shells, then drain and let them cool completely.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ed8929c0-5b48-4337-9130-a544d3997fbb', "id", 2, 'Boil potatoes until tender, then peel and mash them coarsely with boiled chickpeas, chaat masala, and a little salt to make the filling.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e301d1ad-1ca7-4bac-8486-b473404f3d1d', "id", 3, 'Blend fresh mint and coriander leaves with green chili, ginger, and a little water into a smooth green mixture, then mix it into a large jug of chilled water along with tamarind pulp, black salt, roasted cumin powder, and a squeeze of lemon to make the tangy pani.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '637f3995-8db4-45a2-97d3-f4f1de142c72', "id", 4, 'Taste the pani and adjust the balance of spicy, tangy, and salty flavors until it is sharp and refreshing.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3e2be064-ebf0-4aed-a564-ba60c9df4ae1', "id", 5, 'Just before serving, tap a small hole in the top of each puri with your thumb to keep it from collapsing.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'afcf32eb-59d5-410b-80fb-faea3dc6d7de', "id", 6, 'Spoon in a little of the potato-chickpea filling, then dunk the filled puri briefly into the spiced water so it fills up.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ff1c25c2-52dc-4508-9b7c-9c62858e561a', "id", 7, 'Lift it out immediately and eat it whole in one bite, since the crisp shell softens within seconds once filled.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'db218bbc-b9fd-4fe2-96e5-762dbd8b24c0', "id", 8, 'Repeat one puri at a time so each is eaten fresh and crisp rather than sitting and going soggy.' FROM "recipes" WHERE "slug" = 'pani-puri-golgappa-delhincr-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pani-puri-golgappa-delhincr-india';

-- Nihari (Delhi/NCR, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'nihari-delhincr-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9e8349f4-bbff-4012-9c04-262880945e15', "id", 1, 'Choose a well-marbled cut of meat shank with some bone-in pieces for richness, and rinse it clean.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '59ab7a3e-13a2-40a4-ab91-f04e21166c8c', "id", 2, 'Toast whole spices such as fennel, coriander seeds, cloves, and black cardamom in a dry pan for a minute until fragrant, then grind them coarsely.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f6366eb9-d4a4-4074-86b6-ba859133e439', "id", 3, 'Heat oil in a large heavy pot and brown the meat shank pieces on all sides over high heat for about eight to ten minutes total.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '30f4d5bb-7d68-4ded-b8fa-dd7164ab8bae', "id", 4, 'Add sliced onions and cook until they turn soft and golden, then stir in ginger-garlic paste and the ground spice mix, cooking for another two minutes until aromatic.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '126881cd-c4e2-45d0-a90c-ab671fbb1e52', "id", 5, 'Pour in enough hot water to fully submerge the meat, bring it to a boil, then reduce the heat to the lowest setting, cover tightly, and let it simmer very slowly for at least four to six hours, or ideally overnight, until the meat is falling-apart tender.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c196f8b3-00b9-4565-968f-6bd550c68851', "id", 6, 'Whisk wheat flour with a little cold water into a smooth slurry, then stir it gradually into the simmering pot to thicken the broth, cooking for another 15 to 20 minutes until it reaches a rich, glossy consistency.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dcc0a1d9-6a18-4c6a-8711-75df7a0480d8', "id", 7, 'Skim off any excess fat that rises to the surface, or reserve it to spoon back over the top for flavor.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9353c1b6-2097-47f0-bb37-12aca63072ba', "id", 8, 'Adjust the salt, and serve piping hot garnished with julienned ginger, chopped coriander, green chilies, and a squeeze of lime.' FROM "recipes" WHERE "slug" = 'nihari-delhincr-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'nihari-delhincr-india';

-- Dhokla (Gujarat, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f90cc824-550b-49b5-bb7d-33f0c9d1596f', "id", 1, 'Mix rice flour or a rice-lentil batter, or use besan for khaman-style dhokla, with yogurt and water into a thick, smooth batter, then cover and let it ferment in a warm place for six to eight hours, or overnight, until slightly airy and faintly sour-smelling.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '39698065-b1a1-49c3-9bdd-bbc854649b66', "id", 2, 'Just before steaming, whisk in a pinch of baking soda or fruit salt along with a little lemon juice, which will make the batter bubble and become light.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '475510ee-df8e-4307-b93c-f4214031b0e7', "id", 3, 'Pour the batter immediately into a greased steaming tin, since the aeration fades quickly once the soda is added.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'aa8dada5-72b0-407e-9d19-e779db9a951b', "id", 4, 'Steam over boiling water for 15 to 20 minutes, checking doneness by inserting a toothpick into the center, which should come out clean.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '89a61918-92ed-4167-9ad3-968796c45008', "id", 5, 'Let the steamed dhokla cool for a few minutes in the tin before turning it out and cutting into squares or diamonds.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9fc664a3-8da4-4b77-a539-8af186762125', "id", 6, 'Heat oil in a small pan and add mustard seeds, letting them pop, then add curry leaves, green chili, and a pinch of asafoetida.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7b90b060-4580-4cfb-b26a-057699b5987f', "id", 7, 'Pour this hot tempering evenly over the cut dhokla pieces, along with a little sugar-water if a sweeter finish is desired.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '93417409-1f94-4fe2-8e0f-17c62211e20a', "id", 8, 'Garnish with grated coconut and chopped coriander before serving at room temperature.' FROM "recipes" WHERE "slug" = 'dhokla-gujarat-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dhokla-gujarat-india';

-- Undhiyu (Gujarat, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '073c9fc8-a88c-4c0d-a00a-57a99583fbee', "id", 1, 'Prepare the fenugreek dumplings first by mixing fresh fenugreek leaves with besan, spices, and a little oil into a firm dough, shaping it into small logs, and steaming or lightly frying them until set.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e573edeb-c363-4008-b6aa-621467a49c64', "id", 2, 'Wash and prepare the winter vegetables, cutting purple yams, sweet potatoes, baby potatoes, eggplant, and surti papdi beans into uniform pieces so they cook evenly.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bc7560f7-f423-4dac-a6d6-243006e0ca46', "id", 3, 'Grind a masala paste from fresh coconut, coriander, green chili, ginger, garlic, and roasted peanuts.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7e9804a7-848a-4a7d-b3f8-b91ec38c1eeb', "id", 4, 'Stuff a portion of this paste into slits cut in the eggplant and other vegetables that can hold filling.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '624f7bf8-a915-42a1-adc1-c1ccd35b8dcd', "id", 5, 'Heat oil in a large heavy pot, add mustard and cumin seeds along with a pinch of asafoetida, then layer in the vegetables starting with those that take longest to cook.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '23e3dfe4-ff41-4150-853a-727beccb7356', "id", 6, 'Add the remaining ground paste, season with salt and a little jaggery for the traditional sweet-savory balance, and cover the pot tightly.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e7dcb93d-5447-44e1-bdee-8fb5469dc915', "id", 7, 'Cook on low heat for 30 to 40 minutes, stirring gently every so often to avoid mashing the vegetables, until everything is tender.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3f40a9d1-9622-4ca5-a0e5-81af9b3c2145', "id", 8, 'Add the steamed fenugreek dumplings during the last 10 minutes so they soak up flavor without disintegrating, then serve hot.' FROM "recipes" WHERE "slug" = 'undhiyu-gujarat-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'undhiyu-gujarat-india';

-- Thepla (Gujarat, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'thepla-gujarat-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd1709838-b19a-4622-b15d-d1773063b3e7', "id", 1, 'Combine wheat flour with finely chopped fresh fenugreek leaves, yogurt, turmeric, red chili powder, and a spoon of oil in a large bowl.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4ed0ac23-5644-4c53-a382-5697212e8211', "id", 2, 'Gradually add water and knead into a soft, pliable dough, similar in consistency to regular roti dough, then let it rest for 15 to 20 minutes covered with a damp cloth.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f09fa471-25a1-488a-b98d-9d278df19ed4', "id", 3, 'Divide the dough into small balls and roll each one out thinly on a lightly floured surface into an even round.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b40d886a-63bb-4aad-aa20-8abef7aa83fe', "id", 4, 'Heat a flat griddle over medium heat until hot, then place a rolled thepla on it.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '63515e8b-8799-4f6e-970b-46f0ebdaa87e', "id", 5, 'Cook for about a minute until small bubbles form on the surface, then flip it over.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4fb9fcc9-c225-404e-b427-5faa34983759', "id", 6, 'Drizzle a little oil around the edges and on top, and press gently with a spatula so it cooks evenly and develops light brown spots on both sides.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd337ef6b-b8de-4a8c-b114-f22f4614bd65', "id", 7, 'Flip once or twice more as needed until fully cooked and slightly crisp at the edges, then remove from the griddle.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '64942955-0987-4925-a135-0e4f020d1307', "id", 8, 'Stack the cooked theplas and serve warm, or let them cool completely if packing them for travel, since they keep well for a few days.' FROM "recipes" WHERE "slug" = 'thepla-gujarat-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'thepla-gujarat-india';

-- Khandvi (Gujarat, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7a1cb502-ce13-4341-95a2-bf50194b8133', "id", 1, 'Whisk besan with buttermilk or a mix of yogurt and water, along with turmeric, ginger paste, and salt, into a completely smooth, lump-free batter.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2d7c76d4-4f2b-4633-b919-aeddcbb76ac7', "id", 2, 'Pour the batter into a heavy-bottomed pan and cook over medium-low heat, stirring constantly and scraping the bottom, for about 10 to 12 minutes.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd2ffae4a-dab4-44e5-80a1-6a7a0ccd9285', "id", 3, 'Test for doneness by spreading a small dab of the mixture on the back of a plate, where it is ready when it sets almost immediately and can be rolled without sticking to your finger.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '72b5e86f-7443-4809-87ff-a935fce5feed', "id", 4, 'Working quickly while the mixture is still hot, spread thin layers onto the backs of large plates or a clean countertop using a spatula, aiming for an even, thin coating.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a6120a12-e421-4a41-a835-e354d0acd1b2', "id", 5, 'Let the spread mixture cool for just a few minutes until it is firm enough to handle but still pliable.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5c84b39b-da18-4419-83bf-d874fe6fe4b2', "id", 6, 'Cut the set sheets into strips about two inches wide, then gently roll each strip into a tight spiral.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ab99c7fb-d720-4bda-9e9e-98fa1a272131', "id", 7, 'Arrange the rolled khandvi on a serving plate, then heat oil in a small pan and add mustard seeds, curry leaves, and sesame seeds, letting them sizzle before pouring the tempering over the rolls.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '16ac02d3-1283-41e8-b3f3-382a9cf2d0b6', "id", 8, 'Garnish with grated coconut and chopped coriander before serving at room temperature.' FROM "recipes" WHERE "slug" = 'khandvi-gujarat-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'khandvi-gujarat-india';

-- Puran Poli (Maharashtra, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '845bf4b5-aeff-4207-a6ac-dd0bd911c91b', "id", 1, 'Cook chana dal with water until completely soft, then drain any excess liquid and mash it well while still warm.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cb0e08d1-91d4-4a8a-aec8-52b0f3b8e959', "id", 2, 'Return the mashed dal to the pan with jaggery and cook over low heat, stirring constantly, until the mixture thickens into a smooth, dry paste that holds its shape, then stir in a pinch of cardamom powder and let it cool completely to form the puran filling.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4f4d6768-254d-4cbe-90eb-e99c538f818f', "id", 3, 'Knead a soft wheat dough with a little oil and water, then let it rest for at least 30 minutes covered with a damp cloth.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ed938401-b0e2-48d7-a8d6-a3d4e0f6c7f3', "id", 4, 'Divide the dough into balls slightly larger than the portions of puran filling you have prepared.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '36b3bdb1-120a-4c58-9fc8-f594dde276c2', "id", 5, 'Flatten a dough ball into a small disc, place a ball of puran filling in the center, then gather the edges up and around the filling and pinch to seal completely.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6c9ece80-1ff9-47c0-8fc9-5585be3e2d85', "id", 6, 'Gently flatten the stuffed ball and roll it out carefully on a lightly floured surface into a thin, even round, being careful not to let the filling break through.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd2df2055-c482-4898-9b0f-a3a31d97c92d', "id", 7, 'Heat a griddle over medium heat and cook the poli for about a minute per side, adding a little ghee around the edges, until light golden-brown spots appear on both sides.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7ec72c05-f767-43a6-8206-049c78e13d7d', "id", 8, 'Serve warm with an extra spoon of ghee drizzled on top.' FROM "recipes" WHERE "slug" = 'puran-poli-maharashtra-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'puran-poli-maharashtra-india';

-- Misal Pav (Maharashtra, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9f155dfb-4797-4fa9-b115-b1e4b6746d89', "id", 1, 'Soak whole moong beans overnight, then drain and let them sprout for a day or two in a warm, covered spot until small tails appear.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7856bd7f-c109-4691-bc23-a75972ac1720', "id", 2, 'Boil the sprouted lentils in salted water until just tender but not mushy, then drain and set aside.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd1feb9cc-30f5-4e6a-b2c9-4f4161569360', "id", 3, 'Prepare the spicy rassa by grinding onion, garlic, coconut, and a blend of dried red chilies into a smooth paste, then cooking it in oil with additional spices for 10 to 12 minutes until deeply red and fragrant.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08462099-fd75-4811-90f0-9f5adeb85550', "id", 4, 'Add the boiled sprouts to the rassa along with enough water to make a thin, spicy gravy, and simmer for another 10 minutes so the flavors combine.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9386a127-d8c2-43a5-a4f7-e09b297bcfb4', "id", 5, 'Split and lightly toast the bread rolls on a griddle with a little butter until warm and slightly crisp on the surface.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '793b1157-ff40-4ac9-8707-8f7e410df6c6', "id", 6, 'To assemble, place a portion of farsan, or crunchy mixed snacks, in a bowl and ladle the hot sprouted-lentil rassa generously over it.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '557aad7d-3b43-4359-9ea4-cfb478a0129d', "id", 7, 'Top with chopped raw onion, fresh coriander, and a squeeze of lime.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '98a59d26-3c4a-47c8-8b7c-c942898a1d8d', "id", 8, 'Serve immediately alongside the toasted bread rolls so the farsan stays crunchy against the hot gravy.' FROM "recipes" WHERE "slug" = 'misal-pav-maharashtra-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'misal-pav-maharashtra-india';

-- Vada Pav (Maharashtra, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e308b8c1-67fa-4934-8b29-4ae2481d5613', "id", 1, 'Boil potatoes until fully tender, then drain, peel, and mash them coarsely.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'de5ca865-195d-4616-9528-2687487622f4', "id", 2, 'Heat oil in a pan and temper mustard seeds, curry leaves, chopped green chili, ginger, and garlic, then add the mashed potato along with turmeric and salt, mixing well and cooking for a few minutes until fragrant.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0e0079b4-edc0-4c81-8e9b-ba66f7bef47e', "id", 3, 'Let the potato mixture cool slightly, then shape it into small, even balls.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '42a41911-016a-4461-b547-12c113b23d02', "id", 4, 'Whisk besan with water, a pinch of turmeric, and salt into a thick, smooth batter with a texture that coats the back of a spoon.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cc464a9d-6bd2-47c4-92ea-3188f9fdeab6', "id", 5, 'Dip each potato ball into the batter, coating it fully, then carefully lower it into hot oil.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '73806418-138f-4f2e-b60a-7ec48dd6636b', "id", 6, 'Deep-fry the coated balls for three to four minutes, turning occasionally, until the batter turns golden-brown and crisp all over.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fc21364f-4166-4714-a7c9-688c5fbd5f6c', "id", 7, 'Slice the bread rolls almost in half and spread a layer of garlic chutney and green chutney on the inside.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '62a501b0-170a-41a3-8e4e-89778bac15b2', "id", 8, 'Place a hot fried vada inside each roll and press gently to close, serving immediately while the vada is still crisp and hot.' FROM "recipes" WHERE "slug" = 'vada-pav-maharashtra-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'vada-pav-maharashtra-india';

-- Pav Bhaji (Maharashtra, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5807d300-319c-46ea-9b7c-237451419ad8', "id", 1, 'Boil a mix of vegetables such as potatoes, cauliflower, carrots, peas, and capsicum together in salted water until completely soft, then drain, reserving a little of the cooking liquid.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '30e9f222-e624-4555-8903-f8c60e5807d9', "id", 2, 'Mash the boiled vegetables coarsely with a potato masher, leaving some texture rather than making it perfectly smooth.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b34b386b-b730-4454-90b4-3fb31615bafa', "id", 3, 'Heat a generous amount of butter in a large flat pan and sauté finely chopped onions until soft and translucent.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '547142c9-38e6-4630-873e-e56fa3d69232', "id", 4, 'Add chopped tomatoes and cook until they break down into a thick, pulpy base, then stir in pav bhaji masala and red chili powder, cooking for another minute until fragrant.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5dfbcdaa-d813-424a-8b07-4792a4608c34', "id", 5, 'Add the mashed vegetables to the pan along with a splash of the reserved cooking water, and mash and stir everything together vigorously with the back of the spoon or a masher directly in the pan.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b4f83317-4cc8-402a-b574-2a6134145188', "id", 6, 'Simmer the bhaji over medium heat for 15 to 20 minutes, mashing and stirring frequently, until it thickens into a smooth, well-blended mash, adjusting salt and butter to taste.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a8906eba-baea-4ddc-b6f3-5ea29de19756', "id", 7, 'Slice the bread rolls horizontally without separating them fully, then toast them on a hot griddle with butter on both cut sides until golden and slightly crisp.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '61c3dc48-26e9-45ca-9385-81de83a1ea32', "id", 8, 'Serve the hot bhaji topped with a final pat of butter, chopped onion, and fresh coriander, with the buttered pav and a lime wedge on the side.' FROM "recipes" WHERE "slug" = 'pav-bhaji-maharashtra-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pav-bhaji-maharashtra-india';

-- Vindaloo (Goa, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'vindaloo-goa-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bfcf8768-3471-40cd-9ea4-3275cab327af', "id", 1, 'Toast dried red chilies, cumin seeds, black peppercorns, and cloves briefly in a dry pan until fragrant, then grind them with garlic and vinegar into a smooth, thick paste.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ea5c8cc8-37d5-4f92-a003-65e06e839bde', "id", 2, 'Coat the meat pieces thoroughly in this vinegar-garlic-chili paste, cover, and marinate in the refrigerator for at least two hours, or ideally overnight, so the flavors penetrate deeply.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c1c47398-cee0-4e51-98b0-2b0546d07e20', "id", 3, 'Heat oil in a heavy pot and sauté sliced onions until they turn a deep golden-brown, which builds the base sweetness of the curry.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2e0fc8a2-e1f2-4cf7-817b-976cdc17a539', "id", 4, 'Add the marinated meat along with all of its marinade, and cook over medium-high heat for five to seven minutes, stirring occasionally, until the outside of the meat is browned.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5e65776a-6c09-45ff-bacd-067a3fe745a6', "id", 5, 'Add a little water, bring to a boil, then reduce the heat, cover, and simmer for 45 minutes to an hour, or longer for tougher cuts, until the meat is tender and the gravy has thickened.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ef5183bc-65d2-4f4c-9946-778297a2cd31', "id", 6, 'Check the seasoning partway through, adjusting salt and adding a touch of sugar or extra vinegar to balance the tang and heat as needed.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2c396730-1fd7-4aa1-8104-87602b91fb44', "id", 7, 'Uncover and simmer for a final few minutes if the gravy needs to reduce and thicken further.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7cbffb64-6ca6-4cb9-94fc-549894d99abe', "id", 8, 'Let the vindaloo rest for a few minutes before serving hot with steamed rice.' FROM "recipes" WHERE "slug" = 'vindaloo-goa-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'vindaloo-goa-india';

-- Xacuti (Goa, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'xacuti-goa-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '98ac3678-b06d-4522-82a1-6d07f4a5bf55', "id", 1, 'Dry-roast a mix of whole spices, dried red chilies, and freshly grated coconut in a pan over medium heat, stirring constantly, until the coconut turns a deep golden-brown and the spices smell toasted, being careful not to burn them.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0ae84851-0d03-46b3-90c7-b37738027984', "id", 2, 'Let the roasted mixture cool slightly, then grind it with a little water into a smooth, thick paste.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '251c486e-f7ed-402f-8ecb-64996887fb81', "id", 3, 'Heat oil in a heavy pot and sauté chopped onions until soft and lightly browned.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '24629965-22d8-46a9-9b33-6d54fd46a6a6', "id", 4, 'Add the ground xacuti paste to the pot along with ginger-garlic paste, and cook over medium heat for five to six minutes, stirring frequently, until the raw aroma fades and the oil begins to separate at the edges.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f799de64-a61c-4f72-a824-f6b3e5a7e7fc', "id", 5, 'Add the chicken or meat pieces and stir to coat them thoroughly in the roasted spice paste.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0168b01-70de-4219-bf64-286bc7cb7570', "id", 6, 'Pour in enough water to bring the gravy to your desired consistency, then cover and simmer for 25 to 35 minutes, or longer for tougher meat, until the meat is fully cooked and tender.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '99ea31fd-154e-4da6-9946-2c7f4df5ea6d', "id", 7, 'Uncover and let the gravy simmer a little longer if it needs to thicken further, stirring occasionally to prevent sticking.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a1e6138d-a15d-4646-9091-ee91d78a8d53', "id", 8, 'Season with salt, and serve hot with steamed rice or Goan bread.' FROM "recipes" WHERE "slug" = 'xacuti-goa-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'xacuti-goa-india';

-- Sorpotel (Goa, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'sorpotel-goa-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1422c484-e1bb-4ec5-8d93-822ded06143d', "id", 1, 'Clean the pork and offal thoroughly, then cut into small, even cubes.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9e5d4c52-d674-41dd-ab1d-f1032018a03a', "id", 2, 'Boil the meat and offal separately in water with a little salt and turmeric until just cooked through, then drain and reserve the cooking liquid.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ffd28dc0-474b-4cd0-9c8a-2c3914cc7c53', "id", 3, 'Grind a paste from dried red chilies, garlic, ginger, and a blend of warm spices such as cumin, peppercorns, and cinnamon, using vinegar instead of water to bind it.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb79293b-463b-46f5-9835-5058d5fe34c4', "id", 4, 'Heat oil in a heavy pot and sauté chopped onions until golden-brown.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '313f244b-53c8-4f3b-89bc-52798a6f7011', "id", 5, 'Add the ground spice paste and cook for several minutes, stirring frequently, until the raw smell disappears and the paste darkens slightly.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a026c2c7-2dde-448f-b844-3b1bf6f0d3f1', "id", 6, 'Add the boiled meat and offal to the pot along with some of the reserved cooking liquid and additional vinegar to taste, then bring to a simmer.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8dd7e235-a44c-4307-a78f-dc6fc06207b1', "id", 7, 'Cover and cook on low heat for 30 to 40 minutes, stirring occasionally, until the meat is very tender and the gravy has thickened into a rich, dark, tangy sauce.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7e0ba2d-bc7a-4682-809a-b7b7036ad2ab', "id", 8, 'Traditionally sorpotel tastes even better the next day, so let it rest overnight if possible before reheating gently and serving with rice or bread.' FROM "recipes" WHERE "slug" = 'sorpotel-goa-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'sorpotel-goa-india';

-- Appam with Stew (Kerala, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2e39baa7-c719-4795-874e-a9a5010a6321', "id", 1, 'Soak raw rice for four to six hours, then grind it with cooked rice and grated coconut into a smooth, slightly thick batter, adding a little sugar and yeast or toddy if using the traditional method.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f07d91b1-a64c-4bc7-9d1c-3dd9e71f2ed4', "id", 2, 'Cover the batter and let it ferment in a warm place for eight to ten hours, or overnight, until it becomes bubbly and slightly risen.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a6293acf-9d06-48dd-9ef5-29ab14dd90f4', "id", 3, 'Just before cooking, stir the batter gently and thin it with a little water if it has thickened too much overnight.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f9c232ce-9c30-40a5-ba14-18845e696357', "id", 4, 'Heat a curved appam pan over medium heat, then pour in a ladleful of batter and immediately swirl the pan in a circular motion so the batter coats the sides thinly while pooling slightly thicker in the center.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '348d9912-e715-417d-9e2c-4bdb407d38e5', "id", 5, 'Cover the pan with a lid and cook for two to three minutes until the edges turn lacy and golden-brown and the center looks soft and cooked through, with no need to flip it.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7632a83f-bad2-4ecc-9c74-69345c443766', "id", 6, 'For the stew, sauté sliced onions, ginger, garlic, and green chili in a little oil until softened, then add cubed vegetables or meat along with whole spices like cinnamon and cloves.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dd3b4f98-b5f7-4483-b8a3-e3c11e5d4494', "id", 7, 'Pour in thin coconut milk first and simmer until the main ingredient is nearly cooked, then add thick coconut milk at the end and warm it gently without letting it boil hard, which can cause it to split.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eefb265e-1c33-4d58-b039-fb0fe8e0d4ef', "id", 8, 'Serve the hot appam alongside a generous ladle of the mildly spiced coconut stew.' FROM "recipes" WHERE "slug" = 'appam-with-stew-kerala-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'appam-with-stew-kerala-india';

-- Fish Moilee (Kerala, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '96bc8287-7bca-4582-b8bf-a3342cc7679e', "id", 1, 'Clean the fish and cut it into pieces, then rub lightly with turmeric and salt and set aside for 15 minutes.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e9c3d53a-ab55-4506-8fb7-70fe1077db17', "id", 2, 'Heat coconut oil in a wide pan and add sliced onions, cooking until soft and translucent but not browned.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9d3cdcfe-f1ae-41f8-ba0a-0be51f4561cf', "id", 3, 'Add ginger, garlic, and slit green chilies, sautéing for a minute until fragrant, then stir in turmeric and a little black pepper.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '05218142-cb43-4dc7-9145-ac81deec1e48', "id", 4, 'Pour in thin coconut milk and bring it to a gentle simmer, then slide in the fish pieces carefully so they do not break.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '87741e54-001d-451c-9834-4ab4c3700cc2', "id", 5, 'Cook the fish gently on low heat for eight to ten minutes, spooning the liquid over the top occasionally, until it turns opaque and flakes easily with a fork.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4fc18435-b7a6-4428-9f11-87d83a173dfa', "id", 6, 'Add curry leaves and a splash of thick coconut milk toward the end, warming it through for another two to three minutes without letting the pot boil hard.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3ec9e479-8048-43c2-947a-13e5b716954e', "id", 7, 'Adjust the salt and add a small squeeze of lime or a splash of vinegar for a light tang.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e798e694-b0a4-41fb-9ccf-0a3aa3dbb0eb', "id", 8, 'Serve warm with steamed rice or appam.' FROM "recipes" WHERE "slug" = 'fish-moilee-kerala-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'fish-moilee-kerala-india';

-- Avial (Kerala, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'avial-kerala-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4ea5d449-5a76-46ce-92ad-3ca07ebc8b6a', "id", 1, 'Cut a mix of vegetables such as drumstick, carrot, raw banana, yam, and beans into uniform batons about two inches long so they cook evenly.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3c4faa4d-02ce-48b3-9515-e7c20784ff3a', "id", 2, 'Boil the harder vegetables first in a little water with turmeric and salt, adding the quicker-cooking ones a few minutes later so everything finishes tender at roughly the same time.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '25a8f978-ca3a-4827-92d1-cd7647cfb5a8', "id", 3, 'While the vegetables cook, grind fresh coconut with cumin seeds and a green chili into a coarse, slightly grainy paste, adding only a little water.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f66f4edb-7b3c-4100-b680-4c2b57137ffb', "id", 4, 'Once the vegetables are just tender and most of the water has evaporated, stir in the coconut-cumin paste and mix gently.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3371e208-8ae1-4602-a759-10e56d562221', "id", 5, 'Simmer for another two to three minutes so the raw coconut flavor mellows slightly, without letting the vegetables overcook.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '785376ff-fc0d-404d-a991-201e756a2b8d', "id", 6, 'Stir in a spoonful of whisked yogurt or a squeeze of raw mango for tang, if using, and remove from the heat.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7acd0936-046d-4399-a2d7-03a70756987c', "id", 7, 'Drizzle generously with raw coconut oil and scatter fresh curry leaves over the top, stirring once to combine.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'efc31b55-e187-4973-831e-993179c5f42f', "id", 8, 'Serve warm or at room temperature alongside rice.' FROM "recipes" WHERE "slug" = 'avial-kerala-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'avial-kerala-india';

-- Sambar (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '086a0c3a-bf48-40f1-ac51-f3793d7ccd48', "id", 1, 'Rinse toor dal and pressure cook it with turmeric and a little oil until completely soft and mushy, then whisk it smooth.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '88d27ed6-dd41-4a38-8286-ab7f87b617c2', "id", 2, 'Soak tamarind in warm water for 15 minutes, then squeeze out and strain the pulp to get a tangy tamarind extract.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd4ca2026-47c9-4ba9-8571-69c42ac34e1d', "id", 3, 'Cut mixed vegetables such as drumstick, pumpkin, eggplant, and shallots into chunks, then boil them in the tamarind water with a little turmeric and salt until just tender.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a93cc448-583e-4fc8-925b-4a68b53d5e10', "id", 4, 'Stir in sambar powder and let the vegetable mixture simmer for five minutes so the raw spice smell cooks off.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8b74342e-f9ea-43e3-ada8-4f33cd9859c6', "id", 5, 'Add the cooked, mashed toor dal to the pot along with enough water to reach a medium-thick, pourable consistency.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7d83b3d0-a510-43c2-9fd1-eaf5f0f8a7c6', "id", 6, 'Simmer everything together for another 10 to 12 minutes, stirring occasionally, until the flavors meld and the vegetables are fully cooked through.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ca8c279c-0311-4cdb-bf81-f877ef3f4591', "id", 7, 'Heat a little oil or ghee in a small pan and temper mustard seeds, dried red chilies, curry leaves, and a pinch of asafoetida until fragrant.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cca713a7-7a12-4a12-b1d1-c1a4b7dba881', "id", 8, 'Pour the tempering over the sambar and serve hot with steamed rice, idli, or dosa.' FROM "recipes" WHERE "slug" = 'sambar-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'sambar-tamil-nadu-india';

-- Chettinad Chicken (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '76a81ced-8c82-40f1-8e42-2976c18c0799', "id", 1, 'Dry-roast a mix of whole spices such as dried red chilies, coriander seeds, fennel seeds, black peppercorns, and star anise in a pan over medium heat until fragrant and lightly darkened.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb034787-8b64-4ad2-8c81-d107e80a84a3', "id", 2, 'Let the roasted spices cool, then grind them with a small amount of grated coconut into a coarse, aromatic masala paste.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5c8e6b96-d6b7-44f1-97e8-94ee9819b006', "id", 3, 'Marinate cleaned chicken pieces briefly in turmeric and salt while you prepare the rest of the dish.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '88ceb62a-3420-4f92-a4ce-c9764cb3dadb', "id", 4, 'Heat oil in a heavy pot and sauté chopped onions until deeply golden, then add ginger-garlic paste and curry leaves, cooking until fragrant.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0e29e74a-1925-4e3b-b03f-3533cca94cd3', "id", 5, 'Add chopped tomatoes and cook until they soften and break down into a thick base.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '63a65b2e-7678-4ad7-a1e1-582f5eabb0f9', "id", 6, 'Stir in the ground Chettinad masala paste and cook for a few minutes over low heat, stirring frequently, until the raw aroma disappears and the oil starts to separate.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ddf1aa99-7faa-43b7-8b3f-0502d7635546', "id", 7, 'Add the chicken pieces, mix well to coat them thoroughly, then cover and simmer for 20 to 25 minutes, stirring occasionally, until the chicken is cooked through and the gravy has thickened around it.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '50587f6f-6ef6-47b9-9658-74e4fb4de7d7', "id", 8, 'Adjust salt and garnish with fresh curry leaves before serving hot with rice or dosa.' FROM "recipes" WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chettinad-chicken-tamil-nadu-india';

-- Rasam (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '39989466-5649-48dd-9307-ce2e8c17ca33', "id", 1, 'Soak tamarind in warm water for 15 minutes, then extract the pulp by squeezing and straining, discarding the fibers.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '23a27727-a9fe-4e24-ab8f-0761c9f609f6', "id", 2, 'Combine the tamarind extract with chopped tomatoes, turmeric, and a little water in a pot, then bring to a simmer for about 10 minutes until the tomatoes soften.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5ee20f92-cabf-478a-b18e-ae4b24f9e448', "id", 3, 'Crush black pepper and cumin seeds coarsely, either with a mortar and pestle or a rolling pin, and add them to the simmering pot along with rasam powder.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a1e4a9fd-3476-4ef5-89a3-4b20941fe174', "id", 4, 'If using, mash a small spoonful of cooked toor dal and its water into the pot to give the rasam a bit of body.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3b63ae1d-efe2-4200-8f59-5bf22fae0418', "id", 5, 'Simmer everything together gently for another five to seven minutes, letting the flavors combine, but do not let it boil hard for too long or the aroma will dull.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7c850148-7b90-4485-b6e1-e5895ef85144', "id", 6, 'Heat a little ghee or oil in a small pan and temper mustard seeds, curry leaves, dried red chili, and a pinch of asafoetida until they sizzle and pop.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '50f34879-9ddb-4c3a-a06b-8c54e6fdf487', "id", 7, 'Pour the tempering over the rasam and immediately cover the pot for a minute to trap the aroma.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '64ae58ff-4754-4c9a-8831-e1f10c72ae31', "id", 8, 'Garnish with fresh coriander and serve hot as a thin, tangy soup alongside rice, or sip it on its own.' FROM "recipes" WHERE "slug" = 'rasam-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'rasam-tamil-nadu-india';

-- Koottu (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5170c957-ce2c-4b1b-ab1b-adea87fa3821', "id", 1, 'Cut mixed vegetables into small, even pieces and rinse chana dal or toor dal.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1a637e78-7d95-4c1f-84da-2a13f61961ca', "id", 2, 'Combine the vegetables and dal in a pot with water, turmeric, and salt, then cook, either on the stovetop or in a pressure cooker, until both the vegetables and lentils are fully soft.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8e589e2c-9a86-4a59-ae44-c99f3339bd39', "id", 3, 'Meanwhile, grind fresh coconut with cumin seeds and a green chili into a smooth paste using a small amount of water.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '40dd3e62-6a5b-473c-9b21-1c4eaa9ba031', "id", 4, 'Once the vegetable-lentil mixture is cooked, stir in the ground coconut paste and mix well to combine evenly.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3d3740ef-6b43-4011-92a5-94bba9f13a39', "id", 5, 'Simmer the koottu on low heat for five to seven minutes so the coconut paste cooks through and the mixture thickens slightly.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '90b8abc1-3d18-4555-bfbb-eddcc9bad534', "id", 6, 'Heat a little oil in a small pan and temper mustard seeds and curry leaves until they pop and turn fragrant.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8427b286-ff12-445a-b2f1-ae532a4033d2', "id", 7, 'Pour the tempering over the koottu and stir once to combine.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd121bee7-69cb-4d59-8cb6-0dd0a8fe28f2', "id", 8, 'Serve warm as a side dish alongside rice and sambar or rasam.' FROM "recipes" WHERE "slug" = 'koottu-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'koottu-tamil-nadu-india';

-- Vadu Manga (Tamil Nadu Pickle) (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c1db9be0-06d4-4934-b887-f2d3d0559f06', "id", 1, 'Select firm, unripe baby mangoes with the stem still attached, then wash them well and pat them completely dry with a cloth, since any moisture can cause the pickle to spoil.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8b1c9a05-4cc4-4be3-a91e-8779de4c6474', "id", 2, 'Leave the washed mangoes out to air-dry fully for a few hours, or even a full day, until there is absolutely no surface moisture left.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '69704249-b896-471f-a9ed-0509b5d89697', "id", 3, 'In a large bowl, mix red chili powder, mustard powder, and salt together thoroughly.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8f6d955b-b390-4ad5-921e-2b9575ef5cbb', "id", 4, 'Add the dried baby mangoes to the spice mix and toss well, using clean, dry hands to rub the coating evenly into each mango, especially around the stem.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '59eaa108-c4e9-4f60-ae95-db0f9ffe51db', "id", 5, 'Pack the coated mangoes tightly into a clean, completely dry glass or ceramic jar.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4d42856c-db2b-434a-97eb-a90af08872f9', "id", 6, 'Pour sesame oil over the mangoes until they are fully submerged, which protects them from air and moisture.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6f095ee6-dac0-4f49-bbf2-85e94d99e5e5', "id", 7, 'Seal the jar and store it in a cool, dry place, shaking or stirring gently once a day for the first week to redistribute the spices and oil.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '383b9184-b798-4e3a-a334-6678b8dce9db', "id", 8, 'Let the pickle mature for at least two to three weeks, tasting occasionally, until the mangoes turn soft and deeply flavored before serving in small quantities alongside rice.' FROM "recipes" WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india';

-- Chettinad Biryani (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '756aafb1-347b-489e-9981-aa27165f2840', "id", 1, 'Dry-roast whole spices such as star anise, stone flower, fennel seeds, and dried red chilies, then grind them into a coarse, aromatic Chettinad spice blend.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '223cbb8a-2d76-4064-b5fe-e46bbd8aafea', "id", 2, 'Marinate the meat in whisked curd, the ground spice blend, ginger-garlic paste, and salt for at least an hour.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0540717-d0cf-4a1d-8074-ca1859019748', "id", 3, 'Heat oil in a heavy pot and fry sliced onions until deeply golden and crisp, then remove a portion to use as garnish later.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c1d41771-13f8-4f4b-8a39-7b6a1e3ffef6', "id", 4, 'In the same pot, add the marinated meat and cook over medium-high heat, stirring occasionally, for 15 to 20 minutes until the meat releases its juices and the mixture reduces into a thick, well-cooked masala.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '05151995-9767-4d7a-8203-95e4b20c6197', "id", 5, 'Wash and soak seeraga samba rice for 20 minutes, then parboil it in salted water with a few whole spices until about seventy percent cooked, and drain.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '89451486-1609-49af-bb4f-09239b6d1cc9', "id", 6, 'Spread a layer of the parboiled rice over the cooked meat masala in the same pot, then drizzle with a little ghee and scatter some fried onions and chopped mint or coriander on top.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e2774505-a064-43e9-bcfd-cb29d1249c21', "id", 7, 'Cover the pot tightly and cook on very low heat, or dum, for 20 to 25 minutes, allowing the rice to finish cooking in the trapped steam and absorb the flavors of the masala below.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8cd33517-a30e-439d-b29b-9a98043fea62', "id", 8, 'Let it rest for five minutes, then gently fluff and mix from bottom to top before serving hot, garnished with the reserved fried onions.' FROM "recipes" WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chettinad-biryani-tamil-nadu-india';

-- Chicken 65 (Tamil Nadu, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '391165d4-d1fb-46c0-b598-2655f82e0675', "id", 1, 'Cut boneless chicken into small, bite-sized cubes and pat them dry.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bbefa0cd-758e-4958-8598-03ac8b057b77', "id", 2, 'In a bowl, combine the chicken with whisked yogurt, ginger-garlic paste, red chili powder, a little turmeric, and a beaten egg if using, mixing until the pieces are well coated.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a4aa726e-8d18-4c55-bf7f-4d7c64be9da7', "id", 3, 'Sprinkle in cornflour and a little rice flour, tossing again so each piece is evenly coated in a thin batter that will help it turn crisp.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0e3ba881-a7c0-4d0c-8385-dc369619662d', "id", 4, 'Cover and marinate in the refrigerator for at least 30 minutes, or up to two hours for deeper flavor.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ebfb31b0-a91f-40a0-b289-1a2cb98807a1', "id", 5, 'Heat oil in a deep pan or wok until it is hot enough that a small piece of batter sizzles immediately on contact.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4c174138-1b37-4dea-9288-3bbc6742f442', "id", 6, 'Fry the chicken pieces in small batches for four to five minutes each, turning occasionally, until they turn deep red-brown and crisp on the outside and are fully cooked through, then drain on paper towels.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cf3ce210-59b4-49de-91d9-cec8f3f5b24a', "id", 7, 'In a separate pan, heat a little oil and quickly sauté curry leaves, slit green chilies, and crushed garlic until fragrant and slightly crisp.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c44cc23f-dbef-4ded-aee3-93daade6fa20', "id", 8, 'Toss the fried chicken through this tempering so every piece picks up the aroma, then serve immediately while hot and crisp.' FROM "recipes" WHERE "slug" = 'chicken-65-tamil-nadu-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chicken-65-tamil-nadu-india';

-- Bisi Bele Bath (Karnataka, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fa0a59c4-5186-4103-b6b8-50d0eeadf814', "id", 1, 'Rinse rice and toor dal together, then pressure cook them with turmeric and a splash of oil until both are completely soft and slightly mushy.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e9b55092-4588-4d50-9594-124d2c9dda6b', "id", 2, 'Meanwhile, dry-roast a mix of spices such as coriander seeds, dried red chilies, cinnamon, and cloves along with a little grated coconut, then grind them into a fine bisi bele bath powder.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7b9e88e9-338f-46f4-bb55-0f26d1b6b91d', "id", 3, 'Cut a mix of vegetables such as carrots, beans, drumstick, and potato into small, even pieces.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '907a8d64-4710-4818-a15b-98b4c08abecb', "id", 4, 'In a separate pot, boil the vegetables with tamarind extract and a little salt until they are just tender.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9340e1ea-aa5c-4cb5-a929-546c2b5ac2f7', "id", 5, 'Add the cooked rice-dal mixture to the pot with the vegetables, along with the ground bisi bele bath powder, and mix everything together thoroughly.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9f85da09-1daa-43c3-b899-e9801e3d4627', "id", 6, 'Adjust the consistency with hot water so the dish becomes a thick, porridge-like one-pot meal, then simmer for another 10 minutes, stirring occasionally, so the flavors combine fully.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '195b45ba-4d9f-4eb7-bf22-eb7ce55b2da2', "id", 7, 'Heat ghee in a small pan and temper mustard seeds, curry leaves, cashews, and a pinch of asafoetida until the cashews turn golden.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bdc22d42-1983-4594-a28f-8de63399e261', "id", 8, 'Pour the tempering over the bisi bele bath and serve hot, ideally with a side of crisp fried papad or boondi raita.' FROM "recipes" WHERE "slug" = 'bisi-bele-bath-karnataka-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bisi-bele-bath-karnataka-india';

-- Mysore Masala Dosa (Karnataka, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '52c52854-ce77-490e-8c9d-18c738fcf2f9', "id", 1, 'Soak rice and urad dal separately for four to six hours, then grind each into a smooth batter and combine them, seasoning with salt.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd8211870-1143-409d-a310-74fdece7681d', "id", 2, 'Cover the combined batter and let it ferment in a warm place for eight to ten hours, or overnight, until it rises and turns slightly bubbly.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '90b67bc6-2df8-4dcd-b205-c3803d840461', "id", 3, 'Boil potatoes until tender, then peel, mash coarsely, and cook them briefly with a mustard-curry leaf tempering, chopped onion, and turmeric to make the potato masala filling.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '36c0ab37-9171-4ba6-ae21-3f7f54fde7bd', "id", 4, 'Grind a red chutney from dried red chilies, garlic, and a little tamarind or tomato into a smooth, spicy paste.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dbaeafaf-a5ee-408a-be74-54032e92190c', "id", 5, 'Heat a flat griddle over medium-high heat, then pour a ladleful of batter in the center and spread it outward in a thin, even circular motion to form a large, thin dosa.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '235a1a10-4d9e-44e3-87fb-ca6e38144811', "id", 6, 'Drizzle a little oil around the edges, then spread a thin layer of the red chutney evenly across the surface of the dosa while it cooks.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9e96eca0-622a-4a10-a06f-ff1341b185bb', "id", 7, 'Once the underside turns golden and crisp, about two to three minutes, spoon a line of the potato masala along the center.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9f41fe5c-247a-4008-a43a-b74055888a77', "id", 8, 'Fold the dosa over the filling and slide it off the griddle, serving immediately while still crisp, alongside coconut chutney and sambar.' FROM "recipes" WHERE "slug" = 'mysore-masala-dosa-karnataka-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'mysore-masala-dosa-karnataka-india';

-- Andhra Chicken Curry (Andhra Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '208e819e-6dd3-469d-9597-8b651e72bc47', "id", 1, 'Marinate chicken pieces in turmeric, salt, and a little red chili powder while preparing the rest of the ingredients.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4c3ac010-166d-4ecc-a9bb-aee1224534a1', "id", 2, 'Grind dried Guntur chilies with a little water into a fiery, deep-red chili paste, adjusting the quantity based on how spicy you want the final curry.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '51464dfc-b1de-42c7-854b-1fb5828a128b', "id", 3, 'Heat oil in a heavy pot and sauté chopped onions until they turn a deep golden-brown, which forms the flavor base.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ed6e554a-7182-401c-a9d8-7edb04764925', "id", 4, 'Add ginger-garlic paste and the ground Guntur chili paste, cooking for two to three minutes over medium heat until fragrant and the raw smell fades.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '778a54c7-2f59-4616-ac8d-3d753888ab76', "id", 5, 'Add chopped tomatoes and cook until they break down completely into a thick, pulpy base, about eight to ten minutes.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ad62b549-adcb-4129-bed7-e17d33c9a9af', "id", 6, 'Add the marinated chicken pieces and stir well to coat them in the masala, then cover and cook on medium-low heat for 15 to 20 minutes, stirring occasionally, until the chicken is fully cooked and tender.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6502d34a-3b61-4442-a736-19c61a319d97', "id", 7, 'Stir in tamarind extract for tang, and simmer uncovered for another five minutes so the gravy thickens to your desired consistency.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7f50573f-7fdf-426f-8c34-237c443fbcf8', "id", 8, 'Garnish with fresh coriander and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'andhra-chicken-curry-andhra-pradesh-india';

-- Gongura Pachadi (Andhra Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f1618918-9885-44ba-9bd0-0f6ec70113c6', "id", 1, 'Wash the gongura leaves thoroughly and roughly chop them, discarding any thick stems.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5dacac62-18ba-4a7b-978d-64220d418aa9', "id", 2, 'Heat a little oil in a pan and add dried red chilies along with a pinch of fenugreek seeds and cumin, roasting briefly until fragrant, then set them aside to cool.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5b00c925-7cfc-4018-8901-0b52c07bcc8f', "id", 3, 'In the same pan, add the chopped gongura leaves along with a little salt and turmeric, and cook over medium heat, stirring frequently, for about 10 to 12 minutes until the leaves wilt completely and turn soft and pulpy.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5cc52cae-218c-49c1-99f4-357e4e16784a', "id", 4, 'Let the cooked leaves cool slightly, then grind them together with the roasted red chilies and spices into a coarse, slightly chunky paste, adding very little or no water since the leaves release their own moisture.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0734886b-c851-40a7-a0a5-4c48e6aafd98', "id", 5, 'Heat a little more oil in the pan and temper mustard seeds, chopped garlic, and curry leaves until the garlic turns golden and fragrant.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b5029130-96f8-4877-a964-bd9178d16697', "id", 6, 'Add the ground gongura paste back into the pan and cook for another five minutes, stirring well, to let the tempering flavors combine into the relish.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a5b2fbc8-5e09-4800-a13c-e61745c91ee4', "id", 7, 'Adjust the salt, keeping in mind that gongura leaves are naturally quite sour and tangy.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '20f3d1f8-6dd1-4a85-bf8f-926c2c53300f', "id", 8, 'Serve at room temperature as a tangy side relish alongside rice and ghee, or with hot rotis.' FROM "recipes" WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'gongura-pachadi-andhra-pradesh-india';

-- Hyderabadi Biryani (Telangana, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '174ec31c-59b2-4ec1-ab85-92ff5c3e9316', "id", 1, 'Marinate the meat in thick yogurt, ginger-garlic paste, red chili powder, fried onions, mint, and a squeeze of lime for at least two hours, or overnight for deeper flavor.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3a8a777d-45bc-415f-b4f1-a0735493a9a4', "id", 2, 'Wash and soak long-grain basmati rice for 30 minutes, then boil it in generously salted water with whole spices like bay leaf, cinnamon, and cardamom until it is about seventy percent cooked, still firm at the core, then drain.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f799aca7-8cee-4842-8a2d-a15d08012779', "id", 3, 'Heat a heavy-bottomed pot and spread the marinated meat evenly across the base.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '21f0dfb8-7da6-49c8-b2d3-ad430109d5e9', "id", 4, 'Layer the par-boiled rice on top of the meat in an even layer, then scatter fried onions, chopped mint, coriander, and saffron soaked in warm milk over the surface.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '67f9943c-42aa-435c-8cbc-1a62e1a87df2', "id", 5, 'Drizzle melted ghee over the top and seal the pot tightly with a lid, sealing the rim with a strip of dough if you want to trap the steam completely.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4cdec210-1fff-4fa6-bb81-28bd38294f7a', "id", 6, 'Place the pot on a very low flame, or on a heavy griddle to diffuse the heat, and cook undisturbed for 35 to 40 minutes so the meat cooks through in the sealed steam while the rice absorbs its flavor from below.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '755f04a5-43d5-41e7-b81d-c8ea2dbfe73e', "id", 7, 'Turn off the heat and let the biryani rest, still sealed, for 10 minutes before opening.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '68cd3398-6a88-4a54-90df-57d3e0ab53f6', "id", 8, 'Gently mix the layers together from bottom to top just before serving, so the rice and meat combine without turning mushy, and serve hot with raita.' FROM "recipes" WHERE "slug" = 'hyderabadi-biryani-telangana-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'hyderabadi-biryani-telangana-india';

-- Mirchi ka Salan (Telangana, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8fa32685-3b13-43b3-887b-a1d16eb24a13', "id", 1, 'Select long, mild green chilies, wash them, and make a slit down one side without cutting all the way through, leaving the stem intact.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '405da787-563a-4ca7-9f94-3f8a5893958f', "id", 2, 'Lightly fry the chilies in oil for two to three minutes until they blister slightly and turn a duller green, then set them aside.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bee6bd88-c08d-48b2-9a7c-c677976bc329', "id", 3, 'Dry-roast peanuts and sesame seeds separately in a pan until they turn golden and fragrant, then let them cool and grind them together into a coarse paste with a little water.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3315c082-9814-49da-a702-86c6dcab3a4e', "id", 4, 'Heat oil in a pot and sauté chopped onions until golden-brown, then add ginger-garlic paste and cook until fragrant.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6a84227a-7df3-4e6b-b790-3ca45a1cee55', "id", 5, 'Stir in the peanut-sesame paste along with turmeric, red chili powder, and tamarind extract, and cook over low heat for five to seven minutes, stirring frequently to prevent it from sticking or burning.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0f70972-9eb1-4b0a-98c5-33a126d12d66', "id", 6, 'Add enough water to bring the gravy to a medium consistency, then bring it to a gentle simmer.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1b361965-afba-46bf-bd1e-b6148fdd96b6', "id", 7, 'Add the fried chilies to the gravy and let them simmer together for 10 to 12 minutes until they soften further and take on the flavor of the sauce.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a7f4d29f-36b8-4d85-b7c6-65735e0a9df5', "id", 8, 'Adjust the salt and tang with more tamarind if needed, and serve as a tangy, nutty accompaniment to biryani.' FROM "recipes" WHERE "slug" = 'mirchi-ka-salan-telangana-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'mirchi-ka-salan-telangana-india';

-- Shorshe Ilish (West Bengal, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3ba54b9a-c909-4c3d-82d1-2aec6fcff82a', "id", 1, 'Soak yellow and black mustard seeds together in water for about 20 minutes to soften them slightly.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'acb53f17-9d9c-40ec-a0cc-f38060f13d3e', "id", 2, 'Grind the soaked mustard seeds with a green chili and a little salt into a smooth paste, adding just enough water to keep it from turning too watery, and let it rest briefly so the bitterness mellows.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b84a12de-58bf-4b6e-aecd-0564393199f2', "id", 3, 'Clean the hilsa fish pieces gently, keeping them intact since hilsa is delicate and can break apart easily.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '699f8b72-8562-4231-acc5-025ce6f3fe7c', "id", 4, 'Rub the fish lightly with turmeric and salt, and let it sit for 10 minutes.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '10bf9d8e-6609-4092-9447-00148976e5ed', "id", 5, 'Heat mustard oil in a shallow pan until it just begins to shimmer, then add a pinch of nigella seeds and slit green chilies.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '29b331fd-9611-486c-b29e-c5f2eedc8162', "id", 6, 'Mix the mustard paste with a little water and pour it into the pan, letting it simmer gently for two to three minutes.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2cf70c52-2dda-4203-a4ca-5cc5cacd18f5', "id", 7, 'Carefully slide the fish pieces into the mustard gravy in a single layer, cover, and simmer on low heat for eight to ten minutes without stirring vigorously, occasionally spooning the gravy over the top, until the fish is just cooked through.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a91dd9d1-b827-42be-a884-d6005e402193', "id", 8, 'Finish with a drizzle of raw mustard oil over the top for extra pungency, and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'shorshe-ilish-west-bengal-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'shorshe-ilish-west-bengal-india';

-- Machher Jhol (West Bengal, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '090943f7-a44d-4a85-a7ff-fb051b089bb4', "id", 1, 'Clean the fish pieces and rub them with turmeric and salt, then shallow-fry them briefly in mustard oil for a minute or two on each side until lightly firmed up, and set aside.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3c88f430-968c-47dd-b883-497eab41c5a6', "id", 2, 'In the same oil, add a pinch of nigella or cumin seeds and let them sizzle.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '14700f56-0a0c-422e-9e20-73a537ea7a9a', "id", 3, 'Add chopped potatoes and sauté for a few minutes until they start to turn lightly golden at the edges.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '74638c1c-15a6-44e9-bafe-42c975b93c54', "id", 4, 'Add chopped tomatoes, turmeric, and a little chili powder, cooking until the tomatoes soften into a light base.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5d47f406-01cd-4321-a8a7-0a2dff60d571', "id", 5, 'Pour in enough water to make a thin broth, season with salt, and bring it to a boil.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd1ec676b-3a79-4af0-9e96-c36ab10352f6', "id", 6, 'Simmer until the potatoes are almost tender, about 10 minutes, then gently slide the fried fish pieces back into the broth.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd42c1a8a-7459-49b2-a326-c0ec2a5e656a', "id", 7, 'Cook on low heat for another five to seven minutes, spooning the broth over the fish occasionally, until the potatoes are fully cooked and the fish is heated through and tender.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '88929624-8ae5-485e-a2da-ba9da6c70bfa', "id", 8, 'Finish with a little extra mustard oil or a pinch of garam masala, and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'machher-jhol-west-bengal-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'machher-jhol-west-bengal-india';

-- Mishti Doi (West Bengal, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '451f143e-eae5-4292-a956-89c65a9019f9', "id", 1, 'Pour full-fat milk into a heavy-bottomed pot and bring it to a boil, then reduce the heat and simmer for 20 to 25 minutes, stirring occasionally, until it reduces slightly and thickens.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e20bc9b3-99dc-448b-8b16-99a11a41ce92', "id", 2, 'In a separate small pan, melt jaggery with a splash of water over low heat until it dissolves into a smooth syrup, then strain it to remove any impurities.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '83cad15d-4527-40d5-8985-1def4fec0e51', "id", 3, 'Stir the jaggery syrup into the warm milk, mixing well until fully combined and the milk takes on a light caramel color.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3b4017da-7b1c-425e-a1e3-f2a73ded4e39', "id", 4, 'Let the sweetened milk cool until it is warm to the touch, roughly the temperature of bathwater, since milk that is too hot or too cool will not set properly.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8fac92bf-1927-4556-bb6c-b442fc7d07df', "id", 5, 'Whisk in a spoonful of live yogurt culture until evenly distributed through the milk.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6ba67651-9744-488b-90c7-06c43a777225', "id", 6, 'Pour the mixture into small earthen pots or a heatproof dish, cover loosely, and place it in a warm, undisturbed spot, such as an oven with just the light on, for six to eight hours, or until it sets into a soft, wobbly curd.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '394c1e1d-cffa-4c48-b74b-514b58135898', "id", 7, 'Once set, refrigerate the mishti doi for at least two hours to firm up and chill fully before serving.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7b493292-a718-4469-9bd2-145db16f8cf5', "id", 8, 'Serve cold, straight from the pot, as a sweet, caramel-toned dessert.' FROM "recipes" WHERE "slug" = 'mishti-doi-west-bengal-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'mishti-doi-west-bengal-india';

-- Kolkata Kathi Roll (West Bengal, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '595494b2-9c3d-4edf-809e-444471b67a4e', "id", 1, 'Marinate cubes of chicken or paneer in yogurt, ginger-garlic paste, and a blend of spices for at least 30 minutes.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f6206303-ca76-4477-92c7-278f194d7c7d', "id", 2, 'Thread the marinated pieces onto skewers, or simply pan-sear them in a hot skillet, cooking for six to eight minutes and turning occasionally until charred at the edges and cooked through.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bf01ae30-8fab-4eb8-8ab6-679ab3083b13', "id", 3, 'Knead a soft wheat dough for the paratha, divide it into balls, and roll each one out into a thin round, brushing with a little oil and folding before rolling again to build flaky layers.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '007750c2-ac5a-4b8b-a801-ddb0803152cb', "id", 4, 'Heat a griddle and cook the paratha on both sides with a little oil until light golden spots appear.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '707a34e5-0519-4d2b-9279-39b435ed6141', "id", 5, 'While the paratha is still on the griddle and mostly cooked, crack a beaten egg over the top and spread it evenly, then flip the paratha so the egg cooks onto its surface and sets, about a minute.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3ab814cc-4aee-4c2c-9fd9-fbf438031e00', "id", 6, 'Remove the egg-coated paratha from the griddle and lay it flat on a clean surface.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '67bd787c-3569-47bf-8d69-49c26c39566f', "id", 7, 'Place the grilled filling down the center, along with sliced onions, a squeeze of lime, and your choice of green or tamarind chutney.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '28b9192d-76ed-439f-8f88-4e4b30824272', "id", 8, 'Roll the paratha tightly around the filling, wrap the bottom half in paper to hold it together, and serve immediately while warm.' FROM "recipes" WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kolkata-kathi-roll-west-bengal-india';

-- Jhal Muri (West Bengal, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '47c62ea1-d361-43a8-a2fc-7e3acba9e666', "id", 1, 'Place puffed rice in a large mixing bowl, checking that it is fresh and crisp before you begin.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1ff9d028-f2b6-4d53-8320-d068958d59f3', "id", 2, 'Drizzle a little mustard oil over the puffed rice and toss well so every grain is lightly coated, which gives the dish its distinctive pungent aroma.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '97960442-d8b7-4534-9b02-89e20600bce6', "id", 3, 'Add finely chopped onion, tomato, and green chili to the bowl.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '71a2cfdc-d38f-4653-b4a5-e5e3cf255031', "id", 4, 'Mix in roasted peanuts and boiled chickpeas for crunch and protein.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0580a9b2-0782-4775-aa2f-3d19d2e0331e', "id", 5, 'Sprinkle in chaat masala, a pinch of turmeric, and salt, tossing everything together thoroughly so the seasoning coats all the ingredients evenly.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '333851c6-382e-4b3d-a196-92a895f06218', "id", 6, 'Add a squeeze of fresh lime juice and toss once more to brighten the flavors.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a53450d7-ab7c-431c-a2b0-4658d47e18df', "id", 7, 'Taste and adjust the salt, chili, or lime as needed, keeping in mind the mix should be tangy, spicy, and slightly pungent from the mustard oil.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '785acec3-5c1d-4cd2-97e5-931743987461', "id", 8, 'Serve immediately in a paper cone or bowl, since puffed rice loses its crispness quickly once mixed with the wet ingredients.' FROM "recipes" WHERE "slug" = 'jhal-muri-west-bengal-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'jhal-muri-west-bengal-india';

-- Dalma (Odisha, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dalma-odisha-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5fc20f85-f8e2-4381-8102-10df62bf26ef', "id", 1, 'Rinse the lentils and combine them with a mix of vegetables such as pumpkin, raw banana, and potato cut into chunks.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'da9aa30a-c336-4a4b-b692-ff41f5963e66', "id", 2, 'Add turmeric, a little salt, and enough water to a pressure cooker, then cook for three to four whistles until the lentils are soft and the vegetables are tender.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dc5f3847-3545-47ea-bcf4-b046a0858f91', "id", 3, 'Once the pressure releases naturally, open the cooker and mash the mixture lightly with the back of a spoon to bring it to a thick, slightly chunky consistency.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e7c94e9f-b7f5-41f4-8daf-887359cb0f82', "id", 4, 'Heat ghee in a small pan and add cumin seeds, dried red chili, and a pinch of asafoetida, letting them sizzle until fragrant.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '87f4482d-bb5a-4c43-8a2f-51145984579b', "id", 5, 'If desired, add a small piece of grated coconut or ginger paste to the tempering for extra depth.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8231b36d-cd83-47d9-9b8b-fc27744a38a1', "id", 6, 'Pour the tempering over the cooked dal-vegetable mixture and stir well to combine.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '722b26d3-2393-4569-a7e3-0d21f1c1b1a9', "id", 7, 'Simmer for another five minutes on low heat so the flavors settle, adjusting the consistency with a little hot water if it has thickened too much.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd42dfb30-d510-48af-9bda-785ed19398bd', "id", 8, 'Serve hot with steamed rice as a comforting, everyday stew.' FROM "recipes" WHERE "slug" = 'dalma-odisha-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dalma-odisha-india';

-- Pakhala Bhata (Odisha, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '78a9ea47-f845-47fe-b064-fc87e56ec67d', "id", 1, 'Cook rice as you normally would, using slightly more water than usual so the grains turn a little softer than usual.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '780feefc-2ea8-4d55-a7a0-8e3d47eae814', "id", 2, 'Once the rice is cooked, let it cool to room temperature.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2e85f825-8a26-43bc-8b8c-e7ff01324292', "id", 3, 'Transfer the cooled rice to a clean container and add enough water to submerge it completely, along with a small piece of dried red chili or a spoon of leftover yogurt to help kick off natural fermentation.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9637428a-edc2-4735-8beb-2d511380727f', "id", 4, 'Cover the container loosely and let it sit at room temperature overnight, or for at least eight hours, allowing the rice to soften further and develop a mild, tangy aroma.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cbd5aabf-68be-48c6-a601-fb10fa47ed48', "id", 5, 'The next day, check that the rice has turned soft and the water has taken on a faintly sour smell, which signals it has fermented properly.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e62c23dc-aee9-4859-80be-a9c27aae0b31', "id", 6, 'Refrigerate the fermented rice and water for an hour or two before serving so it is properly chilled.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2ffd10d2-80ca-4966-89c5-d945ff9714aa', "id", 7, 'Serve the pakhala bhata cold in a bowl with a little extra water, topped with a pinch of salt.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '133a5e56-c9ed-400e-a0ae-4ea061531af8', "id", 8, 'Pair it with simple accompaniments such as fried potatoes, fried green chilies, or a piece of dried fish for a traditional, refreshing meal, especially in hot weather.' FROM "recipes" WHERE "slug" = 'pakhala-bhata-odisha-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pakhala-bhata-odisha-india';

-- Litti Chokha (Bihar, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd4afe04e-d777-4ba6-93cc-768b2be03354', "id", 1, 'Mix wheat flour with a little ghee and salt, then gradually add water and knead into a firm, slightly stiff dough, and let it rest for 20 minutes.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9025ebdb-9f12-4ba3-b1d9-40a93762d97e', "id", 2, 'Dry-roast sattu, or roasted gram flour, and mix it with chopped onion, garlic, ginger, green chili, ajwain, mustard oil, lemon juice, and salt to make a crumbly, aromatic stuffing.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8f1965aa-bfac-4374-bee8-14d7d29aaa42', "id", 3, 'Divide the rested dough into balls, flatten each one into a small disc, and place a generous portion of the sattu stuffing in the center.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a14d605b-ced5-4006-832d-12ae4f2293f9', "id", 4, 'Gather the edges of the dough around the filling and pinch to seal tightly, then roll gently between your palms to smooth into a round ball, taking care not to let the filling escape.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0a976a31-21a6-43d2-b173-b624bc325c9a', "id", 5, 'Bake the stuffed balls in a preheated oven at around 200 degrees Celsius for 25 to 30 minutes, turning occasionally, until the outside is firm and lightly browned, or roast them over hot coals for the traditional smoky flavor.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a680eea1-ee5a-4525-a5b3-be5ba9760d13', "id", 6, 'While the litti bakes, roast eggplant, tomatoes, and potatoes directly over an open flame or under a broiler, turning occasionally, until the skins char and blister and the insides turn completely soft, about 15 to 20 minutes.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '745d5f2f-bf4c-4df7-a65d-53c16bdf78fa', "id", 7, 'Peel the charred vegetables, discard the skins, and mash the flesh together with chopped onion, garlic, green chili, mustard oil, and salt to make the smoky chokha.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7243dbc-df00-4984-8fea-0ad85ccec2e6', "id", 8, 'Crack open the hot litti, drizzle generously with ghee, and serve alongside the mashed chokha.' FROM "recipes" WHERE "slug" = 'litti-chokha-bihar-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'litti-chokha-bihar-india';

-- Sattu Paratha (Bihar, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ba80da11-4245-4117-8474-da2aae49630e', "id", 1, 'Dry-roast sattu lightly in a pan for a minute to freshen its aroma, then mix it with chopped onion, green chili, ginger, ajwain, mustard oil, lemon juice, and salt to form a moist, crumbly filling.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7db8c51-9b4e-4169-ace2-d0f023ad1e85', "id", 2, 'Knead a soft wheat dough with a little oil and water, then divide it into balls and let them rest for 15 minutes.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '428af9b8-76f4-4e43-bfd3-abd1632427a8', "id", 3, 'Flatten a dough ball into a small disc and place a portion of the sattu filling in the center.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9a17e3c7-c920-4dd1-85f7-3a734de0cb82', "id", 4, 'Gather the edges of the dough over the filling and pinch to seal, then flatten the stuffed ball gently and dust it with a little flour.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '36951651-abc4-4faa-bf9a-e1b356197705', "id", 5, 'Carefully roll it out into a slightly thick round, applying even pressure so the filling does not break through the dough.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '02df0bf5-9dda-41cf-a612-32358cfc4e66', "id", 6, 'Heat a griddle over medium heat and place the rolled paratha on it, cooking for a minute until small bubbles appear on the surface.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9896bed0-0b22-4109-9645-1b71599e2387', "id", 7, 'Flip and drizzle a little ghee around the edges, then press gently with a spatula and cook both sides for another two to three minutes until golden-brown spots appear and the paratha is cooked through.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e0043b51-41d6-4f97-9682-3db61e152f9f', "id", 8, 'Serve hot with a dollop of extra ghee, yogurt, or pickle on the side.' FROM "recipes" WHERE "slug" = 'sattu-paratha-bihar-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'sattu-paratha-bihar-india';

-- Bhopali Gosht Korma (Madhya Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c2ad527a-c0cb-42f8-8692-bed3509837ca', "id", 1, 'Cut the meat into medium pieces and marinate briefly with a little salt, ginger-garlic paste, and yogurt while you prepare the rest of the ingredients.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '88d3948d-2591-48bc-ad55-6fa3f710e1ff', "id", 2, 'Heat oil or ghee in a heavy pot and fry sliced onions until they turn a deep golden-brown, then set aside a portion for garnish and grind the rest into a smooth paste with a splash of water.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '34ed9694-272e-4f73-8c5c-302ac8f03370', "id", 3, 'Add whole spices such as cinnamon, cloves, and green cardamom to the same pot and let them sizzle briefly until fragrant.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a07e5cad-13fb-4f54-94a6-30c2a7ecfc20', "id", 4, 'Add the marinated meat and sear it over medium-high heat for five to seven minutes, stirring occasionally, until it is browned on the outside.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cbb93446-8dd2-43aa-ba7a-2b71a0d10614', "id", 5, 'Stir in the fried onion paste along with red chili powder and coriander powder, mixing well to coat the meat evenly.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4e0635f2-15dd-4704-b273-3e8a5d9fcbda', "id", 6, 'Whisk in yogurt gradually, a spoonful at a time, stirring constantly over low heat to prevent it from splitting.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f5f39c91-2895-4a36-90df-bfb996c0e5c1', "id", 7, 'Add enough water to reach your desired gravy consistency, then cover and simmer on low heat for 45 minutes to an hour, stirring occasionally, until the meat is tender and the gravy has thickened and turned rich and glossy.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1e4e9813-5b82-44ab-9dc9-c00c103a6665', "id", 8, 'Garnish with the reserved fried onions and serve hot with rice or roti.' FROM "recipes" WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bhopali-gosht-korma-madhya-pradesh-india';

-- Poha (Madhya Pradesh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8c986acb-3a93-4435-96d8-ac1b40ffc2e1', "id", 1, 'Place flattened rice, or poha, in a colander and rinse briefly under running water, then drain well and set aside to soften for a few minutes, taking care not to soak it too long or it will turn mushy.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '10539dd9-24a0-45fa-8039-cad5684f7ec2', "id", 2, 'Heat oil in a pan and add mustard seeds, letting them pop, followed by cumin seeds and a pinch of asafoetida.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '11874573-77d7-4b3c-8003-caf123ad8f49', "id", 3, 'Add chopped green chili, curry leaves, and finely chopped onion, sautéing until the onion turns soft and slightly translucent.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f678ef03-f6b6-4126-945d-b33940895c94', "id", 4, 'Stir in roasted peanuts and a pinch of turmeric, mixing well so the oil turns a light yellow color.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c6d0056e-a7f9-48bf-8b8d-8d248110e1e9', "id", 5, 'Gently add the softened poha to the pan, along with salt and a pinch of sugar, tossing carefully with a light hand so the delicate flakes do not break.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5ff18875-59dc-46ab-9810-0c90793b2315', "id", 6, 'Cover and cook on low heat for three to four minutes, tossing once or twice, until the poha is heated through and evenly coated with the spices.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb8d2354-a093-4705-b3f5-ac1858bf681a', "id", 7, 'Squeeze fresh lime juice over the top and sprinkle with fresh coriander, tossing once more to combine.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0138dc3f-eafc-4daa-9bff-445b005ef449', "id", 8, 'Serve warm, optionally topped with sev for crunch.' FROM "recipes" WHERE "slug" = 'poha-madhya-pradesh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'poha-madhya-pradesh-india';

-- Chila (Chhattisgarh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4428fe0d-cbfd-49ff-9712-a628d4e1d320', "id", 1, 'Soak a mix of rice and lentils, such as urad dal or moong dal, together for four to six hours.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd46d3053-56f9-4ce4-88f6-a07227feaa50', "id", 2, 'Drain and grind the soaked rice and lentils with a little water into a smooth, pourable batter, then let it ferment for a few hours, or use it fresh with a pinch of salt if a quicker version is preferred.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1db89f34-7d8e-4032-8c54-29ac28ac22b6', "id", 3, 'Season the batter with salt, chopped green chili, and finely chopped onion or coriander if desired.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c7eafec4-459b-406a-80b2-430e6fc681a2', "id", 4, 'Heat a flat griddle over medium heat and lightly grease it with oil.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9c9a47c6-5439-4e0d-8e5c-ab39b66404a6', "id", 5, 'Pour a ladleful of batter onto the center of the griddle and spread it outward in a circular motion with the back of the ladle to form a thin, even pancake.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7cfbc666-fa08-4dc0-828e-1f490ff437c8', "id", 6, 'Drizzle a little oil around the edges and cook for two to three minutes until the underside turns golden-brown and slightly crisp.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6446b5e7-c681-4036-b0b6-17351161c625', "id", 7, 'Flip carefully and cook the other side for another one to two minutes until fully set and lightly browned.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '21cef75f-413e-4284-a793-cc05be2a4ee6', "id", 8, 'Serve hot, folded or rolled, with chutney or pickle on the side.' FROM "recipes" WHERE "slug" = 'chila-chhattisgarh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chila-chhattisgarh-india';

-- Aamat (Chhattisgarh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b23842f2-ba37-48c2-a07d-ab1ff8751658', "id", 1, 'Clean the bamboo shoots thoroughly and slice them thinly, then soak them in water for about 30 minutes to reduce any bitterness, changing the water once if needed.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '75a669a5-005a-4565-9dab-b740f3999ce2', "id", 2, 'Cut the accompanying vegetables, such as potato, beans, or local greens, into bite-sized pieces.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7233b3ab-112b-4e04-9db5-1ded17769807', "id", 3, 'Heat a little oil in a pot and add a pinch of mustard seeds or a simple tempering, depending on the local variation.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f89322ca-aecc-41ef-a8d1-908cc00c2ef6', "id", 4, 'Add the sliced bamboo shoots and vegetables to the pot along with turmeric and salt.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '271c7d32-76af-4157-a30b-202da2430cc3', "id", 5, 'Pour in enough water to just cover the ingredients and bring it to a boil.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4f4ac8f1-2ed8-41c7-a050-a63815576711', "id", 6, 'Reduce the heat and simmer gently for 20 to 25 minutes, stirring occasionally, until the bamboo shoots turn tender and the vegetables are fully cooked.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1b60ca05-ae44-4aec-99e4-875a537bdbdd', "id", 7, 'Taste and adjust the seasoning, keeping the flavor light and mildly spiced in the traditional tribal style rather than heavily spiced.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b2fae6ba-e764-4c64-b9f0-bf0727400eba', "id", 8, 'Serve hot as a simple, brothy side dish alongside steamed rice.' FROM "recipes" WHERE "slug" = 'aamat-chhattisgarh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'aamat-chhattisgarh-india';

-- Fish Tenga (Assam, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7905cc1-a209-42bf-b1bd-ada35a4bb5ca', "id", 1, 'Clean the fish pieces and rub them lightly with turmeric and salt, then shallow-fry them briefly in a little oil for a minute or two per side until lightly firmed, and set aside.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1dfd0aab-f81d-44af-b757-e7fc6c853640', "id", 2, 'In the same pan, add a pinch of fenugreek seeds and let them sizzle for a few seconds until fragrant.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0a728341-b592-4c96-9fcd-9b170b24107e', "id", 3, 'Add chopped tomatoes, or sliced elephant apple if using, and cook until they soften and break down slightly, which builds the sour base of the broth.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2b59cbb2-3c6b-42a8-9a62-3b6f6935a019', "id", 4, 'Pour in water and bring it to a gentle boil, seasoning with salt and a little turmeric.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cbb2645f-fedd-4bba-b318-e2df4a969825', "id", 5, 'Add slit green chilies to the broth for gentle heat.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fd944684-bb21-4334-831a-5a40a4210e40', "id", 6, 'Carefully slide the fried fish pieces into the simmering broth and cook on low heat for eight to ten minutes, without stirring too much, until the fish is cooked through and tender.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7dad6145-a870-4fb3-9881-8eba4aedd4f9', "id", 7, 'Taste the broth and adjust the sourness by adding a little more tomato or elephant apple if it needs more tang.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a1e63392-7413-44de-94aa-4825437e4066', "id", 8, 'Serve hot as a light, sour broth alongside steamed rice.' FROM "recipes" WHERE "slug" = 'fish-tenga-assam-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'fish-tenga-assam-india';

-- Khar (Assam, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'khar-assam-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd460d17f-58dd-4fb8-9c25-7cac01d39d99', "id", 1, 'Prepare the alkaline ash-water by filtering water through dried banana peel or bamboo ash if you have access to it, or use a store-bought khar substitute, straining it until clear.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '465b0ddc-833c-4278-a655-998e72855f26', "id", 2, 'Peel and cut raw papaya or other chosen vegetables into medium chunks.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '873e8c03-97f6-4809-ba4c-eae008c0616b', "id", 3, 'Heat a little oil in a pot and add a simple tempering of mustard seeds or a pinch of ginger and garlic, sautéing briefly until fragrant.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7e3f2fb-3581-4d66-bad0-d9bb9bbcece7', "id", 4, 'Add the chopped vegetables to the pot and stir to coat them in the oil.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '11787486-995e-4421-b0fb-855f95fd09ce', "id", 5, 'Pour in the alkaline khar water along with a little plain water to help the vegetables cook through, and season with salt.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eb6dd1ce-505f-4764-8876-d57b4d367c36', "id", 6, 'Bring to a boil, then reduce the heat and simmer for 15 to 20 minutes, stirring occasionally, until the vegetables turn very soft and slightly break down, which is characteristic of this dish.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3658f12f-864d-409a-87d1-1bd78188de2c', "id", 7, 'Taste and adjust the seasoning, keeping in mind the khar water itself lends a distinctive earthy, mildly alkaline flavor that should remain noticeable but not overwhelming.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a6ae333c-21f1-4227-b2ae-1ecc24f26abb', "id", 8, 'Serve warm as a traditional first course, often eaten before the rest of an Assamese meal.' FROM "recipes" WHERE "slug" = 'khar-assam-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'khar-assam-india';

-- Eromba (Manipur, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'eromba-manipur-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4139efdd-e862-49fe-ad31-2bced1fc60a8', "id", 1, 'Boil a mix of vegetables, such as potato, beans, and local greens, in water with a pinch of salt until completely soft.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '45056157-b937-49ac-a9dc-a1d462172112', "id", 2, 'Drain the vegetables, reserving a little of the cooking water, and mash them coarsely with a spoon or masher, leaving some texture.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f40d3502-a1b0-4e6f-b314-16220fe9af4d', "id", 3, 'Roast a piece of fermented fish, or ngari, directly over a flame or in a dry pan for a minute or two on each side until it becomes fragrant and slightly charred.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '64e189ee-75bd-4337-be32-7da6f21f9ab2', "id", 4, 'Crush the roasted fermented fish into small pieces or a rough paste using a mortar and pestle.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '925c3fae-7182-46cd-89d0-d3447fb65a8e', "id", 5, 'Roast a few dried or fresh chilies directly over the flame as well, until they blister and soften, then crush them along with the fermented fish.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '674e35e4-5cfa-4cb4-8991-3df841a1948c', "id", 6, 'Combine the mashed vegetables with the crushed fermented fish and chili, mixing thoroughly by hand or with a spoon, adding a splash of the reserved cooking water if the mixture is too dry.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9069370e-b10d-4432-b863-6e67de83e729', "id", 7, 'Adjust the salt, keeping in mind that the fermented fish already carries a strong salty, pungent flavor.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2d07821e-76f9-411d-9b0c-fbe9af6ca3da', "id", 8, 'Serve at room temperature as a chunky, pungent side dish alongside steamed rice.' FROM "recipes" WHERE "slug" = 'eromba-manipur-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'eromba-manipur-india';

-- Chak-hao Kheer (Manipur, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4b704907-8f94-4d7c-aeb9-58d488d66a37', "id", 1, 'Rinse the black rice a couple of times, then soak it in water for at least two hours, or ideally overnight, since the tough outer bran layer takes time to soften.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '58024016-805a-4571-8cd9-766edc0f21fa', "id", 2, 'Drain the soaked rice and combine it with milk in a heavy-bottomed pot, bringing it to a gentle boil.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e231e41e-758a-453a-9a57-d0c564675257', "id", 3, 'Reduce the heat to low and simmer the rice in the milk for 40 to 45 minutes, stirring frequently to prevent it from sticking or scorching on the bottom, until the grains soften and the milk thickens.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '677c10a4-5a44-40f7-b08e-a2015424f00f', "id", 4, 'As it cooks, the mixture will gradually take on a deep purple hue naturally released from the black rice.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2e8b8d75-e8de-43f5-ac2c-04d56963ac11', "id", 5, 'Add sugar once the rice is mostly tender, stirring well until it dissolves completely, then continue simmering for another 10 to 15 minutes until the kheer reaches a thick, creamy, pudding-like consistency.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fd8e6ef7-3955-4d89-8f40-3d9d8c7dfc9d', "id", 6, 'If desired, stir in a pinch of cardamom powder or a few chopped nuts for added flavor and texture near the end of cooking.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fb051528-33e1-4667-accb-870281c71eea', "id", 7, 'Remove from the heat and let it cool slightly, since the kheer will continue to thicken as it cools.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8b311df4-a78c-4b4c-925e-01072086f55c', "id", 8, 'Serve warm or chilled, depending on preference.' FROM "recipes" WHERE "slug" = 'chak-hao-kheer-manipur-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chak-hao-kheer-manipur-india';

-- Smoked Pork with Bamboo Shoot (Nagaland, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3fc2cc08-db2c-4295-8e62-d1cd7166c21b', "id", 1, 'Cut the smoked pork into bite-sized pieces, checking that any tough or overly charred bits are trimmed away.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fa28d4d9-59fc-4d6a-9959-7512cfc2b195', "id", 2, 'Soak the fermented bamboo shoot briefly in water and drain, which softens its texture and tempers its sharp aroma slightly.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bce34176-a092-4ac5-b44d-41d56bf98b98', "id", 3, 'Heat a little oil in a heavy pot and add chopped garlic, ginger, and dried red chilies, sautéing until fragrant.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ee2ae1b9-447d-49b2-a807-9920af71cb90', "id", 4, 'Add the smoked pork pieces and stir-fry for a few minutes so they pick up flavor from the aromatics and release some of their smoky fat.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ed99f12f-63a7-4ed9-9092-83d152c3e5ce', "id", 5, 'Add the fermented bamboo shoot to the pot along with a little water, stirring to combine everything evenly.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '93735c1d-74ff-4855-ac53-0eb1d10acf7b', "id", 6, 'Cover and simmer on low heat for 25 to 30 minutes, stirring occasionally, until the pork is tender and the bamboo shoot has softened and absorbed the smoky, spicy flavors of the pot.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0f5ecd2e-cd9b-4e07-ab43-cc1e50a4ba17', "id", 7, 'Check the seasoning, adding salt carefully since both the smoked pork and fermented bamboo shoot can already be quite salty and pungent.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '857d45c2-bb5b-4ddf-b767-6c2519829e36', "id", 8, 'Serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'smoked-pork-with-bamboo-shoot-nagaland-india';

-- Axone (Nagaland, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'axone-nagaland-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a3b039c6-ebd3-40c8-9fb0-1ed28300588c', "id", 1, 'Cut pork into bite-sized pieces, or prepare a mix of vegetables if making the vegetarian version.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '61739376-577c-4aa3-b1e2-b6f959dba611', "id", 2, 'Heat a little oil in a pan and add chopped garlic, ginger, and dried red chilies, sautéing until fragrant.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0b44c016-44cf-4305-b273-2025e0acc766', "id", 3, 'Add the pork, or vegetables, and stir-fry over medium-high heat for several minutes until lightly browned or softened.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e3db9615-13f4-4067-b3bc-8c06358b6bae', "id", 4, 'Crumble the fermented soybean, or axone, directly into the pan, mashing it slightly with the back of a spoon to help it distribute evenly through the dish.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e546e0c2-35b5-48a3-b805-d3854dd94c01', "id", 5, 'Stir everything together well, letting the pungent aroma of the fermented soybean bloom as it heats through for a couple of minutes.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '05dd0a7c-ad6a-4494-b5c4-dd6d02b57f05', "id", 6, 'Add a little water to help everything cook together, then cover and simmer on low heat for 20 to 25 minutes, or longer if using pork, until the meat is tender and the flavors have melded.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08ea8530-adfd-44c4-bcc2-e08545e3d0c6', "id", 7, 'Taste and adjust the salt carefully, since fermented soybean is naturally salty and intensely flavored.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '53ecbc41-bd34-48ed-ad0b-ac7f88cb8ecb', "id", 8, 'Serve hot with steamed rice, being mindful that the aroma is strong and distinctive even after cooking.' FROM "recipes" WHERE "slug" = 'axone-nagaland-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'axone-nagaland-india';

-- Jadoh (Meghalaya, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e8135768-340a-41b5-a714-89c2472f79df', "id", 1, 'Rinse the rice and set it aside while you prepare the pork.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '85ce7723-22b0-4fba-beb5-7ece7d9e87c3', "id", 2, 'Cut the pork into small pieces, including a little fat if available, since the rendered fat is part of what flavors the rice.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bccb5b6f-4f00-4012-a165-5ddeea10c884', "id", 3, 'Heat a heavy pot and cook the pork pieces over medium heat, stirring occasionally, until they release their fat and turn lightly browned, about eight to ten minutes.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7d06e522-277a-4df3-a01b-45af2c865b01', "id", 4, 'Add chopped onion, ginger, and garlic to the pot, sautéing until softened and fragrant in the rendered pork fat.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1eaea9a7-50d7-4830-9fbd-f3ab4d4e7549', "id", 5, 'Stir in local spices and a small amount of turmeric, along with a little pork blood if using the traditional preparation, mixing well to coat the meat.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6efa284a-b860-4522-942c-29de19532fba', "id", 6, 'Add the rinsed rice to the pot and stir so the grains get coated in the flavorful fat and spices.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '69c91f45-b53d-4bed-9984-82c78f572558', "id", 7, 'Pour in the appropriate amount of water for the rice, season with salt, then cover and cook on low heat for about 20 minutes, without stirring, until the rice is tender and has absorbed all the liquid and flavor.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '76b3529b-cb0e-4d83-9c0a-a06e31ff0483', "id", 8, 'Let it rest covered for five minutes, then fluff gently and serve hot as a smoky, savory one-pot rice dish.' FROM "recipes" WHERE "slug" = 'jadoh-meghalaya-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'jadoh-meghalaya-india';

-- Momos (Sikkim, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'momos-sikkim-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0e4ce712-7172-4269-9a4c-dcdb52f3e0d7', "id", 1, 'Knead a simple dough from wheat flour, water, and a pinch of salt until smooth, then cover and let it rest for 20 to 30 minutes.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0590eecf-7a32-4162-be47-8a19687182cd', "id", 2, 'Prepare the filling by finely chopping or mincing your choice of meat or vegetables, then mix with grated ginger, garlic, chopped spring onion, a little soy sauce, and salt.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '18db9ad8-284f-457d-87b4-cc814620e4e2', "id", 3, 'Divide the rested dough into small balls and roll each one out into a thin, round wrapper, keeping the edges slightly thinner than the center.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ec27a40f-dcbf-4faa-b4a4-58e36aec241b', "id", 4, 'Place a small spoonful of filling in the center of each wrapper.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '88809379-f613-48b7-bad2-4fd61adb4f3a', "id", 5, 'Gather the edges of the wrapper up around the filling and pleat them together at the top, pinching firmly to seal so the filling does not leak out during steaming.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2ba35a5a-1250-401c-86b1-0401e618ba2e', "id", 6, 'Lightly grease a steamer basket or line it with cabbage leaves to prevent sticking, then arrange the momos with space between them.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4825e4d5-8a0e-4323-8a3f-8f5a348d75e2', "id", 7, 'Steam over boiling water for 12 to 15 minutes until the wrappers turn slightly translucent and the filling is fully cooked through.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '79840120-1b8e-47fc-821a-f27c7d5d6ded', "id", 8, 'Serve hot immediately with a spicy tomato-chili chutney on the side.' FROM "recipes" WHERE "slug" = 'momos-sikkim-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'momos-sikkim-india';

-- Thukpa (Sikkim, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bbaaa09b-2b36-4a76-b591-98500020df6f', "id", 1, 'Prepare a broth by simmering meat bones or a vegetable stock base with garlic, ginger, and a few whole spices for at least 30 minutes to build a flavorful base.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '58b18bc5-2cc4-4c27-96e4-edbe17b9d96b', "id", 2, 'Strain the broth if needed, then return it to the pot and bring it back to a simmer.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7125f2d1-7728-4925-8302-5a8e25b7281e', "id", 3, 'Heat a little oil in a separate pan and sauté chopped garlic, ginger, and sliced vegetables such as carrot, cabbage, and bell pepper until just softened.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8c74c6d6-0d55-4c71-a28b-47d2ce39c9ba', "id", 4, 'Add these sautéed vegetables to the simmering broth along with a splash of soy sauce and a pinch of chili powder for depth.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '83ff72c8-abaa-4992-ac66-accdbba2c582', "id", 5, 'If using meat, add thin slices to the broth at this stage and let them cook through, about five to seven minutes.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f21fc380-253c-4e2f-8112-1461acd8c2ad', "id", 6, 'Cook the noodles separately in boiling water according to their type until just tender, then drain.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd5375027-8e0a-417a-aeef-53c6e19e2c4b', "id", 7, 'Divide the cooked noodles among serving bowls and ladle the hot broth with vegetables and meat over the top.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c5a2b709-8cb3-41ce-9dd2-e38aa1ccc3c3', "id", 8, 'Garnish with chopped spring onion and fresh coriander, and serve immediately while piping hot.' FROM "recipes" WHERE "slug" = 'thukpa-sikkim-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'thukpa-sikkim-india';

-- Meen Kuzhambu (Puducherry, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0ab65021-9a71-4704-9678-5e7cded7314b', "id", 1, 'Soak tamarind in warm water for 15 minutes, then squeeze and strain to get a tangy extract.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb7a84aa-590b-4600-b7c7-6b070f156c05', "id", 2, 'Clean the fish pieces and rub them lightly with turmeric and salt, setting them aside while you prepare the gravy base.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'aa7e6062-6986-44f8-b34a-3a07b30df229', "id", 3, 'Heat oil in a clay pot or heavy pan and add mustard seeds and fenugreek seeds, letting them sizzle briefly.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '87dd59d0-7ad3-4d1a-ac18-7ec071b609b7', "id", 4, 'Add chopped shallots, garlic, and curry leaves, sautéing until the shallots turn soft and lightly golden.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '48135f7d-71f9-45bd-a8b6-48781f21c49a', "id", 5, 'Stir in chopped tomatoes and cook until they soften, then add sambar powder or a mix of chili and coriander powder, along with a little grated coconut if using, cooking for a few minutes until fragrant.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f5def3ba-87e0-4930-bfb6-d8454c8639fc', "id", 6, 'Pour in the tamarind extract along with enough water to reach a medium gravy consistency, then bring it to a boil and let it simmer for 10 minutes so the raw tamarind smell cooks off.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '48bdd5f4-e480-46eb-97f9-a5b9c5a4561f', "id", 7, 'Gently slide the fish pieces into the simmering gravy and cook on low heat for eight to ten minutes, without stirring too vigorously, until the fish is cooked through and the gravy has thickened slightly.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f8b326f9-7ebd-4a49-b65f-15a6b6013580', "id", 8, 'Let the curry rest for a few minutes off the heat, since the flavor deepens as it sits, and serve hot with steamed rice.' FROM "recipes" WHERE "slug" = 'meen-kuzhambu-puducherry-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'meen-kuzhambu-puducherry-india';

-- Thukpa (Ladakhi style) / Skyu (Ladakh, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '967d7a21-42a3-4ff2-af8b-e54dbecbabdb', "id", 1, 'Knead a firm dough from wheat flour and water, then let it rest for 15 to 20 minutes so it becomes easier to shape.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7a8eea2e-ca35-4110-895d-5214eafb6cc1', "id", 2, 'For skyu, pinch off small pieces of the rested dough and press each one between your thumb and forefinger to form little thumb-shaped or shell-shaped pieces; for noodle-style thukpa, roll and cut the dough into strips instead.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '427dd427-3ea4-4236-a1dc-0fc382da652a', "id", 3, 'Heat a little oil in a heavy pot and sauté chopped garlic, ginger, and onion until fragrant and lightly softened.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3447d795-5c32-4172-af19-76d497b26fa4', "id", 4, 'Add sliced vegetables such as carrot, turnip, and potato, along with cubed meat if using, and stir-fry for a few minutes.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '394feaa3-a4ce-49c0-8bda-8fecf0f1f37b', "id", 5, 'Pour in water or stock to cover the ingredients generously, season with salt, and bring to a boil.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4350aabc-a06d-4bbc-ba1a-ac06137cd719', "id", 6, 'Simmer for about 15 minutes until the vegetables and meat are partly cooked, then add the shaped dough pieces or noodles directly into the simmering broth.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '37f4b61c-d775-45ca-9d81-966f5ce930e6', "id", 7, 'Cook for another 10 to 12 minutes, stirring gently now and then, until the dough pieces turn tender and slightly chewy and the meat, if used, is fully cooked.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '398f7763-40c4-4b04-80aa-538ff4ce0837', "id", 8, 'Adjust the seasoning and serve hot in bowls, garnished with chopped coriander if available, to warm up against the high-altitude cold.' FROM "recipes" WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'thukpa-ladakhi-style-skyu-ladakh-india';

-- Grilled Reef Fish (Andaman & Nicobar, India)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '93d1e899-60cb-44b1-ab24-11405fb2bf93', "id", 1, 'Clean the reef fish thoroughly, scaling and gutting it if it is whole, then pat it completely dry with paper towels.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd1a79f05-7446-4d0f-8df9-eeb3e75c36b8', "id", 2, 'Make a few shallow diagonal cuts on both sides of the fish so the seasoning and heat penetrate evenly.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '051c9d74-cf5e-4877-b062-900b2c1f37d8', "id", 3, 'Rub the fish lightly with salt, a little black pepper, and a touch of oil, keeping the seasoning minimal so the natural sweetness of the fish remains the star of the dish.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f8564755-85ac-4522-8e3b-71686fa37eab', "id", 4, 'If desired, tuck a few slices of garlic, lime, or fresh herbs into the slits or the cavity for subtle extra aroma.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1f123165-c9a5-4ea4-a4d0-ddf5a455f273', "id", 5, 'Let the fish rest for 15 to 20 minutes at room temperature so the seasoning settles in before cooking.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a9ae28bd-1a06-45b3-8fe7-e55824f15f79', "id", 6, 'Prepare an open flame or hot grill and lightly oil the grates to prevent sticking.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '397eb2eb-04b7-4cd4-a258-b3c5e2fe2b78', "id", 7, 'Grill the fish for four to six minutes per side, depending on its size, turning carefully once the skin releases easily from the grates, until the flesh turns opaque and flakes easily with a fork.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'afdba8f0-6b62-48ca-a432-9a9551e573c5', "id", 8, 'Serve immediately with a wedge of lime, letting the smoky char and clean flavor of the fish speak for itself.' FROM "recipes" WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'grilled-reef-fish-andaman-and-nicobar-india';

-- Kung Pao Chicken (Sichuan, China)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '690916ca-7f51-46f3-8fe4-6d769a28f0e5', "id", 1, 'Cut boneless skinless chicken thigh into bite-sized cubes and toss with soy sauce, rice wine, and cornstarch, then let it marinate for about 15 minutes.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fec8874d-4fa6-46c6-9a53-b0a81ea70c29', "id", 2, 'Whisk together a sauce of soy sauce, black vinegar, sugar, and a little more cornstarch in a small bowl and set aside.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '89a9c46f-b60d-4e7b-8e5f-b912b51336b2', "id", 3, 'Heat oil in a wok over high heat until it starts to shimmer, then add dried red chilies and Sichuan peppercorns and stir-fry for about 30 seconds until fragrant but not blackened.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c74ad001-08d7-4cab-87f7-c8c76a8ed187', "id", 4, 'Add the marinated chicken in a single layer and let it sear undisturbed for a minute before stirring, cooking for about 3 minutes until browned and nearly cooked through.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '270fd3ef-0207-402c-98b2-513dbcbce522', "id", 5, 'Add minced garlic, ginger, and the white parts of the scallions and stir-fry for 30 seconds until aromatic.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0bbad39a-e75e-497b-a5df-6d7ec32499d8', "id", 6, 'Pour in the prepared sauce and toss everything constantly for about a minute until it thickens and glazes the chicken evenly.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '07dbcf1f-60b3-4389-a414-127786904a69', "id", 7, 'Stir in roasted peanuts and the green scallion tops and toss for a final 30 seconds.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7774fc57-00f2-4741-ba4e-3fcb7bb63d76', "id", 8, 'Serve immediately over steamed rice while the chicken is still glossy and hot.' FROM "recipes" WHERE "slug" = 'kung-pao-chicken-sichuan-china';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kung-pao-chicken-sichuan-china';

-- Jiaozi (Dumplings) (Beijing, China)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ca14f66f-b246-4a17-b8ae-78e36f28736d', "id", 1, 'Finely chop napa cabbage, sprinkle it with salt, and let it sit for 10 minutes, then squeeze out as much liquid as possible with your hands.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e08ceac9-b7fd-4ed1-a7ab-9853fb0b09c0', "id", 2, 'Combine the cabbage with ground pork, minced garlic chives, grated ginger, soy sauce, sesame oil, and a splash of rice wine, stirring in one direction until the filling turns slightly sticky and cohesive.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b027875f-175b-49c3-b012-445707830943', "id", 3, 'Lay a wheat dumpling wrapper flat in your palm and spoon about a teaspoon of filling into the center.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '45f52d3d-64f9-4b8b-90b7-8363935037ac', "id", 4, 'Dab the edge of the wrapper with water, fold it in half, and pinch pleats along the seam to seal the dumpling tightly, standing it upright on a floured tray.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c74f079b-7d03-4b37-ad25-16145490d91d', "id", 5, 'Bring a large pot of water to a rolling boil and drop in the dumplings in batches, stirring gently so they do not stick to the bottom.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0a7a74b7-8edb-4af4-98e3-080c33ce5f01', "id", 6, 'Add a splash of cold water each time the pot returns to a boil, repeating this two more times until the wrappers turn translucent and the dumplings float.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '167ef6b6-dc15-4541-bbf4-09e605cb367d', "id", 7, 'Alternatively, pan-fry the boiled or raw dumplings in a hot skillet with oil until the bottoms turn deep golden and crisp.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '704cf1f3-8b38-4dbf-b187-20f213dcb58b', "id", 8, 'Lift the dumplings out with a slotted spoon and serve hot with a dipping sauce of black vinegar, soy sauce, and chili oil.' FROM "recipes" WHERE "slug" = 'jiaozi-dumplings-beijing-china';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'jiaozi-dumplings-beijing-china';

-- Mapo Tofu (Sichuan, China)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7bf5b103-a12c-4207-8bf5-afbaf89b55b8', "id", 1, 'Cut soft tofu into even cubes and slide them into a pot of gently simmering salted water for about 3 minutes to firm them up, then drain carefully.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5e119795-b418-45eb-91ca-eddf92008b74', "id", 2, 'Heat oil in a wok over medium-high heat and fry ground pork, breaking it into small crumbles, until it browns and turns fragrant.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '27ed8092-4619-493b-9f37-ec7f43743bb3', "id", 3, 'Push the pork to one side and add fermented broad bean paste, minced garlic, and ginger to the cleared space, stirring until the oil turns a deep red and the mixture smells intensely savory.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '15bb5e18-b398-4544-aef2-1a7a19b1d04a', "id", 4, 'Stir the pork back in and pour in stock, bringing the mixture to a gentle simmer.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7b400a78-18e3-4a18-a100-4c33464a49ec', "id", 5, 'Slide the tofu cubes into the wok and simmer for about 5 minutes, spooning the sauce over the top instead of stirring so the cubes stay intact.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b6003464-7466-4bf6-a075-65bb187edc6f', "id", 6, 'Drizzle in a cornstarch slurry a little at a time, stirring gently, until the sauce thickens enough to cling to the tofu.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '96fa4464-20ef-4300-9137-0451277c7866', "id", 7, 'Finish with a generous dusting of ground toasted Sichuan peppercorns and a drizzle of chili oil.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7a8ebc6c-b5a8-4eb1-8ea4-0b921068b6d0', "id", 8, 'Scatter chopped scallions over the top and serve immediately with steamed rice.' FROM "recipes" WHERE "slug" = 'mapo-tofu-sichuan-china';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'mapo-tofu-sichuan-china';

-- Ramen (Fukuoka, Japan)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2f1102df-b3b1-4447-9ddd-2c3cbcbe0535', "id", 1, 'Rinse pork bones under cold water and blanch them in boiling water for 5 minutes to remove impurities, then drain and rinse again.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'df84f937-01ea-49e7-8d00-afb864e4426e', "id", 2, 'Return the bones to a large pot, cover with fresh water, and simmer vigorously for at least 8 hours, topping up water as needed, until the broth turns rich, cloudy, and milky white.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1234c3a2-f041-448f-bcd3-8fd76f274cdc', "id", 3, 'Strain the broth and season a portion of it with a tare of soy sauce or miso, adjusting to taste.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'de6b47d5-6f30-4119-9e9c-d8b05e338afc', "id", 4, 'Cook fresh wheat ramen noodles in a separate pot of boiling water for a minute or two until just tender, then drain quickly.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '19226d13-ff79-448c-b551-88ac335c8291', "id", 5, 'Place the seasoned tare in the bottom of a bowl, ladle in the hot broth, and swirl to combine.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd8122083-549b-493a-85d2-5d16814699f3', "id", 6, 'Add the drained noodles, arranging them so they sit just below the surface of the broth.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2b986f95-3f2d-437f-b2c5-0a562310c1fc', "id", 7, 'Top with sliced braised pork, a soft-boiled egg halved lengthwise, a sheet of nori, sliced bamboo shoots, and chopped green onions.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4f3778f2-94a7-4cee-b883-a41ffd0d5bc5', "id", 8, 'Serve immediately while the broth is steaming hot.' FROM "recipes" WHERE "slug" = 'ramen-fukuoka-japan';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'ramen-fukuoka-japan';

-- Okonomiyaki (Osaka, Japan)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3a4594f6-2fc0-45d2-b03d-a28474da7ce6', "id", 1, 'Whisk flour with grated nagaimo or water and eggs into a smooth, slightly thick batter.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0bd2c333-27b4-444d-9f57-f28b441d9dd3', "id", 2, 'Fold in a generous amount of finely shredded cabbage along with chopped green onion until every strand is coated in batter.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f2e9f4c1-3c39-4b91-b980-64674711627e', "id", 3, 'Heat a griddle or wide skillet over medium heat and oil it well, then pour the batter into a thick round mound.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9b437e0c-866d-47e8-a52f-af438565af8f', "id", 4, 'Lay thin strips of pork belly over the top and press gently, letting the pancake cook undisturbed for about 5 minutes until the underside turns golden.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '10750e4d-4cdc-47b9-b064-cd22896c3d5f', "id", 5, 'Flip the okonomiyaki carefully using two spatulas and cook the second side for another 5 to 6 minutes, pressing down occasionally so the center steams through.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd7526b67-a525-42ba-882e-a1ccf73f9d0e', "id", 6, 'Flip once more briefly to firm up the pork side, then transfer to a plate.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ba257c85-c705-4539-9474-8e4de88bf87d', "id", 7, 'Brush the top generously with sweet okonomiyaki sauce and drizzle mayonnaise over it in thin lines.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8f40c2de-3c9f-4fdf-bdda-3729cbe58bcb', "id", 8, 'Finish with a shower of bonito flakes and a sprinkle of dried seaweed powder before serving hot.' FROM "recipes" WHERE "slug" = 'okonomiyaki-osaka-japan';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'okonomiyaki-osaka-japan';

-- Pad Thai (Bangkok, Thailand)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '337a67a0-f41a-4f73-bae2-d30bdc8c9c80', "id", 1, 'Soak flat rice noodles in warm water for about 20 minutes, stirring occasionally, until they turn pliable but still firm, then drain well.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8fe7d697-a1ca-48e8-82bf-64070da7297a', "id", 2, 'Stir together tamarind paste, fish sauce, palm sugar, and a splash of water in a small bowl to make the sauce, adjusting the balance of sour, salty, and sweet to taste.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '84b35c69-c5c9-4cb2-9a7d-1702a35a0422', "id", 3, 'Heat oil in a wok over high heat and stir-fry the shrimp for about a minute until they turn pink, then push them to one side.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '381cf1c4-f115-49b9-bce5-63c1e84679ec', "id", 4, 'Crack an egg into the cleared space and scramble it briefly before mixing it through the shrimp.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8612db78-2d88-4a2c-912d-035a6ac1c483', "id", 5, 'Add the drained noodles and the prepared sauce, tossing constantly over high heat for about 2 minutes so the noodles absorb the liquid and turn glossy without clumping.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a55c915a-5d70-4d16-9d41-1ff15e1ad613', "id", 6, 'Add bean sprouts and chopped peanuts and toss for another 30 seconds, just until the sprouts soften slightly while staying crunchy.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '24c2ffb6-4ca3-439a-80d4-376ab466e532', "id", 7, 'Pile the noodles onto a plate and garnish with extra bean sprouts, a lime wedge, and chili flakes.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c98c3041-ef89-4f81-af1f-574c0e7d56d3', "id", 8, 'Serve immediately while hot.' FROM "recipes" WHERE "slug" = 'pad-thai-bangkok-thailand';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pad-thai-bangkok-thailand';

-- Som Tam (Green Papaya Salad) (Isaan, Thailand)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2aab5a19-adef-4c5e-aaf1-ac82be52993a', "id", 1, 'Peel and shred unripe green papaya into thin, long strands using a knife or grater.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e689423c-2c82-42a8-9878-a89dda7aa16a', "id", 2, 'Pound garlic and fresh chilies in a large mortar until roughly crushed, then add tomato wedges and long beans cut into short lengths, bruising them lightly with the pestle to release their juices.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cf7f242c-e62b-4e14-9ef2-8fe33e3025a5', "id", 3, 'Add dried shrimp, fish sauce, lime juice, and palm sugar to the mortar and pound briefly to combine.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0726be48-8371-4241-962a-ce4ba4d07594', "id", 4, 'Add the shredded papaya in batches, pounding and tossing with a spoon between additions so the flavors work into the strands without crushing them to mush.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '526ddbf2-aa79-4325-b733-204a3054a651', "id", 5, 'Taste and adjust the balance of sour, salty, sweet, and spicy, adding more lime, fish sauce, or sugar as needed.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '79f30c64-6996-4ed0-bafd-06f5502d332e', "id", 6, 'Scatter crushed roasted peanuts over the top and toss once more.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '74cd4f3a-717f-42d2-a76f-7323f55dba6f', "id", 7, 'Transfer to a serving plate and serve fresh alongside sticky rice and grilled chicken.' FROM "recipes" WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'som-tam-green-papaya-salad-isaan-thailand';

-- Pho (Hanoi, Vietnam)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6b000afe-f394-4351-af44-a192a113368c', "id", 1, 'Char onion and ginger directly over a flame or under a broiler until the skins blacken, then rinse off the charred bits.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0deb6af-ed0e-4501-a599-574538ae1389', "id", 2, 'Blanch beef bones in boiling water for a few minutes to remove impurities, drain, and rinse under cold water.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b4cdf2a9-2e14-4487-b7c7-afdbea7e75ad', "id", 3, 'Combine the bones with the charred onion and ginger in a large pot, cover with water, and simmer gently for several hours, skimming off foam and fat as it rises to the surface.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '298e1972-3162-4353-a3fc-f9ba954d249c', "id", 4, 'Toast star anise, cinnamon, and other whole spices in a dry pan until fragrant, then add them to the pot along with fish sauce and a little sugar, simmering for another 30 minutes to infuse the broth.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e99a2e40-9bf3-4b92-9ea0-74a90d59e8d8', "id", 5, 'Strain the broth through a fine sieve and keep it at a steady simmer.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7e29ef4-2c2b-49bc-ae76-32ab5bf83c4a', "id", 6, 'Cook flat rice noodles in boiling water until just softened, then drain and divide them among serving bowls.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8019f4b1-04c0-4ebc-8bb8-7748c22c4ff5', "id", 7, 'Arrange thin raw slices of beef over the noodles, then ladle the boiling broth directly on top so it gently poaches the beef.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a15d772b-0342-4f16-80bf-bfbd96eba526', "id", 8, 'Serve immediately with bean sprouts, fresh herbs, sliced chili, and lime wedges on the side.' FROM "recipes" WHERE "slug" = 'pho-hanoi-vietnam';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pho-hanoi-vietnam';

-- Banh Mi (Ho Chi Minh City, Vietnam)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ea678dc0-6a7f-4356-b337-025a49495942', "id", 1, 'Split a crisp French-style baguette lengthwise, leaving one side hinged, and lightly toast it if desired.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ee8397dd-0e40-4bb2-ab6c-e7b7bcfe8716', "id", 2, 'Spread a generous layer of pork pate along one side of the bread and mayonnaise along the other.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '361c73c8-7206-4a30-89d9-1ea72920dc6c', "id", 3, 'Layer in slices of grilled pork or cold cuts, overlapping them evenly across the bread.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '52b3a309-582c-408a-b3ab-c0b9a58de3be', "id", 4, 'Drain quick-pickled carrot and daikon, which should have been sitting in vinegar, sugar, and salt for at least 30 minutes, and scatter them over the meat.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '109d6a9f-1751-49bb-a8a1-b1b42514c60c', "id", 5, 'Add fresh cucumber slices, sprigs of cilantro, and sliced chili peppers.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '02f8813b-732b-4070-9193-9592a169fc8c', "id", 6, 'Season with a few drops of soy sauce and a crack of black pepper.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '33b976c2-36f7-4aab-9106-2808d6fdac10', "id", 7, 'Close the sandwich and press it gently together so the layers hold.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '289b235c-49e8-41ae-a09d-c6e3b0af50e0', "id", 8, 'Serve immediately while the bread is still crackly on the outside.' FROM "recipes" WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'banh-mi-ho-chi-minh-city-vietnam';

-- Bibimbap (Jeonju, South Korea)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2f60a8d6-ae4b-4eb0-8615-2936d8c285d2', "id", 1, 'Blanch or sauté the spinach and bean sprouts separately, then season each with sesame oil, minced garlic, and a pinch of salt.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9b6519df-3ee2-4f10-87a0-ba45ae5a98c7', "id", 2, 'Julienne the carrots and stir-fry them briefly with a little oil and salt until just softened.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '036cc3a8-5995-4ff3-be82-6d9c5446a536', "id", 3, 'Slice the shiitake mushrooms and sauté them in a hot pan until browned and tender.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1f57017c-5f60-46bf-a2d5-0880eb1836ca', "id", 4, 'Marinate thin strips of beef in soy sauce, sugar, minced garlic, and sesame oil for about 15 minutes, then stir-fry them quickly over high heat until just cooked.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '826d0190-3d38-4868-8ba0-0a8b268b4722', "id", 5, 'Fry an egg sunny-side up in a separate pan, keeping the yolk runny.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '94d43434-f7d3-4153-bc92-c428a4c85f03', "id", 6, 'Spoon warm cooked rice into a bowl and arrange the seasoned spinach, bean sprouts, carrots, mushrooms, and beef in separate sections around the rice.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ca8f19cd-97ff-4b27-8614-aa7fb45c6090', "id", 7, 'Place the fried egg in the center and add a generous spoonful of gochujang alongside a drizzle of sesame oil.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cd35dc45-3528-4c60-8391-7ae5a388409b', "id", 8, 'Mix everything together thoroughly at the table just before eating so the rice picks up color and flavor from every component.' FROM "recipes" WHERE "slug" = 'bibimbap-jeonju-south-korea';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bibimbap-jeonju-south-korea';

-- Korean Fried Chicken (Seoul, South Korea)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8452cc0a-928d-4374-a42d-3b4f1c6ed820', "id", 1, 'Cut chicken into bite-sized pieces and season lightly with salt and pepper.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4ac8591f-c44d-4810-bf3c-33aea46ef413', "id", 2, 'Toss the chicken in potato starch until evenly coated, shaking off the excess.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3c00276c-df5d-45a5-beeb-901be65166b1', "id", 3, 'Fry the chicken in batches in oil heated to about 325 degrees Fahrenheit for about 6 minutes, until lightly golden but not fully crisp, then remove and let it rest for 5 minutes.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9e555ef1-e365-4e5e-a703-8676382cf7c6', "id", 4, 'Raise the oil temperature to about 375 degrees Fahrenheit and fry the chicken a second time for 3 to 4 minutes, until the skin turns deeply golden and very crisp.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e8e5e4cf-ceeb-4e43-bad8-9a90652afa56', "id", 5, 'While the chicken rests, simmer gochujang, minced garlic, soy sauce, and rice syrup in a small saucepan for a few minutes until the mixture turns glossy and slightly thickened.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '467b231a-db6b-499c-97e4-0f2d7bf1c2da', "id", 6, 'Drain the fried chicken on a rack and transfer it to a large bowl.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e4813d48-acde-4b24-ba03-39efe5b28163', "id", 7, 'Pour the hot glaze over the chicken and toss quickly to coat every piece evenly.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '34f48e64-6069-42ad-ad47-6143c78accc7', "id", 8, 'Sprinkle with toasted sesame seeds and serve immediately while still crisp.' FROM "recipes" WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'korean-fried-chicken-seoul-south-korea';

-- Nasi Goreng (Jakarta, Indonesia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '31e95586-576d-4fca-8d4e-8dfdb7b02913', "id", 1, 'Pound or blend shallots, garlic, and a small amount of shrimp paste into a smooth, fragrant paste.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '42a0ef10-384e-4dd8-8bf7-4dc099adc796', "id", 2, 'Heat oil in a wok over medium-high heat and fry the paste for a couple of minutes until it turns aromatic and slightly darker.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '22970c6e-bdc6-4486-a61e-c207385308c8', "id", 3, 'Add diced chicken or shrimp and cook, stirring frequently, until the meat is cooked through.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '66e0ae36-8e31-493c-b1dc-248c2c802246', "id", 4, 'Add day-old cooked rice, breaking up any clumps with the back of the spatula, and stir-fry for a few minutes so the grains separate and heat through evenly.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fc17387b-935c-4306-b3f6-f2a0825d2801', "id", 5, 'Pour in sweet soy sauce and toss constantly over high heat until the rice turns evenly coated and slightly charred at the edges.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '86b8e911-4c42-4594-ba98-b730b990078c', "id", 6, 'Push the rice to one side of the wok and fry an egg in the cleared space, or fry it separately in another pan, until the white sets and the yolk stays soft.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a8f96d2e-e66d-455f-862d-7b1b2980bf13', "id", 7, 'Spoon the rice onto a plate and top with the fried egg.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8e4e7f7c-4290-4db6-8017-6769a455a954', "id", 8, 'Serve with sliced cucumber and prawn crackers on the side.' FROM "recipes" WHERE "slug" = 'nasi-goreng-jakarta-indonesia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'nasi-goreng-jakarta-indonesia';

-- Satay (Java, Indonesia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'satay-java-indonesia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7554e4fe-1ac7-4a1e-bfd9-e5ab2256f334', "id", 1, 'Cut chicken or beef into small, even cubes.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b87cd2ac-4367-43ac-8d40-fbea0e47efd9', "id", 2, 'Combine minced garlic, shallots, ground coriander, and sweet soy sauce in a bowl, add the meat, and marinate for at least 30 minutes.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '17632b4c-0e70-4a81-bd4e-16dc65381055', "id", 3, 'Thread the marinated meat onto bamboo skewers, leaving a bare handle at one end.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '44cb3fcb-a314-4b04-ae97-9dc18cec00ea', "id", 4, 'Grill the skewers over hot charcoal, turning them every minute or two and basting with more marinade, until the edges char nicely and the meat cooks through.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f84bf3b4-b544-4d4b-b3bf-6fda9c8c98ea', "id", 5, 'While the skewers grill, make the peanut sauce by grinding roasted peanuts with sweet soy sauce, garlic, and a touch of lime juice, thinning it with a little water to a pourable consistency.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'af99ad5f-dae5-4626-b897-96405983dad1', "id", 6, 'Simmer the peanut sauce briefly in a small pan until it thickens slightly.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '59c41c19-df2f-4bbe-9ba4-9adf465e122d', "id", 7, 'Arrange the grilled skewers on a plate and spoon the warm peanut sauce over or alongside them.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b45b0004-3a36-4d1d-bdb5-0245ea02bc6d', "id", 8, 'Serve with extra lime wedges and sliced shallots.' FROM "recipes" WHERE "slug" = 'satay-java-indonesia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'satay-java-indonesia';

-- Kottu Roti (Colombo, Sri Lanka)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '00198e47-8cf5-4859-b385-1cf87d02c534', "id", 1, 'Chop leftover godhamba roti flatbread into thin strips.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a982cd0a-ef6a-4cd9-af37-d3b8ae691240', "id", 2, 'Heat a large flat griddle or wide pan and stir-fry sliced onion and curry leaves with a little curry powder for a couple of minutes until fragrant.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f4c4f3db-ef53-4b3e-bd5c-4ff182316a09', "id", 3, 'Add shredded cabbage and julienned carrot and stir-fry for another 2 minutes until just softened.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f3e3e7e3-bbc0-48e0-944d-72411ec68984', "id", 4, 'Push the vegetables to one side and crack an egg into the cleared space, scrambling it briefly before mixing it through.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'abef5523-523d-4efe-bfda-b2c7c58874c9', "id", 5, 'Add diced cooked chicken and the chopped roti to the pan.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c4373d17-f87e-480f-a7c4-b854e0c6e882', "id", 6, 'Using two metal scrapers or spatulas in each hand, chop and toss everything together vigorously, working the ingredients into small uniform pieces.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb426026-3c90-4530-bddc-1295d6e03f95', "id", 7, 'Add spoonfuls of curry sauce a little at a time, continuing to chop and toss until the roti turns evenly coated and slightly crisped at the edges.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd75ec60a-e839-468e-a7f3-66be501a02f5', "id", 8, 'Serve immediately straight from the griddle while hot.' FROM "recipes" WHERE "slug" = 'kottu-roti-colombo-sri-lanka';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'kottu-roti-colombo-sri-lanka';

-- Hoppers (Appa) (Colombo, Sri Lanka)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9d7ac312-b138-4515-9ee3-a84a389e83b0', "id", 1, 'Mix rice flour with coconut milk, a little sugar, and yeast into a thin, pourable batter.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a19a97e3-5e60-4996-b94b-029045873c7e', "id", 2, 'Cover the batter and let it ferment in a warm spot for several hours, until it turns bubbly and slightly tangy.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '80153690-5bce-4870-8605-8015ea257120', "id", 3, 'Heat a small curved hopper pan over medium heat and lightly grease it.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '611fa1c7-f77f-447d-8db0-5e51f0c3d600', "id", 4, 'Ladle in a portion of batter and immediately swirl and tilt the pan so the batter coats the sides thinly while pooling slightly in the middle.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cf31145e-aa18-440d-bdb7-e64ff94f3850', "id", 5, 'Crack an egg into the center for egg hoppers, if using, and season with a pinch of salt and pepper.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2d53f40a-bba5-4ca2-a308-8e1b08142cf5', "id", 6, 'Cover the pan with a lid and cook for about 3 minutes, until the edges turn lacy and golden brown and the center sets.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b9dde4e0-629b-4290-8f19-29de63c6b0ce', "id", 7, 'Gently loosen the edges with a spatula and lift the hopper out onto a plate.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '67754f2a-d7c3-4640-83e5-b9aa13794059', "id", 8, 'Serve warm with spicy sambal or a vegetable curry.' FROM "recipes" WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'hoppers-appa-colombo-sri-lanka';

-- Momo (Kathmandu, Nepal)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c009a89d-ad22-45d2-b41d-4de3ed6d93b6', "id", 1, 'Combine ground buffalo or chicken with finely chopped onion, garlic, ginger, cilantro, and cumin in a bowl, mixing well until the filling turns juicy and evenly seasoned.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3dba9fbd-76c3-486b-8538-0c45125576e1', "id", 2, 'Roll small pieces of dough into thin rounds using a rolling pin, keeping the center slightly thicker than the edges.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '105ee8ea-dd13-49b0-ba82-45353c21b6d4', "id", 3, 'Place a spoonful of filling in the center of each wrapper.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '682cb354-4b53-40a2-b1a6-9a4831bf0713', "id", 4, 'Gather the edges up and around the filling, pleating them together at the top and twisting to seal into a small purse shape.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e51971b9-d5a9-4def-80b9-3ec896a520b0', "id", 5, 'Arrange the shaped momos in a lightly oiled steamer basket, leaving space between each one so they do not stick together.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e3833aaf-03f4-4420-a403-c5b66e9060ba', "id", 6, 'Steam over boiling water for about 12 minutes, until the wrappers turn glossy and slightly translucent and the filling is cooked through.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '826642f1-ea89-42d2-8290-19f1753a9769', "id", 7, 'Carefully lift the momos out of the steamer.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '610e266c-962e-4d32-8790-a8fcb0e8d1ed', "id", 8, 'Serve hot with a tangy tomato-based achar dipping sauce.' FROM "recipes" WHERE "slug" = 'momo-kathmandu-nepal';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'momo-kathmandu-nepal';

-- Dal Bhat (Kathmandu, Nepal)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd0eff652-a1cf-4463-8a99-2db320524425', "id", 1, 'Rinse lentils and simmer them in water with turmeric until they break down and turn soft, skimming off any foam that rises.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b8937dfe-8ae4-47d9-a6f8-1d1cd1b3c93a', "id", 2, 'In a small pan, heat ghee and add cumin seeds, garlic, and ginger, cooking until the garlic turns golden and the mixture smells fragrant.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6dc2fe41-d323-4fd4-b34c-192af3440a1a', "id", 3, 'Pour the sizzling tempering directly into the pot of lentils and stir it through.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3fcfd79b-5005-49e3-b36f-8a90e13cc6ef', "id", 4, 'In a separate pan, sauté onion, garlic, and a mix of spices, then add whatever seasonal vegetables are on hand and cook until tender.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '43e91d7a-ea2c-4d95-86aa-e256c4b80246', "id", 5, 'Season the vegetable curry with salt and adjust the spicing to taste.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '259e6bc8-34d1-480a-a613-732a1b01f8f5', "id", 6, 'Rinse rice well and steam or boil it until each grain is fluffy and separate.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '884bab28-f3f6-4172-bef2-1079d96ec99f', "id", 7, 'Spoon the rice onto a large plate as the base and arrange the lentil soup, vegetable curry, and pickles around it.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c0cd87ba-4444-44ca-bde6-02c96df04f39', "id", 8, 'Serve with extra helpings offered throughout the meal, as is customary.' FROM "recipes" WHERE "slug" = 'dal-bhat-kathmandu-nepal';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'dal-bhat-kathmandu-nepal';

-- Falafel (Beirut, Lebanon)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8bfefe3e-d46e-4bcc-a237-0dd4c47cba02', "id", 1, 'Soak dried chickpeas in plenty of water overnight, then drain them thoroughly without cooking.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ebc3fe80-0530-4ab2-bbaa-1938bd063bd5', "id", 2, 'Combine the raw soaked chickpeas with parsley, cilantro, garlic, onion, cumin, and coriander in a food processor.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cfa8784b-0b33-4ea0-80a9-80bd59c5fde9', "id", 3, 'Pulse the mixture until it forms a coarse, well-combined paste that holds together when pressed, being careful not to blend it into a smooth puree.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'aa4f1b21-81e2-4203-8e15-fde025502cf6', "id", 4, 'Stir in a little baking soda and let the mixture rest in the refrigerator for about 30 minutes so the flavors meld.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e6aaa6d5-8fa2-4edc-bbf2-9c0c143946ca', "id", 5, 'Shape the mixture into small patties or balls using your hands or a falafel scoop.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0c311a61-e883-442c-ae61-ddcdb881e63e', "id", 6, 'Heat oil in a deep pot to about 350 degrees Fahrenheit.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '24ddbb8e-fb64-4071-9db5-6d44825a6013', "id", 7, 'Fry the falafel in batches for about 3 to 4 minutes, until deeply golden and crisp outside while staying soft and green inside.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b8361ce8-e65e-4460-ab36-aeca8e00c82f', "id", 8, 'Drain on paper towels and serve in warm flatbread with tahini sauce and pickled vegetables.' FROM "recipes" WHERE "slug" = 'falafel-beirut-lebanon';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'falafel-beirut-lebanon';

-- Hummus (Beirut, Lebanon)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '79a53f0c-3576-4016-a08b-d2b7439a8266', "id", 1, 'Soak dried chickpeas overnight, then drain and cook them in fresh water with a pinch of baking soda for about an hour, until they turn very soft and start to fall apart.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4f836259-3c30-4395-a8df-88c92aeb5805', "id", 2, 'Drain the chickpeas, reserving some of the cooking liquid, and let them cool slightly.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd62e077b-b2f2-4818-b9ec-c80e4d61d121', "id", 3, 'Blend the chickpeas with tahini, minced garlic, lemon juice, and a splash of the reserved cooking liquid in a food processor.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cf2d5eda-efa2-44c3-806e-de50a20859c1', "id", 4, 'Process for several minutes, scraping down the sides occasionally, until the mixture turns completely smooth and creamy.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b40b267d-640a-4021-886a-db6d5830ceb3', "id", 5, 'Add more cooking liquid a little at a time if the hummus seems too thick, blending until the texture turns light and airy.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7a0a7828-435d-48dd-b77e-0fa058628b09', "id", 6, 'Season with salt and cumin, tasting and adjusting the lemon and garlic to balance the flavor.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c35fd595-4305-481a-a3b5-801f6e5659c5', "id", 7, 'Spread the hummus onto a plate in a wide swirl using the back of a spoon.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b6ebb570-073d-48a9-8e39-f1b68aaf0b34', "id", 8, 'Drizzle generously with olive oil and serve with warm flatbread.' FROM "recipes" WHERE "slug" = 'hummus-beirut-lebanon';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'hummus-beirut-lebanon';

-- Doner Kebab (Istanbul, Turkey)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '042efb38-6c4c-4a43-8fae-c98606a916b4', "id", 1, 'Slice lamb or chicken into thin, even layers and marinate them in yogurt, garlic, paprika, and other spices for at least a few hours or overnight.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b94ecddb-52df-481e-adbe-dfc7f0a04b57', "id", 2, 'Stack the marinated layers tightly onto a vertical rotisserie skewer, pressing them together so the stack holds its shape as it turns.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '87d67c90-dbe2-4cc1-b437-d0f6a2bbc9cc', "id", 3, 'Set the skewer to rotate slowly in front of a heat source, letting the outside roast and caramelize gradually.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6f41af56-416f-4dae-b6f8-5e6c69e5cd0f', "id", 4, 'As the outer layer cooks and turns golden brown, shave off thin slices with a long sharp knife, working from top to bottom.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f6408662-0fe0-432d-b1bd-85a13b6e78f9', "id", 5, 'Continue rotating and shaving as needed so only the crisped outer surface is served each time.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd6885d26-19ba-4298-8d54-001a0c8667b9', "id", 6, 'Warm flatbread briefly on a griddle or in a hot pan.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '79468c04-b160-447d-b421-1c1db18970fc', "id", 7, 'Pile the shaved meat onto the flatbread and top with chopped tomato, onion, and a garlicky yogurt or chili sauce.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eab6de94-0d10-4182-a1c8-636e121e5a1d', "id", 8, 'Wrap or fold the flatbread and serve immediately while the meat is hot.' FROM "recipes" WHERE "slug" = 'doner-kebab-istanbul-turkey';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'doner-kebab-istanbul-turkey';

-- Menemen (Istanbul, Turkey)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bef43a30-a5af-463a-a51c-dd535b482c9d', "id", 1, 'Heat olive oil in a wide skillet over medium heat and add sliced green peppers and onion.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1051a3da-ac0c-4c88-a54f-c74bbd6e6452', "id", 2, 'Sauté for about 5 minutes, stirring occasionally, until the vegetables soften and the onion turns translucent.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cc8c3788-0eb3-42f4-8063-07c449fcd9a9', "id", 3, 'Add chopped tomatoes and cook for another 8 to 10 minutes, stirring occasionally, until they break down into a thick, saucy mixture and most of the liquid evaporates.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9ca392c2-a00c-479b-9381-c0b37e49fc65', "id", 4, 'Season the mixture with salt and black pepper.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2c412688-22f4-4df9-89b2-09c92b74738c', "id", 5, 'Crack the eggs directly into the pan, spacing them evenly over the tomato mixture.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '36b2a685-7992-4651-abe9-20784c39f3c8', "id", 6, 'Stir gently with a spatula so the eggs scramble loosely and mix through the sauce rather than forming a solid layer.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e960959a-8c16-4951-9ed1-191d72679f60', "id", 7, 'Cook for another minute or two, just until the eggs turn softly set but still slightly glossy.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f43e15e8-7b7a-4c35-b13d-780cc07bec5b', "id", 8, 'Remove from the heat and serve straight from the pan with crusty bread for dipping.' FROM "recipes" WHERE "slug" = 'menemen-istanbul-turkey';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'menemen-istanbul-turkey';

-- Pizza Margherita (Naples, Italy)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9b862095-806f-4bd6-9d70-2c619300e89e', "id", 1, 'Punch down a ball of well-fermented pizza dough and, on a floured surface, stretch it by hand from the center outward into a thin round, leaving a slightly thicker rim.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '30689877-5461-4f49-a45b-37fb8108c148', "id", 2, 'Spread crushed San Marzano tomatoes over the base in a thin, even layer, leaving the rim bare.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b851efce-5e95-4683-8503-81cacbad8a10', "id", 3, 'Season the tomato layer lightly with salt.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '60eb1ce0-9f9f-434d-aa80-b29c09b6e3a6', "id", 4, 'Tear fresh mozzarella into small pieces and scatter them evenly over the tomato.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1f80fb6a-8fb5-44d9-b467-ccb5434bb45c', "id", 5, 'Drizzle a little olive oil over the top.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '188178fc-a00a-4e6e-9c51-789997402378', "id", 6, 'Slide the pizza into a very hot wood-fired oven, or the hottest setting of a home oven with a preheated stone.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2435cffa-f276-45cf-981d-121b4ff3e79b', "id", 7, 'Bake for one to two minutes in a wood-fired oven, or several minutes in a home oven, watching closely until the crust puffs up and chars in spots and the cheese melts and bubbles.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ec2ef245-8ea1-4848-8fb4-34dbf6ef2b50', "id", 8, 'Remove the pizza, scatter fresh basil leaves over the top, and slice immediately.' FROM "recipes" WHERE "slug" = 'pizza-margherita-naples-italy';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pizza-margherita-naples-italy';

-- Spaghetti Carbonara (Rome, Italy)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b26cb9b3-14c7-44bc-a8ea-8de8cffc2d23', "id", 1, 'Cut guanciale into small strips or cubes and cook it slowly in a wide pan over medium-low heat for about 8 minutes, until the fat renders and the pieces turn crisp.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e27fcb97-ddab-4b15-916f-2ae05cb18694', "id", 2, 'Remove the pan from the heat and set it aside, keeping the rendered fat in the pan.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b342a689-d039-4ff4-88d0-328292ca2f02', "id", 3, 'In a separate bowl, whisk whole eggs with finely grated pecorino Romano and plenty of freshly cracked black pepper until smooth.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '159a523c-170c-49d6-8ab0-162732343af1', "id", 4, 'Bring a large pot of salted water to a boil and cook spaghetti until al dente, reserving a cup of the starchy pasta water before draining.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3a7f0178-010e-4d28-bdaf-4120cebede8f', "id", 5, 'Return the pan of guanciale to low heat, add the drained pasta, and toss to coat it in the rendered fat.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '767b7caa-44fb-4895-a1b6-e90e8fc205a4', "id", 6, 'Remove the pan from the heat completely and pour in the egg and cheese mixture, tossing constantly and vigorously.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '08948023-8573-4af3-880c-3dd8040c685f', "id", 7, 'Add a splash of the reserved pasta water and continue tossing until the sauce turns silky and coats every strand, taking care that the residual heat does not scramble the eggs.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a500ffd7-d53f-4aff-aa3d-78afd5d869c4', "id", 8, 'Serve immediately with extra grated pecorino and black pepper on top.' FROM "recipes" WHERE "slug" = 'spaghetti-carbonara-rome-italy';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'spaghetti-carbonara-rome-italy';

-- Risotto alla Milanese (Milan, Italy)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'adfb061c-e2e3-41c8-8d4b-b519d3041a9a', "id", 1, 'Warm the stock in a separate pot and keep it at a gentle simmer throughout cooking.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '232c1705-ab2f-401e-9749-163411515920', "id", 2, 'Melt butter in a wide, heavy pan over medium heat and sauté finely chopped onion for about 4 minutes, until soft and translucent.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0bb9073d-ab2f-44ed-86ad-36805e4acafc', "id", 3, 'Add arborio rice and stir constantly for a couple of minutes, toasting it until the edges turn translucent and the grains smell lightly nutty.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7841a430-94f7-4c25-8e82-ace4f08b202e', "id", 4, 'Pour in white wine and stir until it fully evaporates.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0a341be4-85b1-4e3f-812b-1065c4fab975', "id", 5, 'Add a ladleful of the hot saffron-infused stock, stirring frequently, and wait until the rice absorbs most of the liquid before adding the next ladleful.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ccad1e62-7a25-40e5-ae4b-0d9b2339c99c', "id", 6, 'Continue this process for about 18 minutes, adding stock gradually and stirring often, until the rice turns creamy on the outside while staying slightly firm at the center.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eba714a2-feb7-410e-991a-de6a2f0ce51a', "id", 7, 'Remove the pan from the heat and stir in a knob of cold butter and a generous handful of grated Parmesan, beating vigorously to create a glossy, loose finish.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3338e2ec-6875-4d31-8d3a-f7ce0f29effb', "id", 8, 'Let the risotto rest for a minute, then spoon it onto plates and serve immediately.' FROM "recipes" WHERE "slug" = 'risotto-alla-milanese-milan-italy';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'risotto-alla-milanese-milan-italy';

-- Croissant (Paris, France)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'croissant-paris-france');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bc9ec1bb-fe19-4234-8703-ac53ca326cfa', "id", 1, 'Mix flour, milk, sugar, salt, and yeast into a smooth dough, knead briefly, and let it rest in the refrigerator for about an hour.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8c0a1c01-190e-4ace-a0b7-1446f77df2b0', "id", 2, 'Pound a block of cold butter into a flat rectangle between sheets of parchment paper.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '01616fcb-a8e4-48cb-b5ee-f23a86485051', "id", 3, 'Roll the chilled dough into a rectangle and place the butter block in the center, then fold the dough over to fully enclose it.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'cb296a70-57e5-4c31-9bce-f4d6568bf506', "id", 4, 'Roll the dough out into a long rectangle and fold it into thirds, like a letter, then chill for 30 minutes.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2a3fe12f-1b47-4c62-89f7-18d6b2d4dc38', "id", 5, 'Repeat the rolling and folding process two more times, chilling between each fold, to build up many thin alternating layers of dough and butter.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7c75e59-c2ff-4305-bf0c-29df7bbc7c4d', "id", 6, 'Roll the finished laminated dough out thin and cut it into long triangles.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '24422dbb-0301-4344-acb9-24fd1586faa0', "id", 7, 'Roll each triangle up from the wide end to the point, curving the ends slightly inward to form a crescent shape.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bb583ee4-97fa-4d14-9ca4-d363004d609b', "id", 8, 'Arrange the shaped croissants on a tray, let them proof in a warm spot until visibly puffy, then brush with egg wash and bake until deeply golden and flaky.' FROM "recipes" WHERE "slug" = 'croissant-paris-france';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'croissant-paris-france';

-- Coq au Vin (Burgundy, France)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '480317a2-46b5-4508-8bf8-b077e4a94365', "id", 1, 'Brown pieces of chicken in a heavy pot with a little oil, working in batches so they sear properly, then set the chicken aside.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9a2a4564-55a1-44aa-a2e9-8033c5a381c1', "id", 2, 'Add bacon lardons to the same pot and cook until they render their fat and turn crisp, then remove and set aside with the chicken.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '003c18c6-e72f-405c-bb52-757e17487078', "id", 3, 'In the remaining fat, sauté pearl onions, mushrooms, and minced garlic for about 5 minutes, until lightly browned.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3395c03b-31d7-4d5f-9058-e581fee20454', "id", 4, 'Return the chicken and bacon to the pot and sprinkle in a little flour, stirring to coat everything evenly.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '596e6361-1623-430e-979d-4ab78bfa2207', "id", 5, 'Pour in enough red wine to nearly cover the ingredients and add a bay leaf and a few sprigs of thyme.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ad50c620-f4c7-470e-8cd9-ece25908bcb3', "id", 6, 'Bring the pot to a simmer, cover, and cook gently for about 45 minutes, until the chicken turns very tender and the sauce reduces and thickens.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd96b752f-7004-4963-89f8-67826b4ad35a', "id", 7, 'Uncover and let the sauce reduce further if it seems thin, then remove the bay leaf and thyme sprigs.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c95b4609-b34a-4dd6-9eaa-6d6bee3b6b52', "id", 8, 'Stir in a knob of butter off the heat to give the sauce a deep, glossy sheen, then serve hot.' FROM "recipes" WHERE "slug" = 'coq-au-vin-burgundy-france';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'coq-au-vin-burgundy-france';

-- Tortilla Española (Madrid, Spain)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e6b872a8-4dbf-4839-ad79-73e45f2cca27', "id", 1, 'Peel and thinly slice the potatoes and onion.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '71b950f3-8d13-4af9-bb9f-3c966195fbd7', "id", 2, 'Heat a generous amount of olive oil in a wide pan over low heat and add the potatoes and onion, letting them slowly confit for about 20 minutes, stirring occasionally, until soft but not browned.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4a530b3e-e675-4ee3-bed5-1fbffc416ef2', "id", 3, 'Drain the potatoes and onion in a colander set over a bowl, reserving the flavorful oil.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '81205b34-d953-4e31-b0c4-968539d6ef7b', "id", 4, 'Beat the eggs in a large bowl, season with salt, and fold in the drained potatoes and onion until evenly combined.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '349ac8dd-70fd-4053-b03c-3d30b82d14b3', "id", 5, 'Heat a small amount of the reserved oil in a nonstick pan over medium heat and pour in the egg and potato mixture, spreading it evenly.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b0648e53-4400-4724-a6b1-1678c257aa87', "id", 6, 'Cook for a few minutes until the edges set and pull away slightly from the pan.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0612c515-4bfd-44e7-aec2-358ccad67774', "id", 7, 'Place a large plate over the pan and carefully flip the tortilla onto it, then slide it back into the pan to cook the other side.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a2fb413b-b10f-4eb7-8f57-133e606c3178', "id", 8, 'Cook for another couple of minutes, aiming for a center that stays slightly soft and custardy, then slide onto a plate to rest before slicing.' FROM "recipes" WHERE "slug" = 'tortilla-espanola-madrid-spain';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'tortilla-espanola-madrid-spain';

-- Churros (Madrid, Spain)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'churros-madrid-spain');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fd1dadeb-7298-4e70-aba5-73b877a8ece2', "id", 1, 'Bring water, a little oil, salt, and sugar to a boil in a saucepan.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '48be5b0b-e6e3-4fee-97b0-86fd0681484f', "id", 2, 'Remove the pan from the heat and stir in flour all at once, beating vigorously with a wooden spoon until a smooth, thick dough forms and pulls away from the sides of the pan.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4956c077-b015-4123-933d-ebaee0ff6b7e', "id", 3, 'Let the dough cool for a few minutes, then transfer it to a piping bag fitted with a large star-shaped nozzle.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6f60c977-72bd-4b2e-bbaa-bb3cbb402da5', "id", 4, 'Heat vegetable oil in a deep pot to about 375 degrees Fahrenheit.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b29a1ab4-f5f9-45be-9e06-0aff541f0055', "id", 5, 'Pipe the dough directly into the hot oil in long strips, cutting each one with scissors or a knife as it reaches the desired length.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ec0294f6-b1b5-455d-ab39-5f4bf94ceb71', "id", 6, 'Fry the churros in batches for about 3 minutes, turning occasionally, until deep golden brown and crisp on the outside.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1fb46551-fa2d-40f1-88df-ac2f66cb3b56', "id", 7, 'Drain briefly on paper towels, then toss the warm churros in a mixture of cinnamon and sugar.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '57392cb5-d83a-4d83-8c36-18e0b6c98343', "id", 8, 'Serve hot alongside a cup of thick hot chocolate for dipping.' FROM "recipes" WHERE "slug" = 'churros-madrid-spain';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'churros-madrid-spain';

-- Souvlaki (Athens, Greece)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '00b59c45-a837-4239-b8d9-edbb7a5af51b', "id", 1, 'Cut pork or chicken into even cubes and place them in a bowl.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a2feef97-8618-4aaf-a2db-73ef5de41396', "id", 2, 'Whisk together olive oil, lemon juice, minced garlic, and dried oregano, then pour the marinade over the meat and toss to coat.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '873b7212-0d96-4003-8cc5-b2cc5c96ccfc', "id", 3, 'Cover and marinate in the refrigerator for at least an hour, or overnight for deeper flavor.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2247f13f-bce9-4a13-86f6-b646501b5e88', "id", 4, 'Thread the marinated meat onto metal or soaked wooden skewers, leaving a little space between each piece so it cooks evenly.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ad7eeb0d-fc03-4b72-8d94-0a3482e73e8c', "id", 5, 'Grill the skewers over hot coals or a hot grill pan, turning every couple of minutes, until charred on the outside and cooked through, about 10 to 12 minutes total.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3d852d3e-4a86-45f9-b8df-5bd6c0c617c8', "id", 6, 'Warm pita bread briefly on the grill until lightly charred and pliable.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '43cafb84-cd4d-4f92-a570-5198fdd80172', "id", 7, 'Serve the skewers on their own with a wedge of lemon, or slide the meat off directly into the warm pita.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '565a40f4-9704-46c4-bc66-374ecb9e13bf', "id", 8, 'Top with sliced tomato, onion, and a generous spoonful of tzatziki before serving.' FROM "recipes" WHERE "slug" = 'souvlaki-athens-greece';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'souvlaki-athens-greece';

-- Moussaka (Athens, Greece)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'moussaka-athens-greece');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5f13f224-da3b-481d-b050-6f10d17a5ac7', "id", 1, 'Slice the eggplant into rounds, salt them, and let them sit for 20 minutes to draw out bitterness, then pat dry.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '25941c72-db4a-460d-b2e3-6027bc4b473a', "id", 2, 'Fry or roast the eggplant slices until softened and lightly browned on both sides, then set aside.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e2285b52-b6b4-4e37-a5b4-82a1957e0237', "id", 3, 'Heat oil in a large pan and cook ground lamb with chopped onion until browned.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'af8a25d2-c6ff-44d0-af2e-551fb0bb3b6c', "id", 4, 'Add chopped tomatoes, a pinch of cinnamon, and a little tomato paste, then simmer the mixture for about 20 minutes, until it thickens into a rich, well-seasoned sauce.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4cb2e07b-d1eb-4208-94d2-231a69da7b7d', "id", 5, 'Make a bechamel sauce by melting butter, whisking in flour to form a paste, then gradually adding warm milk while whisking constantly until it thickens smoothly.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd3312c5b-bbc3-4b3d-be9b-e199855a3e75', "id", 6, 'Layer half of the eggplant in a baking dish, spread the meat sauce over it, then add the remaining eggplant on top.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ddac96b3-ec71-4e17-847f-3f65224de693', "id", 7, 'Pour the bechamel sauce evenly over the layers and sprinkle with grated Parmesan or kefalotyri.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6219ee7a-4d74-4b19-9362-095a7d2d5bad', "id", 8, 'Bake in a moderate oven for about 40 minutes, until the top turns golden and set, then let it rest for 10 minutes before slicing and serving.' FROM "recipes" WHERE "slug" = 'moussaka-athens-greece';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'moussaka-athens-greece';

-- Fish and Chips (London, United Kingdom)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c2a1765c-c0ea-4891-891b-4d24a1119672', "id", 1, 'Peel the potatoes and cut them into thick chips.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fcfbbbb6-b6d9-4f88-8896-da351e2d191d', "id", 2, 'Fry the chips in oil heated to about 325 degrees Fahrenheit for about 5 minutes, until they cook through but stay pale, then remove and drain.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7555269e-5521-428c-b0ca-d6f6b48d3b3c', "id", 3, 'Whisk flour with cold beer and a pinch of salt until just combined, leaving the batter slightly lumpy and light.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a4bfb181-fc6e-46dc-9cfb-b80e399362f8', "id", 4, 'Pat the fish fillets dry and dust them lightly with flour, then dip them into the beer batter, letting the excess drip off.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c233ec80-42da-4b46-8278-54ec88ce1025', "id", 5, 'Raise the oil temperature to about 375 degrees Fahrenheit and lower the battered fish in carefully.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e213fd74-98d5-4236-a4ba-783ee3c5b044', "id", 6, 'Fry for about 6 to 8 minutes, until the coating turns crisp and deep golden and the fish inside flakes easily.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e02c7bb6-fbf9-4a86-a5f8-f6bbaf67ebdc', "id", 7, 'Return the chips to the hot oil and fry for another 2 to 3 minutes, until golden and crunchy.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ef5a19c5-e581-49d7-89d5-20255422ebea', "id", 8, 'Drain the fish and chips on paper towels, season with salt, and serve together with malt vinegar.' FROM "recipes" WHERE "slug" = 'fish-and-chips-london-united-kingdom';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'fish-and-chips-london-united-kingdom';

-- Shepherd's Pie (England, United Kingdom)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2a9448f8-ec72-4ab5-b45f-406863655fc2', "id", 1, 'Peel and boil the potatoes until fork-tender, then drain and mash them until smooth, stirring in butter and a splash of milk.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '10549a90-5858-437f-835b-bf283fdba0bb', "id", 2, 'Heat oil in a large pan and brown ground lamb with chopped onion and carrots, breaking up the meat as it cooks.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8e60467d-2d1a-4569-ad8a-8514cd3319a0', "id", 3, 'Stir in tomato paste and a splash of Worcestershire sauce, cooking for a minute to deepen the flavor.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b467fe56-f3a5-41a3-8b1e-1845ed46c28e', "id", 4, 'Pour in stock and simmer the mixture for about 15 minutes, until it thickens into a rich gravy.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3deaaf36-32ef-4bd3-9d1e-8eff37989a33', "id", 5, 'Stir in peas during the last few minutes of cooking, then season with salt and pepper.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b4db3517-47b2-4315-81d7-0235bb663fa9', "id", 6, 'Spread the meat filling evenly into a baking dish.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7839d9cb-d71f-4b4e-b649-d82a1a9c2874', "id", 7, 'Spoon the mashed potatoes over the top, spreading them to the edges and roughing up the surface with a fork so it crisps nicely.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '332d7f74-b3dd-4b12-8a9b-f389894fc77b', "id", 8, 'Bake in a hot oven for about 25 minutes, until the potato topping turns golden and slightly crisp at the edges.' FROM "recipes" WHERE "slug" = 'shepherds-pie-england-united-kingdom';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'shepherds-pie-england-united-kingdom';

-- Chicken Tagine (Marrakech, Morocco)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f7316d22-ad60-48c2-b9d5-42f2cba82ec2', "id", 1, 'Season chicken pieces with salt and pepper and brown them in a little oil in a tagine or heavy pot over medium-high heat.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e273dbfb-33ae-421a-8e35-e970b23fe180', "id", 2, 'Remove the chicken and add sliced onion, grated ginger, turmeric, and a few threads of saffron to the same pot, cooking for a few minutes until fragrant.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '52dc1a5a-9517-4bd2-997e-461fc934087b', "id", 3, 'Return the chicken to the pot and add a small amount of water or stock, just enough to keep things from sticking.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7db3f905-5e83-42fb-a2bb-76a6cea08b59', "id", 4, 'Cover and let the chicken simmer gently over low heat for about 45 minutes, until very tender.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '150d4a88-cf88-4016-b550-1d94684745ff', "id", 5, 'Stir in preserved lemon, cut into strips, and whole or pitted olives during the last 10 minutes of cooking so their flavor stays bright.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5fccbee0-6945-4ccf-ace9-440894c1a71d', "id", 6, 'Check the sauce and let it reduce slightly with the lid off if it seems too thin.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd3289819-5ccd-433b-b267-8f63d98f0eaa', "id", 7, 'Scatter fresh cilantro over the top just before serving.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bd95d0c6-4b77-42df-8605-4ce5a6c99618', "id", 8, 'Serve directly from the tagine with warm bread or couscous to soak up the sauce.' FROM "recipes" WHERE "slug" = 'chicken-tagine-marrakech-morocco';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'chicken-tagine-marrakech-morocco';

-- Harira (Marrakech, Morocco)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8541f310-8d19-4c18-87a0-f5e6187f23d0', "id", 1, 'Cut lamb into small pieces and brown them in a large pot with chopped onion, celery, and a mix of spices.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '71d87edd-4daa-43b6-a38b-83812be86bc3', "id", 2, 'Add chopped tomatoes and cook for a few minutes, stirring, until they begin to break down.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3adacb90-4a98-4b32-b34b-0f9dfdee0273', "id", 3, 'Add lentils, soaked chickpeas, and plenty of water, then bring the pot to a simmer.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7942dfd6-67dd-42cd-a3fe-a44ad587778c', "id", 4, 'Cook for about an hour, skimming occasionally, until the lentils, chickpeas, and meat all turn tender.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e8677b1f-1ee8-4a77-b8f7-776e73ceb870', "id", 5, 'Whisk a little flour with water to make a smooth slurry, then stir it into the soup to thicken it slightly.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6aad25d1-9e07-45ca-b045-4132dc4416c3', "id", 6, 'Simmer for another 10 minutes, stirring occasionally to prevent sticking, until the soup reaches a hearty, comforting consistency.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fef25b9c-9d73-4ad2-8567-9e668eb27314', "id", 7, 'Stir in plenty of fresh chopped cilantro and parsley near the end of cooking.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '933598d8-5be4-49e6-8132-448be9b688b2', "id", 8, 'Serve hot, traditionally to break the daily fast during Ramadan, with dates and bread on the side.' FROM "recipes" WHERE "slug" = 'harira-marrakech-morocco';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'harira-marrakech-morocco';

-- Doro Wat (Addis Ababa, Ethiopia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '176d30a5-e8e4-4279-8954-10944ae61d65', "id", 1, 'Cook a large quantity of finely chopped onion in a dry pot over low heat for about 20 minutes, stirring frequently, until it turns deeply soft and golden without added fat.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '389a17bf-6e28-44b1-a48d-d12224e479ae', "id", 2, 'Add niter kibbeh, minced garlic, and grated ginger to the softened onion and stir for a few minutes until fragrant.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd34f770a-c17a-4600-8ce9-df98a86a81a2', "id", 3, 'Stir in a generous amount of berbere spice paste and cook it slowly, stirring often, until the oil separates from the mixture and it deepens to a rich red color.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '335b3e50-559e-4e43-8936-3cfab970be74', "id", 4, 'Add chicken pieces and turn them to coat evenly in the thick sauce.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd3cf8d62-3014-4d3d-a46c-69587772a090', "id", 5, 'Pour in a small amount of water or stock, cover, and simmer gently for about 40 minutes, until the chicken turns fully tender and the sauce thickens further.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5afe27bc-6419-4b09-a909-cde1dec94de2', "id", 6, 'Carefully add whole peeled hard-boiled eggs to the pot, spooning sauce over them.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f2ade351-cb73-4e32-bd92-653a20f600c8', "id", 7, 'Simmer for another 10 minutes so the eggs absorb color and flavor from the sauce.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '50606a72-4b3b-4d47-b57b-f45ac693f63b', "id", 8, 'Serve hot spooned over torn pieces of injera flatbread.' FROM "recipes" WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'doro-wat-addis-ababa-ethiopia';

-- Misir Wot (Addis Ababa, Ethiopia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4849c9b7-7e5d-4dc5-b378-9ebc3f548ed4', "id", 1, 'Heat vegetable oil in a pot over medium heat and cook finely chopped onion for about 10 minutes, stirring occasionally, until soft and golden.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd550b035-dc5e-40a4-8b4b-9a2836025518', "id", 2, 'Stir in minced garlic, grated ginger, and a generous amount of berbere spice paste, cooking for a couple of minutes until deeply fragrant.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5c6cccd6-6bdd-4d75-bf4c-cb00ac799df2', "id", 3, 'Add tomato paste and stir it into the onion mixture, letting it cook for a minute to lose its raw edge.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '21db344c-8d11-493f-b8a2-837833a27d32', "id", 4, 'Add rinsed red lentils and enough water to cover them generously.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0e9886af-dc83-410b-9aab-ea6ad6384f0f', "id", 5, 'Bring the pot to a simmer and cook for about 20 minutes, stirring occasionally, until the lentils break down into a thick, richly spiced stew.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a9d6bde3-8483-4726-99ea-c03476cdc2e8', "id", 6, 'Add more water if the mixture turns too thick, adjusting to a hearty, pourable consistency.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1b433bae-7f1e-4bec-bc2a-abc79d17529d', "id", 7, 'Season with salt and adjust the spice level to taste.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '3f4eccbe-cada-49fc-b55d-f9a5bfb5c3f4', "id", 8, 'Serve warm scooped up with pieces of injera flatbread.' FROM "recipes" WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'misir-wot-addis-ababa-ethiopia';

-- Jollof Rice (Lagos, Nigeria)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ec96bf81-64e8-4ab0-9dad-1d0f4ef28803', "id", 1, 'Blend tomatoes, red bell pepper, onion, and a scotch bonnet pepper together into a smooth, vibrant base.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '864784eb-9798-4b06-8fad-c32808b31f36', "id", 2, 'Heat oil in a large pot and fry the blended mixture over medium heat for about 20 minutes, stirring occasionally, until it darkens, thickens, and the raw taste cooks away.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '47d6ceff-b881-49bd-9c89-6c1d56aa5729', "id", 3, 'Stir in stock, bay leaves, and a mix of seasoning, bringing the mixture to a simmer.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6cbe1ec0-ab2c-4267-828f-897ed6222a9a', "id", 4, 'Rinse the rice well and stir it into the pot, making sure the grains are submerged in the sauce.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5646cf57-d6db-4a90-93e3-c541103db0b2', "id", 5, 'Cover the pot tightly and cook over low heat for about 25 minutes, resisting the urge to lift the lid too often.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '904fbc5c-508e-495f-9262-54742d905428', "id", 6, 'Check the rice occasionally and stir gently from the bottom, letting a light char develop at the base of the pot for extra smoky flavor.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9fb11f93-5a94-435e-9576-361f04bbbc2e', "id", 7, 'Continue cooking until the rice is tender and has absorbed nearly all the sauce.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '0ae2bdbd-d2d2-421d-9a16-ce5cfd78df36', "id", 8, 'Fluff the rice gently with a fork and serve hot.' FROM "recipes" WHERE "slug" = 'jollof-rice-lagos-nigeria';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'jollof-rice-lagos-nigeria';

-- Suya (Lagos, Nigeria)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '738b166c-2b86-429a-9b53-7e5cf470f638', "id", 1, 'Slice beef thinly against the grain into long, even strips.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '189aea6f-1270-448d-93a0-01966d26626e', "id", 2, 'Thread the strips onto skewers, weaving them slightly so they stay secure.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6c3cf73a-d7bb-47f1-8669-8b98f72aa033', "id", 3, 'Toast peanuts in a dry pan until fragrant, then grind them finely and combine with ground ginger, garlic powder, cayenne pepper, paprika, and a pinch of salt to make the dry yaji spice mix.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '062c44fe-66c0-4a79-ac83-e0613121617e', "id", 4, 'Brush the skewered meat lightly with oil, then coat it generously and evenly with the yaji spice mix, pressing it onto the surface.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'caeb3c7a-419d-4a92-ac63-94cb8998aa9f', "id", 5, 'Grill the skewers over an open flame or hot grill, turning frequently, for about 8 to 10 minutes, until the meat chars nicely outside and cooks through.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'bce5ab03-147d-479b-8ac4-6ba9d4c26d33', "id", 6, 'Brush with a little more oil partway through grilling to help the spice crust stay on.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c888de5a-59a9-4bc3-8934-e37b3b58c0b8', "id", 7, 'Slice raw onion and tomato and arrange them alongside the finished skewers.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6c6c0752-cd09-44a5-bc89-9e261cec1b29', "id", 8, 'Sprinkle a little extra yaji over the top and serve hot.' FROM "recipes" WHERE "slug" = 'suya-lagos-nigeria';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'suya-lagos-nigeria';

-- Koshari (Cairo, Egypt)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c93a2bfe-5e2c-4536-98e0-fd25a06d7bca', "id", 1, 'Cook rice, brown lentils, small macaroni, and chickpeas separately in their own pots, each until tender, then set aside and keep warm.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '384d6dfc-7409-4696-af8b-cd41f5e9462b', "id", 2, 'Heat oil in a pan and fry thinly sliced onions over medium heat, stirring frequently, until deeply golden brown and crisp, then drain on paper towels.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4e1c833f-5c88-4dee-b9d7-df206538ad1c', "id", 3, 'In a separate saucepan, sauté minced garlic in oil briefly, then add tomato sauce, a touch of vinegar, and a pinch of chili, simmering for about 10 minutes into a tangy sauce.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '56d6cd6b-7b92-4e22-a4d7-14825406a678', "id", 4, 'Layer the cooked rice in the bottom of a serving bowl.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '9dd872e4-5c11-4801-b809-9c56dfcdf8af', "id", 5, 'Add the lentils and macaroni over the rice, followed by the chickpeas.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b5c53dec-7940-4d52-823c-4857f093e88f', "id", 6, 'Ladle the spiced tomato sauce generously over the top.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '89c3e70b-c6f9-426f-b3b1-a322d32c0313', "id", 7, 'Scatter a large handful of the deeply fried crispy onions over everything.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5e80eb8e-20c6-40d4-b732-70e35abc322d', "id", 8, 'Serve immediately, letting diners mix the layers together themselves.' FROM "recipes" WHERE "slug" = 'koshari-cairo-egypt';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'koshari-cairo-egypt';

-- Ful Medames (Cairo, Egypt)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2953276d-6625-40c1-b195-745e049aaebe', "id", 1, 'Simmer dried fava beans slowly in water for a couple of hours, until they turn very soft, or use pre-cooked or canned beans for a quicker version.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'eace35f2-33b7-45df-97a3-74d34f57e1cb', "id", 2, 'Drain the beans, reserving a little of the cooking liquid.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fb69cad8-c736-46bc-acd2-4d29f2e4579f', "id", 3, 'Return the beans to the pot and mash them partially with a fork or potato masher, leaving some texture rather than pureeing completely.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '933dc2e8-834f-4b69-a73d-c98b3d0d0f06', "id", 4, 'Stir in crushed garlic, a squeeze of lemon juice, and a pinch of ground cumin, adding a splash of the reserved liquid if the mixture seems dry.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'd56dee29-b929-4c25-8373-d2cc377d9696', "id", 5, 'Warm the beans through over low heat, stirring gently.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4efbb19c-79b4-4897-a018-34414026b598', "id", 6, 'Spoon the beans into a shallow serving bowl.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '26a3ba2c-cda7-448b-8adf-13034f0e81b2', "id", 7, 'Drizzle generously with olive oil and scatter chopped parsley over the top.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e04907b3-1f9d-47de-a85d-be37e25577f7', "id", 8, 'Serve warm alongside flatbread, chopped tomato, and onion.' FROM "recipes" WHERE "slug" = 'ful-medames-cairo-egypt';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'ful-medames-cairo-egypt';

-- Cheeseburger (United States, United States)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ef7c5463-9928-4e0f-b3fc-e520455b7dfe', "id", 1, 'Divide ground beef into portions and shape each into a patty slightly wider than the bun, pressing a shallow dimple into the center so it cooks flat.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '18cc8075-c526-4625-8bd3-a1d05df1d1c2', "id", 2, 'Season both sides generously with salt and pepper just before cooking.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f3420cf4-7bd2-4898-8c02-68cfdfb7d5f8', "id", 3, 'Heat a skillet or grill over high heat and cook the patties for about 3 minutes per side for medium doneness, flipping only once.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '56d15d0f-b2bd-414b-85bc-1be4287eebbe', "id", 4, 'Place a slice of cheese on top of each patty during the last minute of cooking and cover briefly so it melts.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a54cac21-b9f1-4877-8d0b-395ccf3cb2d2', "id", 5, 'Toast the cut sides of the burger buns on the hot skillet until lightly golden.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '512497e1-d218-4531-a01f-dc2dcab8f21c', "id", 6, 'Spread condiments such as ketchup, mustard, or mayonnaise on the toasted buns.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'fc481dfb-043d-42c3-a46e-832f5801efff', "id", 7, 'Layer lettuce, tomato, onion, and pickles onto the bottom bun, then place the cheese-topped patty on top.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1bfab8db-945d-46b0-bc4a-dd01c8b5f1fe', "id", 8, 'Close the burger with the top bun and serve immediately while hot.' FROM "recipes" WHERE "slug" = 'cheeseburger-united-states-united-states';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'cheeseburger-united-states-united-states';

-- BBQ Pulled Pork (North Carolina, United States)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8a0dd4f9-748a-4cbb-91ec-0c94aaa9bfb1', "id", 1, 'Rub a whole pork shoulder generously with a mix of paprika, brown sugar, salt, and spices, working it into every surface.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '467c0c44-8516-4e87-9f75-2389dd5960d6', "id", 2, 'Let the rubbed pork rest in the refrigerator for at least a few hours, or overnight for deeper flavor.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c9187446-40c4-4ac9-a4f5-a8b67bdbf44c', "id", 3, 'Set up a smoker with wood for indirect heat and bring it to a low, steady temperature.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '44ce4ded-e0d7-4a77-8a2c-74a07d387711', "id", 4, 'Place the pork shoulder on the smoker and cook it low and slow for many hours, maintaining a steady temperature and adding wood as needed, until the meat turns fall-apart tender.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c2908ec5-03f8-4ccd-a360-e9cd22e18519', "id", 5, 'Wrap the pork in foil partway through cooking if the bark darkens too quickly, then continue smoking until done.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '270dda2a-2014-4774-910c-86070e484574', "id", 6, 'Remove the pork from the smoker and let it rest, loosely tented, for about 30 minutes.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f9d17fc7-cc44-4421-98c8-1bdb3fa324e5', "id", 7, 'Shred the meat by hand or with two forks, discarding excess fat and any bone.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '95d4f5ad-4fb1-41a0-8270-9b59f4d02944', "id", 8, 'Toss the shredded pork with a tangy vinegar-based sauce and pile it onto a soft bun with coleslaw.' FROM "recipes" WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'bbq-pulled-pork-north-carolina-united-states';

-- Tacos al Pastor (Mexico City, Mexico)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '29a53b08-a6bc-445c-b539-64c185457617', "id", 1, 'Toast dried guajillo chilies briefly in a dry pan, then soak them in hot water until softened.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2e72f847-7c0b-49f4-b7e6-16e76b613de6', "id", 2, 'Blend the softened chilies with achiote paste, vinegar, garlic, and spices into a smooth marinade.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '55c2f4ef-3344-47d2-8c12-9baa77b32cff', "id", 3, 'Slice pork thinly and toss it with the marinade, making sure every piece is well coated, then refrigerate for at least a few hours.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c5ac487b-d3b0-40c4-8cbc-a208ee18d536', "id", 4, 'Stack the marinated pork slices tightly onto a vertical trompo skewer, placing a piece of pineapple at the top.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5ac4f21f-cc8e-4d1b-82c5-bf896c3db330', "id", 5, 'Roast the stacked meat slowly in front of a heat source, letting the outer layer crisp and caramelize as it turns.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '16fb0459-cddd-4da7-afc4-84c2fb2bf53f', "id", 6, 'Shave off thin, charred slices of pork directly onto small warm corn tortillas as they finish cooking.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'caab0a2a-7783-4374-8b37-2afce496976f', "id", 7, 'Top each taco with a small piece of grilled pineapple, chopped onion, and cilantro.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '43c10776-0498-4884-83f9-83926c068054', "id", 8, 'Serve immediately with lime wedges and salsa on the side.' FROM "recipes" WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'tacos-al-pastor-mexico-city-mexico';

-- Mole Poblano (Puebla, Mexico)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a7a928f1-95f3-42ab-bbe0-aaf7c295e295', "id", 1, 'Toast an assortment of dried chilies in a dry pan for a minute or two until fragrant, then soak them in hot water until softened.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '686d65b6-cc05-4db4-9beb-94e0540606ea', "id", 2, 'Blend the softened chilies with tomatoes, onion, garlic, toasted sesame seeds, almonds, and a pinch of cinnamon into a smooth paste, adding a little soaking liquid as needed.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2b86e404-efae-4e1e-8c49-f896ebc0d600', "id", 3, 'Heat oil in a large pot and fry the blended paste over medium-low heat, stirring often to prevent sticking, for about 20 minutes, until it deepens in color and the flavors meld.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c5c3de33-795e-447c-8ab3-06e52f93666f', "id", 4, 'Add stock gradually to thin the sauce to a pourable consistency.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f3bfd990-8c17-473e-a8a9-236be8afb4a4', "id", 5, 'Stir in a small amount of dark chocolate and let it melt into the sauce, along with a touch more spice if needed.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '17068cd0-2687-40a7-b22d-0daabcb583d3', "id", 6, 'Simmer the sauce gently for another 15 minutes, stirring occasionally, until it turns rich, glossy, and slightly thickened.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6297be72-0a51-430f-bcb9-dea95c35f0c1', "id", 7, 'Add pieces of cooked turkey or chicken to the pot, spooning the mole over them so they become well coated.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '52dc278c-0ffa-49cf-b72e-d08dc1c350f2', "id", 8, 'Simmer for a few more minutes until heated through, then serve over the meat alongside rice.' FROM "recipes" WHERE "slug" = 'mole-poblano-puebla-mexico';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'mole-poblano-puebla-mexico';

-- Feijoada (Rio de Janeiro, Brazil)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '01435419-5eee-4042-b9aa-8ff0c330b299', "id", 1, 'Soak black beans in water overnight, then drain.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '13d6937e-b07f-4a4c-a328-766201116069', "id", 2, 'Place the beans in a large pot with pork ribs, bacon, and sausage, cover generously with water, and bring to a simmer.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4b49fd37-8ed7-413b-9d24-26a0f1d75f64', "id", 3, 'Cook for about two hours, skimming any foam and adding more water as needed, until the meats turn tender and the beans soften into a creamy consistency.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e9885e3e-c9b6-4098-9c7e-5b6ce1f67186', "id", 4, 'In a separate pan, sauté chopped onion and garlic in a little oil until golden.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '43cea19c-3e70-4f89-b857-1cc654dffdb5', "id", 5, 'Stir the sautéed onion and garlic into the pot along with bay leaves, letting everything simmer together for another 30 minutes to deepen the flavor.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b3f9d3cf-fa83-4d16-af02-f1d90d7976c1', "id", 6, 'Remove some of the meat, chop it into smaller pieces, and return it to the pot to help thicken the stew further.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5090f72f-ad39-43a9-bd62-720bdd112856', "id", 7, 'Season with salt and let the feijoada simmer uncovered for a final stretch, until it reaches a hearty, thick consistency.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '77df223d-41d1-44b9-89f2-152b8533d52b', "id", 8, 'Serve with rice, sautéed collard greens, and orange slices on the side to cut through the richness.' FROM "recipes" WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'feijoada-rio-de-janeiro-brazil';

-- Pão de Queijo (Minas Gerais, Brazil)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '26b99927-7c47-45d0-b068-52c3f647f0c5', "id", 1, 'Heat milk, oil, and salt together in a saucepan until it just comes to a boil.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '01075336-52d5-415b-982d-0beed4640ccb', "id", 2, 'Pour the hot liquid over tapioca starch in a large bowl, stirring immediately and vigorously until it forms a sticky, slightly lumpy dough.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f9d22b8f-9f4c-4d77-a92e-0b83a0969c06', "id", 3, 'Let the dough cool for about 10 minutes, until it is just warm enough to handle.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ccc48e77-d469-4a26-a274-c8dad0ce4356', "id", 4, 'Knead in the eggs one at a time, working each one in fully before adding the next.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'dfbc2279-e3a7-48c7-8c69-037e436309c1', "id", 5, 'Add a generous amount of grated cheese and knead until the dough turns smooth, elastic, and slightly tacky.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c7952f5f-1abc-4a33-a415-5858507960d3', "id", 6, 'Roll the dough into small balls using lightly oiled hands and arrange them on a baking sheet with space between each.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '4b55fbe4-2f76-4283-b4b1-b2334655ac52', "id", 7, 'Bake in a hot oven for about 20 minutes, until the rolls puff up and turn golden on the outside.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '39020568-ba68-491e-8e2d-9e9ae7e64320', "id", 8, 'Serve warm, when the inside is at its chewiest and cheesiest.' FROM "recipes" WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'pao-de-queijo-minas-gerais-brazil';

-- Ceviche (Lima, Peru)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'ceviche-lima-peru');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '78d843b1-5f73-4077-9aac-fb356ee40fd7', "id", 1, 'Cut fresh raw white fish into bite-sized pieces and place them in a glass or ceramic bowl.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '53fb2d11-ba39-48e7-87b2-7af4a1f33f3b', "id", 2, 'Thinly slice red onion and soak it briefly in cold water to soften its bite, then drain.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'e3cdfaa9-704e-4fd7-a3e8-5da724f3f84b', "id", 3, 'Squeeze plenty of fresh lime juice over the fish, making sure every piece is submerged.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '2fc98397-6f1b-4ff5-9bec-6b2d2c8f5326', "id", 4, 'Add the sliced red onion, chopped cilantro, and a touch of minced aji chili to the bowl.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'b9e673ab-6b08-4310-8841-ee94a740747f', "id", 5, 'Season with salt and toss everything gently to combine.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c99c817a-8436-4158-8b20-79f4e012699a', "id", 6, 'Let the mixture marinate for about 10 to 15 minutes, just long enough for the acid in the lime juice to firm and lightly cook the surface of the fish.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1328911d-b11f-410a-b92f-dd33220c6640', "id", 7, 'Taste and adjust the salt and lime juice as needed.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '49cdbfa4-6b23-4623-b166-76ae201de51d', "id", 8, 'Serve immediately in chilled bowls with slices of boiled sweet potato and cooked corn on the side.' FROM "recipes" WHERE "slug" = 'ceviche-lima-peru';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'ceviche-lima-peru';

-- Lomo Saltado (Lima, Peru)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '7fd990e0-0888-4f71-9172-237603750e0a', "id", 1, 'Cut beef into thin strips and season lightly with salt and pepper.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a5a4ba77-43ee-430a-bdec-f9bbdffbd9a6', "id", 2, 'Heat oil in a wok or large skillet over very high heat until it just begins to smoke.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '57513e0b-23f1-4c2d-b2cb-4f62526bf43d', "id", 3, 'Add the beef in a single layer and sear for about a minute per side, until browned but still tender, then remove and set aside.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '444026f6-6f9e-4d9f-9fb1-fbc65647d520', "id", 4, 'Add sliced onion and tomato wedges to the same pan and toss briefly for about a minute, so they soften slightly while staying a bit crisp.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '79393197-1c5a-4219-8e97-aa079f9e8d7a', "id", 5, 'Return the beef to the pan along with soy sauce and a splash of red wine vinegar, tossing everything together over high heat.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '52453e00-a3bc-4416-8285-e6aa936d4cf0', "id", 6, 'Cook for another minute, until the sauce reduces slightly and coats the beef and vegetables.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6e79812f-e507-41d1-b359-54cd24a8e3e0', "id", 7, 'Fold in crisp French fries just before removing the pan from the heat, tossing gently so they stay crunchy rather than turning soggy.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8ae9f305-69ca-46ce-bfac-86b1e7f39f04', "id", 8, 'Sprinkle with chopped cilantro and serve immediately alongside steamed rice.' FROM "recipes" WHERE "slug" = 'lomo-saltado-lima-peru';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'lomo-saltado-lima-peru';

-- Meat Pie (Melbourne, Australia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'a814786e-fea2-40c1-b711-ea5007ec8593', "id", 1, 'Heat oil in a large pan and brown ground beef with chopped onion, breaking the meat into small crumbles as it cooks.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '5a631aa8-5e7b-4235-abb4-fd722032c72c', "id", 2, 'Add beef stock and a splash of Worcestershire sauce, then simmer the mixture for about 20 minutes, until it reduces into a thick, savory filling.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '6d4ad09e-e31a-447c-a516-7b71556e8128', "id", 3, 'Mix a little flour or cornstarch with cold water to make a slurry, then stir it into the filling to thicken it further.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8fef964e-eef9-49c4-aa13-fb877c36158c', "id", 4, 'Season with salt and pepper, then remove the filling from the heat and let it cool completely.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '442bcd7c-441d-40c4-8a31-4b7bf5613ae2', "id", 5, 'Line small pie tins with rolled-out pastry, pressing it gently into the corners and trimming the excess.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'ae39ba47-e9b5-4c33-84c5-01f890ecf672', "id", 6, 'Spoon the cooled meat filling into each pastry-lined tin.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '175ea5a8-40c0-4fa1-a45a-36d65847a5ff', "id", 7, 'Top each pie with a circle of puff pastry, pressing and crimping the edges together to seal, then cut a small slit in the top to vent steam.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'c011ffd9-bdd3-4a86-9004-8bde03bb10c3', "id", 8, 'Brush with beaten egg and bake in a hot oven for about 25 minutes, until the pastry turns puffed and golden, then serve hot with a squeeze of tomato sauce on top.' FROM "recipes" WHERE "slug" = 'meat-pie-melbourne-australia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'meat-pie-melbourne-australia';

-- Lamington (Sydney, Australia)
DELETE FROM "recipe_steps" WHERE "recipeId" = (SELECT "id" FROM "recipes" WHERE "slug" = 'lamington-sydney-australia');
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8589155d-f00c-4a51-898f-a20cea3c9c03', "id", 1, 'Cream butter and sugar together until light and fluffy, then beat in eggs one at a time.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT 'f6570a2c-ef84-4200-a7c9-dc2b57563675', "id", 2, 'Fold in flour and a little milk alternately, along with vanilla, to make a smooth, light sponge batter.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '248a74e1-36f8-44f5-9282-917cb687f7a5', "id", 3, 'Pour the batter into a prepared baking pan and bake in a moderate oven for about 30 minutes, until a skewer inserted in the center comes out clean.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '84b4916c-017a-4e75-a631-1feaabb5b7bf', "id", 4, 'Let the sponge cool completely, then cut it into small even squares.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '21f8a059-73b5-45b9-a9fb-596e39469971', "id", 5, 'Make the chocolate icing by mixing cocoa powder, powdered sugar, and melted butter with a little hot water or milk, stirring until smooth and pourable.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '1eb51ea6-288c-40f0-94e9-19a0d4bc1cc8', "id", 6, 'Dip each cake square into the chocolate icing using a fork, turning it to coat all sides evenly, then let the excess drip off.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '541f9ede-fd6b-4fe6-94d0-3013e1855ac1', "id", 7, 'Immediately roll the coated square in desiccated coconut, pressing gently so it sticks all over before the icing sets.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction")
SELECT '8e9f8c5e-0116-45ba-91bb-24e60e423236', "id", 8, 'Place the finished lamingtons on a wire rack to let the coating firm up before serving.' FROM "recipes" WHERE "slug" = 'lamington-sydney-australia';
UPDATE "recipes" SET "updatedAt" = '2026-09-13T15:01:14.281Z' WHERE "slug" = 'lamington-sydney-australia';

COMMIT;
