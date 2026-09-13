-- Kalabhavans.com seed data — generated to match prisma/seed.ts's logic exactly.
-- Safe to re-run: uses ON CONFLICT DO NOTHING, same upsert intent as the original script.
BEGIN;

INSERT INTO "tags" ("id","name","kind") VALUES ('f75564cd-69db-4e4a-8124-5d3c5a37546d', 'region:North India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7de9c4f6-783b-4ab2-994e-9ebc922ba7c3', 'state:Punjab', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bf368830-a919-4c8e-92e3-c0f7a5d2136a', 'country:India', 'country') ON CONFLICT ("name") DO NOTHING;

-- Sarson da Saag with Makki di Roti (Punjab, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2e58f185-1268-4880-a30e-7c265cd5c559', 'sarson-da-saag-with-makki-di-roti-punjab-india', 'Sarson da Saag with Makki di Roti', NULL, 'asia'::"Continent", 'India', 'Punjab', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/5/52/Sarson-Ka-Saag.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6add610-2b09-4a56-946e-3c5768ace834', '2e58f185-1268-4880-a30e-7c265cd5c559', 0, NULL, 'Mustard greens') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('298a0fd3-28fd-4720-a718-9ace9beb9644', '2e58f185-1268-4880-a30e-7c265cd5c559', 1, NULL, 'Spinach') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8c17939-c77b-4b33-ab19-98e0eb1f5061', '2e58f185-1268-4880-a30e-7c265cd5c559', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ba505e6-fdae-49af-88dc-343c9faad5ef', '2e58f185-1268-4880-a30e-7c265cd5c559', 3, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8657bc43-07b9-4eca-a783-bc4e8020c189', '2e58f185-1268-4880-a30e-7c265cd5c559', 4, NULL, 'Maize flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f8cf2d5-6c0b-4a83-a397-2621334685ce', '2e58f185-1268-4880-a30e-7c265cd5c559', 5, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b5133d4f-087a-4890-a30b-0c2b31d788ca', '2e58f185-1268-4880-a30e-7c265cd5c559', 1, 'Boil mustard greens and spinach with ginger and chili until soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('740ab913-bb17-44bd-9684-beeff6e76848', '2e58f185-1268-4880-a30e-7c265cd5c559', 2, 'Mash and simmer with a ghee-garlic tempering until thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('943fcc37-e30f-4cac-8ac9-61cc26717ae6', '2e58f185-1268-4880-a30e-7c265cd5c559', 3, 'Cook maize-flour flatbreads on a hot griddle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2f8bac80-10d5-4849-819c-8f5e930d974e', '2e58f185-1268-4880-a30e-7c265cd5c559', 4, 'Serve the saag with the flatbreads, finished with ghee.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58f185-1268-4880-a30e-7c265cd5c559', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58f185-1268-4880-a30e-7c265cd5c559', '7de9c4f6-783b-4ab2-994e-9ebc922ba7c3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58f185-1268-4880-a30e-7c265cd5c559', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Butter Chicken (Punjab, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 'butter-chicken-punjab-india', 'Butter Chicken', NULL, 'asia'::"Continent", 'India', 'Punjab', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/97/Butter_chicken_with_rumali_roti.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e7927eff-35bb-4d6b-8e18-926819a3844a', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('63148477-116a-4f1a-9036-6a0e50c9c1d5', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61225c21-c1d0-4f0d-8cdc-84d3e875761a', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 2, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15970740-0183-4531-bd27-970f4d32535f', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 3, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5b584c16-9bc3-4f6d-a98a-a5c9464c441f', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 4, NULL, 'Cream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('419348e9-eb74-43bb-b877-80496ce4d904', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 5, NULL, 'Garam masala') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cf0c24c2-d692-4778-83de-b2580f6bd1e6', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 6, NULL, 'Kasuri methi') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a3d18cf3-6395-41e6-a6e7-3d4f8ead0674', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 1, 'Marinate chicken in yogurt and spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2e7c62be-80b0-42c6-bb97-545afa1b52f0', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 2, 'Grill or pan-sear the chicken until charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c317f9bc-c264-4645-9510-47f131795524', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 3, 'Simmer it in a tomato-butter-cream gravy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7736568-3f81-4fc4-be12-0d1479ee67f1', 'e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 4, 'Cook until the chicken is coated and tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e088f93b-dbb8-47c8-9cc4-22c75d8efb94', '7de9c4f6-783b-4ab2-994e-9ebc922ba7c3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e088f93b-dbb8-47c8-9cc4-22c75d8efb94', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Amritsari Kulcha (Punjab, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d216921c-c8ca-467f-8577-d5470acef070', 'amritsari-kulcha-punjab-india', 'Amritsari Kulcha', NULL, 'asia'::"Continent", 'India', 'Punjab', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Amritsari_Kulcha.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('16667d9a-0f43-4fc7-9bff-040abeb94d50', 'd216921c-c8ca-467f-8577-d5470acef070', 0, NULL, 'Maida') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b603e4b7-b4f2-43e9-937c-7cda862f63c2', 'd216921c-c8ca-467f-8577-d5470acef070', 1, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bdf9f5b8-d304-4c54-97c5-a184592a1704', 'd216921c-c8ca-467f-8577-d5470acef070', 2, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d39b5e0a-8c19-474e-9308-abce8e707a78', 'd216921c-c8ca-467f-8577-d5470acef070', 3, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5936e67c-5599-49cf-a928-ca0b22619db5', 'd216921c-c8ca-467f-8577-d5470acef070', 1, 'Knead a dough and let it rest.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('56a544ce-36fe-456a-bba4-f994fb8b7530', 'd216921c-c8ca-467f-8577-d5470acef070', 2, 'Stuff it with spiced mashed potato.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('89c0e2a1-c53b-435c-a4a6-0ef3576d7f58', 'd216921c-c8ca-467f-8577-d5470acef070', 3, 'Roll out and cook in a tandoor or hot skillet until puffed and golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5074c5e5-dce6-45db-8cde-e418d5ed1141', 'd216921c-c8ca-467f-8577-d5470acef070', 4, 'Brush with butter before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d216921c-c8ca-467f-8577-d5470acef070', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d216921c-c8ca-467f-8577-d5470acef070', '7de9c4f6-783b-4ab2-994e-9ebc922ba7c3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d216921c-c8ca-467f-8577-d5470acef070', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3e237cf1-a9e0-4e89-b123-c14c07ab40a0', 'state:Haryana', 'state') ON CONFLICT ("name") DO NOTHING;

-- Bajre ki Khichdi (Haryana, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a9f0219f-a00b-4bb8-8fc4-2132a3231060', 'bajre-ki-khichdi-haryana-india', 'Bajre ki Khichdi', NULL, 'asia'::"Continent", 'India', 'Haryana', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba25e75c-890d-4b77-b0cd-433b61ebcc84', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 0, NULL, 'Pearl millet (bajra)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('58adda72-0cca-4914-95e3-e90a7886f5e9', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 1, NULL, 'Moong dal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b816d96f-455c-4648-b229-bd56bfc7cebf', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 2, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cbbd690d-6a2d-4a60-8970-f598cc913899', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 3, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5db0a2da-be7c-4268-a9ba-a9e2043897e8', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 1, 'Cook millet with split moong dal, turmeric, and salt until soft and porridge-like.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f34bcd5e-1b9d-4ee7-aae7-c9d7202b9356', 'a9f0219f-a00b-4bb8-8fc4-2132a3231060', 2, 'Finish with a ghee-cumin tempering.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a9f0219f-a00b-4bb8-8fc4-2132a3231060', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a9f0219f-a00b-4bb8-8fc4-2132a3231060', '3e237cf1-a9e0-4e89-b123-c14c07ab40a0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a9f0219f-a00b-4bb8-8fc4-2132a3231060', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Kadhi Pakora (Haryana, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f2816ad4-97f5-40f1-815e-c001f54a067f', 'kadhi-pakora-haryana-india', 'Kadhi Pakora', NULL, 'asia'::"Continent", 'India', 'Haryana', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/6/67/Kadhi_Pakora.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('64c4edf9-bda1-409c-bef0-79968bf1cc32', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 0, NULL, 'Besan') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7410e5db-8db5-442d-bc38-0024349461ff', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7e66b46e-d52a-42e4-bacf-d679a2c81f53', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 2, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ed5407b5-b267-478d-867c-57b4b6094570', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 3, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('49d6f9d5-72c0-4950-af3e-bfe0ae49b74f', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 1, 'Fry gram-flour fritters (pakora).') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fccfe3d3-b4f0-43f3-b10b-03c7df2c5409', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 2, 'Simmer them in a tangy yogurt-besan gravy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc41122f-dcd3-4791-a3fe-a50e32487853', 'f2816ad4-97f5-40f1-815e-c001f54a067f', 3, 'Temper with mustard seeds and curry leaves until thickened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f2816ad4-97f5-40f1-815e-c001f54a067f', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f2816ad4-97f5-40f1-815e-c001f54a067f', '3e237cf1-a9e0-4e89-b123-c14c07ab40a0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f2816ad4-97f5-40f1-815e-c001f54a067f', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('38d93488-c8e9-4d16-b74d-501277b20e48', 'state:Himachal Pradesh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dham (Himachal Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('89c81141-0a70-48c3-8274-9fe838b95ea4', 'dham-himachal-pradesh-india', 'Dham', NULL, 'asia'::"Continent", 'India', 'Himachal Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Kangri_Dham.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80f0aeb2-a34f-4217-a7ff-c11652e7b72e', '89c81141-0a70-48c3-8274-9fe838b95ea4', 0, NULL, 'Rajma') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('20533990-7def-4ec7-bebf-0aba87a08981', '89c81141-0a70-48c3-8274-9fe838b95ea4', 1, NULL, 'Black chana') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c95ea008-1f4f-48c7-91f5-f42627bf66be', '89c81141-0a70-48c3-8274-9fe838b95ea4', 2, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e820afc9-5f02-4736-8055-99c645ebe5e1', '89c81141-0a70-48c3-8274-9fe838b95ea4', 3, NULL, 'Himachali spice blend') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7de02f01-ea7a-446b-b635-1f790419f5c3', '89c81141-0a70-48c3-8274-9fe838b95ea4', 1, 'Slow-cook rajma, black chana, and rice-based sides separately with local spice blends.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a4bc8f8c-3e48-4ae5-9045-89ad06781630', '89c81141-0a70-48c3-8274-9fe838b95ea4', 2, 'Serve together as a festive thali.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('89c81141-0a70-48c3-8274-9fe838b95ea4', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('89c81141-0a70-48c3-8274-9fe838b95ea4', '38d93488-c8e9-4d16-b74d-501277b20e48') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('89c81141-0a70-48c3-8274-9fe838b95ea4', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Siddu (Himachal Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f728aff1-9eef-49fd-a1b3-b0862c422d23', 'siddu-himachal-pradesh-india', 'Siddu', NULL, 'asia'::"Continent", 'India', 'Himachal Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/93/Siddu.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('533e671b-7bd0-4084-9358-f3f302d0739a', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 0, NULL, 'Wheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('941668e0-2872-4e06-a29d-a56e7b0b8d68', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 1, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8d0c2fb7-c620-4283-a04c-a426798e50f1', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 2, NULL, 'Poppy seed/nut filling') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6630362b-9ba4-469d-befc-a1178df09b2e', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 1, 'Prepare a yeasted wheat dough and let it rise.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12dd4d5f-28f7-4f5e-a6d9-a87fb508cb6c', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 2, 'Stuff with a nutty filling and shape into balls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('60b2eaa9-1cc4-45a7-b68e-237be3800a2c', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 3, 'Steam until cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('498b68dd-bd6d-4bb5-837e-fd67bfefc35d', 'f728aff1-9eef-49fd-a1b3-b0862c422d23', 4, 'Serve with ghee or chutney.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f728aff1-9eef-49fd-a1b3-b0862c422d23', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f728aff1-9eef-49fd-a1b3-b0862c422d23', '38d93488-c8e9-4d16-b74d-501277b20e48') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f728aff1-9eef-49fd-a1b3-b0862c422d23', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Chana Madra (Himachal Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 'chana-madra-himachal-pradesh-india', 'Chana Madra', NULL, 'asia'::"Continent", 'India', 'Himachal Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('24984e46-1cd0-45b5-86c1-b969e34974ed', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 0, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b9b977a0-bc62-4862-85d8-b13caaf427eb', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ae4b5b8c-f850-4592-aa67-001930345f3e', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 2, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7af887ae-090a-42b3-8e02-dd725af8edfe', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 3, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed71fd5e-aa04-43ec-86bf-72879de5d06d', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 1, 'Simmer boiled chickpeas in a yogurt-based gravy flavored with whole spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4292c96d-29be-477a-a3ba-4c5537913ec7', 'a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 2, 'Finish with ghee.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a0616dad-c0ba-48f2-b1d4-29bbdbb86685', '38d93488-c8e9-4d16-b74d-501277b20e48') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a0616dad-c0ba-48f2-b1d4-29bbdbb86685', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2a2eff18-dabe-4916-a070-a933a960bd11', 'state:Jammu & Kashmir', 'state') ON CONFLICT ("name") DO NOTHING;

-- Rogan Josh (Jammu & Kashmir, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('08d640f7-e193-44d2-bf7f-3dac85e7fbef', 'rogan-josh-jammu-and-kashmir-india', 'Rogan Josh', NULL, 'asia'::"Continent", 'India', 'Jammu & Kashmir', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/4/43/Mutton_rogan_josh.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('81b69986-cec7-44a4-aa8d-1dc1a79ac097', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 0, NULL, 'Lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('47255954-10d0-4cfd-9c7c-08746dc5da06', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ee54eb5-33c3-40b5-9023-dcae509324cb', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 2, NULL, 'Kashmiri red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ef29753d-27e6-4dad-9318-5b3d2556f4a7', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 3, NULL, 'Fennel') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd51078e-9bd2-4796-a932-69a62b1d6310', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 1, 'Sear the lamb.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a9327b4b-7208-40dd-9d6c-886cddd7d701', '08d640f7-e193-44d2-bf7f-3dac85e7fbef', 2, 'Slow-cook it in a yogurt gravy flavored with Kashmiri red chili and fennel until deeply colored and tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('08d640f7-e193-44d2-bf7f-3dac85e7fbef', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('08d640f7-e193-44d2-bf7f-3dac85e7fbef', '2a2eff18-dabe-4916-a070-a933a960bd11') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('08d640f7-e193-44d2-bf7f-3dac85e7fbef', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Yakhni (Jammu & Kashmir, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b83d32da-df7e-46e8-b62f-cde7ea592961', 'yakhni-jammu-and-kashmir-india', 'Yakhni', NULL, 'asia'::"Continent", 'India', 'Jammu & Kashmir', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('364ff527-6852-4756-b2b6-fefdc5f7c990', 'b83d32da-df7e-46e8-b62f-cde7ea592961', 0, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8564388e-ddf3-4223-bd29-57c38ead769f', 'b83d32da-df7e-46e8-b62f-cde7ea592961', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19223a2b-f744-4288-b0e0-e3f7d9108c11', 'b83d32da-df7e-46e8-b62f-cde7ea592961', 2, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9dde039d-e64f-4a56-88b6-ca74dcf08ef8', 'b83d32da-df7e-46e8-b62f-cde7ea592961', 1, 'Simmer meat in a yogurt-based broth with whole spices until tender and mildly tangy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b83d32da-df7e-46e8-b62f-cde7ea592961', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b83d32da-df7e-46e8-b62f-cde7ea592961', '2a2eff18-dabe-4916-a070-a933a960bd11') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b83d32da-df7e-46e8-b62f-cde7ea592961', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Dum Aloo (Jammu & Kashmir, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 'dum-aloo-jammu-and-kashmir-india', 'Dum Aloo', NULL, 'asia'::"Continent", 'India', 'Jammu & Kashmir', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/ec/Kashmiri_Dum_Aaloo.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('48feaecd-e4f5-4d1c-b1cf-3080fc22bd99', '553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 0, NULL, 'Baby potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('77af0030-daf3-48f4-83fb-3dd15b0e1620', '553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 1, NULL, 'Yogurt/tomato gravy') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90345f6d-7ffa-4cc5-81c0-0e507b75c6ee', '553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 2, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d2fefc26-5b66-4da4-bf40-66668724f5df', '553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 1, 'Fry baby potatoes until golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5c85419e-c266-4ca7-b585-7a0c88435530', '553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 2, 'Slow-cook (dum) in a spiced gravy until infused with flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('553253e3-2af7-4817-9ee3-b7bd98bf6d2f', '2a2eff18-dabe-4916-a070-a933a960bd11') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('553253e3-2af7-4817-9ee3-b7bd98bf6d2f', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Kashmiri Pulao (Jammu & Kashmir, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 'kashmiri-pulao-jammu-and-kashmir-india', 'Kashmiri Pulao', NULL, 'asia'::"Continent", 'India', 'Jammu & Kashmir', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/a/a7/Kashmiri_pulao_%28cropped%29.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('89471242-0bf2-44b3-a1f5-f0d9826133b3', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('51ec5cb7-7aef-43a3-b959-c7f1dde380c4', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 1, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1296c75b-bc1e-4065-8bd6-2635236be058', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 2, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3c9befb6-b9cb-44fe-bc4b-32b24ecc1482', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 3, NULL, 'Dried fruit') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48b7e926-8089-4660-b0b5-e688fe9be28a', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 1, 'Sauté rice briefly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5592b458-331f-4b5d-a67a-ca629b81fb5a', '91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 2, 'Cook with saffron-infused milk, dried fruits, and mild whole spices until fluffy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('91c9c14a-288c-4e2f-8bc5-9464aedce3f4', '2a2eff18-dabe-4916-a070-a933a960bd11') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('91c9c14a-288c-4e2f-8bc5-9464aedce3f4', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b08f2b86-91b3-44ba-bfc7-760c09643038', 'state:Uttar Pradesh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Lucknowi Biryani (Uttar Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 'lucknowi-biryani-uttar-pradesh-india', 'Lucknowi Biryani', NULL, 'asia'::"Continent", 'India', 'Uttar Pradesh', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('94af0a6d-3bcd-4d32-b9c6-f1e76bd948b0', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 0, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('206ef147-18dd-4d5d-8338-41d4ae83b7a4', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 1, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('230968e2-f971-43e4-a105-eb64ecb581d1', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 2, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b8fb3336-ea98-4124-8925-e82755f26d77', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 3, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3115b59e-ae08-4b70-80e2-b24bf2c6a277', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 1, 'Layer partially cooked spiced meat with par-boiled rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('563d2738-385d-4843-b460-97f0ef6b66e6', 'dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 2, 'Seal the pot and cook on low heat (dum) so the flavors and aroma infuse the rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 'b08f2b86-91b3-44ba-bfc7-760c09643038') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dd1c33d8-7bf8-483a-98af-29a8e18bc60c', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Tunday Kababi (Uttar Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 'tunday-kababi-uttar-pradesh-india', 'Tunday Kababi', NULL, 'asia'::"Continent", 'India', 'Uttar Pradesh', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/8/88/Tunday_Kebabs.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c15f050-44ea-4875-9d56-298a18a962f6', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 0, NULL, 'Minced meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('982fd2a3-65b6-4a48-986f-1f52c824c122', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 1, NULL, 'Raw papaya') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1dd9f60d-e779-46b2-a21f-bc955ce4fa96', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 2, NULL, 'Spice paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('18b38bab-5692-4688-8f4d-52cd7173bece', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 1, 'Blend minced meat with a spice paste and raw papaya for tenderness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7c662bc0-cb9c-4ff5-bd13-1e6a88c34b83', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 2, 'Shape into small patties.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4455ba9e-5d36-472c-af93-bf728bc1073d', 'a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 3, 'Shallow-fry on a griddle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 'b08f2b86-91b3-44ba-bfc7-760c09643038') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a94dbf22-3a58-4a68-9ba3-6b8fad639a1f', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Petha (Uttar Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2f168369-3bce-4bf7-afba-5ebb34e3f15d', 'petha-uttar-pradesh-india', 'Petha', NULL, 'asia'::"Continent", 'India', 'Uttar Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Petha-from-Agra.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34609777-a0f0-4c15-9089-e339e81148e7', '2f168369-3bce-4bf7-afba-5ebb34e3f15d', 0, NULL, 'Ash gourd') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5017d55c-ba4d-4187-9396-2dfc095f748f', '2f168369-3bce-4bf7-afba-5ebb34e3f15d', 1, NULL, 'Sugar syrup') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('460871e9-6502-4d2f-90ca-01be4291c888', '2f168369-3bce-4bf7-afba-5ebb34e3f15d', 1, 'Boil ash gourd cubes in a sugar syrup with flavorings until translucent and candied.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2f168369-3bce-4bf7-afba-5ebb34e3f15d', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2f168369-3bce-4bf7-afba-5ebb34e3f15d', 'b08f2b86-91b3-44ba-bfc7-760c09643038') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2f168369-3bce-4bf7-afba-5ebb34e3f15d', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3cfd1d1f-13e7-4818-942c-8a0617fabaea', 'state:Uttarakhand', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kafuli (Uttarakhand, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 'kafuli-uttarakhand-india', 'Kafuli', NULL, 'asia'::"Continent", 'India', 'Uttarakhand', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('de2a3a58-d33a-4ee8-bfcc-23b493d25e3a', '9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 0, NULL, 'Spinach') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e0d7a020-5233-4f1a-92e4-66219803ae27', '9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 1, NULL, 'Fenugreek leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('65b2bbd7-6273-4b92-9df2-8526a5d71584', '9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 2, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('abdd3a99-1523-4ef3-97c3-19a18416f9f3', '9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 1, 'Cook and mash leafy greens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e7e7c54b-e3ab-4e4a-9e57-081e00f0d0c8', '9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 2, 'Simmer with a mild spiced gravy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', '3cfd1d1f-13e7-4818-942c-8a0617fabaea') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9af7e0d0-2693-4ab6-bffb-f2dadd42b86d', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Bhatt ki Churkani (Uttarakhand, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('399dcb96-b0a7-4762-9246-782da5c74e30', 'bhatt-ki-churkani-uttarakhand-india', 'Bhatt ki Churkani', NULL, 'asia'::"Continent", 'India', 'Uttarakhand', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ccb8f0c-16b4-4eb8-936f-9dc194c5aeb5', '399dcb96-b0a7-4762-9246-782da5c74e30', 0, NULL, 'Black soybeans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60a8b189-957a-48de-af1c-401ed91f329f', '399dcb96-b0a7-4762-9246-782da5c74e30', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15df0dd9-b7dd-4da7-99ed-6596600d5ad0', '399dcb96-b0a7-4762-9246-782da5c74e30', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('60d4e9de-69c5-49b5-bf83-c2435a3f3b9b', '399dcb96-b0a7-4762-9246-782da5c74e30', 1, 'Cook black soybeans until soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6589b3ef-466a-4389-ac3c-ecb6c4a41dc8', '399dcb96-b0a7-4762-9246-782da5c74e30', 2, 'Temper with garlic, ginger, and local spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('399dcb96-b0a7-4762-9246-782da5c74e30', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('399dcb96-b0a7-4762-9246-782da5c74e30', '3cfd1d1f-13e7-4818-942c-8a0617fabaea') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('399dcb96-b0a7-4762-9246-782da5c74e30', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Aloo ke Gutke (Uttarakhand, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('be080974-98e2-4c9a-b203-24167211e624', 'aloo-ke-gutke-uttarakhand-india', 'Aloo ke Gutke', NULL, 'asia'::"Continent", 'India', 'Uttarakhand', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d550e393-045b-4a2c-9ccd-649195980359', 'be080974-98e2-4c9a-b203-24167211e624', 0, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bdce0131-d0c3-4f0b-981c-7bca30b88d49', 'be080974-98e2-4c9a-b203-24167211e624', 1, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0b7809f-70ab-4072-b521-214bd834575d', 'be080974-98e2-4c9a-b203-24167211e624', 2, NULL, 'Red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fc7e7495-e80b-4f80-bdd6-da05a4e98b31', 'be080974-98e2-4c9a-b203-24167211e624', 1, 'Boil potato chunks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7518ec4c-90d2-4f3a-b2b5-5cab55d2b626', 'be080974-98e2-4c9a-b203-24167211e624', 2, 'Pan-fry with mustard seeds, red chili, and turmeric until crisp-edged.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('be080974-98e2-4c9a-b203-24167211e624', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('be080974-98e2-4c9a-b203-24167211e624', '3cfd1d1f-13e7-4818-942c-8a0617fabaea') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('be080974-98e2-4c9a-b203-24167211e624', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ab10c146-84d8-4b19-8299-248f2eec7710', 'state:Rajasthan', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dal Baati Churma (Rajasthan, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d3e78206-a0dd-40d7-beec-3621b0f49806', 'dal-baati-churma-rajasthan-india', 'Dal Baati Churma', NULL, 'asia'::"Continent", 'India', 'Rajasthan', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Rajasthani_Dal_Bati_Churma_-_Gurugram_-_Haryana_-_03.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('07e5d82d-9955-4536-aea2-b5cd78df9b91', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 0, NULL, 'Wheat dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e7b549ed-78ab-4451-b9ba-a20a55e380dd', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 1, NULL, 'Mixed lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1bc9e0b-17e9-4eec-8e03-3228d0d0adf2', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 2, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ad3ed20d-743f-4dc4-b04e-a67ccfbf2390', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 3, NULL, 'Jaggery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a7b34444-9f7e-4115-bb37-1c2c99036a54', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 1, 'Bake wheat-flour dough balls (baati) until crusty.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ff65697d-4472-44a0-8655-9dc5de37bb3e', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 2, 'Serve with spiced mixed-lentil dal.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f3f412d8-6f94-42f4-9c21-b401a4064278', 'd3e78206-a0dd-40d7-beec-3621b0f49806', 3, 'Crumble sweetened wheat (churma) alongside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d3e78206-a0dd-40d7-beec-3621b0f49806', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d3e78206-a0dd-40d7-beec-3621b0f49806', 'ab10c146-84d8-4b19-8299-248f2eec7710') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d3e78206-a0dd-40d7-beec-3621b0f49806', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Laal Maas (Rajasthan, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a4b41164-1f42-4f60-b980-1f5bec9970a2', 'laal-maas-rajasthan-india', 'Laal Maas', NULL, 'asia'::"Continent", 'India', 'Rajasthan', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4b8910ee-c0c6-49f1-910d-53673de07774', 'a4b41164-1f42-4f60-b980-1f5bec9970a2', 0, NULL, 'Mutton') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7eaed962-3d0b-4270-9451-af28aded050b', 'a4b41164-1f42-4f60-b980-1f5bec9970a2', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('66eb871b-16eb-46ca-8c7e-0aa0c469d031', 'a4b41164-1f42-4f60-b980-1f5bec9970a2', 2, NULL, 'Mathania chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('20aac0fe-e38b-4c4c-a636-d1ad5bbb4659', 'a4b41164-1f42-4f60-b980-1f5bec9970a2', 1, 'Marinate mutton in yogurt and Mathania chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('acbf0c25-486e-49d7-ae01-58b9f563f1d6', 'a4b41164-1f42-4f60-b980-1f5bec9970a2', 2, 'Slow-cook until the gravy turns deep red and the meat is tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a4b41164-1f42-4f60-b980-1f5bec9970a2', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a4b41164-1f42-4f60-b980-1f5bec9970a2', 'ab10c146-84d8-4b19-8299-248f2eec7710') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a4b41164-1f42-4f60-b980-1f5bec9970a2', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Ker Sangri (Rajasthan, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('c00a43d1-3a50-488e-a845-e8b2e0723874', 'ker-sangri-rajasthan-india', 'Ker Sangri', NULL, 'asia'::"Continent", 'India', 'Rajasthan', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Ker_Sangri.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a9bf63ec-c741-4ade-abf0-319034153cca', 'c00a43d1-3a50-488e-a845-e8b2e0723874', 0, NULL, 'Dried desert beans & berries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3409c5fc-74e5-4fb6-8b89-9e5d28136885', 'c00a43d1-3a50-488e-a845-e8b2e0723874', 1, NULL, 'Mustard oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1948b4d0-bc9a-46bb-97f0-4a420bcbb75b', 'c00a43d1-3a50-488e-a845-e8b2e0723874', 1, 'Soak and cook the dried beans and berries.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a4f55e6c-e6ee-41e5-8785-a25971b75fd9', 'c00a43d1-3a50-488e-a845-e8b2e0723874', 2, 'Stir-fry with mustard oil and regional spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c00a43d1-3a50-488e-a845-e8b2e0723874', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c00a43d1-3a50-488e-a845-e8b2e0723874', 'ab10c146-84d8-4b19-8299-248f2eec7710') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c00a43d1-3a50-488e-a845-e8b2e0723874', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('475b80be-7fe6-4b39-94a0-6a143cc2e902', 'state:Delhi/NCR', 'state') ON CONFLICT ("name") DO NOTHING;

-- Chaat (Delhi/NCR, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('75a9893e-f583-4442-a8cf-ae76ddd52fd9', 'chaat-delhincr-india', 'Chaat', NULL, 'asia'::"Continent", 'India', 'Delhi/NCR', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/0/00/Chaat_stand_in_mussoorie.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a455b8a9-5e5a-47d0-82f0-cec22901b6a9', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 0, NULL, 'Fried dough/potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ef1e561-e6ed-458f-a865-4d86815651e3', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 1, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93dae512-e577-47b9-bfb1-d270f5a3fc6d', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 2, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f10e2ba3-7ee9-4f7b-9be2-c8b6959015c4', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 3, NULL, 'Tamarind chutney') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('64de7672-37e0-4632-b45b-ecf49328b235', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 1, 'Combine fried dough or boiled potatoes with chickpeas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ef846bf7-1f12-4632-b545-cc48d0f004e6', '75a9893e-f583-4442-a8cf-ae76ddd52fd9', 2, 'Top with yogurt and chutneys for a tangy, layered snack.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('75a9893e-f583-4442-a8cf-ae76ddd52fd9', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('75a9893e-f583-4442-a8cf-ae76ddd52fd9', '475b80be-7fe6-4b39-94a0-6a143cc2e902') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('75a9893e-f583-4442-a8cf-ae76ddd52fd9', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Pani Puri (Golgappa) (Delhi/NCR, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('3f689bd4-abee-4e72-8942-eaf7dd09c02b', 'pani-puri-golgappa-delhincr-india', 'Pani Puri (Golgappa)', NULL, 'asia'::"Continent", 'India', 'Delhi/NCR', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/95/Pani_Puri.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2658b59b-0acb-4454-8b30-c03c625b5d45', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 0, NULL, 'Semolina/wheat puris') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('18d3917f-88d7-494d-a4c7-48194a0abfcd', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 1, NULL, 'Boiled potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cc315d9a-e4bd-4dd2-a7a2-834dfb395919', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 2, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b52f059-a49d-4bf7-8e7c-2fff029606f8', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 3, NULL, 'Tamarind water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f22fe91-19e9-47df-9f8a-fdad4a09aca3', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 4, NULL, 'Mint-coriander water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('30674772-52a7-45ac-87dd-d5e0f20f00f9', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 1, 'Fry small hollow puris until crisp and puffed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('81bc3cb3-137b-4cb9-95a3-307f5a36dec3', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 2, 'Fill each with mashed spiced potato and chickpeas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6e7e4f2b-4740-4978-a421-e4c8c111d77a', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 3, 'Fill the rest with tangy tamarind water or spicy mint-coriander water.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8bc9f00-2465-411c-97c6-7ca797aa47ad', '3f689bd4-abee-4e72-8942-eaf7dd09c02b', 4, 'Eat immediately, one at a time, before the puri softens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f689bd4-abee-4e72-8942-eaf7dd09c02b', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f689bd4-abee-4e72-8942-eaf7dd09c02b', '475b80be-7fe6-4b39-94a0-6a143cc2e902') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f689bd4-abee-4e72-8942-eaf7dd09c02b', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Nihari (Delhi/NCR, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2145f1df-958f-4fc4-b9e1-09e234e74ba0', 'nihari-delhincr-india', 'Nihari', NULL, 'asia'::"Continent", 'India', 'Delhi/NCR', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/2/24/Nihari.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15873236-ae04-42c6-a83c-37879dd0c3ba', '2145f1df-958f-4fc4-b9e1-09e234e74ba0', 0, NULL, 'Meat shank') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7cb9ee70-5e2d-4687-9046-029eb284b669', '2145f1df-958f-4fc4-b9e1-09e234e74ba0', 1, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e271da0d-19fa-4b6d-877d-8289fcf2eed7', '2145f1df-958f-4fc4-b9e1-09e234e74ba0', 2, NULL, 'Wheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e4c5d817-33cd-467b-b08d-15cca5ee8420', '2145f1df-958f-4fc4-b9e1-09e234e74ba0', 1, 'Slow-cook meat shank overnight with whole spices and a wheat-flour thickener until meltingly tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2145f1df-958f-4fc4-b9e1-09e234e74ba0', 'f75564cd-69db-4e4a-8124-5d3c5a37546d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2145f1df-958f-4fc4-b9e1-09e234e74ba0', '475b80be-7fe6-4b39-94a0-6a143cc2e902') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2145f1df-958f-4fc4-b9e1-09e234e74ba0', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bb9c2ace-1b7c-499e-891e-71cda695778a', 'region:West India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ff887528-ecb8-41d5-baec-c2181b9ca4ec', 'state:Gujarat', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dhokla (Gujarat, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('90c85c5b-96ad-43f3-901b-a61cd305750b', 'dhokla-gujarat-india', 'Dhokla', NULL, 'asia'::"Continent", 'India', 'Gujarat', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/4/40/Gujarati_Dhokla_%28Khaman_Dhokla%29.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ae0b4f0a-5b3b-43b7-b3cb-73f77f63b437', '90c85c5b-96ad-43f3-901b-a61cd305750b', 0, NULL, 'Rice/besan batter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34d75124-c6cc-44ff-b739-9c1298891643', '90c85c5b-96ad-43f3-901b-a61cd305750b', 1, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9ffdf96b-1847-491c-a961-4f00d4d5b767', '90c85c5b-96ad-43f3-901b-a61cd305750b', 2, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9cf6753b-f381-43e7-87e2-0ba171e8173c', '90c85c5b-96ad-43f3-901b-a61cd305750b', 1, 'Ferment the batter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ada5c202-918f-4aba-b778-00405577bfc5', '90c85c5b-96ad-43f3-901b-a61cd305750b', 2, 'Steam until spongy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('655697a9-14b5-4c10-a017-e21d814f9638', '90c85c5b-96ad-43f3-901b-a61cd305750b', 3, 'Top with a mustard-curry leaf tempering.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90c85c5b-96ad-43f3-901b-a61cd305750b', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90c85c5b-96ad-43f3-901b-a61cd305750b', 'ff887528-ecb8-41d5-baec-c2181b9ca4ec') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90c85c5b-96ad-43f3-901b-a61cd305750b', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Undhiyu (Gujarat, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('29ce0007-0a4b-4312-9efa-0e821484ad14', 'undhiyu-gujarat-india', 'Undhiyu', NULL, 'asia'::"Continent", 'India', 'Gujarat', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Undhiyu.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f6e0db00-0b03-41e1-8b28-d11d9074e4e6', '29ce0007-0a4b-4312-9efa-0e821484ad14', 0, NULL, 'Winter vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ec034ddf-701d-48cf-9191-ec65b7cdf772', '29ce0007-0a4b-4312-9efa-0e821484ad14', 1, NULL, 'Fenugreek dumplings') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61b4c2ec-7b1a-44d0-8f67-de5dd7ecd71c', '29ce0007-0a4b-4312-9efa-0e821484ad14', 2, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b266680b-f0d4-41d1-bd9c-19e94b46b667', '29ce0007-0a4b-4312-9efa-0e821484ad14', 1, 'Slow-cook a mix of winter vegetables and fenugreek dumplings together with Gujarati spices until melded.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('29ce0007-0a4b-4312-9efa-0e821484ad14', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('29ce0007-0a4b-4312-9efa-0e821484ad14', 'ff887528-ecb8-41d5-baec-c2181b9ca4ec') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('29ce0007-0a4b-4312-9efa-0e821484ad14', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Thepla (Gujarat, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dca1e9a3-3b86-458e-b178-f8381faf65bd', 'thepla-gujarat-india', 'Thepla', NULL, 'asia'::"Continent", 'India', 'Gujarat', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0a4f3b17-62d2-4405-803e-ac65459fb77b', 'dca1e9a3-3b86-458e-b178-f8381faf65bd', 0, NULL, 'Wheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('14f028c2-3d49-48a6-abfb-bb0ad3c2e1db', 'dca1e9a3-3b86-458e-b178-f8381faf65bd', 1, NULL, 'Fenugreek leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('77aa5da8-6a7d-421c-b02e-5f224017834e', 'dca1e9a3-3b86-458e-b178-f8381faf65bd', 2, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1ec09fb1-d912-4ee0-8cc6-1b1b80245bf3', 'dca1e9a3-3b86-458e-b178-f8381faf65bd', 1, 'Knead spiced dough with fenugreek leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a3cb4904-24c4-4984-ba43-300f022c3d9f', 'dca1e9a3-3b86-458e-b178-f8381faf65bd', 2, 'Roll thin and cook on a griddle with a little oil until browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dca1e9a3-3b86-458e-b178-f8381faf65bd', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dca1e9a3-3b86-458e-b178-f8381faf65bd', 'ff887528-ecb8-41d5-baec-c2181b9ca4ec') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dca1e9a3-3b86-458e-b178-f8381faf65bd', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Khandvi (Gujarat, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dbafa550-b93f-41fd-b13a-1ba9025277df', 'khandvi-gujarat-india', 'Khandvi', NULL, 'asia'::"Continent", 'India', 'Gujarat', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/7/7d/Khandvi%2C_Gujarati_snack.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a2b2f071-f1c5-4479-b489-cb36c12a50e5', 'dbafa550-b93f-41fd-b13a-1ba9025277df', 0, NULL, 'Besan') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dcdb6498-dd4f-45f0-8485-853b27d9ae6d', 'dbafa550-b93f-41fd-b13a-1ba9025277df', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('42d12c6f-2394-4734-a1ac-f21a1a336568', 'dbafa550-b93f-41fd-b13a-1ba9025277df', 2, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('52465cbf-430d-46e7-a6f0-0d954db147f5', 'dbafa550-b93f-41fd-b13a-1ba9025277df', 1, 'Cook a seasoned besan-yogurt batter until thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('101b9e68-1f3e-4d8c-b70a-53cc6805776b', 'dbafa550-b93f-41fd-b13a-1ba9025277df', 2, 'Spread thin, roll once cooled, and top with a tempering.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dbafa550-b93f-41fd-b13a-1ba9025277df', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dbafa550-b93f-41fd-b13a-1ba9025277df', 'ff887528-ecb8-41d5-baec-c2181b9ca4ec') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dbafa550-b93f-41fd-b13a-1ba9025277df', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('56a1e1bf-455e-4977-8fdb-846670d71661', 'state:Maharashtra', 'state') ON CONFLICT ("name") DO NOTHING;

-- Puran Poli (Maharashtra, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 'puran-poli-maharashtra-india', 'Puran Poli', NULL, 'asia'::"Continent", 'India', 'Maharashtra', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/a/a7/Maharashtrian_Puran_Poli.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('121ea331-80b0-438a-b0f7-e38c0cfc0a26', 'a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 0, NULL, 'Wheat dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b8849ce2-b03a-4af0-a0f8-3932564f269a', 'a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 1, NULL, 'Lentil-jaggery filling') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d8c0ee77-a24f-4694-b3dc-ad16b224e791', 'a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 1, 'Stuff a sweet lentil-jaggery filling inside a wheat dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5d38e3e8-d425-4ff2-8ed9-153f8edb87f7', 'a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 2, 'Roll flat and cook on a griddle with ghee.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', '56a1e1bf-455e-4977-8fdb-846670d71661') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a2dc7280-4be8-4c24-b75a-2c6a62fd2fd6', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Misal Pav (Maharashtra, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('705aa74f-c280-4458-b7f8-cca9320b1d63', 'misal-pav-maharashtra-india', 'Misal Pav', NULL, 'asia'::"Continent", 'India', 'Maharashtra', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/0/0a/MISAL_PAV.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('310d6ee8-7122-4dca-8432-e30c88c3a7c2', '705aa74f-c280-4458-b7f8-cca9320b1d63', 0, NULL, 'Sprouted lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('08e1569d-8bdf-4f68-97fe-e721385fcb2b', '705aa74f-c280-4458-b7f8-cca9320b1d63', 1, NULL, 'Spicy gravy') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ecea273-c6c9-45ce-a188-8e37987c3470', '705aa74f-c280-4458-b7f8-cca9320b1d63', 2, NULL, 'Bread rolls') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6d379895-5e62-4b43-b89a-51dd108a72b4', '705aa74f-c280-4458-b7f8-cca9320b1d63', 1, 'Top sprouted-lentil curry with spicy gravy (rassa), farsan, and onions.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('234de618-1abb-4634-bf12-c7f9512484bd', '705aa74f-c280-4458-b7f8-cca9320b1d63', 2, 'Serve with soft bread rolls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('705aa74f-c280-4458-b7f8-cca9320b1d63', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('705aa74f-c280-4458-b7f8-cca9320b1d63', '56a1e1bf-455e-4977-8fdb-846670d71661') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('705aa74f-c280-4458-b7f8-cca9320b1d63', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Vada Pav (Maharashtra, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 'vada-pav-maharashtra-india', 'Vada Pav', NULL, 'asia'::"Continent", 'India', 'Maharashtra', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/6/63/Vada_Pav.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('528ead30-779f-4967-8508-d4b4aee5314b', '98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 0, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca3501c6-bb85-49c5-a6b2-6fb2a93bfa96', '98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 1, NULL, 'Gram-flour batter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f6b1c5f-c573-4839-92ca-44e60378f2ed', '98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 2, NULL, 'Bread roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0f97e163-42fa-4f85-a71f-c453f22c63da', '98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 1, 'Deep-fry a spiced mashed-potato ball in gram-flour batter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('001d6fe8-05ae-403e-b58a-4a04dcd804c4', '98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 2, 'Serve inside a bread roll with chutneys.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', '56a1e1bf-455e-4977-8fdb-846670d71661') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('98bfffdc-07d4-4f38-a6ab-a1be1780ccf4', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Pav Bhaji (Maharashtra, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('38340403-fa75-4a92-8f61-94f1bf2279f4', 'pav-bhaji-maharashtra-india', 'Pav Bhaji', NULL, 'asia'::"Continent", 'India', 'Maharashtra', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Pav_bhaji.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc25756c-6900-4fad-b8b8-775655c3b97f', '38340403-fa75-4a92-8f61-94f1bf2279f4', 0, NULL, 'Mixed vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('63d74e3b-7126-48af-bbeb-d49d37b12b90', '38340403-fa75-4a92-8f61-94f1bf2279f4', 1, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('97c13011-1a29-4270-a8c1-2529e3b900c9', '38340403-fa75-4a92-8f61-94f1bf2279f4', 2, NULL, 'Pav bhaji masala') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0c7e957b-948b-4ce8-bdb8-b3d08e8dc7b9', '38340403-fa75-4a92-8f61-94f1bf2279f4', 3, NULL, 'Bread rolls') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('18c89301-fb1c-4dea-a436-5647babecb6d', '38340403-fa75-4a92-8f61-94f1bf2279f4', 1, 'Boil and mash a mix of vegetables.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e71cdc44-0bdf-4c56-9851-78065d2f4f4e', '38340403-fa75-4a92-8f61-94f1bf2279f4', 2, 'Cook the mash down with butter, onions, tomatoes, and pav bhaji masala until thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9131b8a-a472-4715-856b-53f7334216c4', '38340403-fa75-4a92-8f61-94f1bf2279f4', 3, 'Toast buttered bread rolls on a griddle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8204470c-c4e8-4964-980e-80240d6c724c', '38340403-fa75-4a92-8f61-94f1bf2279f4', 4, 'Serve the bhaji hot with the pav and a squeeze of lime.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('38340403-fa75-4a92-8f61-94f1bf2279f4', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('38340403-fa75-4a92-8f61-94f1bf2279f4', '56a1e1bf-455e-4977-8fdb-846670d71661') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('38340403-fa75-4a92-8f61-94f1bf2279f4', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('95d7705c-a1ee-4956-8f5f-69800dd183c0', 'state:Goa', 'state') ON CONFLICT ("name") DO NOTHING;

-- Vindaloo (Goa, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('709c1b52-6bf7-43c1-add4-62743f1891f1', 'vindaloo-goa-india', 'Vindaloo', NULL, 'asia'::"Continent", 'India', 'Goa', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Chicken_Vindaloo.jpeg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('56ddc594-5817-4147-b0d7-d415f5b23ea7', '709c1b52-6bf7-43c1-add4-62743f1891f1', 0, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1b085a16-e7f0-496d-94ac-a7eb32ff2c0d', '709c1b52-6bf7-43c1-add4-62743f1891f1', 1, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8da26ae5-3693-4517-85f8-7a303ad97089', '709c1b52-6bf7-43c1-add4-62743f1891f1', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b2d42a9-d84e-45ba-870c-14ee31cc56bb', '709c1b52-6bf7-43c1-add4-62743f1891f1', 3, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b17b540d-acef-415e-a9ca-87a560c5a8d8', '709c1b52-6bf7-43c1-add4-62743f1891f1', 1, 'Marinate meat in a vinegar-garlic-chili paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1f77f468-e30d-4c83-97f2-b15a3a8242ac', '709c1b52-6bf7-43c1-add4-62743f1891f1', 2, 'Slow-cook until tender and tangy-spicy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('709c1b52-6bf7-43c1-add4-62743f1891f1', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('709c1b52-6bf7-43c1-add4-62743f1891f1', '95d7705c-a1ee-4956-8f5f-69800dd183c0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('709c1b52-6bf7-43c1-add4-62743f1891f1', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Xacuti (Goa, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 'xacuti-goa-india', 'Xacuti', NULL, 'asia'::"Continent", 'India', 'Goa', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c9a6a357-128a-46e1-b6b1-87593326068f', '4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 0, NULL, 'Coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6188daea-5276-487d-87e7-5c2e1a817d7a', '4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 1, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f78ff892-23f0-413f-a293-28c13bc90ad3', '4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 2, NULL, 'Chicken/meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('563899ec-aa0d-48ad-8e0a-b83a642c18ca', '4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 1, 'Roast and grind coconut with whole spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5590ee41-63aa-4d38-8908-980dc8e93173', '4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 2, 'Simmer with meat until the gravy thickens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', '95d7705c-a1ee-4956-8f5f-69800dd183c0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4f8a87c2-3c8d-4f51-85c6-a5318f7436c5', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Sorpotel (Goa, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5e00577e-6d9d-4791-920c-981b82027384', 'sorpotel-goa-india', 'Sorpotel', NULL, 'asia'::"Continent", 'India', 'Goa', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Goa_Sorpotel.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('44198e6b-076f-4492-860d-092e4c9c585e', '5e00577e-6d9d-4791-920c-981b82027384', 0, NULL, 'Pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9c094d98-8cc7-4614-a77a-79002881572b', '5e00577e-6d9d-4791-920c-981b82027384', 1, NULL, 'Offal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('da8b6c0e-f36b-4050-85fe-a292a2901793', '5e00577e-6d9d-4791-920c-981b82027384', 2, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('79f985d5-4e2e-4dcf-8e38-066e00ed56d0', '5e00577e-6d9d-4791-920c-981b82027384', 3, NULL, 'Spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('33c0c851-45a5-4ca7-804b-0166d0fe4bf5', '5e00577e-6d9d-4791-920c-981b82027384', 1, 'Cook pork and offal with vinegar, garlic, and a blend of spices until rich and tangy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5e00577e-6d9d-4791-920c-981b82027384', 'bb9c2ace-1b7c-499e-891e-71cda695778a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5e00577e-6d9d-4791-920c-981b82027384', '95d7705c-a1ee-4956-8f5f-69800dd183c0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5e00577e-6d9d-4791-920c-981b82027384', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e0305f8d-0554-49ae-91e0-63c1079458b5', 'region:South India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('799ec7fa-44d1-4b99-8ea0-f605e74648f4', 'state:Kerala', 'state') ON CONFLICT ("name") DO NOTHING;

-- Appam with Stew (Kerala, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d1b00e53-1c8a-4e34-ba66-865231ae683c', 'appam-with-stew-kerala-india', 'Appam with Stew', NULL, 'asia'::"Continent", 'India', 'Kerala', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9bc46a35-9da2-4d54-b14d-85a9e2bda3d8', 'd1b00e53-1c8a-4e34-ba66-865231ae683c', 0, NULL, 'Fermented rice-coconut batter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f2dcce38-9f47-4b80-bf05-1a2c92135dcf', 'd1b00e53-1c8a-4e34-ba66-865231ae683c', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7adc0cce-296c-4f1a-911a-d886162a2839', 'd1b00e53-1c8a-4e34-ba66-865231ae683c', 1, 'Ferment the batter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e20edfa5-3173-4ac4-8f44-9129da1c887b', 'd1b00e53-1c8a-4e34-ba66-865231ae683c', 2, 'Cook in a curved pan for lacy edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63f5acd3-e782-484d-9370-9092caa1008b', 'd1b00e53-1c8a-4e34-ba66-865231ae683c', 3, 'Pair with a mildly spiced coconut-milk stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d1b00e53-1c8a-4e34-ba66-865231ae683c', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d1b00e53-1c8a-4e34-ba66-865231ae683c', '799ec7fa-44d1-4b99-8ea0-f605e74648f4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d1b00e53-1c8a-4e34-ba66-865231ae683c', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Fish Moilee (Kerala, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('01412e64-8962-40ba-8772-f6ae01ec54d7', 'fish-moilee-kerala-india', 'Fish Moilee', NULL, 'asia'::"Continent", 'India', 'Kerala', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Fish_Moilee_Kerala_Style_%28aka_KeralaFish_Molly%29.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b431cca0-0ef8-4587-86c3-77aa9ad65b5b', '01412e64-8962-40ba-8772-f6ae01ec54d7', 0, NULL, 'Fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d848668-2d0f-4eec-8f5f-2d99ea89df0c', '01412e64-8962-40ba-8772-f6ae01ec54d7', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f72732d5-b49e-4e94-952d-688a50e59c89', '01412e64-8962-40ba-8772-f6ae01ec54d7', 2, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c43afd4a-cfc0-4a2b-a75c-4d6a05d83cad', '01412e64-8962-40ba-8772-f6ae01ec54d7', 1, 'Simmer fish gently in a coconut-milk gravy flavored with curry leaves, ginger, and green chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01412e64-8962-40ba-8772-f6ae01ec54d7', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01412e64-8962-40ba-8772-f6ae01ec54d7', '799ec7fa-44d1-4b99-8ea0-f605e74648f4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01412e64-8962-40ba-8772-f6ae01ec54d7', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Avial (Kerala, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('3f07b5bb-945e-4297-bc91-6a5692987fc9', 'avial-kerala-india', 'Avial', NULL, 'asia'::"Continent", 'India', 'Kerala', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/2/25/Aviyal.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3347811d-00a6-4d44-a6c8-64951950e32d', '3f07b5bb-945e-4297-bc91-6a5692987fc9', 0, NULL, 'Mixed vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6287759c-a2e7-4b96-ba1b-19007ecb2c9a', '3f07b5bb-945e-4297-bc91-6a5692987fc9', 1, NULL, 'Coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7e53257d-fe4f-43ca-917f-6ab2234f1caa', '3f07b5bb-945e-4297-bc91-6a5692987fc9', 2, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1d8d0236-b244-4a01-891c-fb320c6e5995', '3f07b5bb-945e-4297-bc91-6a5692987fc9', 1, 'Cook mixed vegetables with a coconut-cumin paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6610d98d-8e8e-4000-b472-d36086560107', '3f07b5bb-945e-4297-bc91-6a5692987fc9', 2, 'Finish with coconut oil and curry leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f07b5bb-945e-4297-bc91-6a5692987fc9', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f07b5bb-945e-4297-bc91-6a5692987fc9', '799ec7fa-44d1-4b99-8ea0-f605e74648f4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3f07b5bb-945e-4297-bc91-6a5692987fc9', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4bf69bf2-fac5-4817-9a22-eb3efa23f42f', 'state:Tamil Nadu', 'state') ON CONFLICT ("name") DO NOTHING;

-- Sambar (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d7851986-5064-4d7a-91e0-a040c036186e', 'sambar-tamil-nadu-india', 'Sambar', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Sambar._a_south_Indian_papular_dish.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('712c8eb8-68f7-4747-a6e7-8e366721cba2', 'd7851986-5064-4d7a-91e0-a040c036186e', 0, NULL, 'Toor dal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('075c58b5-cceb-4325-bcbc-95712cf03335', 'd7851986-5064-4d7a-91e0-a040c036186e', 1, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a86330c2-fa8c-4812-b1d5-c9ca05b8aa0c', 'd7851986-5064-4d7a-91e0-a040c036186e', 2, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a57fa6b1-7fff-49ee-8bb1-0b03411e75dd', 'd7851986-5064-4d7a-91e0-a040c036186e', 1, 'Cook lentils with tamarind, vegetables, and sambar powder into a tangy, mildly spiced stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d7851986-5064-4d7a-91e0-a040c036186e', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d7851986-5064-4d7a-91e0-a040c036186e', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d7851986-5064-4d7a-91e0-a040c036186e', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Chettinad Chicken (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 'chettinad-chicken-tamil-nadu-india', 'Chettinad Chicken', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68c5f1a1-e7ef-447d-b0d2-c815bf1c34b7', '11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a5462f61-e167-44a6-b890-aa7259fa235b', '11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 1, NULL, 'Roasted spice blend') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b24f8c9-9ce9-4fd2-8022-7cde867aa5e7', '11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 1, 'Roast and grind a spice blend.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4362c695-88ea-4e2e-bda9-08d40969e14f', '11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 2, 'Cook chicken in the masala until rich and aromatic.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('11ec6c77-6eb9-4e7f-aa8f-63396da107e7', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('11ec6c77-6eb9-4e7f-aa8f-63396da107e7', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Rasam (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 'rasam-tamil-nadu-india', 'Rasam', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Rasam.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5810591-6f21-40ae-9549-7ef42bfba1a7', 'f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 0, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea769072-0959-45f9-a201-75aedee9070e', 'f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 1, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea3e4bc3-33ea-4cbc-b706-ecb77002b574', 'f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 2, NULL, 'Pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('79ea9484-8cc1-4646-9c06-d280484c992c', 'f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 3, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f2311a27-c46a-415e-8580-4726ad419a66', 'f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 1, 'Simmer tamarind extract with tomatoes, pepper, cumin, and lentil water into a thin, tangy soup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f60c4ca6-39fc-4ce8-9c7f-0b7c578b7e9e', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Koottu (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9add409e-3b78-4a2f-a0ba-43ac3f094468', 'koottu-tamil-nadu-india', 'Koottu', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('caa73e68-0f41-4fa0-8588-bf7a23a2ec71', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 0, NULL, 'Chana dal/Toor dal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc6b6587-4002-4d90-9d2b-396107838b23', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 1, NULL, 'Mixed vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eca88088-531b-4e7a-8941-d076d9756bdc', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 2, NULL, 'Coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f912d132-3e53-434d-a590-4951be0129c0', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 3, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aa963b25-5c4f-4c46-9d79-e809c73744ec', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 1, 'Cook mixed vegetables with lentils until soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7fa0c312-81bd-4996-986f-b93e7a5fbe71', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 2, 'Grind coconut with cumin and green chili into a paste and stir it in.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a2dcc4d4-fc2f-4c9b-bce0-32271d2dca3b', '9add409e-3b78-4a2f-a0ba-43ac3f094468', 3, 'Simmer briefly and finish with a mustard-curry leaf tempering.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9add409e-3b78-4a2f-a0ba-43ac3f094468', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9add409e-3b78-4a2f-a0ba-43ac3f094468', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9add409e-3b78-4a2f-a0ba-43ac3f094468', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Vadu Manga (Tamil Nadu Pickle) (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6690f5ca-239b-4c23-93ea-d75ea9456308', 'vadu-manga-tamil-nadu-pickle-tamil-nadu-india', 'Vadu Manga (Tamil Nadu Pickle)', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e78faa3c-2eb2-4a0b-9220-4bc636e1e391', '6690f5ca-239b-4c23-93ea-d75ea9456308', 0, NULL, 'Baby mangoes (vadu manga)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ac60c9fa-2518-42a5-ac7b-9c89f7a9d99f', '6690f5ca-239b-4c23-93ea-d75ea9456308', 1, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('59aa3017-808e-4b99-94d6-3f3c2b9fdad6', '6690f5ca-239b-4c23-93ea-d75ea9456308', 2, NULL, 'Red chili powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cff1ac50-0424-4390-96c4-a921e5db185b', '6690f5ca-239b-4c23-93ea-d75ea9456308', 3, NULL, 'Sesame oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c2c4c9f3-69d0-4eab-86ed-1fac187368ec', '6690f5ca-239b-4c23-93ea-d75ea9456308', 4, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df121e31-5ebc-4765-b21a-a3e350e8c796', '6690f5ca-239b-4c23-93ea-d75ea9456308', 1, 'Wash and dry baby mangoes completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1511b216-8b04-4abf-aac0-ff997f092cf1', '6690f5ca-239b-4c23-93ea-d75ea9456308', 2, 'Coat them in a mix of red chili powder, mustard powder, and salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed01e16f-2447-4ce3-80b2-3da785900c06', '6690f5ca-239b-4c23-93ea-d75ea9456308', 3, 'Pack into a jar, cover with sesame oil, and let it mature for several days, shaking occasionally, until deeply pickled.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6690f5ca-239b-4c23-93ea-d75ea9456308', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6690f5ca-239b-4c23-93ea-d75ea9456308', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6690f5ca-239b-4c23-93ea-d75ea9456308', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Chettinad Biryani (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('7efb61dc-0e99-43c1-a3b4-ca1975162177', 'chettinad-biryani-tamil-nadu-india', 'Chettinad Biryani', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fdb803a5-c893-44b2-848a-aceab1f5ed04', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 0, NULL, 'Seeraga samba rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d4bdd265-2947-43fb-93a6-cae99ec68672', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 1, NULL, 'Chicken/mutton') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b2face69-dbb1-4f84-a648-be08be004ab2', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 2, NULL, 'Roasted spice blend') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('adcad2f3-469f-4340-8e2c-761d79646a6d', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 3, NULL, 'Curd') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b6e974a-deb6-403d-a2ea-4bce87719508', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 4, NULL, 'Fried onions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('51237f4c-bed3-464c-b6ce-12a6f5f4bf0c', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 1, 'Marinate meat in curd and a roasted Chettinad spice blend.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c8ce0700-5a34-4a48-a2af-6e1437aad31f', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 2, 'Cook the marinated meat down into a thick masala.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b89f88e4-1b73-417f-b0b4-3a0cd1d62af2', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 3, 'Layer with par-cooked short-grain seeraga samba rice and cook on low heat (dum) until the rice absorbs the masala''s flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fcb39a30-5237-42e4-9fda-5b098e523d94', '7efb61dc-0e99-43c1-a3b4-ca1975162177', 4, 'Fluff and serve topped with fried onions.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7efb61dc-0e99-43c1-a3b4-ca1975162177', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7efb61dc-0e99-43c1-a3b4-ca1975162177', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7efb61dc-0e99-43c1-a3b4-ca1975162177', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Chicken 65 (Tamil Nadu, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 'chicken-65-tamil-nadu-india', 'Chicken 65', NULL, 'asia'::"Continent", 'India', 'Tamil Nadu', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Chicken_65_Dry.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9084667a-f17b-486a-904b-089ccd87c200', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bb7f37a4-5e8d-426d-b292-21da5cdbe1c4', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23accfb2-c7e1-4d4b-b6c6-e2f8b250ac86', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 2, NULL, 'Ginger-garlic paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('85b09f14-6920-4731-80bb-d5ea1e377f3c', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 3, NULL, 'Red chili powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0fc759dd-2160-4a8e-8ab2-f79c0a866bba', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 4, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2aaa7b82-4db6-4d54-a651-869ed2578c4d', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 1, 'Marinate bite-sized chicken pieces in yogurt, ginger-garlic paste, red chili powder, and cornflour.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d36f1838-33dc-4157-a5bb-9e138fab0d29', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 2, 'Deep-fry until crisp and deeply red.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6ed57e3f-95a2-4ee5-80b5-391602158b93', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 3, 'Toss the fried chicken with a quick tempering of curry leaves, garlic, and green chilies.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2db9b360-e729-41c4-9e3f-d1d500d23770', 'b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 4, 'Serve hot as a starter or street-food snack.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b09c60b1-14ba-4be8-b08b-b4dd395e08d9', '4bf69bf2-fac5-4817-9a22-eb3efa23f42f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b09c60b1-14ba-4be8-b08b-b4dd395e08d9', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dd5a8f09-95be-45bd-9b23-6e812daac730', 'state:Karnataka', 'state') ON CONFLICT ("name") DO NOTHING;

-- Bisi Bele Bath (Karnataka, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('792c9699-18a8-4472-a4d5-b43f57af8044', 'bisi-bele-bath-karnataka-india', 'Bisi Bele Bath', NULL, 'asia'::"Continent", 'India', 'Karnataka', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/0/04/Bisi_Bele_Bath_%28Bisibelebath%29.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b15f5143-c48c-4528-a7b9-03468fe3e4e4', '792c9699-18a8-4472-a4d5-b43f57af8044', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba42c638-d257-4845-a45a-de73cb3f6925', '792c9699-18a8-4472-a4d5-b43f57af8044', 1, NULL, 'Lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('783ec5ab-5743-427a-acba-b5a493b9faed', '792c9699-18a8-4472-a4d5-b43f57af8044', 2, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c47f3761-ebda-4d78-81dd-cea6e65e36a8', '792c9699-18a8-4472-a4d5-b43f57af8044', 3, NULL, 'Spice powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c61988ed-a9c2-4191-9a9e-93b1aedbf0f8', '792c9699-18a8-4472-a4d5-b43f57af8044', 1, 'Cook rice and lentils with vegetables and a spiced bisi bele bath powder into a one-pot dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('792c9699-18a8-4472-a4d5-b43f57af8044', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('792c9699-18a8-4472-a4d5-b43f57af8044', 'dd5a8f09-95be-45bd-9b23-6e812daac730') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('792c9699-18a8-4472-a4d5-b43f57af8044', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Mysore Masala Dosa (Karnataka, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 'mysore-masala-dosa-karnataka-india', 'Mysore Masala Dosa', NULL, 'asia'::"Continent", 'India', 'Karnataka', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Mysore_Masala_Dosa.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9de37238-79fa-4b54-abd4-3ef6de189ba3', '2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 0, NULL, 'Fermented rice-lentil batter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca23a635-972e-4b6a-bc2d-2cf7d39dfc5c', '2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 1, NULL, 'Red chutney') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fe0896e8-009f-45eb-b688-b93d0dd07e54', '2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 2, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('20f0b1cf-9a88-4e31-b953-6b35f7477795', '2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 1, 'Spread fermented batter thin on a griddle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6424b583-0647-4fb0-8adc-c06b78cbdc3a', '2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 2, 'Fill with a spicy red chutney and potato masala.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 'dd5a8f09-95be-45bd-9b23-6e812daac730') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ed5a95e-1a39-4cf4-9191-b42a6379e90e', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('82a9dc96-24f2-434e-a9a7-6cf25e35592c', 'state:Andhra Pradesh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Andhra Chicken Curry (Andhra Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d5ee6b7e-3054-461d-830c-cb1c80376868', 'andhra-chicken-curry-andhra-pradesh-india', 'Andhra Chicken Curry', NULL, 'asia'::"Continent", 'India', 'Andhra Pradesh', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d9a42869-5e1a-4562-af9d-edfcfa8cfd23', 'd5ee6b7e-3054-461d-830c-cb1c80376868', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e88e020a-3800-4653-ba76-117f99f9145d', 'd5ee6b7e-3054-461d-830c-cb1c80376868', 1, NULL, 'Guntur chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33054493-cd45-4e4e-afd8-20db584496bd', 'd5ee6b7e-3054-461d-830c-cb1c80376868', 2, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8ba477d3-e90d-4dd6-82cb-02f030bd67db', 'd5ee6b7e-3054-461d-830c-cb1c80376868', 1, 'Cook chicken in a fiery Guntur-chili based gravy with onions and tamarind for tang.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d5ee6b7e-3054-461d-830c-cb1c80376868', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d5ee6b7e-3054-461d-830c-cb1c80376868', '82a9dc96-24f2-434e-a9a7-6cf25e35592c') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d5ee6b7e-3054-461d-830c-cb1c80376868', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Gongura Pachadi (Andhra Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b56c3fcb-008f-4264-a37b-d653a48be9f5', 'gongura-pachadi-andhra-pradesh-india', 'Gongura Pachadi', NULL, 'asia'::"Continent", 'India', 'Andhra Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/e8/A_famous_andhra_side_dish._Gongura_paccaDi.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f51e11d-4d8d-46c0-9d30-d4470bc45e58', 'b56c3fcb-008f-4264-a37b-d653a48be9f5', 0, NULL, 'Gongura (sorrel) leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6094d4c4-3b59-4375-9e07-879dd94076cc', 'b56c3fcb-008f-4264-a37b-d653a48be9f5', 1, NULL, 'Chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('528a68b1-2feb-4459-8b07-35faa3df8de9', 'b56c3fcb-008f-4264-a37b-d653a48be9f5', 1, 'Cook sour gongura leaves down with chilies and spices into a tangy chutney-like relish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b56c3fcb-008f-4264-a37b-d653a48be9f5', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b56c3fcb-008f-4264-a37b-d653a48be9f5', '82a9dc96-24f2-434e-a9a7-6cf25e35592c') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b56c3fcb-008f-4264-a37b-d653a48be9f5', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('53ddf346-2469-4270-87f6-448471f6952e', 'state:Telangana', 'state') ON CONFLICT ("name") DO NOTHING;

-- Hyderabadi Biryani (Telangana, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 'hyderabadi-biryani-telangana-india', 'Hyderabadi Biryani', NULL, 'asia'::"Continent", 'India', 'Telangana', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Hyderabadi_Biryani.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1912c26-8b82-42f5-93e9-751e166b137e', '6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 0, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b53bf90e-75ed-4551-9e85-fe08ab8b444d', '6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 1, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea7dca66-500b-41f1-bd04-0e9783636b20', '6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 2, NULL, 'Whole spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76b76c2e-3658-4789-afd1-b3b8784c971e', '6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 1, 'Marinate meat and layer with par-cooked rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('80e1424d-27cb-4790-a596-7fe957b3eb8c', '6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 2, 'Cook on dum so the flavors infuse the rice fully.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6716b93a-17c1-46a3-a3ff-38392ad6c0c7', '53ddf346-2469-4270-87f6-448471f6952e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6716b93a-17c1-46a3-a3ff-38392ad6c0c7', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Mirchi ka Salan (Telangana, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1cfc9731-faf0-48f1-bf85-fd840b2254b7', 'mirchi-ka-salan-telangana-india', 'Mirchi ka Salan', NULL, 'asia'::"Continent", 'India', 'Telangana', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Hyderabadi_Biryani_with_Raita%2C_Mirchi_Ka_Salan_and_Salad.JPG', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c9a34d69-9657-4a61-9f4a-de780bba0816', '1cfc9731-faf0-48f1-bf85-fd840b2254b7', 0, NULL, 'Long green chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5b3a0b6f-30d3-48b0-b368-c27826cc75db', '1cfc9731-faf0-48f1-bf85-fd840b2254b7', 1, NULL, 'Peanut-sesame gravy') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('857c4024-dd07-49c1-8368-bec91157a6b8', '1cfc9731-faf0-48f1-bf85-fd840b2254b7', 1, 'Cook long green chilies in a peanut-sesame gravy until the chilies soften and the gravy thickens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1cfc9731-faf0-48f1-bf85-fd840b2254b7', 'e0305f8d-0554-49ae-91e0-63c1079458b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1cfc9731-faf0-48f1-bf85-fd840b2254b7', '53ddf346-2469-4270-87f6-448471f6952e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1cfc9731-faf0-48f1-bf85-fd840b2254b7', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('71ca6d81-e2b0-4f2a-8f7a-99495e985b8a', 'region:East India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6a909ece-83f0-4cd8-814d-ce2f423af768', 'state:West Bengal', 'state') ON CONFLICT ("name") DO NOTHING;

-- Shorshe Ilish (West Bengal, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', 'shorshe-ilish-west-bengal-india', 'Shorshe Ilish', NULL, 'asia'::"Continent", 'India', 'West Bengal', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/c/cc/Shorshe_Ilish_Maach.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('679a8b64-30bc-4f2e-92bc-6913c35ae91f', '03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', 0, NULL, 'Hilsa fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bf0c1d29-75c9-4906-a485-e52ba98a93cb', '03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', 1, NULL, 'Mustard paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('51ecae6d-6041-4703-87ec-025f57e8b7bc', '03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', 1, 'Simmer hilsa fish in a mustard-paste gravy with green chili until infused.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', '6a909ece-83f0-4cd8-814d-ce2f423af768') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('03b3dd2b-f2c8-4a95-bb12-e22a69ff6eca', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Machher Jhol (West Bengal, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d774a8ee-8ce9-4ddb-8ad2-9839311391e3', 'machher-jhol-west-bengal-india', 'Machher Jhol', NULL, 'asia'::"Continent", 'India', 'West Bengal', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Bata_macher_jhol-MB03.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1bff6fa4-feb1-4484-89e9-211b5f77d902', 'd774a8ee-8ce9-4ddb-8ad2-9839311391e3', 0, NULL, 'Fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('26f0fe18-a970-481c-b77a-241821e640f6', 'd774a8ee-8ce9-4ddb-8ad2-9839311391e3', 1, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7438695a-2ab5-4b23-b9a7-86fc7d09fa70', 'd774a8ee-8ce9-4ddb-8ad2-9839311391e3', 2, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('593108a2-4bc2-4403-8879-894b43fe5ead', 'd774a8ee-8ce9-4ddb-8ad2-9839311391e3', 1, 'Cook fish in a light, spiced potato-tomato broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d774a8ee-8ce9-4ddb-8ad2-9839311391e3', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d774a8ee-8ce9-4ddb-8ad2-9839311391e3', '6a909ece-83f0-4cd8-814d-ce2f423af768') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('d774a8ee-8ce9-4ddb-8ad2-9839311391e3', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Mishti Doi (West Bengal, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('beb26368-e069-4f97-be2e-7911927d0ed9', 'mishti-doi-west-bengal-india', 'Mishti Doi', NULL, 'asia'::"Continent", 'India', 'West Bengal', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('768a4aff-2d15-4981-adb0-d7dfeddece7b', 'beb26368-e069-4f97-be2e-7911927d0ed9', 0, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('edef6745-72f2-4f64-972b-452fe94cc596', 'beb26368-e069-4f97-be2e-7911927d0ed9', 1, NULL, 'Jaggery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('242be24c-3ef3-4bc8-97df-904beaa51cf0', 'beb26368-e069-4f97-be2e-7911927d0ed9', 2, NULL, 'Yogurt culture') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('69505650-d2d7-45ea-9e46-c53277e8e768', 'beb26368-e069-4f97-be2e-7911927d0ed9', 1, 'Sweeten milk with jaggery.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec74fcdd-d193-4993-9008-f77288bf7e1d', 'beb26368-e069-4f97-be2e-7911927d0ed9', 2, 'Set with a yogurt culture and let it ferment until thick and caramel-toned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('beb26368-e069-4f97-be2e-7911927d0ed9', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('beb26368-e069-4f97-be2e-7911927d0ed9', '6a909ece-83f0-4cd8-814d-ce2f423af768') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('beb26368-e069-4f97-be2e-7911927d0ed9', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Kolkata Kathi Roll (West Bengal, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('c9b3809b-558d-46e2-a78f-9f9e31aaff65', 'kolkata-kathi-roll-west-bengal-india', 'Kolkata Kathi Roll', NULL, 'asia'::"Continent", 'India', 'West Bengal', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Kolkata_Kathi_Roll.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('138aa0ad-7a8e-4f66-b71c-42440eb0e63b', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 0, NULL, 'Wheat paratha') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3de2322e-278e-4ba3-8278-f3d35ac64ba3', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 1, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1fd6ba9-d4d2-4ef6-8353-0842b3c02a30', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 2, NULL, 'Chicken/paneer skewers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e1a69895-979e-4796-9836-1531d4911a4f', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e206772c-8f2f-47cc-b49a-3e773ea71c9e', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 4, NULL, 'Chutney') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2ddfad5e-1c07-403c-9316-19cc40b28e75', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 1, 'Grill spiced chicken or paneer on a skewer until charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('533769f5-8aa1-4a26-a6e8-51c095ea9f26', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 2, 'Cook a paratha, crack an egg onto it partway through, and flip so the egg sets onto the bread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dcfa29de-6241-4359-a8e8-722dfdb774b4', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 3, 'Lay the grilled filling, sliced onions, and chutney down the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5ce78aaf-cb6d-4531-86d5-970bc886f48e', 'c9b3809b-558d-46e2-a78f-9f9e31aaff65', 4, 'Roll tightly and serve wrapped in paper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c9b3809b-558d-46e2-a78f-9f9e31aaff65', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c9b3809b-558d-46e2-a78f-9f9e31aaff65', '6a909ece-83f0-4cd8-814d-ce2f423af768') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c9b3809b-558d-46e2-a78f-9f9e31aaff65', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Jhal Muri (West Bengal, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 'jhal-muri-west-bengal-india', 'Jhal Muri', NULL, 'asia'::"Continent", 'India', 'West Bengal', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3fc7733-c7a1-455b-bcf1-044944986c4e', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 0, NULL, 'Puffed rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('061f6626-8d5e-4aa0-bbe4-4e8ef39b5c91', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 1, NULL, 'Mustard oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8187ea7a-cf1f-4b2e-b210-efab49be1543', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 2, NULL, 'Chopped onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3edcf2c6-5f6d-46cb-ac0c-2981f3a6494e', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 3, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cd5c5e71-8964-4fb8-8b7f-cbbbaf00e6a8', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 4, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e0537ed4-1494-4ea2-bf2f-eb373206cea1', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 5, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('16d6f785-b388-45af-9280-e16b9014818f', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 1, 'Toss puffed rice with mustard oil, chopped onion, tomato, and green chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fe086548-f691-4746-bb1f-a5547c9126a6', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 2, 'Mix in roasted peanuts and boiled chickpeas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b3e5aac0-3f6b-4f6c-953f-c4403279702b', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 3, 'Season with chaat masala and a squeeze of lime.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('135ffeb3-c18b-4ed3-8608-99eaddd40584', 'cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 4, 'Serve immediately while the puffed rice is still crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cd63da8c-97b0-48cc-8f6b-ca69750f01a3', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cd63da8c-97b0-48cc-8f6b-ca69750f01a3', '6a909ece-83f0-4cd8-814d-ce2f423af768') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cd63da8c-97b0-48cc-8f6b-ca69750f01a3', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f2fc49ed-9594-48cf-89cc-061f638424e6', 'state:Odisha', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dalma (Odisha, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 'dalma-odisha-india', 'Dalma', NULL, 'asia'::"Continent", 'India', 'Odisha', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e197549b-be92-4e44-8c2b-78a127d31565', 'fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 0, NULL, 'Lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db3f6f05-7409-4c58-8c90-c97aff1f6cbf', 'fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 1, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9e86d062-8a01-4937-808e-c42cf2ad3534', 'fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 1, 'Cook lentils with vegetables and a light tempering into a comforting stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fba771cd-f03e-4ec1-ba87-c48f5fd91c61', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 'f2fc49ed-9594-48cf-89cc-061f638424e6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fba771cd-f03e-4ec1-ba87-c48f5fd91c61', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Pakhala Bhata (Odisha, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('20e57a15-0c57-4cec-b2f6-f760f8dc8827', 'pakhala-bhata-odisha-india', 'Pakhala Bhata', NULL, 'asia'::"Continent", 'India', 'Odisha', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/5/53/Pakhala_Bhata_and_Aloo_Bhaja.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f803d083-afe7-4f92-af61-96975d1c9521', '20e57a15-0c57-4cec-b2f6-f760f8dc8827', 0, NULL, 'Cooked rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27daf414-ccd9-4fd1-aa85-7c6fe9ff232c', '20e57a15-0c57-4cec-b2f6-f760f8dc8827', 1, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f0ed4aa0-5e3b-484d-9268-27dc73d58938', '20e57a15-0c57-4cec-b2f6-f760f8dc8827', 1, 'Ferment cooked rice in water overnight.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76dc4b13-26ab-499c-9e1b-93be3a0068b2', '20e57a15-0c57-4cec-b2f6-f760f8dc8827', 2, 'Serve chilled with accompaniments.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('20e57a15-0c57-4cec-b2f6-f760f8dc8827', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('20e57a15-0c57-4cec-b2f6-f760f8dc8827', 'f2fc49ed-9594-48cf-89cc-061f638424e6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('20e57a15-0c57-4cec-b2f6-f760f8dc8827', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a3626012-0ba9-472d-83ae-749b91abd978', 'state:Bihar', 'state') ON CONFLICT ("name") DO NOTHING;

-- Litti Chokha (Bihar, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('92e178aa-a43c-42b6-a595-5fe8a9811550', 'litti-chokha-bihar-india', 'Litti Chokha', NULL, 'asia'::"Continent", 'India', 'Bihar', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Des_iLitti_Chokha.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a35e352-2e4a-463f-a37e-339effea14e8', '92e178aa-a43c-42b6-a595-5fe8a9811550', 0, NULL, 'Wheat dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('adbb9a96-a8c3-417a-9d6d-764c1bd7bcd6', '92e178aa-a43c-42b6-a595-5fe8a9811550', 1, NULL, 'Sattu') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a7507176-ef19-4d2d-a7ef-8947f151a9d5', '92e178aa-a43c-42b6-a595-5fe8a9811550', 2, NULL, 'Roasted vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4f1943bf-a765-457e-a3bf-faa3a3b0437c', '92e178aa-a43c-42b6-a595-5fe8a9811550', 1, 'Stuff wheat dough balls with roasted gram flour (sattu).') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d429cb8e-e207-4e3f-afe4-e26a580f0d59', '92e178aa-a43c-42b6-a595-5fe8a9811550', 2, 'Bake or roast until crusty.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d0d25854-6bd7-4bff-bafc-522e1fb1c131', '92e178aa-a43c-42b6-a595-5fe8a9811550', 3, 'Serve with a smoky mashed vegetable side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('92e178aa-a43c-42b6-a595-5fe8a9811550', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('92e178aa-a43c-42b6-a595-5fe8a9811550', 'a3626012-0ba9-472d-83ae-749b91abd978') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('92e178aa-a43c-42b6-a595-5fe8a9811550', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Sattu Paratha (Bihar, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f8024ea2-5773-45a8-bab6-77dbf7f02748', 'sattu-paratha-bihar-india', 'Sattu Paratha', NULL, 'asia'::"Continent", 'India', 'Bihar', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('123aa633-229a-4e29-bbfe-ffa21759295f', 'f8024ea2-5773-45a8-bab6-77dbf7f02748', 0, NULL, 'Wheat dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b39ecb63-e7a9-48e7-90f0-5b178c1c1c83', 'f8024ea2-5773-45a8-bab6-77dbf7f02748', 1, NULL, 'Sattu filling') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd6a48d9-19e9-474e-817a-4a2d4f40b214', 'f8024ea2-5773-45a8-bab6-77dbf7f02748', 1, 'Stuff a spiced roasted-gram-flour filling into wheat dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a0fe9bfa-917f-4b1c-b8e5-758dfb70783e', 'f8024ea2-5773-45a8-bab6-77dbf7f02748', 2, 'Cook on a griddle with ghee.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f8024ea2-5773-45a8-bab6-77dbf7f02748', '71ca6d81-e2b0-4f2a-8f7a-99495e985b8a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f8024ea2-5773-45a8-bab6-77dbf7f02748', 'a3626012-0ba9-472d-83ae-749b91abd978') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f8024ea2-5773-45a8-bab6-77dbf7f02748', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5e2a528a-480d-41af-8adb-6abbc16c6d3a', 'region:Central India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('866724b4-7b4a-475f-8a70-34ab43a19da4', 'state:Madhya Pradesh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Bhopali Gosht Korma (Madhya Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('c279f45d-1d93-472a-a8cb-8d895eb2aa40', 'bhopali-gosht-korma-madhya-pradesh-india', 'Bhopali Gosht Korma', NULL, 'asia'::"Continent", 'India', 'Madhya Pradesh', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('75ea84dd-cee1-4718-84cf-3e18022d41fb', 'c279f45d-1d93-472a-a8cb-8d895eb2aa40', 0, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03102404-18a9-40d2-82f8-81cc362aa78a', 'c279f45d-1d93-472a-a8cb-8d895eb2aa40', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('12fc0c27-8a7b-4669-bf32-64575db3f531', 'c279f45d-1d93-472a-a8cb-8d895eb2aa40', 2, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3792a058-4f55-4a59-a52d-07b6f7dd57ba', 'c279f45d-1d93-472a-a8cb-8d895eb2aa40', 1, 'Slow-cook meat in a rich onion-yogurt gravy until tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c279f45d-1d93-472a-a8cb-8d895eb2aa40', '5e2a528a-480d-41af-8adb-6abbc16c6d3a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c279f45d-1d93-472a-a8cb-8d895eb2aa40', '866724b4-7b4a-475f-8a70-34ab43a19da4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('c279f45d-1d93-472a-a8cb-8d895eb2aa40', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Poha (Madhya Pradesh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('48047771-2066-413a-8f34-c3b5b5d31c58', 'poha-madhya-pradesh-india', 'Poha', NULL, 'asia'::"Continent", 'India', 'Madhya Pradesh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Poha%2C_a_snack_made_of_flattened_rice.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7aa5dd53-59e2-44fa-bf09-bea56d19db54', '48047771-2066-413a-8f34-c3b5b5d31c58', 0, NULL, 'Flattened rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8fbbcfd6-798e-4f39-a0ae-c9cc00f7bfec', '48047771-2066-413a-8f34-c3b5b5d31c58', 1, NULL, 'Mustard seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b302bef4-7be3-4540-b7f9-d16419f037ec', '48047771-2066-413a-8f34-c3b5b5d31c58', 2, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c2aa180c-a8a3-45cd-a2c3-b189d65aaada', '48047771-2066-413a-8f34-c3b5b5d31c58', 1, 'Sauté flattened rice with mustard seeds, turmeric, peanuts, and onions until fluffy and flavored.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('48047771-2066-413a-8f34-c3b5b5d31c58', '5e2a528a-480d-41af-8adb-6abbc16c6d3a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('48047771-2066-413a-8f34-c3b5b5d31c58', '866724b4-7b4a-475f-8a70-34ab43a19da4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('48047771-2066-413a-8f34-c3b5b5d31c58', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('00d4a706-6ee3-454e-9d06-f781d57d2989', 'state:Chhattisgarh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Chila (Chhattisgarh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('65e5d334-182a-4442-bda4-fb61cf9b5960', 'chila-chhattisgarh-india', 'Chila', NULL, 'asia'::"Continent", 'India', 'Chhattisgarh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Besan_chilla.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('efd021f7-7989-45b7-a76f-2e00410847af', '65e5d334-182a-4442-bda4-fb61cf9b5960', 0, NULL, 'Fermented rice-lentil batter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a2a01086-f954-4c6c-bc84-6b477e803562', '65e5d334-182a-4442-bda4-fb61cf9b5960', 1, 'Cook the fermented batter on a griddle into a savory pancake.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('65e5d334-182a-4442-bda4-fb61cf9b5960', '5e2a528a-480d-41af-8adb-6abbc16c6d3a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('65e5d334-182a-4442-bda4-fb61cf9b5960', '00d4a706-6ee3-454e-9d06-f781d57d2989') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('65e5d334-182a-4442-bda4-fb61cf9b5960', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Aamat (Chhattisgarh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('82456826-a72b-407c-8432-b076366df8ad', 'aamat-chhattisgarh-india', 'Aamat', NULL, 'asia'::"Continent", 'India', 'Chhattisgarh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9fd90329-fdb0-4085-8b18-fffb6c3bb602', '82456826-a72b-407c-8432-b076366df8ad', 0, NULL, 'Bamboo shoots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e1661187-6c2b-470d-9749-b176d77626a6', '82456826-a72b-407c-8432-b076366df8ad', 1, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9b1a0ccd-c210-43b6-a54b-e534c0a1ebcf', '82456826-a72b-407c-8432-b076366df8ad', 1, 'Simmer bamboo shoots and vegetables in a mildly spiced tribal-style broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('82456826-a72b-407c-8432-b076366df8ad', '5e2a528a-480d-41af-8adb-6abbc16c6d3a') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('82456826-a72b-407c-8432-b076366df8ad', '00d4a706-6ee3-454e-9d06-f781d57d2989') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('82456826-a72b-407c-8432-b076366df8ad', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6b939c23-51fe-4447-b787-68fc331416b6', 'region:Northeast India', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d8b07054-ca26-4eb2-b0d4-7e3b9262fe23', 'state:Assam', 'state') ON CONFLICT ("name") DO NOTHING;

-- Fish Tenga (Assam, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ba767037-fa2b-4be9-b779-cc73a92f7093', 'fish-tenga-assam-india', 'Fish Tenga', NULL, 'asia'::"Continent", 'India', 'Assam', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/5/54/Masor_Tenga.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('09376f00-a1a9-4839-9cf0-904488418ae2', 'ba767037-fa2b-4be9-b779-cc73a92f7093', 0, NULL, 'Fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e05f467f-3a7f-4b66-87bc-aec5ffbfd6d0', 'ba767037-fa2b-4be9-b779-cc73a92f7093', 1, NULL, 'Tomato/elephant apple') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6af9f090-54a1-4481-a059-942486712465', 'ba767037-fa2b-4be9-b779-cc73a92f7093', 1, 'Cook fish in a light, sour broth flavored with tomatoes or elephant apple.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ba767037-fa2b-4be9-b779-cc73a92f7093', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ba767037-fa2b-4be9-b779-cc73a92f7093', 'd8b07054-ca26-4eb2-b0d4-7e3b9262fe23') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ba767037-fa2b-4be9-b779-cc73a92f7093', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Khar (Assam, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b329588d-c5ca-408c-8763-9d8ced7fec03', 'khar-assam-india', 'Khar', NULL, 'asia'::"Continent", 'India', 'Assam', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5900da57-eae8-4882-9ad7-31befc8dd4ce', 'b329588d-c5ca-408c-8763-9d8ced7fec03', 0, NULL, 'Raw papaya/vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2960e812-486e-4675-bb57-f2156aa87dea', 'b329588d-c5ca-408c-8763-9d8ced7fec03', 1, NULL, 'Alkaline ash-water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec44f012-dff5-45d1-b2fc-d59f759ecde2', 'b329588d-c5ca-408c-8763-9d8ced7fec03', 1, 'Cook vegetables with filtered ash-water (khar) for a distinctive earthy flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b329588d-c5ca-408c-8763-9d8ced7fec03', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b329588d-c5ca-408c-8763-9d8ced7fec03', 'd8b07054-ca26-4eb2-b0d4-7e3b9262fe23') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b329588d-c5ca-408c-8763-9d8ced7fec03', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('445c8bf4-d856-45c3-b8c8-cd872f6ec7a1', 'state:Manipur', 'state') ON CONFLICT ("name") DO NOTHING;

-- Eromba (Manipur, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 'eromba-manipur-india', 'Eromba', NULL, 'asia'::"Continent", 'India', 'Manipur', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Ingredients_for_making_traditional_Meitei_food%2C_Eromba_%28alias_Iromba%2C_Eronba%2C_Ironba%29_-_Classical_Meitei_cuisine_of_Kangleipak.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('192d3801-c48c-4a51-8184-8aff123d92d3', 'f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 0, NULL, 'Boiled vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33b38ae6-b9f7-4b33-84f8-6b5ecd0bd286', 'f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 1, NULL, 'Fermented fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33da7b51-2d3c-4b46-a93a-41a80db9e0f7', 'f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 2, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c771a71e-688f-4893-b279-b09b6ee9a041', 'f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 1, 'Mash boiled vegetables with fermented fish and chili into a chunky, pungent side dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f69a54a9-dbe8-4bf2-8526-ef2694d772e8', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f69a54a9-dbe8-4bf2-8526-ef2694d772e8', '445c8bf4-d856-45c3-b8c8-cd872f6ec7a1') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f69a54a9-dbe8-4bf2-8526-ef2694d772e8', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Chak-hao Kheer (Manipur, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('01b3392b-b91b-499a-82b2-6d43255c8188', 'chak-hao-kheer-manipur-india', 'Chak-hao Kheer', NULL, 'asia'::"Continent", 'India', 'Manipur', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('89cbdcce-972a-4187-bc5e-ec5dc6e9cd89', '01b3392b-b91b-499a-82b2-6d43255c8188', 0, NULL, 'Black rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c4460a44-52f6-49d2-a214-94cea37f7571', '01b3392b-b91b-499a-82b2-6d43255c8188', 1, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('42ff7dab-6dcf-4e02-8d20-a7b55d77496e', '01b3392b-b91b-499a-82b2-6d43255c8188', 2, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be27ded0-65ef-4dea-bad0-d12cc96982c7', '01b3392b-b91b-499a-82b2-6d43255c8188', 1, 'Simmer black rice in milk with sugar until thick and naturally purple-hued.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01b3392b-b91b-499a-82b2-6d43255c8188', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01b3392b-b91b-499a-82b2-6d43255c8188', '445c8bf4-d856-45c3-b8c8-cd872f6ec7a1') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('01b3392b-b91b-499a-82b2-6d43255c8188', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('49577b8e-50aa-48e2-b87a-5c6940e2fea4', 'state:Nagaland', 'state') ON CONFLICT ("name") DO NOTHING;

-- Smoked Pork with Bamboo Shoot (Nagaland, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('3526223c-5c4b-49e0-ab90-1281d59e59dd', 'smoked-pork-with-bamboo-shoot-nagaland-india', 'Smoked Pork with Bamboo Shoot', NULL, 'asia'::"Continent", 'India', 'Nagaland', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Naga_style_smoked_Pork_ribs_with_bamboo_shoots_and_rice.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3ca21fe0-e2fa-48ab-b397-a14d6ce41427', '3526223c-5c4b-49e0-ab90-1281d59e59dd', 0, NULL, 'Smoked pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a1b04d4-2a9a-42f9-981d-3f4899b8882f', '3526223c-5c4b-49e0-ab90-1281d59e59dd', 1, NULL, 'Fermented bamboo shoot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('164dacf5-1f24-42ca-b9d7-a9031310d587', '3526223c-5c4b-49e0-ab90-1281d59e59dd', 1, 'Simmer smoked pork with fermented bamboo shoot and chili until tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3526223c-5c4b-49e0-ab90-1281d59e59dd', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3526223c-5c4b-49e0-ab90-1281d59e59dd', '49577b8e-50aa-48e2-b87a-5c6940e2fea4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('3526223c-5c4b-49e0-ab90-1281d59e59dd', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Axone (Nagaland, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('51872f78-5da1-40c2-bc12-10c6d83dbe15', 'axone-nagaland-india', 'Axone', NULL, 'asia'::"Continent", 'India', 'Nagaland', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Naga_Smoked_Pork_with_Axone_%28Fermented_Soyabeans%29.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('52488589-f12c-4b89-ab0e-c1d8cc265350', '51872f78-5da1-40c2-bc12-10c6d83dbe15', 0, NULL, 'Fermented soybean') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c5e9b371-4240-4000-bef3-920e5313fe78', '51872f78-5da1-40c2-bc12-10c6d83dbe15', 1, NULL, 'Pork/vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5e7f4372-218f-4c41-b392-db543fbd79c1', '51872f78-5da1-40c2-bc12-10c6d83dbe15', 1, 'Cook fermented soybean with pork or vegetables into a pungent, flavorful curry.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('51872f78-5da1-40c2-bc12-10c6d83dbe15', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('51872f78-5da1-40c2-bc12-10c6d83dbe15', '49577b8e-50aa-48e2-b87a-5c6940e2fea4') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('51872f78-5da1-40c2-bc12-10c6d83dbe15', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6c77ac00-6105-4885-ad3d-42eee95be87b', 'state:Meghalaya', 'state') ON CONFLICT ("name") DO NOTHING;

-- Jadoh (Meghalaya, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4cd909d3-6050-464d-95fa-022c4f0bab48', 'jadoh-meghalaya-india', 'Jadoh', NULL, 'asia'::"Continent", 'India', 'Meghalaya', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bc068496-b9d4-413b-8e6c-6d7c9c2e5bb5', '4cd909d3-6050-464d-95fa-022c4f0bab48', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('238e30a2-6bfd-45e1-9453-6ca282cd7ba1', '4cd909d3-6050-464d-95fa-022c4f0bab48', 1, NULL, 'Pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dcf18687-7e54-4931-9d5f-a724b6fcb3b2', '4cd909d3-6050-464d-95fa-022c4f0bab48', 2, NULL, 'Local spices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc5afc26-be07-4240-9797-8b16a6f8273e', '4cd909d3-6050-464d-95fa-022c4f0bab48', 1, 'Cook rice with pork and spices together into a one-pot smoky rice dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4cd909d3-6050-464d-95fa-022c4f0bab48', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4cd909d3-6050-464d-95fa-022c4f0bab48', '6c77ac00-6105-4885-ad3d-42eee95be87b') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4cd909d3-6050-464d-95fa-022c4f0bab48', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2b8b8885-f837-47b2-8500-2f6cf15fcdde', 'state:Sikkim', 'state') ON CONFLICT ("name") DO NOTHING;

-- Momos (Sikkim, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('63abfc02-8bd0-4e08-9b73-eb1a3f446945', 'momos-sikkim-india', 'Momos', NULL, 'asia'::"Continent", 'India', 'Sikkim', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/3/36/Momo101.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4914cd43-7695-4f1f-9133-f2f8bbda1f5e', '63abfc02-8bd0-4e08-9b73-eb1a3f446945', 0, NULL, 'Wheat wrappers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1eb0acb-1f30-4358-82ad-a10bba801cb1', '63abfc02-8bd0-4e08-9b73-eb1a3f446945', 1, NULL, 'Meat/vegetable filling') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cb4ca56d-fe57-471b-97e7-6f6e3cc3af0b', '63abfc02-8bd0-4e08-9b73-eb1a3f446945', 1, 'Fold a spiced filling into thin dough wrappers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f4e3eac-a774-4da3-981a-23163ed23360', '63abfc02-8bd0-4e08-9b73-eb1a3f446945', 2, 'Steam until cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('63abfc02-8bd0-4e08-9b73-eb1a3f446945', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('63abfc02-8bd0-4e08-9b73-eb1a3f446945', '2b8b8885-f837-47b2-8500-2f6cf15fcdde') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('63abfc02-8bd0-4e08-9b73-eb1a3f446945', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;

-- Thukpa (Sikkim, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2e58cdfa-ffba-433f-a308-999298c4a31e', 'thukpa-sikkim-india', 'Thukpa', NULL, 'asia'::"Continent", 'India', 'Sikkim', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b4be8238-fafa-4fe5-b48f-3d5aa382d1dd', '2e58cdfa-ffba-433f-a308-999298c4a31e', 0, NULL, 'Noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('02bbe4d5-53c5-403a-8d5f-7b74b7e51888', '2e58cdfa-ffba-433f-a308-999298c4a31e', 1, NULL, 'Broth') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dad61fe9-e98c-47e6-82f4-03a88b8ce527', '2e58cdfa-ffba-433f-a308-999298c4a31e', 2, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19935d79-6531-45d4-b4c2-b3337fdadf3f', '2e58cdfa-ffba-433f-a308-999298c4a31e', 3, NULL, 'Meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('750890d6-27c2-4734-838e-e339b73832c2', '2e58cdfa-ffba-433f-a308-999298c4a31e', 1, 'Simmer noodles in a spiced broth with vegetables and meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58cdfa-ffba-433f-a308-999298c4a31e', '6b939c23-51fe-4447-b787-68fc331416b6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58cdfa-ffba-433f-a308-999298c4a31e', '2b8b8885-f837-47b2-8500-2f6cf15fcdde') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2e58cdfa-ffba-433f-a308-999298c4a31e', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2513ea4a-7fe4-4c02-9e8c-d5f35bd723b2', 'region:Union Territory', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3a822898-0a12-41af-b9ff-d9d69bb6402e', 'state:Puducherry', 'state') ON CONFLICT ("name") DO NOTHING;

-- Meen Kuzhambu (Puducherry, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 'meen-kuzhambu-puducherry-india', 'Meen Kuzhambu', NULL, 'asia'::"Continent", 'India', 'Puducherry', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Meen_Khuzambu_%28South_India_Fish_gravy%29.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('edec7e38-e43a-4a0d-b0b7-d3f6664ae06c', '00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 0, NULL, 'Fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2c433f1d-87a9-441b-b692-e4e2084b088a', '00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 1, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5a111f84-b4d2-430c-b099-fd57f6641f7a', '00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 2, NULL, 'Coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('761b8bd0-15b1-4cb9-9ee6-d921715ea93c', '00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 1, 'Simmer fish in a tangy tamarind-coconut gravy influenced by both Tamil and French technique.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', '2513ea4a-7fe4-4c02-9e8c-d5f35bd723b2') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', '3a822898-0a12-41af-b9ff-d9d69bb6402e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00c03a6c-f8e5-40f4-8f0f-02fa2714b6ec', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b4db402d-2ef7-4269-92bd-0558dbbfc6e2', 'state:Ladakh', 'state') ON CONFLICT ("name") DO NOTHING;

-- Thukpa (Ladakhi style) / Skyu (Ladakh, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8ab37572-3dbd-4ca1-8434-71078b3053d4', 'thukpa-ladakhi-style-skyu-ladakh-india', 'Thukpa (Ladakhi style) / Skyu', NULL, 'asia'::"Continent", 'India', 'Ladakh', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", 'https://upload.wikimedia.org/wikipedia/commons/9/99/A_bowl_of_Thukpa.jpg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5b96c013-af02-4e8f-983f-9b3cc4b76b7b', '8ab37572-3dbd-4ca1-8434-71078b3053d4', 0, NULL, 'Wheat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('82fa1920-f638-4487-8ca8-6755af3814f7', '8ab37572-3dbd-4ca1-8434-71078b3053d4', 1, NULL, 'Barley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1fb2fb0-1588-4922-af2f-d2e3320c67d3', '8ab37572-3dbd-4ca1-8434-71078b3053d4', 2, NULL, 'Vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4177366f-984b-4d72-816b-738a6c3cc93c', '8ab37572-3dbd-4ca1-8434-71078b3053d4', 1, 'Simmer hand-pulled dough pieces or noodles in a spiced vegetable/meat broth, Tibetan-Himalayan style.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ab37572-3dbd-4ca1-8434-71078b3053d4', '2513ea4a-7fe4-4c02-9e8c-d5f35bd723b2') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ab37572-3dbd-4ca1-8434-71078b3053d4', 'b4db402d-2ef7-4269-92bd-0558dbbfc6e2') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ab37572-3dbd-4ca1-8434-71078b3053d4', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d616f082-1d61-4629-9ef9-18359be71038', 'state:Andaman & Nicobar', 'state') ON CONFLICT ("name") DO NOTHING;

-- Grilled Reef Fish (Andaman & Nicobar, India)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5933fbae-2762-4ba2-92bf-39bab587de52', 'grilled-reef-fish-andaman-and-nicobar-india', 'Grilled Reef Fish', NULL, 'asia'::"Continent", 'India', 'Andaman & Nicobar', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b27614e8-51d9-4b3b-af23-a5868ce38902', '5933fbae-2762-4ba2-92bf-39bab587de52', 0, NULL, 'Fresh reef fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('771c82eb-465f-4203-a33f-b8a99af8ba9c', '5933fbae-2762-4ba2-92bf-39bab587de52', 1, NULL, 'Minimal seasoning') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d8e9ab3f-f162-4322-b46f-116e2018f400', '5933fbae-2762-4ba2-92bf-39bab587de52', 1, 'Marinate lightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7eb68ce5-b836-43e4-bea6-8bfa15d0b87e', '5933fbae-2762-4ba2-92bf-39bab587de52', 2, 'Grill over open flame so the seafood''s natural flavor shines.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5933fbae-2762-4ba2-92bf-39bab587de52', '2513ea4a-7fe4-4c02-9e8c-d5f35bd723b2') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5933fbae-2762-4ba2-92bf-39bab587de52', 'd616f082-1d61-4629-9ef9-18359be71038') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5933fbae-2762-4ba2-92bf-39bab587de52', 'bf368830-a919-4c8e-92e3-c0f7a5d2136a') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3be5c804-c689-408c-9a0f-ac00f6915305', 'region:East Asia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e894bb21-9f84-49c2-b74c-536e475eb23f', 'state:Sichuan', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bc80b32c-70a3-44e9-bdcc-43d1f6332384', 'country:China', 'country') ON CONFLICT ("name") DO NOTHING;

-- Kung Pao Chicken (Sichuan, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0726cdcd-b630-4cd5-926b-29f98198fc9b', 'kung-pao-chicken-sichuan-china', 'Kung Pao Chicken', NULL, 'asia'::"Continent", 'China', 'Sichuan', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8249561e-5769-4998-989f-a2d987975b3b', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 0, NULL, 'Chicken thigh') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b4f7bb72-d993-4208-b6af-27b85c43c79a', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 1, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fa3682aa-a96c-4f69-b135-82285b49d612', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 2, NULL, 'Dried red chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3ea0c0a-f94a-4806-8e34-bae83ea07271', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 3, NULL, 'Sichuan peppercorns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37a411aa-c4e5-47a8-b662-bcef2bce00f2', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5cc1897c-5800-4ac9-81d5-b43ebf698775', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 5, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('75873b65-5f4c-4f7e-bf99-a49f91a48bcc', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 6, NULL, 'Scallions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('be424db6-17df-4500-9b05-90005c581bc4', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 7, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('557254bb-da10-4195-a20d-76a742ff6b08', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 1, 'Dice boneless chicken thigh and marinate briefly in soy sauce and cornstarch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72f46233-488e-4971-952c-576cbf030d07', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 2, 'Heat oil in a wok until smoking, then quickly stir-fry dried chilies and Sichuan peppercorns until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('51927626-aedf-491c-b5ba-4a630495be1d', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 3, 'Add the chicken and stir-fry over high heat until just cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('10d465ab-470e-48b2-b7ac-c161ced4e274', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 4, 'Toss in garlic, ginger, and scallions, then add roasted peanuts and a savory-sweet sauce of soy sauce, vinegar, and sugar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9d288b3b-0243-44fc-86dd-2a02bd4256a6', '0726cdcd-b630-4cd5-926b-29f98198fc9b', 5, 'Stir everything together for another minute so the sauce coats the chicken, then serve immediately over steamed rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0726cdcd-b630-4cd5-926b-29f98198fc9b', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0726cdcd-b630-4cd5-926b-29f98198fc9b', 'e894bb21-9f84-49c2-b74c-536e475eb23f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0726cdcd-b630-4cd5-926b-29f98198fc9b', 'bc80b32c-70a3-44e9-bdcc-43d1f6332384') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e17b632b-b11e-4b29-bfa7-0e0fbeee031e', 'state:Beijing', 'state') ON CONFLICT ("name") DO NOTHING;

-- Jiaozi (Dumplings) (Beijing, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8dd13f83-5a2b-47a8-8a8e-ff310c531414', 'jiaozi-dumplings-beijing-china', 'Jiaozi (Dumplings)', NULL, 'asia'::"Continent", 'China', 'Beijing', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90957c09-be57-4bc5-b09a-3882d89989fd', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 0, NULL, 'Ground pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b16f3d1-c1f9-4cfe-9645-ff9166aa0713', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 1, NULL, 'Napa cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('98a6a3a4-3f4d-4aaa-ac56-2e00e4580f1d', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 2, NULL, 'Garlic chives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f7fb1cc3-979a-4817-8c45-9328297d1253', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 3, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1c896879-bc0c-449a-81fb-4564b0a1d499', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 4, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a2ac3d2a-2765-4a39-98b6-d911e112b773', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 5, NULL, 'Sesame oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7bddefd-c927-48cd-8395-4f45769e9b3a', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 6, NULL, 'Wheat dumpling wrappers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7be6c368-d89d-401e-b816-e6dcc2f86c9e', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 1, 'Finely chop napa cabbage, salt it, then squeeze out the excess water before mixing with ground pork, garlic chives, ginger, soy sauce, and sesame oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('981f06d3-9b86-4647-b0d6-0cf9865c3e89', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 2, 'Place a spoonful of filling in the center of each round dumpling wrapper and fold the edges into pleats to seal.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('81983ead-5cb7-44cc-8e31-d4dfb22df9dc', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 3, 'Boil the dumplings in batches until they float and the wrapper turns translucent, or pan-fry them for a crisp bottom.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6e2d9f93-ee39-46c4-81ba-e781fdf09e65', '8dd13f83-5a2b-47a8-8a8e-ff310c531414', 4, 'Serve hot with a dipping sauce of black vinegar, soy sauce, and chili oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8dd13f83-5a2b-47a8-8a8e-ff310c531414', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8dd13f83-5a2b-47a8-8a8e-ff310c531414', 'e17b632b-b11e-4b29-bfa7-0e0fbeee031e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8dd13f83-5a2b-47a8-8a8e-ff310c531414', 'bc80b32c-70a3-44e9-bdcc-43d1f6332384') ON CONFLICT DO NOTHING;

-- Mapo Tofu (Sichuan, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('fc3652f1-9ff9-414d-a436-f21504d0428f', 'mapo-tofu-sichuan-china', 'Mapo Tofu', NULL, 'asia'::"Continent", 'China', 'Sichuan', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('01eb133a-a7dd-400b-98c3-545786108863', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 0, NULL, 'Soft tofu') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('185ecb91-ea8b-4bb1-ac04-8b5943225bfc', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 1, NULL, 'Ground pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b72d3436-bd57-4c4e-8a8e-d4e03b0e3c3c', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 2, NULL, 'Fermented broad bean paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('88780863-abd3-4a01-af9e-b2fd2284f2dc', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 3, NULL, 'Sichuan peppercorns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1a2a4c09-ed08-4c90-93c2-85bca9d0e9da', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9d56180a-483f-4d66-a8b2-87a2123cb424', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 5, NULL, 'Scallions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4bd86ab-4594-4be6-8a16-04aff3298bfe', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 6, NULL, 'Chili oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('32de193e-a366-4ae0-b512-2297eb3c71c8', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 1, 'Cut soft tofu into cubes and simmer briefly in salted water to firm it up.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('457b2c31-d489-49eb-87e3-68079a86e288', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 2, 'In a wok, fry ground pork until browned, then stir in fermented broad bean paste, garlic, and chili oil until deeply fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('87d27925-fae2-44db-9426-ae86b8c98ff4', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 3, 'Add stock and the tofu cubes, simmering gently so the tofu absorbs the sauce without breaking apart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8691cd16-1aae-481f-acc3-bd553fb90966', 'fc3652f1-9ff9-414d-a436-f21504d0428f', 4, 'Thicken the sauce with a little cornstarch slurry and finish with a generous dusting of ground toasted Sichuan peppercorns and chopped scallions.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fc3652f1-9ff9-414d-a436-f21504d0428f', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fc3652f1-9ff9-414d-a436-f21504d0428f', 'e894bb21-9f84-49c2-b74c-536e475eb23f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fc3652f1-9ff9-414d-a436-f21504d0428f', 'bc80b32c-70a3-44e9-bdcc-43d1f6332384') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6cc9390c-1a1e-4fe1-8d64-f9c503b57521', 'state:Fukuoka', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4e82a4b6-0cd8-47a3-9430-e92272a74a5f', 'country:Japan', 'country') ON CONFLICT ("name") DO NOTHING;

-- Ramen (Fukuoka, Japan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('7261b6af-62a9-4c6c-a463-208bd836cddd', 'ramen-fukuoka-japan', 'Ramen', NULL, 'asia'::"Continent", 'Japan', 'Fukuoka', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('81648987-9d89-4320-88f6-00cc3808d5c3', '7261b6af-62a9-4c6c-a463-208bd836cddd', 0, NULL, 'Wheat noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('49a42235-b284-475e-9481-d25ae1a092dd', '7261b6af-62a9-4c6c-a463-208bd836cddd', 1, NULL, 'Pork bones') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a59b7a4f-7d2f-45fb-aad2-89ad6a15de2f', '7261b6af-62a9-4c6c-a463-208bd836cddd', 2, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9bec8eae-9e61-4c73-a58f-ee5d5ee032ef', '7261b6af-62a9-4c6c-a463-208bd836cddd', 3, NULL, 'Miso') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e100475e-28a7-4800-a472-6b61aa1735fb', '7261b6af-62a9-4c6c-a463-208bd836cddd', 4, NULL, 'Green onions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5f88b346-ac4a-49b6-8753-83d3ab31c40b', '7261b6af-62a9-4c6c-a463-208bd836cddd', 5, NULL, 'Soft-boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea8ebae9-e8ae-4905-a5c3-44f6282390e5', '7261b6af-62a9-4c6c-a463-208bd836cddd', 6, NULL, 'Nori') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d12b63b3-077d-465f-8902-201caf53b47e', '7261b6af-62a9-4c6c-a463-208bd836cddd', 7, NULL, 'Bamboo shoots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9a5ed08c-def0-44a6-bd5c-624441a109ba', '7261b6af-62a9-4c6c-a463-208bd836cddd', 1, 'Simmer pork bones for many hours until the broth turns rich and milky white, skimming occasionally.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f60f94cf-7a67-4916-8cde-09bce6b7f3ee', '7261b6af-62a9-4c6c-a463-208bd836cddd', 2, 'Season a portion of the broth with soy sauce or miso depending on the style being made.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a2e1bce7-c75e-493e-9d15-3327fb162a03', '7261b6af-62a9-4c6c-a463-208bd836cddd', 3, 'Cook fresh wheat ramen noodles separately until just tender, then drain and place them in a bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('56a6df9e-169f-4cf0-b2ac-0d4146ddd55f', '7261b6af-62a9-4c6c-a463-208bd836cddd', 4, 'Ladle the hot broth over the noodles and top with sliced pork, a soft-boiled egg, green onions, nori, and bamboo shoots before serving immediately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7261b6af-62a9-4c6c-a463-208bd836cddd', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7261b6af-62a9-4c6c-a463-208bd836cddd', '6cc9390c-1a1e-4fe1-8d64-f9c503b57521') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('7261b6af-62a9-4c6c-a463-208bd836cddd', '4e82a4b6-0cd8-47a3-9430-e92272a74a5f') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5cd4ac19-c3fa-4155-894a-4261e181c10c', 'state:Osaka', 'state') ON CONFLICT ("name") DO NOTHING;

-- Okonomiyaki (Osaka, Japan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0401ef23-77f4-49b6-a711-c8f26837d406', 'okonomiyaki-osaka-japan', 'Okonomiyaki', NULL, 'asia'::"Continent", 'Japan', 'Osaka', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('572e29aa-6155-41e7-a9b2-f55c9e16064a', '0401ef23-77f4-49b6-a711-c8f26837d406', 0, NULL, 'Cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e0c60d2a-ed5f-4cf3-94ae-ba31b756dd07', '0401ef23-77f4-49b6-a711-c8f26837d406', 1, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('af76a212-006d-43f4-8df1-b05f46cfe662', '0401ef23-77f4-49b6-a711-c8f26837d406', 2, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c19bda04-45fc-4d47-b349-18335a8f135b', '0401ef23-77f4-49b6-a711-c8f26837d406', 3, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d83ee0af-c2eb-45eb-ab47-db2e3be096c1', '0401ef23-77f4-49b6-a711-c8f26837d406', 4, NULL, 'Okonomiyaki sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('751d677e-a79b-42a0-95f4-7776e837a66e', '0401ef23-77f4-49b6-a711-c8f26837d406', 5, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ac02fcd1-5ef3-42a4-9d15-5156096856bb', '0401ef23-77f4-49b6-a711-c8f26837d406', 6, NULL, 'Bonito flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bc5efafc-9c4d-4ea3-8087-ef8df1b9d7ae', '0401ef23-77f4-49b6-a711-c8f26837d406', 7, NULL, 'Dried seaweed powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('da6cfa7c-1504-4f9c-ae75-52db923cae43', '0401ef23-77f4-49b6-a711-c8f26837d406', 1, 'Whisk flour, grated nagaimo or water, and eggs into a batter, then fold in a generous amount of shredded cabbage.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6f65f819-0d02-4b9d-a369-9218445d80c7', '0401ef23-77f4-49b6-a711-c8f26837d406', 2, 'Pour the batter onto a hot griddle in a thick round and lay strips of pork belly on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('01127684-aa05-45cb-8a3c-1f7311e6af23', '0401ef23-77f4-49b6-a711-c8f26837d406', 3, 'Cook until golden on both sides, flipping carefully so the cabbage inside steams through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('86fc557c-7633-46a2-b80e-4d5c566cf5e9', '0401ef23-77f4-49b6-a711-c8f26837d406', 4, 'Finish by brushing with sweet okonomiyaki sauce, drizzling mayonnaise in lines, and sprinkling bonito flakes and seaweed powder over the top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0401ef23-77f4-49b6-a711-c8f26837d406', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0401ef23-77f4-49b6-a711-c8f26837d406', '5cd4ac19-c3fa-4155-894a-4261e181c10c') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0401ef23-77f4-49b6-a711-c8f26837d406', '4e82a4b6-0cd8-47a3-9430-e92272a74a5f') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('458404de-7d7e-4bfe-8165-c008bb836265', 'region:Southeast Asia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('13c543e7-6f40-4715-bf08-b21e56d98984', 'state:Bangkok', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b896f86d-5f41-486f-b2b8-e084beb7157f', 'country:Thailand', 'country') ON CONFLICT ("name") DO NOTHING;

-- Pad Thai (Bangkok, Thailand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('83f01f6a-38c5-4623-babb-51778ee368c8', 'pad-thai-bangkok-thailand', 'Pad Thai', NULL, 'asia'::"Continent", 'Thailand', 'Bangkok', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0dc341f6-370c-4b46-ad34-63fb8f48d6dd', '83f01f6a-38c5-4623-babb-51778ee368c8', 0, NULL, 'Rice noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9885d822-69da-430a-ac55-1a21bcd0a8d7', '83f01f6a-38c5-4623-babb-51778ee368c8', 1, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2d16a822-bdcd-470e-8deb-7fc6e144d1f9', '83f01f6a-38c5-4623-babb-51778ee368c8', 2, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8c7e7f59-7e1a-4157-8ae9-45ff88acbb88', '83f01f6a-38c5-4623-babb-51778ee368c8', 3, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1274f54d-809b-471b-be75-cb1e8b4f54aa', '83f01f6a-38c5-4623-babb-51778ee368c8', 4, NULL, 'Tamarind paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fa421019-ea69-4938-9835-8ea8859b7a53', '83f01f6a-38c5-4623-babb-51778ee368c8', 5, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f0a9377a-3f02-4c13-840b-ac32588e93db', '83f01f6a-38c5-4623-babb-51778ee368c8', 6, NULL, 'Palm sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6853e15a-0e6c-40e2-b8db-078e9d1afb75', '83f01f6a-38c5-4623-babb-51778ee368c8', 7, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b2080948-e492-4a1c-8178-a59125b4a6c7', '83f01f6a-38c5-4623-babb-51778ee368c8', 1, 'Soak flat rice noodles in warm water until pliable, then drain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b4c7d1f0-c16a-42b4-a1c1-ff42f9614208', '83f01f6a-38c5-4623-babb-51778ee368c8', 2, 'Stir-fry shrimp in a hot wok, push to one side, and scramble an egg in the empty space before mixing everything together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c3c1c16-d61d-46c7-8907-15dc77ef13e7', '83f01f6a-38c5-4623-babb-51778ee368c8', 3, 'Add the noodles along with a sauce made from tamarind paste, fish sauce, and palm sugar, tossing constantly so the noodles cook evenly and soak up the sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c0aedcbc-f9f3-47a4-a62f-ea7382b88cb5', '83f01f6a-38c5-4623-babb-51778ee368c8', 4, 'Finish with bean sprouts and chopped peanuts, tossing briefly, then serve with lime wedges and chili flakes on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('83f01f6a-38c5-4623-babb-51778ee368c8', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('83f01f6a-38c5-4623-babb-51778ee368c8', '13c543e7-6f40-4715-bf08-b21e56d98984') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('83f01f6a-38c5-4623-babb-51778ee368c8', 'b896f86d-5f41-486f-b2b8-e084beb7157f') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1075184c-e7be-4c7b-8164-94da3c4014d9', 'state:Isaan', 'state') ON CONFLICT ("name") DO NOTHING;

-- Som Tam (Green Papaya Salad) (Isaan, Thailand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cecef92d-0a34-47c6-a148-4a34106fc3f6', 'som-tam-green-papaya-salad-isaan-thailand', 'Som Tam (Green Papaya Salad)', NULL, 'asia'::"Continent", 'Thailand', 'Isaan', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27e51e9e-c851-42ea-89d5-f0313babd71c', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 0, NULL, 'Green papaya') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e5d0a22a-93af-439f-a508-b8c1d84061b4', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 1, NULL, 'Long beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f1455ab-5a47-4067-afda-ffea1f7e2952', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 2, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c0728846-1dce-4963-9476-4817ed98e771', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('161e9223-3564-4e02-ab35-d3348ac80ea2', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 4, NULL, 'Dried shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('225870f5-1c3d-49d1-951f-dd3142cc619e', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 5, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('593dd2b9-27fd-44a8-baee-cfc8ee2fc797', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 6, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('803c2302-d422-4a3d-9b13-44a0f9035e1f', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 7, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f4881a82-b085-4e1e-9f95-015715eb590f', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 1, 'Shred unripe green papaya into thin strands.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a9036162-0ec2-4ac1-8c1d-552b8e451fda', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 2, 'Pound garlic and chilies in a mortar, then add tomatoes and long beans and bruise them lightly to release their juices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4f9bb32a-f7cd-4195-b1e5-b22b8846c94b', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 3, 'Add the shredded papaya along with fish sauce, lime juice, palm sugar, and dried shrimp, pounding and tossing everything together with a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b02ca4b0-0ab1-493d-9db6-835fd77abb3b', 'cecef92d-0a34-47c6-a148-4a34106fc3f6', 4, 'Finish with crushed peanuts and serve fresh with sticky rice and grilled chicken.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cecef92d-0a34-47c6-a148-4a34106fc3f6', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cecef92d-0a34-47c6-a148-4a34106fc3f6', '1075184c-e7be-4c7b-8164-94da3c4014d9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cecef92d-0a34-47c6-a148-4a34106fc3f6', 'b896f86d-5f41-486f-b2b8-e084beb7157f') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c27ad5fa-151f-4011-95be-b4eaeecfde94', 'state:Hanoi', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('443613b1-4177-4ceb-b928-e00d2002390e', 'country:Vietnam', 'country') ON CONFLICT ("name") DO NOTHING;

-- Pho (Hanoi, Vietnam)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 'pho-hanoi-vietnam', 'Pho', NULL, 'asia'::"Continent", 'Vietnam', 'Hanoi', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a7981b21-04b6-48fe-95df-27f4f1766bff', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 0, NULL, 'Rice noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bfc7e61e-c645-4efc-b2a1-c058e09ef86c', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 1, NULL, 'Beef bones') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60c49fcd-f040-43dc-947f-cdccd8ebaaa0', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 2, NULL, 'Beef slices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6edc1724-3685-4190-8ad7-68d5233bb120', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 3, NULL, 'Star anise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('42547602-3fbc-4fd3-9045-46b84685e711', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 4, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('885a2d09-b493-41a2-8963-c263e40a6876', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 5, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('53878ecb-7e49-45c9-92a8-de6d470aea2a', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 6, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('776677ea-71b8-41a1-baee-497253ca0dd2', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 7, NULL, 'Fresh herbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f7be25b7-4c23-4360-8f9c-f558e7a11ebd', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 1, 'Simmer beef bones with charred onion and ginger for several hours to build a clear, fragrant broth, skimming impurities as it cooks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('07e12f47-03cf-4c69-a190-1dfd4fd583cf', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 2, 'Toast star anise, cinnamon, and other spices and add them to the pot along with fish sauce to season the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4a32e227-2f9e-4e2f-914d-288324284100', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 3, 'Cook flat rice noodles until soft and place them in a bowl with thin raw slices of beef.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dc13f02f-6210-4cb1-bf6c-13622f19ddee', 'a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 4, 'Pour the boiling broth directly over the beef so it cooks instantly, then serve with bean sprouts, fresh herbs, and lime on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a5a9a0a6-c441-40ab-bc87-43e35620a0f5', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a5a9a0a6-c441-40ab-bc87-43e35620a0f5', 'c27ad5fa-151f-4011-95be-b4eaeecfde94') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a5a9a0a6-c441-40ab-bc87-43e35620a0f5', '443613b1-4177-4ceb-b928-e00d2002390e') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('15b2fbef-74ad-46c7-b269-e514fa42dba3', 'state:Ho Chi Minh City', 'state') ON CONFLICT ("name") DO NOTHING;

-- Banh Mi (Ho Chi Minh City, Vietnam)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('fcfc05fc-722b-48d2-9f85-6387a2a87255', 'banh-mi-ho-chi-minh-city-vietnam', 'Banh Mi', NULL, 'asia'::"Continent", 'Vietnam', 'Ho Chi Minh City', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('32048b0d-3fa6-4371-b62b-46b3493408c7', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 0, NULL, 'Baguette') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('10ffbf37-85f1-4b21-ace5-1305f6debf28', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 1, NULL, 'Pork pate') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b590d609-f3f5-41b2-91d0-1a9a8acc5ad7', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 2, NULL, 'Grilled pork or cold cuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bbc790ec-1ddf-4c72-bca5-84e055b6ab22', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 3, NULL, 'Pickled carrot and daikon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('84b3f4ef-c299-4fbf-bdc6-def42e2decd8', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 4, NULL, 'Cucumber') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e041f805-0466-4985-a6be-16c544c26f12', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 5, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b33b7999-5d66-400d-b3a1-beff57c22648', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 6, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('20896bc7-67c7-4542-a5d7-43dd1c249699', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 7, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eee29068-b89d-42a6-9f6c-55688d4e751c', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 1, 'Split a crisp French-style baguette and spread pate and mayonnaise along the inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ceb5d46a-41d7-4217-ae78-1069e4c2e10c', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 2, 'Layer in grilled pork or cold cuts, then add quick-pickled carrot and daikon for crunch and acidity.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e885bcf8-1b4f-41e1-b2a2-3959916251fa', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 3, 'Add fresh cucumber slices, cilantro sprigs, and sliced chili peppers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6b710989-2132-4b58-a3d7-9a379af969bd', 'fcfc05fc-722b-48d2-9f85-6387a2a87255', 4, 'Press the sandwich together and serve immediately while the bread is still crackly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fcfc05fc-722b-48d2-9f85-6387a2a87255', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fcfc05fc-722b-48d2-9f85-6387a2a87255', '15b2fbef-74ad-46c7-b269-e514fa42dba3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fcfc05fc-722b-48d2-9f85-6387a2a87255', '443613b1-4177-4ceb-b928-e00d2002390e') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('287c9a5d-f548-4acc-a50a-fe27b74109f3', 'state:Jeonju', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c9599894-0c8d-4712-9503-24583bb82f54', 'country:South Korea', 'country') ON CONFLICT ("name") DO NOTHING;

-- Bibimbap (Jeonju, South Korea)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 'bibimbap-jeonju-south-korea', 'Bibimbap', NULL, 'asia'::"Continent", 'South Korea', 'Jeonju', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bf693d8a-c7b9-472f-8339-d48dd0d29df5', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('88610f3b-c16d-4bc4-b027-cee32d69365c', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 1, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d835fa6c-ab6b-49f4-8a94-8e90e32cb8cd', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 2, NULL, 'Spinach') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc334d73-c33e-4374-bb1a-4aaea72f6c59', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 3, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('86383bdd-c7fc-4bd0-a888-2e525318178d', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 4, NULL, 'Carrots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aabc3d94-f8e7-4a6a-848d-a516c84a5827', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 5, NULL, 'Shiitake mushrooms') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('39444b21-c978-416d-baa6-7ff77936359b', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 6, NULL, 'Fried egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f56cb52-55ec-4356-a8f6-a9300fd35d02', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 7, NULL, 'Gochujang') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eeece85a-825d-480f-a7af-656ae8c2048e', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 1, 'Cook and season a variety of vegetables separately, such as spinach, bean sprouts, carrots, and mushrooms, each with a little sesame oil, garlic, and salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('49678459-3a34-4074-bbf7-296bbf233044', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 2, 'Marinate thin strips of beef in soy sauce, sugar, and garlic, then quickly stir-fry them.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3707c906-b6e9-4c44-b203-650143850a71', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 3, 'Arrange a bowl of warm rice and top it with the seasoned vegetables and beef in separate sections, then place a fried egg in the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b1469e97-6837-4d86-9de0-8721dddc42a0', 'a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 4, 'Add a spoonful of gochujang, and mix everything together thoroughly just before eating.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a1d7eb49-7410-4382-a119-61bd6f1a3a4b', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a1d7eb49-7410-4382-a119-61bd6f1a3a4b', '287c9a5d-f548-4acc-a50a-fe27b74109f3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a1d7eb49-7410-4382-a119-61bd6f1a3a4b', 'c9599894-0c8d-4712-9503-24583bb82f54') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1f8e4d05-6fff-4ad4-8cad-33528fc9dd3c', 'state:Seoul', 'state') ON CONFLICT ("name") DO NOTHING;

-- Korean Fried Chicken (Seoul, South Korea)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('76538773-23dc-479b-be6e-b5017268110b', 'korean-fried-chicken-seoul-south-korea', 'Korean Fried Chicken', NULL, 'asia'::"Continent", 'South Korea', 'Seoul', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0532c26d-2885-4613-b792-4cc2692786be', '76538773-23dc-479b-be6e-b5017268110b', 0, NULL, 'Chicken wings') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('41ef3bfa-53ea-48a6-9efc-7fa68c11888e', '76538773-23dc-479b-be6e-b5017268110b', 1, NULL, 'Potato starch') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7076ceb5-8df6-435c-94a9-8d657f72cd5f', '76538773-23dc-479b-be6e-b5017268110b', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('292b8d20-ef8c-42a2-9504-8899cb2724ad', '76538773-23dc-479b-be6e-b5017268110b', 3, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('98e84375-5776-4f18-bd29-7b54ada08abb', '76538773-23dc-479b-be6e-b5017268110b', 4, NULL, 'Gochujang') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f11844d-8f4d-4819-8d92-541fa9f7b895', '76538773-23dc-479b-be6e-b5017268110b', 5, NULL, 'Rice syrup') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('74afe485-c44d-4bba-a4ff-f43858e93eb9', '76538773-23dc-479b-be6e-b5017268110b', 6, NULL, 'Sesame seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7184ab13-c441-4658-bc5c-4b128d3692b2', '76538773-23dc-479b-be6e-b5017268110b', 1, 'Coat chicken pieces in a thin potato starch batter and fry them until lightly golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0d9ef9b6-3ad5-4669-8685-a4c65a978cb9', '76538773-23dc-479b-be6e-b5017268110b', 2, 'Let the chicken rest, then fry it a second time at a higher temperature until the skin turns very crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('55428415-4776-4a8e-bc7f-c48643402cea', '76538773-23dc-479b-be6e-b5017268110b', 3, 'For the classic spicy version, simmer gochujang, garlic, soy sauce, and rice syrup into a glossy glaze.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72efccda-7582-4492-bcca-ae242b5a85e2', '76538773-23dc-479b-be6e-b5017268110b', 4, 'Toss the hot fried chicken in the glaze and sprinkle with sesame seeds before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('76538773-23dc-479b-be6e-b5017268110b', '3be5c804-c689-408c-9a0f-ac00f6915305') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('76538773-23dc-479b-be6e-b5017268110b', '1f8e4d05-6fff-4ad4-8cad-33528fc9dd3c') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('76538773-23dc-479b-be6e-b5017268110b', 'c9599894-0c8d-4712-9503-24583bb82f54') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('91507e22-94cd-4b9b-b3cd-d534716a88f3', 'state:Jakarta', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fbd5c861-5324-4d8f-a6ba-a3a73b123d66', 'country:Indonesia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Nasi Goreng (Jakarta, Indonesia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4b8c9a2f-87a6-4711-a728-344e220ed1f7', 'nasi-goreng-jakarta-indonesia', 'Nasi Goreng', NULL, 'asia'::"Continent", 'Indonesia', 'Jakarta', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('79c27e4a-2ace-438d-bdea-d39ac0fd6588', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 0, NULL, 'Cooked rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55685aaa-5c1d-455d-b095-37a0172bc4e6', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 1, NULL, 'Shallots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0b822a5f-5855-48ed-a831-cdd03875c1e8', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('077c94c3-d171-406b-9741-02241cf69a61', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 3, NULL, 'Sweet soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27d6569b-5f68-4f2b-b9b8-06f4b5d9a180', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 4, NULL, 'Shrimp paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('20b236d0-e730-41fa-8677-5dc454e2d364', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 5, NULL, 'Chicken or shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea9788a2-157b-4ee2-92d4-2ddfce4aae79', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23929f97-0ff7-495a-828d-2601b04722c9', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 7, NULL, 'Cucumber') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9b561197-0f2d-49b3-b02b-29a30faf3b47', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 1, 'Pound or blend shallots, garlic, and a little shrimp paste into a fragrant paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c38c3916-b043-41a0-b554-4aaab2b8d210', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 2, 'Fry the paste in oil until aromatic, then add diced chicken or shrimp and cook through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d1069000-4d7b-4752-b784-244e0750ab9d', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 3, 'Add day-old cooked rice and sweet soy sauce, breaking up clumps and stir-frying until the rice is evenly coated and slightly charred at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dcc6476c-6936-4ed3-a352-560661bd89a5', '4b8c9a2f-87a6-4711-a728-344e220ed1f7', 4, 'Top with a fried egg and serve with sliced cucumber and prawn crackers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4b8c9a2f-87a6-4711-a728-344e220ed1f7', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4b8c9a2f-87a6-4711-a728-344e220ed1f7', '91507e22-94cd-4b9b-b3cd-d534716a88f3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('4b8c9a2f-87a6-4711-a728-344e220ed1f7', 'fbd5c861-5324-4d8f-a6ba-a3a73b123d66') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('74998119-3379-48c2-afdd-925c6d24c18b', 'state:Java', 'state') ON CONFLICT ("name") DO NOTHING;

-- Satay (Java, Indonesia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5b376ecf-befc-4120-9113-06f551173cf5', 'satay-java-indonesia', 'Satay', NULL, 'asia'::"Continent", 'Indonesia', 'Java', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dbad8040-aac5-4fe8-aaa8-8a65f5e58851', '5b376ecf-befc-4120-9113-06f551173cf5', 0, NULL, 'Chicken or beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0614bfa-2a46-47e5-9acb-94caf83e2192', '5b376ecf-befc-4120-9113-06f551173cf5', 1, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c4a63633-6d7f-47f4-941d-d7c64b625fb1', '5b376ecf-befc-4120-9113-06f551173cf5', 2, NULL, 'Sweet soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28813044-2e6f-437c-9448-8e9927758ca5', '5b376ecf-befc-4120-9113-06f551173cf5', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f7c63f7d-164b-4e6c-ab45-4bce79a3fd50', '5b376ecf-befc-4120-9113-06f551173cf5', 4, NULL, 'Shallots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('987d6566-adba-489b-9dac-6a16a62aac20', '5b376ecf-befc-4120-9113-06f551173cf5', 5, NULL, 'Coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('39c0b069-c25c-4d00-aec0-5a9f043e4d21', '5b376ecf-befc-4120-9113-06f551173cf5', 6, NULL, 'Lemongrass') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5f218f9f-35b9-4a02-967d-ad5721d2b7c2', '5b376ecf-befc-4120-9113-06f551173cf5', 7, NULL, 'Bamboo skewers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d56511c0-87a9-4e3c-9c03-b080f1ccd751', '5b376ecf-befc-4120-9113-06f551173cf5', 1, 'Cut meat into small cubes and marinate with garlic, shallots, coriander, and sweet soy sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6cc7fd3f-c69e-4117-9399-34046349bf4c', '5b376ecf-befc-4120-9113-06f551173cf5', 2, 'Thread the marinated pieces onto bamboo skewers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('acd1d144-9676-4c02-b03d-ac225cf5f360', '5b376ecf-befc-4120-9113-06f551173cf5', 3, 'Grill the skewers over hot charcoal, turning frequently and basting with more marinade until nicely charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('044b3af9-ed9f-4e99-8dac-b83877b9d1b3', '5b376ecf-befc-4120-9113-06f551173cf5', 4, 'Serve with a rich peanut sauce made from ground roasted peanuts, sweet soy sauce, garlic, and a touch of lime.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5b376ecf-befc-4120-9113-06f551173cf5', '458404de-7d7e-4bfe-8165-c008bb836265') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5b376ecf-befc-4120-9113-06f551173cf5', '74998119-3379-48c2-afdd-925c6d24c18b') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5b376ecf-befc-4120-9113-06f551173cf5', 'fbd5c861-5324-4d8f-a6ba-a3a73b123d66') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e3336ff1-ba91-444d-b969-c350dbbef5ce', 'region:South Asia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1e7a15e5-0294-4ccc-9798-bcb7ab2ae06d', 'state:Colombo', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4ebf2b38-16dd-447f-b0ce-53f4ae50f317', 'country:Sri Lanka', 'country') ON CONFLICT ("name") DO NOTHING;

-- Kottu Roti (Colombo, Sri Lanka)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('90263607-a416-47c0-988b-cd47c43392cf', 'kottu-roti-colombo-sri-lanka', 'Kottu Roti', NULL, 'asia'::"Continent", 'Sri Lanka', 'Colombo', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('225ddbe4-f482-4557-8b60-aab1ef915d64', '90263607-a416-47c0-988b-cd47c43392cf', 0, NULL, 'Godhamba roti') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('24271f15-5589-48d5-8346-a04931a890ef', '90263607-a416-47c0-988b-cd47c43392cf', 1, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('418199c4-ad95-4994-8a2c-beee563ce569', '90263607-a416-47c0-988b-cd47c43392cf', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6f12950-2a73-4893-ad5e-5a172a5c1043', '90263607-a416-47c0-988b-cd47c43392cf', 3, NULL, 'Cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c5141bac-51e3-4367-bf85-56087e0d5bf6', '90263607-a416-47c0-988b-cd47c43392cf', 4, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('53ac5075-46b3-4c81-9c62-e44d3fc1cf75', '90263607-a416-47c0-988b-cd47c43392cf', 5, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2fb3ff02-7e29-4c25-9db5-976dd5f33636', '90263607-a416-47c0-988b-cd47c43392cf', 6, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9336f9f0-c207-48aa-b524-1df033756dc8', '90263607-a416-47c0-988b-cd47c43392cf', 7, NULL, 'Curry sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2feca723-d155-4be6-b3b0-fb694d7eae22', '90263607-a416-47c0-988b-cd47c43392cf', 1, 'Chop leftover flatbread called godhamba roti into small strips.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6c212aae-f464-4d55-b374-e6ab76a2bb0c', '90263607-a416-47c0-988b-cd47c43392cf', 2, 'On a hot flat griddle, stir-fry onions, curry leaves, and shredded vegetables with a little curry powder.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d317fb25-474a-4d9a-8e5e-07d6c85c237b', '90263607-a416-47c0-988b-cd47c43392cf', 3, 'Push the vegetables aside, scramble an egg in the same space, then add diced cooked chicken and the chopped roti.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('07198004-ed4e-49b7-ad87-92b7695d2f81', '90263607-a416-47c0-988b-cd47c43392cf', 4, 'Using two metal scrapers, chop and toss everything together vigorously while adding spoonfuls of curry sauce, until the roti is evenly mixed and slightly crisped.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90263607-a416-47c0-988b-cd47c43392cf', 'e3336ff1-ba91-444d-b969-c350dbbef5ce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90263607-a416-47c0-988b-cd47c43392cf', '1e7a15e5-0294-4ccc-9798-bcb7ab2ae06d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('90263607-a416-47c0-988b-cd47c43392cf', '4ebf2b38-16dd-447f-b0ce-53f4ae50f317') ON CONFLICT DO NOTHING;

-- Hoppers (Appa) (Colombo, Sri Lanka)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('16ce67a2-be74-4ee2-a76b-031138990a1a', 'hoppers-appa-colombo-sri-lanka', 'Hoppers (Appa)', NULL, 'asia'::"Continent", 'Sri Lanka', 'Colombo', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8c9563af-2b00-4da5-8775-d61af2f5691a', '16ce67a2-be74-4ee2-a76b-031138990a1a', 0, NULL, 'Rice flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('283ba1eb-a7ab-4034-b3d2-22cbb2ab2c6f', '16ce67a2-be74-4ee2-a76b-031138990a1a', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1b755353-1b83-4fa9-b567-1db75ed064ba', '16ce67a2-be74-4ee2-a76b-031138990a1a', 2, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('184bfdf8-4091-4c2f-aacc-30dc3a0e082b', '16ce67a2-be74-4ee2-a76b-031138990a1a', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e70769e2-6dfd-4f5a-b1ea-be0ea26984dd', '16ce67a2-be74-4ee2-a76b-031138990a1a', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('854d30c5-ecc8-48fb-8fd6-da74718d2ef6', '16ce67a2-be74-4ee2-a76b-031138990a1a', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12394b4f-7f81-4694-a377-16e681ebfd38', '16ce67a2-be74-4ee2-a76b-031138990a1a', 1, 'Mix rice flour with coconut milk, a little sugar, and yeast, then let the batter ferment for several hours until bubbly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b87fc261-e0f4-4b50-9107-ac9bc3f4374c', '16ce67a2-be74-4ee2-a76b-031138990a1a', 2, 'Heat a small curved hopper pan and swirl in a ladle of batter, tilting the pan so it coats the sides thinly while pooling slightly in the middle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d4e13d71-2436-4b07-823d-64ce3e73b59e', '16ce67a2-be74-4ee2-a76b-031138990a1a', 3, 'Crack an egg into the center for egg hoppers, then cover with a lid and cook until the edges turn lacy and golden and the center sets.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7cbe1108-cb32-4ec7-9a35-daac72f7f174', '16ce67a2-be74-4ee2-a76b-031138990a1a', 4, 'Lift the hopper out gently and serve warm with spicy sambal or curry.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('16ce67a2-be74-4ee2-a76b-031138990a1a', 'e3336ff1-ba91-444d-b969-c350dbbef5ce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('16ce67a2-be74-4ee2-a76b-031138990a1a', '1e7a15e5-0294-4ccc-9798-bcb7ab2ae06d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('16ce67a2-be74-4ee2-a76b-031138990a1a', '4ebf2b38-16dd-447f-b0ce-53f4ae50f317') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('63765460-21c4-4cb6-a9f6-fd8410054c9e', 'state:Kathmandu', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('491aa29c-2dd9-4aa8-800a-68319ccb7f3b', 'country:Nepal', 'country') ON CONFLICT ("name") DO NOTHING;

-- Momo (Kathmandu, Nepal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a18bb35f-bcb7-44d7-8903-39573e3b34d6', 'momo-kathmandu-nepal', 'Momo', NULL, 'asia'::"Continent", 'Nepal', 'Kathmandu', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('36396e58-7944-46b1-8ecc-81fdc9108f2d', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 0, NULL, 'Ground buffalo or chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6ba22729-407f-4f43-8c4a-0eb264e1cc0f', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bd60ce22-00a8-4125-8225-6958ddbbddf3', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('528474bc-194c-4f9d-b7e2-71f8cbce47ce', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 3, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a2b2f12b-1312-4459-8c45-e1ec09d284d4', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 4, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8266a6e4-f143-4f07-9d06-5939159e6dc8', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 5, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('290dd896-4eb0-4e40-b6a6-c1443c17e5de', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 6, NULL, 'Wheat flour dumpling wrappers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('258fa620-3938-49d0-8177-82698f2515b1', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 1, 'Mix ground meat with finely chopped onion, garlic, ginger, cilantro, and warming spices to make a juicy filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8c877e7-1e0c-4e3e-9f65-976b79cb63ee', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 2, 'Place a spoonful of filling in a thin round dough wrapper and pleat the edges closed into a small purse shape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('385c257a-7fac-403f-8fd8-aab5936dd673', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 3, 'Arrange the dumplings in a steamer basket and steam until the wrappers turn glossy and the filling is cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2075de29-fdba-450f-9a96-4c32d9c2ba3e', 'a18bb35f-bcb7-44d7-8903-39573e3b34d6', 4, 'Serve hot with a tangy tomato-based achar dipping sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a18bb35f-bcb7-44d7-8903-39573e3b34d6', 'e3336ff1-ba91-444d-b969-c350dbbef5ce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a18bb35f-bcb7-44d7-8903-39573e3b34d6', '63765460-21c4-4cb6-a9f6-fd8410054c9e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a18bb35f-bcb7-44d7-8903-39573e3b34d6', '491aa29c-2dd9-4aa8-800a-68319ccb7f3b') ON CONFLICT DO NOTHING;

-- Dal Bhat (Kathmandu, Nepal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 'dal-bhat-kathmandu-nepal', 'Dal Bhat', NULL, 'asia'::"Continent", 'Nepal', 'Kathmandu', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d7c70307-fd09-4376-a7cf-935e560545fd', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 0, NULL, 'Lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('51fcdd3c-b6e6-4db7-9583-f7f8fbbe5e3e', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 1, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aaae58fa-d0d2-4585-a914-fcfacc4e83a4', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 2, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1e154419-c737-44d8-84cc-4dc2bbf66cb1', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 3, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('666e1a2c-7769-4908-949f-e6e5e9d2c457', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5487f3f4-58a8-4e6e-9219-0baf92890d52', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 5, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b586719f-d0d9-4528-8875-3998b96bd26c', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 6, NULL, 'Seasonal vegetables') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('912729ed-28e3-47bc-bc39-0f20d12d3393', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 7, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f012e9f9-ab1f-4536-b24b-2fd9ee373c3f', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 1, 'Boil lentils with turmeric until soft, then temper them with a sizzling mix of ghee, cumin, garlic, and ginger poured in at the end.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f5f9d0dc-f7d1-4f34-9498-bba33e0ca4e9', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 2, 'Cook a separate vegetable curry using whatever seasonal vegetables are on hand, seasoned simply with onion, garlic, and spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('16c5dcde-2e6f-461b-b937-df2227e46266', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 3, 'Steam rice until fluffy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b318bdae-7105-4783-bb25-07a2993a9cb8', 'ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 4, 'Serve the rice as the base with the lentil soup, vegetable curry, and pickles arranged around the plate, refilling portions as is customary.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ab6b71bb-384a-4967-a2c5-950ba8ce7a64', 'e3336ff1-ba91-444d-b969-c350dbbef5ce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ab6b71bb-384a-4967-a2c5-950ba8ce7a64', '63765460-21c4-4cb6-a9f6-fd8410054c9e') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('ab6b71bb-384a-4967-a2c5-950ba8ce7a64', '491aa29c-2dd9-4aa8-800a-68319ccb7f3b') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('44db8111-de89-44e2-a2b9-32dd6987ed07', 'region:Middle East', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4fdcab5b-5e3c-4593-9d59-de18ef021f16', 'state:Beirut', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0cf556f0-0b06-42e7-a67b-e303c35084cd', 'country:Lebanon', 'country') ON CONFLICT ("name") DO NOTHING;

-- Falafel (Beirut, Lebanon)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 'falafel-beirut-lebanon', 'Falafel', NULL, 'asia'::"Continent", 'Lebanon', 'Beirut', 'vegan'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23af510b-13b3-4f70-ba40-47c4372e600a', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 0, NULL, 'Dried chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('456eee7e-8d65-465b-9196-9b9681a1dfe1', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 1, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e2e7a499-3939-47ed-a373-03727856b372', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 2, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1dee3079-0874-4503-8624-1d41f389584b', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0f11a87c-ab2f-4d69-970d-46e388cfc014', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a74f00c-a2a6-4c6f-bfd1-536d295681d8', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 5, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('53c653eb-a992-4066-b278-f97482f626a7', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 6, NULL, 'Coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c26c6888-f2d2-4613-9960-1362b438c009', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 1, 'Soak dried chickpeas overnight, then drain without cooking them.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6b8622bc-3fbf-4f43-85fb-4cb06078d3f4', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 2, 'Blend the chickpeas with parsley, cilantro, garlic, onion, and spices into a coarse, well-combined paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('35ee3c83-388f-46ac-a30d-df4e9ef3d941', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 3, 'Shape the mixture into small patties or balls and let them rest briefly so they hold together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e68a23d4-5678-4d76-85c7-4be59b73adde', '9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', 4, 'Deep-fry until deeply golden and crisp outside while staying soft inside, then serve in flatbread with tahini sauce and pickled vegetables.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', '44db8111-de89-44e2-a2b9-32dd6987ed07') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', '4fdcab5b-5e3c-4593-9d59-de18ef021f16') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9a6f8dc3-49e6-4411-bcc1-b8716e5c70a9', '0cf556f0-0b06-42e7-a67b-e303c35084cd') ON CONFLICT DO NOTHING;

-- Hummus (Beirut, Lebanon)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cb0a2aca-4e52-4362-9708-eb83bd444b2b', 'hummus-beirut-lebanon', 'Hummus', NULL, 'asia'::"Continent", 'Lebanon', 'Beirut', 'vegan'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ab016ae-6600-4db6-8839-d171281af6f5', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 0, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c2a9fdef-de53-4065-89f1-a9d050eefbcb', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 1, NULL, 'Tahini') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6c3521d5-399e-4293-bce0-d39182de82a0', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8bff23ed-b381-4448-b074-5f0e412f9b4b', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 3, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6cb0b8f-a01f-4d93-9e02-093b28e9100a', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 4, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2dcd2f5e-4483-46bf-a4dc-f983836d6bc0', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 5, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('712179e6-0efe-4512-a6c4-6f8fa5901f6d', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 1, 'Cook dried chickpeas until very soft, reserving some of the cooking liquid.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('05294bb8-4ce2-430f-b485-c2900f0f5ae7', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 2, 'Blend the chickpeas with tahini, garlic, lemon juice, and a little cooking liquid until completely smooth and creamy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('422651f1-f36f-4b89-a677-cf88406daf9c', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 3, 'Adjust the consistency and seasoning with more liquid, salt, and lemon as needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8f118adb-bb94-4828-ba11-5fd0479ec057', 'cb0a2aca-4e52-4362-9708-eb83bd444b2b', 4, 'Spread onto a plate, drizzle generously with olive oil, and serve with warm flatbread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cb0a2aca-4e52-4362-9708-eb83bd444b2b', '44db8111-de89-44e2-a2b9-32dd6987ed07') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cb0a2aca-4e52-4362-9708-eb83bd444b2b', '4fdcab5b-5e3c-4593-9d59-de18ef021f16') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('cb0a2aca-4e52-4362-9708-eb83bd444b2b', '0cf556f0-0b06-42e7-a67b-e303c35084cd') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('198044bc-1a99-44b0-b112-1351e7434a18', 'state:Istanbul', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f5da6d80-ba80-4958-934e-c1d00c17e125', 'country:Turkey', 'country') ON CONFLICT ("name") DO NOTHING;

-- Doner Kebab (Istanbul, Turkey)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5000af52-c4b7-4378-ac41-a97a7fe360d9', 'doner-kebab-istanbul-turkey', 'Doner Kebab', NULL, 'asia'::"Continent", 'Turkey', 'Istanbul', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e7cb3422-785f-45a6-b2a9-563dc89abbb1', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 0, NULL, 'Lamb or chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2195a993-20a8-4b47-935e-dc2679316551', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 1, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('baca2236-b792-4310-a997-c7f435dca334', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('06f262c7-f976-4915-be0e-12b8a1d465e6', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 3, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('be1cdfb3-b7a1-4e1e-8271-b6e611d7e303', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 4, NULL, 'Flatbread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('062bb2ec-1b84-47a1-bb3a-e01b83dc8611', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 5, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2be5976d-661f-4738-a20a-e22e7122cc7f', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 6, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63a17e6a-2d94-4d2e-96a9-678ac5a6c66b', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 1, 'Marinate thin layers of lamb or chicken in yogurt, garlic, and spices, then stack them onto a vertical rotisserie skewer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a09683f6-8355-43df-bbed-d2b1511758d6', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 2, 'Roast the meat slowly as it turns, letting the outside crisp and caramelize while the skewer keeps rotating.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4ba6955b-6a31-4ea2-b760-1c3f4ee4eab7', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 3, 'Shave off thin slices from the crisped outer layer as customers order.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cf536f96-8227-4182-85b9-9a606bcd1549', '5000af52-c4b7-4378-ac41-a97a7fe360d9', 4, 'Serve the sliced meat wrapped in flatbread with tomato, onion, and a garlicky yogurt or chili sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5000af52-c4b7-4378-ac41-a97a7fe360d9', '44db8111-de89-44e2-a2b9-32dd6987ed07') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5000af52-c4b7-4378-ac41-a97a7fe360d9', '198044bc-1a99-44b0-b112-1351e7434a18') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('5000af52-c4b7-4378-ac41-a97a7fe360d9', 'f5da6d80-ba80-4958-934e-c1d00c17e125') ON CONFLICT DO NOTHING;

-- Menemen (Istanbul, Turkey)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dac078fe-2d9d-4742-9528-899adea4c734', 'menemen-istanbul-turkey', 'Menemen', NULL, 'asia'::"Continent", 'Turkey', 'Istanbul', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('edad8f99-bc4c-41d7-bff6-0f6dd9b63eea', 'dac078fe-2d9d-4742-9528-899adea4c734', 0, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('92bf79f0-2eed-416c-adc2-dd024daff507', 'dac078fe-2d9d-4742-9528-899adea4c734', 1, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('53072eab-da98-4a5d-bb60-5c6fcf5a34e7', 'dac078fe-2d9d-4742-9528-899adea4c734', 2, NULL, 'Green peppers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1a26ba9-7e79-4eb1-9fde-9928e8b45281', 'dac078fe-2d9d-4742-9528-899adea4c734', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96a929b2-45d3-41c6-9a71-e1b4521852c7', 'dac078fe-2d9d-4742-9528-899adea4c734', 4, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1aa43578-9951-451d-be2d-3dcf78f0975d', 'dac078fe-2d9d-4742-9528-899adea4c734', 5, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cdc61786-f65d-4658-aaee-113dc2b7bb94', 'dac078fe-2d9d-4742-9528-899adea4c734', 1, 'Sauté sliced green peppers and onion in olive oil until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('469c5796-b3ff-4d9c-be99-3562173e4b33', 'dac078fe-2d9d-4742-9528-899adea4c734', 2, 'Add chopped tomatoes and cook down until they break into a thick, saucy mixture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2b41a0c4-69f6-4566-b6a0-774d795c86ce', 'dac078fe-2d9d-4742-9528-899adea4c734', 3, 'Crack eggs directly into the pan and stir gently so they scramble loosely into the tomato mixture rather than forming a solid layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c1e49d2c-6ea5-4414-8e19-41b3a21eaa99', 'dac078fe-2d9d-4742-9528-899adea4c734', 4, 'Season with salt and pepper and serve straight from the pan with crusty bread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dac078fe-2d9d-4742-9528-899adea4c734', '44db8111-de89-44e2-a2b9-32dd6987ed07') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dac078fe-2d9d-4742-9528-899adea4c734', '198044bc-1a99-44b0-b112-1351e7434a18') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('dac078fe-2d9d-4742-9528-899adea4c734', 'f5da6d80-ba80-4958-934e-c1d00c17e125') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('78df6c7b-681c-4fc9-ab54-f79a01579e9f', 'region:Mediterranean', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dca1a2c3-8a8c-448c-9eab-e515945fca80', 'state:Naples', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b62779d0-f62a-4ef1-94e2-aa27db376f55', 'country:Italy', 'country') ON CONFLICT ("name") DO NOTHING;

-- Pizza Margherita (Naples, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 'pizza-margherita-naples-italy', 'Pizza Margherita', NULL, 'europe'::"Continent", 'Italy', 'Naples', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1b58b44-9add-4f0f-af69-a6c0a60d2cca', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 0, NULL, 'Pizza dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3115f7a-ae23-4c31-8752-acf551d046f2', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 1, NULL, 'San Marzano tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c4bc1ed0-0896-43d4-8426-7e1ac9b7e330', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 2, NULL, 'Mozzarella') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61707758-c180-4d5b-b83f-af9092064c28', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 3, NULL, 'Fresh basil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0c8c03e-99cc-4489-aa97-189627641373', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 4, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('328b46a8-4f57-42ac-8c65-97e48d3d8e19', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('49c8a02f-d906-4496-9667-3f484410f8f0', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 1, 'Stretch a ball of well-fermented dough by hand into a thin round, leaving a slightly thicker rim.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c4eae787-f5aa-447e-8941-7abec8ccad4a', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 2, 'Spread crushed San Marzano tomatoes over the base and season lightly with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a7045e11-759e-4cdc-8bbc-703ff281d2e2', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 3, 'Tear fresh mozzarella into pieces and scatter it over the tomato layer along with a drizzle of olive oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63b948f7-38e4-4ddc-9bc5-c634f06e6050', '8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 4, 'Bake in a very hot wood-fired oven for less than two minutes until the crust chars in spots, then finish with fresh basil leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 'dca1a2c3-8a8c-448c-9eab-e515945fca80') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8d713bf5-becb-4dd7-ad0c-15f44dc37f7c', 'b62779d0-f62a-4ef1-94e2-aa27db376f55') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fc6d03da-7d83-404d-9cb4-ada2dbfd0322', 'state:Rome', 'state') ON CONFLICT ("name") DO NOTHING;

-- Spaghetti Carbonara (Rome, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 'spaghetti-carbonara-rome-italy', 'Spaghetti Carbonara', NULL, 'europe'::"Continent", 'Italy', 'Rome', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0678f55-8743-4961-aa6a-69d88cd29b8f', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 0, NULL, 'Spaghetti') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8979f086-9353-40db-bc11-6e0d5120effe', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 1, NULL, 'Guanciale') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('905ae1ee-45d6-493d-85f4-3cd210ab4064', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 2, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('78a03e4d-1e9d-45b0-bb0b-7add4be23b6e', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 3, NULL, 'Pecorino Romano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('447e3d74-5510-441c-9a8e-976443d1dda4', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 4, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('145cb7a7-4233-456d-a903-3d6b706108ce', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 1, 'Cook diced guanciale slowly in a pan until it renders its fat and turns crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8a779303-1aa9-405f-8a1c-c9d2380b48c1', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 2, 'Meanwhile, whisk eggs with grated pecorino Romano and plenty of cracked black pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5992e1fd-4a55-448f-950f-5cf2e334b148', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 3, 'Cook spaghetti until al dente, then toss it directly in the pan with the guanciale and its fat off the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2f26e6ea-c80a-4c0d-aa1d-a3115cfe3297', '2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 4, 'Quickly stir in the egg and cheese mixture along with a splash of starchy pasta water, tossing continuously so the eggs turn silky rather than scrambling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2bc8d2ee-7378-4d71-bde5-8dca4f95a535', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 'fc6d03da-7d83-404d-9cb4-ada2dbfd0322') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2bc8d2ee-7378-4d71-bde5-8dca4f95a535', 'b62779d0-f62a-4ef1-94e2-aa27db376f55') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2ed7d806-1e2b-419c-ae2d-d6ee6bcd0ae0', 'state:Milan', 'state') ON CONFLICT ("name") DO NOTHING;

-- Risotto alla Milanese (Milan, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 'risotto-alla-milanese-milan-italy', 'Risotto alla Milanese', NULL, 'europe'::"Continent", 'Italy', 'Milan', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('39d59922-1da8-4e48-8348-809477052760', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 0, NULL, 'Arborio rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('18339ccd-05ca-4efb-87c4-0dcbd2edd38f', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 1, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c63bb34b-2d43-46a9-a52e-1494554e23f3', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 2, NULL, 'Beef or vegetable stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7a67cf01-19a9-4b5c-8934-4caddd414e68', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 3, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db94c735-703c-42dd-b848-4826d06c3902', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 4, NULL, 'Parmesan') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93ae5d93-369b-476f-ba7f-f8d8ce1a1d0b', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 5, NULL, 'White wine') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15797b4d-a472-4d59-a207-534432e450ee', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 6, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3bbe1b6c-e556-4d4a-916e-26a64901effd', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 1, 'Sauté finely chopped onion in butter until soft, then add arborio rice and toast it briefly until the edges turn translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4234ad77-3213-47ce-8b18-411f7b8be784', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 2, 'Deglaze with white wine and let it evaporate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('464a7c2f-2e56-4636-9b0c-9d17e1ede2b3', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 3, 'Gradually ladle in hot stock infused with saffron, stirring frequently and adding more liquid only as the rice absorbs it.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8ac10896-0f58-45d8-aec9-304608b68ee2', 'fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 4, 'Once the rice is creamy and tender with a slight bite, finish with butter and grated Parmesan for a rich, golden risotto.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fdbb77e6-d811-4c36-a627-b1d0bf0568a6', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fdbb77e6-d811-4c36-a627-b1d0bf0568a6', '2ed7d806-1e2b-419c-ae2d-d6ee6bcd0ae0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fdbb77e6-d811-4c36-a627-b1d0bf0568a6', 'b62779d0-f62a-4ef1-94e2-aa27db376f55') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0dbb15d4-aa65-45a9-83d8-7e0c4d2e8b81', 'region:Western Europe', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b3d72363-aa7f-4297-9d34-7ebbadd5043c', 'state:Paris', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dd54abeb-08d3-4d45-a2b8-496df62c2107', 'country:France', 'country') ON CONFLICT ("name") DO NOTHING;

-- Croissant (Paris, France)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0b851850-88d9-4725-b5e8-1a12500e4146', 'croissant-paris-france', 'Croissant', NULL, 'europe'::"Continent", 'France', 'Paris', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('44554ff4-a162-4984-b88a-77b1a059604d', '0b851850-88d9-4725-b5e8-1a12500e4146', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('daf360a4-be45-42fe-83d9-970fbfa6179e', '0b851850-88d9-4725-b5e8-1a12500e4146', 1, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a6e54a79-76f3-49c5-a9dd-265ec73de6c9', '0b851850-88d9-4725-b5e8-1a12500e4146', 2, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('478f9b3b-c7ef-44b7-85fe-3b86ac8accc7', '0b851850-88d9-4725-b5e8-1a12500e4146', 3, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f35be10c-96ec-472b-b623-e92dc3f51e24', '0b851850-88d9-4725-b5e8-1a12500e4146', 4, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b1dc8d68-cad7-4728-a9da-9fb1279b9bfd', '0b851850-88d9-4725-b5e8-1a12500e4146', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f1f1e165-0f8a-4d9b-86bb-c7a4654ee4f6', '0b851850-88d9-4725-b5e8-1a12500e4146', 1, 'Make a yeasted dough and chill it, then encase a slab of cold butter inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88b06cee-f0f8-4649-ab3a-6e7d2dea87b6', '0b851850-88d9-4725-b5e8-1a12500e4146', 2, 'Roll and fold the dough over the butter several times, chilling between folds, to build up many thin alternating layers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('56578029-175b-45c6-a187-3a112ef1ed17', '0b851850-88d9-4725-b5e8-1a12500e4146', 3, 'Roll the laminated dough thin and cut it into triangles, then shape each one into a crescent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5efe2734-69f7-41e3-8258-6d80d62a4e04', '0b851850-88d9-4725-b5e8-1a12500e4146', 4, 'Let the shaped croissants proof until puffy, then bake until deeply golden and flaky on the outside with a light, airy interior.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b851850-88d9-4725-b5e8-1a12500e4146', '0dbb15d4-aa65-45a9-83d8-7e0c4d2e8b81') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b851850-88d9-4725-b5e8-1a12500e4146', 'b3d72363-aa7f-4297-9d34-7ebbadd5043c') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b851850-88d9-4725-b5e8-1a12500e4146', 'dd54abeb-08d3-4d45-a2b8-496df62c2107') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c105b343-b3b6-42ee-8dab-1aaeebf35f03', 'state:Burgundy', 'state') ON CONFLICT ("name") DO NOTHING;

-- Coq au Vin (Burgundy, France)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1780938e-aa86-4cb3-85b7-7c03dacea616', 'coq-au-vin-burgundy-france', 'Coq au Vin', NULL, 'europe'::"Continent", 'France', 'Burgundy', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ae731fdc-041e-4cee-ad04-233bcf60cf65', '1780938e-aa86-4cb3-85b7-7c03dacea616', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f18daf8f-48aa-4496-89c0-7db0113c4144', '1780938e-aa86-4cb3-85b7-7c03dacea616', 1, NULL, 'Red wine') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9abc0c03-4aa6-4dad-9a12-9e7643965538', '1780938e-aa86-4cb3-85b7-7c03dacea616', 2, NULL, 'Bacon lardons') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a45bdf72-6e52-414a-8e5d-1aa7ca4b9a58', '1780938e-aa86-4cb3-85b7-7c03dacea616', 3, NULL, 'Pearl onions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5bc5e4ab-bcb6-4085-bc9a-40aeabe2f2ef', '1780938e-aa86-4cb3-85b7-7c03dacea616', 4, NULL, 'Mushrooms') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5cd1e843-1445-430b-a544-b0e1021ac5ee', '1780938e-aa86-4cb3-85b7-7c03dacea616', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fe0251e0-f982-4355-8f79-4100e3654872', '1780938e-aa86-4cb3-85b7-7c03dacea616', 6, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1813026-fc03-4eef-a2a3-0282f47fa266', '1780938e-aa86-4cb3-85b7-7c03dacea616', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9130651f-0b84-49fa-95c4-a43b8c214cc2', '1780938e-aa86-4cb3-85b7-7c03dacea616', 1, 'Brown pieces of chicken along with bacon lardons in a heavy pot, then set them aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('332a43f8-6b19-46d4-83f5-de9990db0030', '1780938e-aa86-4cb3-85b7-7c03dacea616', 2, 'In the same pot, soften pearl onions, mushrooms, and garlic.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('daf3a256-17b7-49c2-ae1b-594dfa6e89a9', '1780938e-aa86-4cb3-85b7-7c03dacea616', 3, 'Return the chicken and bacon to the pot and pour in enough red wine to nearly cover everything, along with a bay leaf and herbs.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91fe7a9a-ee93-49ea-b143-6ffe55ed2231', '1780938e-aa86-4cb3-85b7-7c03dacea616', 4, 'Cover and simmer slowly until the chicken is tender and the sauce has reduced into a deep, glossy gravy, then finish with a knob of butter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1780938e-aa86-4cb3-85b7-7c03dacea616', '0dbb15d4-aa65-45a9-83d8-7e0c4d2e8b81') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1780938e-aa86-4cb3-85b7-7c03dacea616', 'c105b343-b3b6-42ee-8dab-1aaeebf35f03') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1780938e-aa86-4cb3-85b7-7c03dacea616', 'dd54abeb-08d3-4d45-a2b8-496df62c2107') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5c5455d6-8e83-49c4-9757-198e27cbe766', 'state:Madrid', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8788aff2-df7c-471d-966e-9a179408da71', 'country:Spain', 'country') ON CONFLICT ("name") DO NOTHING;

-- Tortilla Española (Madrid, Spain)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('665e75ad-d367-4f5b-9a6a-6a886b5a5870', 'tortilla-espanola-madrid-spain', 'Tortilla Española', NULL, 'europe'::"Continent", 'Spain', 'Madrid', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('12535e55-3574-4fa0-abe6-07bdac5dd4d4', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 0, NULL, 'Potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2e0e6374-de3f-4021-9205-1e1d08e3c1e8', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 1, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cbc3fc27-e548-47b1-9163-4c4957b649f4', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28092f42-3ee1-4e4c-a999-954fdcb9ffe9', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 3, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6e62d05d-893e-44e8-ba78-99ec3e5b2df1', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 4, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b3aaba78-8449-433a-aeb6-907ed3f48bd1', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 1, 'Slice potatoes and onion thinly and slowly confit them in a generous amount of olive oil until soft but not browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c8cb33d5-1d4b-45d6-8a4f-51a38f8fdb8b', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 2, 'Drain the potatoes and onion well, reserving the oil, and mix them into beaten eggs.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('53558b53-272d-4605-8858-2cd620c74338', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 3, 'Pour the mixture into a hot pan with a little of the reserved oil and cook over medium heat until the edges set.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8abcb4d9-45f2-491b-98c5-58397d092470', '665e75ad-d367-4f5b-9a6a-6a886b5a5870', 4, 'Flip the tortilla using a plate to cook the other side, aiming for a center that stays slightly soft and custardy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('665e75ad-d367-4f5b-9a6a-6a886b5a5870', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('665e75ad-d367-4f5b-9a6a-6a886b5a5870', '5c5455d6-8e83-49c4-9757-198e27cbe766') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('665e75ad-d367-4f5b-9a6a-6a886b5a5870', '8788aff2-df7c-471d-966e-9a179408da71') ON CONFLICT DO NOTHING;

-- Churros (Madrid, Spain)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 'churros-madrid-spain', 'Churros', NULL, 'europe'::"Continent", 'Spain', 'Madrid', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c0f65776-98c5-4d9c-8c74-ad7daa626de6', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('904e50af-f2cd-418d-8256-4e177b465f0c', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 1, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55ce510e-2ae0-4c7b-8fee-80ce4d336aca', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 2, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d9fd5d7-0bfc-4ecf-ab0a-6606ba33a447', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d14db8a-aacb-4de8-96ac-85c81e94ca29', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 4, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55bf1382-ef1f-46c2-a362-d920ea86f128', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 5, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1dcaa472-3ca5-493f-911a-f6d8b2714483', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 1, 'Bring water, a little oil, and salt to a boil, then stir in flour vigorously off the heat to form a smooth, thick dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('11347c66-9865-449b-9673-c56cb89ba05d', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 2, 'Pipe the dough directly into hot oil using a star-tipped nozzle, forming long ridged strips.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5707c917-3627-438d-ac10-884a52910b25', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 3, 'Fry until deep golden brown and crisp on the outside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('094594f1-e76f-4b48-9151-909bd144b9ca', '1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', 4, 'Drain briefly, then toss in cinnamon sugar and serve hot with thick hot chocolate for dipping.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', '5c5455d6-8e83-49c4-9757-198e27cbe766') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1c4b610a-74fb-4cf2-a7f0-0d7ba681317c', '8788aff2-df7c-471d-966e-9a179408da71') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f8882df8-e960-4a75-9458-9588a4efb852', 'state:Athens', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('095120eb-f875-4674-b970-862b4744245c', 'country:Greece', 'country') ON CONFLICT ("name") DO NOTHING;

-- Souvlaki (Athens, Greece)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2ef8c526-1b91-4713-91b6-74e3cd246af2', 'souvlaki-athens-greece', 'Souvlaki', NULL, 'europe'::"Continent", 'Greece', 'Athens', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8c2e1a2a-f67e-4163-8532-575a4cc43265', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 0, NULL, 'Pork or chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5a1cd780-9060-4291-b30b-9b4122a9fe50', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 1, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('efe37695-2b0c-4e7b-9a02-abae320dd40b', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 2, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d111e3dd-71a1-4a9f-8e21-8505ffafd62e', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 3, NULL, 'Oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73ad35bf-a355-46dc-ab5e-a303f7d241b7', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('81537c3e-d9b1-4129-9c13-9e3845374799', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 5, NULL, 'Pita bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('07fa5dc1-ff06-402b-b4fb-3b1319bce842', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 6, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b15fc0d4-6247-4294-8015-8303f48089de', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 7, NULL, 'Tzatziki') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d30c74af-695a-4d2d-89fe-91f72b8c56a3', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 1, 'Cut meat into cubes and marinate in olive oil, lemon juice, garlic, and oregano.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b1d0554-a8a8-45e5-a576-b33b29f670d4', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 2, 'Thread the marinated pieces onto skewers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c8b3ff2a-f329-4d19-ad45-76a47d794bec', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 3, 'Grill over hot coals, turning until charred outside and cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('806ec63d-b43d-4c6a-b72c-7e1172854c26', '2ef8c526-1b91-4713-91b6-74e3cd246af2', 4, 'Serve the skewers on their own or wrapped in warm pita with tomato, onion, and a cooling tzatziki sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ef8c526-1b91-4713-91b6-74e3cd246af2', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ef8c526-1b91-4713-91b6-74e3cd246af2', 'f8882df8-e960-4a75-9458-9588a4efb852') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ef8c526-1b91-4713-91b6-74e3cd246af2', '095120eb-f875-4674-b970-862b4744245c') ON CONFLICT DO NOTHING;

-- Moussaka (Athens, Greece)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a34318df-fccf-4eba-9bac-9cbfc4b1223a', 'moussaka-athens-greece', 'Moussaka', NULL, 'europe'::"Continent", 'Greece', 'Athens', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('df12763f-4e47-45d0-9393-042ac04ddb42', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 0, NULL, 'Eggplant') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8fde5d3d-0c18-4836-9048-241cb63253a0', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 1, NULL, 'Ground lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('912709d8-1b6e-4005-b128-533bf21e6e02', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 2, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0cd426ab-1952-4bf3-a440-cbf67066ef13', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0b34ea59-c3a8-4912-9f76-0b7f15921909', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 4, NULL, 'Bechamel sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('deb82d3a-2957-4656-95cd-c0fa8bd22317', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 5, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6e73c713-4579-4420-a424-4e699b9c0393', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 6, NULL, 'Parmesan or kefalotyri') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('662a7d08-d318-4083-8b80-5922ac9595e7', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 1, 'Slice eggplant and either fry or roast the slices until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a8f89171-9752-4b31-86ee-8634ea6b331d', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 2, 'Cook ground lamb with onion, tomatoes, and a pinch of cinnamon into a thick, well-seasoned sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c703a707-deaf-465b-abbc-5d377997c276', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 3, 'Layer the eggplant and meat sauce in a baking dish, repeating as needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('969ef785-b5f3-479d-87b4-da9afabdea17', 'a34318df-fccf-4eba-9bac-9cbfc4b1223a', 4, 'Top generously with a rich bechamel sauce and grated cheese, then bake until the top turns golden and set.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a34318df-fccf-4eba-9bac-9cbfc4b1223a', '78df6c7b-681c-4fc9-ab54-f79a01579e9f') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a34318df-fccf-4eba-9bac-9cbfc4b1223a', 'f8882df8-e960-4a75-9458-9588a4efb852') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('a34318df-fccf-4eba-9bac-9cbfc4b1223a', '095120eb-f875-4674-b970-862b4744245c') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c6cbb2f8-526a-492e-a4bf-eeec38864dfb', 'state:London', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8885ba04-d34a-4686-a4d9-dd46f37ff2b5', 'country:United Kingdom', 'country') ON CONFLICT ("name") DO NOTHING;

-- Fish and Chips (London, United Kingdom)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 'fish-and-chips-london-united-kingdom', 'Fish and Chips', NULL, 'europe'::"Continent", 'United Kingdom', 'London', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5cda17e7-7a49-477b-941e-d24e1950a3d9', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 0, NULL, 'White fish fillets') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('794f242d-ae41-4f02-90cd-3a92ba76d9fa', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 1, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f234926-5449-492a-8978-1728ed156e48', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 2, NULL, 'Beer') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('54fd358d-b2f9-457f-b033-c08522301f15', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 3, NULL, 'Potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f191cb6c-cc83-46eb-bc7b-0c047e650df0', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 4, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d81c5a2-d2ec-49c2-972f-0c37fe9ed22c', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('085b70d8-b2b0-4683-88a2-227681f2b180', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 6, NULL, 'Malt vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('833ef4ea-9667-413c-937e-608032264cb5', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 1, 'Cut potatoes into thick chips and fry them once at a lower temperature to cook through, then set aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('320c3539-b163-4e5e-909b-681f51c9a4ad', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 2, 'Make a light batter by whisking flour with cold beer until smooth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('155c832c-299a-4474-ac8d-5bde4bda16cd', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 3, 'Dip fish fillets in the batter and fry in hot oil until the coating turns crisp and golden and the fish is flaky inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4f01038d-723d-4208-a059-f69af4c9cdc3', '2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 4, 'Fry the chips a second time at a higher temperature until crunchy, then serve everything together with salt and malt vinegar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', '0dbb15d4-aa65-45a9-83d8-7e0c4d2e8b81') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', 'c6cbb2f8-526a-492e-a4bf-eeec38864dfb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ecaf2db-d8ec-459d-94aa-ebe5b2af333e', '8885ba04-d34a-4686-a4d9-dd46f37ff2b5') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c2021d4f-4445-477f-b77f-2a87d75b6794', 'state:England', 'state') ON CONFLICT ("name") DO NOTHING;

-- Shepherd's Pie (England, United Kingdom)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 'shepherds-pie-england-united-kingdom', 'Shepherd''s Pie', NULL, 'europe'::"Continent", 'United Kingdom', 'England', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9b4bc3cc-c485-4638-8321-0c72803c1228', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 0, NULL, 'Ground lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a6d247ae-d38a-40a3-8fbc-54834d8f7db0', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('af9e39d4-8c8f-4bb6-868d-8619736aad0d', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 2, NULL, 'Carrots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc7c382d-6a8a-4be7-a393-1a64bf800394', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 3, NULL, 'Peas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03307bca-a2e2-4bda-9c40-de562694defc', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 4, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a8b96e95-bd10-4015-a2b4-f12dacee956f', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 5, NULL, 'Mashed potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b1114be6-c4f2-415a-b5d6-d0cf1a892191', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 6, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('903de39d-c201-48bc-8078-1b28b6343a15', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 1, 'Brown ground lamb with chopped onion and carrots, then stir in tomato paste and a splash of Worcestershire sauce along with some stock.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3ac72cdc-1545-4416-a87f-520c751c8ecf', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 2, 'Simmer the mixture until it thickens into a rich gravy, then stir in peas at the end.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5106f570-18b6-445b-8243-cd1a4864790f', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 3, 'Spread the meat filling into a baking dish and cover completely with a thick layer of smooth mashed potatoes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d3e15173-21d5-46c6-acd4-35562b97f951', '0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 4, 'Bake until the potato topping turns golden and slightly crisp at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', '0dbb15d4-aa65-45a9-83d8-7e0c4d2e8b81') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', 'c2021d4f-4445-477f-b77f-2a87d75b6794') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('0b9c2072-5eda-4e07-8eb8-eb3c6a23dd6f', '8885ba04-d34a-4686-a4d9-dd46f37ff2b5') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f3e4c890-898b-4c94-bcbf-1d9c179e8638', 'region:North Africa', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a6595b6a-e85e-4dfb-8a2f-2caa1f2ef397', 'state:Marrakech', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5379ba4e-65f9-4019-aada-c9f2eb5ef301', 'country:Morocco', 'country') ON CONFLICT ("name") DO NOTHING;

-- Chicken Tagine (Marrakech, Morocco)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b679e9bd-1dc3-4948-b8b0-deb124e5926a', 'chicken-tagine-marrakech-morocco', 'Chicken Tagine', NULL, 'africa'::"Continent", 'Morocco', 'Marrakech', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('da58bc45-93eb-4307-bf89-7c487d8de71f', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fa58c803-8b1d-4b67-bfd7-f0be8fddc5f7', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 1, NULL, 'Preserved lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d2f20d1-d8c8-4929-b393-f610a9088bc6', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 2, NULL, 'Olives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('507f846a-2386-4a3d-84b4-22a53d6ba09a', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c40faaac-4199-48af-8850-9b61c716f370', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 4, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bafc05a9-8f0e-4be5-a98e-23a308735358', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 5, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cbdbfeaf-4d8a-4730-baba-4a086d2f61da', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 6, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('492bb920-7573-4563-b84f-ab906c69f26a', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 7, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0fe3cab6-13d6-487f-ba11-b4406e74ee1e', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 1, 'Brown chicken pieces with onion, ginger, turmeric, and a few threads of saffron in a tagine or heavy pot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7767abfa-aefd-44ff-a3fe-6c38ff17890e', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 2, 'Add a little water or stock, cover, and let the chicken simmer slowly until very tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('466fa85e-f0b4-4a31-a1a8-38a9041111b6', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 3, 'Stir in preserved lemon and olives toward the end of cooking so their flavor stays bright.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('44810c01-beb3-4ba8-9fda-36c12931a40b', 'b679e9bd-1dc3-4948-b8b0-deb124e5926a', 4, 'Finish with fresh cilantro and serve with warm bread or couscous to soak up the sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b679e9bd-1dc3-4948-b8b0-deb124e5926a', 'f3e4c890-898b-4c94-bcbf-1d9c179e8638') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b679e9bd-1dc3-4948-b8b0-deb124e5926a', 'a6595b6a-e85e-4dfb-8a2f-2caa1f2ef397') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('b679e9bd-1dc3-4948-b8b0-deb124e5926a', '5379ba4e-65f9-4019-aada-c9f2eb5ef301') ON CONFLICT DO NOTHING;

-- Harira (Marrakech, Morocco)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 'harira-marrakech-morocco', 'Harira', NULL, 'africa'::"Continent", 'Morocco', 'Marrakech', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('746b8dfd-c489-4247-8bf4-9c70923da0f3', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 0, NULL, 'Lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c872cf35-babb-4837-b07d-c9647c458cd3', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 1, NULL, 'Lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('95a0040a-e6c8-44a6-b681-0201b79c3f16', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 2, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5cc77581-a5d5-4ed3-81cd-b6b418be29d0', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 3, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('56f71475-fd17-40af-b4f1-7a00ba9d2df5', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 4, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0646b02-cde9-4058-b246-b2178fccaf05', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6bcbcc9f-7f4f-47f3-8dab-76bfd714270f', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 6, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4860a377-cde5-4a36-860c-4845bd269f38', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 7, NULL, 'Fresh herbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9eb3d8d9-ac8e-4bbf-be08-db858abb4e09', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 1, 'Brown small pieces of lamb with onion, celery, and spices in a large pot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c4da70c9-b220-4d9a-aa57-348d0514216f', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 2, 'Add tomatoes, lentils, and soaked chickpeas along with plenty of water, then simmer until the lentils and meat are tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2e8427bc-7c23-4178-b172-d52dcf2afbd9', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 3, 'Stir in a flour-and-water slurry to thicken the soup slightly, along with fresh cilantro and parsley.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fad473ed-9974-4593-a71c-d081da688257', '2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 4, 'Simmer a little longer until the soup reaches a hearty, comforting consistency, then serve hot, traditionally to break the daily fast during Ramadan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 'f3e4c890-898b-4c94-bcbf-1d9c179e8638') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', 'a6595b6a-e85e-4dfb-8a2f-2caa1f2ef397') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2ceb2a8b-26a7-4d1e-9be0-470d61a18cf3', '5379ba4e-65f9-4019-aada-c9f2eb5ef301') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f04047fe-a063-4a62-9c2e-644f5db9d5b5', 'region:East Africa', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('75e9fc1a-6f66-40b4-9c59-b7cf759655ca', 'state:Addis Ababa', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('673c5cd5-8e9a-47e6-a722-8387f6d906c0', 'country:Ethiopia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Doro Wat (Addis Ababa, Ethiopia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 'doro-wat-addis-ababa-ethiopia', 'Doro Wat', NULL, 'africa'::"Continent", 'Ethiopia', 'Addis Ababa', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9961d82a-7709-4a5f-8f29-3e9854e557d9', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0dcd025f-c71a-462e-af60-d81c939f3a0e', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 1, NULL, 'Berbere spice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9f27baf1-8cbc-4b55-ab20-153a65c59687', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68a03588-3d06-4705-9277-e99a6a38e388', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('186ad0e5-c81e-42c4-8a8c-738869a3c51b', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 4, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('47273e9f-329d-42ae-abf5-d9103e09000c', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 5, NULL, 'Niter kibbeh') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b14a0a2c-b49e-472c-b506-8dea066b117b', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 6, NULL, 'Hard-boiled eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c5472ade-b9c2-4973-b4d2-72292dbf559c', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 1, 'Cook a large quantity of finely chopped onion slowly in a dry pot until deeply softened, then add niter kibbeh, garlic, and ginger.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5cdecf40-3c3e-4ab0-a43a-7cc8f18f11ba', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 2, 'Stir in berbere spice paste and cook it until the oil separates and the mixture turns deep red and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2474e9fa-a6b9-4f24-ba81-4491220b66d0', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 3, 'Add chicken pieces and simmer slowly in the thick sauce until fully tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eb25cbf7-59ca-4cac-a4a6-ee4f18c845b1', '26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 4, 'Add whole hard-boiled eggs toward the end so they absorb the sauce, then serve with injera flatbread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', 'f04047fe-a063-4a62-9c2e-644f5db9d5b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', '75e9fc1a-6f66-40b4-9c59-b7cf759655ca') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('26d3c1f9-3bb1-4190-8793-4fcea1e4edd5', '673c5cd5-8e9a-47e6-a722-8387f6d906c0') ON CONFLICT DO NOTHING;

-- Misir Wot (Addis Ababa, Ethiopia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 'misir-wot-addis-ababa-ethiopia', 'Misir Wot', NULL, 'africa'::"Continent", 'Ethiopia', 'Addis Ababa', 'vegan'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('698815f6-15ea-4a45-9206-876495af8b00', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 0, NULL, 'Red lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d41d78d3-9817-486d-a2be-a035312b00e2', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 1, NULL, 'Berbere spice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0faaeb1c-fb00-4d7f-9a2e-a4740d528551', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e948bc6f-f9c8-4b6f-bc18-7f0e9959ea86', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc8f3ccc-2b05-4d1d-9c20-3642304b88e5', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 4, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('18cd484c-535d-4e1d-ad1c-412367bd466b', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 5, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('210e81bb-1930-4dfc-b593-3693970cbebd', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 6, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e7106fc-8661-4592-9030-9b41ced6c817', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 1, 'Cook finely chopped onion in vegetable oil until soft and golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ac500a0b-a071-4863-a6ac-a2ec52215ae8', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 2, 'Stir in garlic, ginger, and a generous amount of berbere spice paste, cooking until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2984dbe5-e7f0-48e1-bf70-b9326d30a4a1', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 3, 'Add tomato paste and red lentils along with water, then simmer until the lentils break down into a thick, richly spiced stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('da7394d4-ae46-49f3-9a80-757d9b4ee588', '1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 4, 'Adjust the seasoning and serve scooped up with pieces of injera flatbread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1aa07003-94df-40bd-b4f4-9b6ad59b77f9', 'f04047fe-a063-4a62-9c2e-644f5db9d5b5') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1aa07003-94df-40bd-b4f4-9b6ad59b77f9', '75e9fc1a-6f66-40b4-9c59-b7cf759655ca') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('1aa07003-94df-40bd-b4f4-9b6ad59b77f9', '673c5cd5-8e9a-47e6-a722-8387f6d906c0') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7f29d851-5d85-4dac-856c-f369174ec9be', 'region:West Africa', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('42590cbf-7171-4c51-a6f7-009d9c350cd9', 'state:Lagos', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('17daaaac-ca64-4996-8275-e5f7684026c1', 'country:Nigeria', 'country') ON CONFLICT ("name") DO NOTHING;

-- Jollof Rice (Lagos, Nigeria)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f632024a-3edb-43eb-851b-144aa6c6ac62', 'jollof-rice-lagos-nigeria', 'Jollof Rice', NULL, 'africa'::"Continent", 'Nigeria', 'Lagos', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b58dad7-689a-4c6b-b65e-e6f488d0285c', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c7e4499-13b9-443e-b3cf-dca49e1f05f7', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 1, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0a942c38-0fd9-4fed-af59-b7c7f7f7689c', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 2, NULL, 'Red bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('70d4f99e-7cde-4638-b973-e68299522530', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('47e5c09c-fa2e-45b1-be5c-0a49ed8d1f2e', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 4, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('488d056e-9e23-440f-9944-236a7850a3cb', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 5, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a4741088-e537-40a7-a9e6-cb00114cbf14', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 6, NULL, 'Bay leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7eea8302-9d0d-434b-ac56-2287ffcaae18', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 7, NULL, 'Stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1ac1c60f-5f96-4294-be47-9aef70173396', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 1, 'Blend tomatoes, red bell pepper, onion, and scotch bonnet pepper into a smooth base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('78bee914-924d-4322-a04e-8672d70ce9ed', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 2, 'Fry the blended mixture in oil for a long while until it darkens and the raw taste cooks out.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('27eb31b0-7f2c-46e2-bbdd-9f2dcfcd3802', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 3, 'Add stock, bay leaves, and seasoning, then stir in rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8f01836-7008-4ab5-876e-87f18213b93e', 'f632024a-3edb-43eb-851b-144aa6c6ac62', 4, 'Cover and cook over low heat, stirring occasionally, until the rice is tender and has absorbed the sauce, developing a slightly smoky flavor at the bottom of the pot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f632024a-3edb-43eb-851b-144aa6c6ac62', '7f29d851-5d85-4dac-856c-f369174ec9be') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f632024a-3edb-43eb-851b-144aa6c6ac62', '42590cbf-7171-4c51-a6f7-009d9c350cd9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f632024a-3edb-43eb-851b-144aa6c6ac62', '17daaaac-ca64-4996-8275-e5f7684026c1') ON CONFLICT DO NOTHING;

-- Suya (Lagos, Nigeria)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('00e328d2-37ce-4119-b580-f3ec50993b83', 'suya-lagos-nigeria', 'Suya', NULL, 'africa'::"Continent", 'Nigeria', 'Lagos', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3e29e5b6-9aec-498c-a4d9-a556859d5f41', '00e328d2-37ce-4119-b580-f3ec50993b83', 0, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80e82e92-c48a-4995-81fe-cfdec5466f2f', '00e328d2-37ce-4119-b580-f3ec50993b83', 1, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5de38829-9206-4727-8860-66ca54422171', '00e328d2-37ce-4119-b580-f3ec50993b83', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0baa852-f97a-45b1-ae2c-20ca02589e03', '00e328d2-37ce-4119-b580-f3ec50993b83', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('89594e11-112c-47de-ac16-b86c7f44da3a', '00e328d2-37ce-4119-b580-f3ec50993b83', 4, NULL, 'Cayenne pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d64355b-8717-4a08-937e-714ac2a08dfa', '00e328d2-37ce-4119-b580-f3ec50993b83', 5, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7c3186bb-8460-4854-a962-2e7f7af539a4', '00e328d2-37ce-4119-b580-f3ec50993b83', 6, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a6b52d0b-4b48-4b67-8ca5-95fa66e1d758', '00e328d2-37ce-4119-b580-f3ec50993b83', 7, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9c398d3c-4827-4c26-b5f4-4004580ebbc2', '00e328d2-37ce-4119-b580-f3ec50993b83', 1, 'Slice beef thinly and thread it onto skewers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b1b9e96d-083f-401e-a1ee-02d2b3927834', '00e328d2-37ce-4119-b580-f3ec50993b83', 2, 'Grind roasted peanuts with ground ginger, garlic, cayenne, and other spices into a dry, aromatic suya spice mix called yaji.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('77ffd72e-c208-4c79-afba-a3a5e25485f2', '00e328d2-37ce-4119-b580-f3ec50993b83', 3, 'Coat the skewered meat generously with oil and the spice mix.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('96a7cc7f-d075-4595-833d-64fb402ff5a3', '00e328d2-37ce-4119-b580-f3ec50993b83', 4, 'Grill over open flame, turning frequently, until the meat is charred outside and cooked through, then serve with sliced onion and tomato.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00e328d2-37ce-4119-b580-f3ec50993b83', '7f29d851-5d85-4dac-856c-f369174ec9be') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00e328d2-37ce-4119-b580-f3ec50993b83', '42590cbf-7171-4c51-a6f7-009d9c350cd9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('00e328d2-37ce-4119-b580-f3ec50993b83', '17daaaac-ca64-4996-8275-e5f7684026c1') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('649780b3-bc70-4365-8511-2bb36f37f647', 'state:Cairo', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('abff50c2-494f-4887-a6bc-8f56dd780045', 'country:Egypt', 'country') ON CONFLICT ("name") DO NOTHING;

-- Koshari (Cairo, Egypt)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('88c02857-984f-4f2d-ba11-2897aadf04e5', 'koshari-cairo-egypt', 'Koshari', NULL, 'africa'::"Continent", 'Egypt', 'Cairo', 'vegan'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('88cd0bb5-0485-4148-aefe-c3b60cb7ac1e', '88c02857-984f-4f2d-ba11-2897aadf04e5', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1b6ef664-f404-4a3c-bdcc-f53c30d068c4', '88c02857-984f-4f2d-ba11-2897aadf04e5', 1, NULL, 'Lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2811f986-c612-4f01-a8f1-3c8800680828', '88c02857-984f-4f2d-ba11-2897aadf04e5', 2, NULL, 'Macaroni') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0e204835-f509-425d-9d5d-188e2bf8c92f', '88c02857-984f-4f2d-ba11-2897aadf04e5', 3, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96238cce-4501-4287-8248-ed6e729e0e4b', '88c02857-984f-4f2d-ba11-2897aadf04e5', 4, NULL, 'Tomato sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('45cd1791-f58c-43ac-90b4-3a7a7bbac8c2', '88c02857-984f-4f2d-ba11-2897aadf04e5', 5, NULL, 'Fried onions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fa3e410e-6fed-43af-88a5-ad323baf008f', '88c02857-984f-4f2d-ba11-2897aadf04e5', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('918deb48-0e48-411f-89c0-507bec253cf3', '88c02857-984f-4f2d-ba11-2897aadf04e5', 7, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8eb71f25-e377-4e11-980d-e5a5eae35b98', '88c02857-984f-4f2d-ba11-2897aadf04e5', 1, 'Cook rice, brown lentils, macaroni, and chickpeas separately until each is tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f49edb75-ca54-4411-a536-3a508ec94092', '88c02857-984f-4f2d-ba11-2897aadf04e5', 2, 'Make a tangy tomato sauce with garlic and a touch of vinegar and chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dc4c4bb0-a8df-4de4-b4aa-0f5080683166', '88c02857-984f-4f2d-ba11-2897aadf04e5', 3, 'Layer the rice, lentils, macaroni, and chickpeas together in a bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f6effc8b-abec-4bcc-a584-37396f6baa41', '88c02857-984f-4f2d-ba11-2897aadf04e5', 4, 'Top generously with the spiced tomato sauce and a large handful of deeply fried crispy onions before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('88c02857-984f-4f2d-ba11-2897aadf04e5', 'f3e4c890-898b-4c94-bcbf-1d9c179e8638') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('88c02857-984f-4f2d-ba11-2897aadf04e5', '649780b3-bc70-4365-8511-2bb36f37f647') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('88c02857-984f-4f2d-ba11-2897aadf04e5', 'abff50c2-494f-4887-a6bc-8f56dd780045') ON CONFLICT DO NOTHING;

-- Ful Medames (Cairo, Egypt)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e8c02650-2b79-49d3-a299-883ad3aa729b', 'ful-medames-cairo-egypt', 'Ful Medames', NULL, 'africa'::"Continent", 'Egypt', 'Cairo', 'vegan'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7f175a2-e32d-49d2-97d4-1b492f6b4faa', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 0, NULL, 'Fava beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('770e9cf3-9cab-4556-bf87-4adbd4fd4ac4', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca90767e-3394-4bb3-ad50-697b8a8c367b', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 2, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('72f22238-6769-4b8a-9254-dab45aedf352', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 3, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b5a341b-176c-432c-acc8-3beed49d445b', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 4, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba24acd7-ac06-47f3-9108-d9c63d3fdb62', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 5, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a6184b79-2139-4bb7-9b22-64c934cb5901', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 1, 'Simmer dried fava beans slowly until they turn very soft, or use pre-cooked beans for a quicker version.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1bfbb6ef-f3bd-4408-a966-36befca91884', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 2, 'Mash the beans partially, leaving some texture, and stir in crushed garlic, lemon juice, and cumin.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b8cf699-8997-44a4-b680-d938d9cbe0e9', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 3, 'Drizzle generously with olive oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9bb88d9-325f-42f8-9a62-b2d95fdc79a5', 'e8c02650-2b79-49d3-a299-883ad3aa729b', 4, 'Serve warm with parsley on top alongside flatbread, chopped tomato, and onion.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e8c02650-2b79-49d3-a299-883ad3aa729b', 'f3e4c890-898b-4c94-bcbf-1d9c179e8638') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e8c02650-2b79-49d3-a299-883ad3aa729b', '649780b3-bc70-4365-8511-2bb36f37f647') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('e8c02650-2b79-49d3-a299-883ad3aa729b', 'abff50c2-494f-4887-a6bc-8f56dd780045') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('32ee7bb3-c084-4a7c-a3b5-8ed2a53490e0', 'region:North America', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c1c7cc86-aebd-406d-8882-2cc96bd75c36', 'state:United States', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('abac55a6-3ae7-442d-9a18-b80340d46ad5', 'country:United States', 'country') ON CONFLICT ("name") DO NOTHING;

-- Cheeseburger (United States, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6eb1981f-737f-42b4-9909-3ae90397c412', 'cheeseburger-united-states-united-states', 'Cheeseburger', NULL, 'north_america'::"Continent", 'United States', 'United States', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f588c4e-f5ed-4e9a-baed-7ad9c32e024a', '6eb1981f-737f-42b4-9909-3ae90397c412', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0816db28-f75d-45fc-a384-259c62ed8ca9', '6eb1981f-737f-42b4-9909-3ae90397c412', 1, NULL, 'Cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3349f719-22cc-4948-a146-20081789d8d4', '6eb1981f-737f-42b4-9909-3ae90397c412', 2, NULL, 'Burger bun') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9dea591c-583e-42a4-b75e-d66579c4cf6d', '6eb1981f-737f-42b4-9909-3ae90397c412', 3, NULL, 'Lettuce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dccd6747-d312-4222-8008-63f5ecb38301', '6eb1981f-737f-42b4-9909-3ae90397c412', 4, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2078b813-4ffa-435b-adb4-c4d2aae451b0', '6eb1981f-737f-42b4-9909-3ae90397c412', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('57ed99ba-1fd4-4c20-a2d7-9d33065826a9', '6eb1981f-737f-42b4-9909-3ae90397c412', 6, NULL, 'Pickles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61b32234-801e-4db2-9836-29b20adb4358', '6eb1981f-737f-42b4-9909-3ae90397c412', 7, NULL, 'Mustard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f1eadeb-6768-442b-bd9b-0efae7ef1c1e', '6eb1981f-737f-42b4-9909-3ae90397c412', 1, 'Shape ground beef into patties and season simply with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ad149b3c-abc3-40aa-8c6c-1aa0e2c4cecd', '6eb1981f-737f-42b4-9909-3ae90397c412', 2, 'Grill or pan-sear the patties over high heat, flipping once, and melt a slice of cheese on top near the end of cooking.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e9e427e2-d3ce-406f-9acb-10650bc98f88', '6eb1981f-737f-42b4-9909-3ae90397c412', 3, 'Toast the burger buns lightly on the cut sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('10a0ccc1-aac3-4811-91b1-2353d1d47fb8', '6eb1981f-737f-42b4-9909-3ae90397c412', 4, 'Assemble the burger with lettuce, tomato, onion, and pickles, along with ketchup, mustard, or mayonnaise to taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6eb1981f-737f-42b4-9909-3ae90397c412', '32ee7bb3-c084-4a7c-a3b5-8ed2a53490e0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6eb1981f-737f-42b4-9909-3ae90397c412', 'c1c7cc86-aebd-406d-8882-2cc96bd75c36') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('6eb1981f-737f-42b4-9909-3ae90397c412', 'abac55a6-3ae7-442d-9a18-b80340d46ad5') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0a9f54f3-0f7a-4f78-8e97-a546fce8835d', 'state:North Carolina', 'state') ON CONFLICT ("name") DO NOTHING;

-- BBQ Pulled Pork (North Carolina, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2760a840-4af9-4eec-8639-f75d214230c8', 'bbq-pulled-pork-north-carolina-united-states', 'BBQ Pulled Pork', NULL, 'north_america'::"Continent", 'United States', 'North Carolina', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d29cff9-0464-4bf5-b442-756faf8fd789', '2760a840-4af9-4eec-8639-f75d214230c8', 0, NULL, 'Pork shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9586b6e8-0e6a-48ff-87f7-b20f651d88c3', '2760a840-4af9-4eec-8639-f75d214230c8', 1, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d2457a29-417f-4387-a2b2-f8b6c6a32c35', '2760a840-4af9-4eec-8639-f75d214230c8', 2, NULL, 'Brown sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2dd6a547-906d-4f79-a670-7574582e0d56', '2760a840-4af9-4eec-8639-f75d214230c8', 3, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d04ce8a-a042-48aa-9688-1a0e89f7794a', '2760a840-4af9-4eec-8639-f75d214230c8', 4, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1fb83267-d813-415f-b6bd-6e660cc93d5a', '2760a840-4af9-4eec-8639-f75d214230c8', 5, NULL, 'Cayenne pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d125ddb-34a2-4d91-a4d2-46d01b5e1ced', '2760a840-4af9-4eec-8639-f75d214230c8', 6, NULL, 'Burger bun') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dcbc3967-3b2d-4a95-a210-9a8e3d11499d', '2760a840-4af9-4eec-8639-f75d214230c8', 1, 'Rub a whole pork shoulder with a mix of paprika, brown sugar, and spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0495c53d-b504-4da8-9419-57b97f86905d', '2760a840-4af9-4eec-8639-f75d214230c8', 2, 'Smoke the pork low and slow over wood for many hours until it becomes extremely tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cd5c2ca5-741f-480e-b62b-4e1cc1ad1b8a', '2760a840-4af9-4eec-8639-f75d214230c8', 3, 'Shred the cooked meat by hand or with forks, discarding excess fat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed0f85a5-f807-4be7-948b-75ba04eefb11', '2760a840-4af9-4eec-8639-f75d214230c8', 4, 'Toss the shredded pork with a tangy vinegar-based sauce and serve piled on a soft bun with coleslaw.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2760a840-4af9-4eec-8639-f75d214230c8', '32ee7bb3-c084-4a7c-a3b5-8ed2a53490e0') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2760a840-4af9-4eec-8639-f75d214230c8', '0a9f54f3-0f7a-4f78-8e97-a546fce8835d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('2760a840-4af9-4eec-8639-f75d214230c8', 'abac55a6-3ae7-442d-9a18-b80340d46ad5') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('909327b3-fdcb-4489-9c9d-1e3a0c0233c9', 'region:Latin America', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7deb1a81-45aa-46f7-b280-ff02212a2fb3', 'state:Mexico City', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('558d3bfe-8a2a-4567-89f0-c437d4f7bc9d', 'country:Mexico', 'country') ON CONFLICT ("name") DO NOTHING;

-- Tacos al Pastor (Mexico City, Mexico)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f98c3837-b812-497c-ac84-924a81923c34', 'tacos-al-pastor-mexico-city-mexico', 'Tacos al Pastor', NULL, 'north_america'::"Continent", 'Mexico', 'Mexico City', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1fe8b21-6f91-4aaf-a0d1-38ef3d7da01f', 'f98c3837-b812-497c-ac84-924a81923c34', 0, NULL, 'Pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('531c0c56-e0c2-46eb-8537-217610663f55', 'f98c3837-b812-497c-ac84-924a81923c34', 1, NULL, 'Dried guajillo chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80af5e99-2460-4700-943e-729136d473a1', 'f98c3837-b812-497c-ac84-924a81923c34', 2, NULL, 'Achiote paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3bb5ab51-06a0-4cfc-8a96-95f252806f0c', 'f98c3837-b812-497c-ac84-924a81923c34', 3, NULL, 'Pineapple') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ee411fd-897f-416a-a86d-c908e0bafabc', 'f98c3837-b812-497c-ac84-924a81923c34', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba333632-69fc-440c-9ec1-591300f5a75c', 'f98c3837-b812-497c-ac84-924a81923c34', 5, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('540f58c0-7bf6-4f72-ba33-9b9de09a8d68', 'f98c3837-b812-497c-ac84-924a81923c34', 6, NULL, 'Corn tortillas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('caa47ac2-e0c8-4e91-bc1e-3ab008a9267c', 'f98c3837-b812-497c-ac84-924a81923c34', 1, 'Marinate thin slices of pork in a blend of dried guajillo chilies, achiote paste, vinegar, and spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6abe5dde-642f-4d0f-8ff9-70a480e4a86e', 'f98c3837-b812-497c-ac84-924a81923c34', 2, 'Stack the marinated pork onto a vertical spit along with a piece of pineapple on top, then roast it slowly, rotating as the outer layer crisps.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('84a53d5e-0298-44c6-a2e2-145116336c38', 'f98c3837-b812-497c-ac84-924a81923c34', 3, 'Shave off thin slices of the charred, juicy pork directly onto small warm corn tortillas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e203cbd7-c77b-4648-aff3-3e5d0284be5d', 'f98c3837-b812-497c-ac84-924a81923c34', 4, 'Top with a small piece of grilled pineapple, chopped onion, and cilantro, then serve with lime and salsa.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f98c3837-b812-497c-ac84-924a81923c34', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f98c3837-b812-497c-ac84-924a81923c34', '7deb1a81-45aa-46f7-b280-ff02212a2fb3') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('f98c3837-b812-497c-ac84-924a81923c34', '558d3bfe-8a2a-4567-89f0-c437d4f7bc9d') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ef83a8de-773f-48ba-86a0-f5a44315a224', 'state:Puebla', 'state') ON CONFLICT ("name") DO NOTHING;

-- Mole Poblano (Puebla, Mexico)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('fac69103-e19a-4846-ba7b-8b968b27956f', 'mole-poblano-puebla-mexico', 'Mole Poblano', NULL, 'north_america'::"Continent", 'Mexico', 'Puebla', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2fcdcf9f-006f-49f9-9395-c172dd834880', 'fac69103-e19a-4846-ba7b-8b968b27956f', 0, NULL, 'Dried chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3919c46-e525-405b-9586-bc4d11ba21ff', 'fac69103-e19a-4846-ba7b-8b968b27956f', 1, NULL, 'Chocolate') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d9cc507-b449-48ca-8884-cb0102447dd0', 'fac69103-e19a-4846-ba7b-8b968b27956f', 2, NULL, 'Turkey or chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dfa738b3-865a-49b1-aa79-8aff778222ec', 'fac69103-e19a-4846-ba7b-8b968b27956f', 3, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('86eb0dab-d580-4eda-ac3e-a7172e1b4471', 'fac69103-e19a-4846-ba7b-8b968b27956f', 4, NULL, 'Sesame seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('411ed6db-8688-4fd7-98b0-70fa8afe9bbc', 'fac69103-e19a-4846-ba7b-8b968b27956f', 5, NULL, 'Almonds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('10dedf31-e422-449f-86f3-ee53ed297b5b', 'fac69103-e19a-4846-ba7b-8b968b27956f', 6, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bcde7a7e-ad2d-4fc4-8d28-f5e6e1bc4beb', 'fac69103-e19a-4846-ba7b-8b968b27956f', 7, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('92cddc16-4143-4f39-acc6-94af2f912124', 'fac69103-e19a-4846-ba7b-8b968b27956f', 1, 'Toast an assortment of dried chilies and blend them with tomatoes, onion, garlic, and a mix of nuts and seeds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cca46551-5f35-4040-b556-c28dc56171af', 'fac69103-e19a-4846-ba7b-8b968b27956f', 2, 'Cook the blended paste slowly in a pot, stirring often to keep it from sticking, until it deepens in color and flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ebbf255a-f0bb-426b-acb9-54cf73245149', 'fac69103-e19a-4846-ba7b-8b968b27956f', 3, 'Stir in a small amount of dark chocolate and warming spices, letting the sauce simmer until rich and glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e64f781b-fc34-4c7d-813d-200e03ae377c', 'fac69103-e19a-4846-ba7b-8b968b27956f', 4, 'Simmer pieces of turkey or chicken in the finished mole sauce until well coated and heated through, then serve over the meat with rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fac69103-e19a-4846-ba7b-8b968b27956f', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fac69103-e19a-4846-ba7b-8b968b27956f', 'ef83a8de-773f-48ba-86a0-f5a44315a224') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('fac69103-e19a-4846-ba7b-8b968b27956f', '558d3bfe-8a2a-4567-89f0-c437d4f7bc9d') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9018b8bc-512e-493c-b800-211f5783c9f6', 'state:Rio de Janeiro', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1b608ee4-9b99-46ea-b2e5-b8ba6aebbf96', 'country:Brazil', 'country') ON CONFLICT ("name") DO NOTHING;

-- Feijoada (Rio de Janeiro, Brazil)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8ead5225-e347-4bf1-8b10-2a3559780bc6', 'feijoada-rio-de-janeiro-brazil', 'Feijoada', NULL, 'south_america'::"Continent", 'Brazil', 'Rio de Janeiro', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e2681f16-cc6e-4037-b393-6a26c447b82a', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 0, NULL, 'Black beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('383e536a-10a0-41b1-959c-236616eca61c', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 1, NULL, 'Pork ribs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0ad61651-7b10-4c56-9f06-21477b058c94', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 2, NULL, 'Sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00559fac-2e1f-4418-a2fc-f7fceb410cbc', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 3, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33176f52-d940-4d02-b732-1ad69c9ff7db', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4bc72453-9e67-4137-857e-13348e0a5c6b', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f65346de-201f-4221-8c58-eafc68274d71', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 6, NULL, 'Bay leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7af788c6-e802-4844-b376-aaed73e9408c', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 7, NULL, 'Orange') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02aacd92-89d7-4c50-97ca-10ced0b8447a', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 1, 'Soak black beans, then simmer them slowly with pork ribs, bacon, and sausage until the meats are tender and the beans turn creamy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('36985574-f37a-4eca-83a4-f7055beb5ac6', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 2, 'In a separate pan, sauté onion and garlic and stir this into the pot to deepen the flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('140e7f2c-08f7-4a88-916b-7386524fb4d6', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 3, 'Let everything simmer together until the stew thickens naturally.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('256395bd-ef78-46c4-b98e-0bdd4f28cc3f', '8ead5225-e347-4bf1-8b10-2a3559780bc6', 4, 'Serve the feijoada with rice, sautéed collard greens, and orange slices on the side to cut through the richness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ead5225-e347-4bf1-8b10-2a3559780bc6', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ead5225-e347-4bf1-8b10-2a3559780bc6', '9018b8bc-512e-493c-b800-211f5783c9f6') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('8ead5225-e347-4bf1-8b10-2a3559780bc6', '1b608ee4-9b99-46ea-b2e5-b8ba6aebbf96') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('789baa1a-0065-464f-ba0d-a9a9b1b282aa', 'state:Minas Gerais', 'state') ON CONFLICT ("name") DO NOTHING;

-- Pão de Queijo (Minas Gerais, Brazil)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9754a94e-2d37-4390-9302-4c1943d10baa', 'pao-de-queijo-minas-gerais-brazil', 'Pão de Queijo', NULL, 'south_america'::"Continent", 'Brazil', 'Minas Gerais', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('daea6c90-4448-4111-b405-7b659d6c4b98', '9754a94e-2d37-4390-9302-4c1943d10baa', 0, NULL, 'Tapioca starch') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d873d579-e717-45bd-b8c5-2f42bde8bb69', '9754a94e-2d37-4390-9302-4c1943d10baa', 1, NULL, 'Cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3e62f303-b871-4627-8ada-2b5ce008e9ff', '9754a94e-2d37-4390-9302-4c1943d10baa', 2, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('555d68b4-6cfb-4451-9777-e5c574b2e38a', '9754a94e-2d37-4390-9302-4c1943d10baa', 3, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2f12af75-f628-4846-b958-8e947abcfddb', '9754a94e-2d37-4390-9302-4c1943d10baa', 4, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0cb82a0f-ce58-4968-966e-8c0cd82f0f71', '9754a94e-2d37-4390-9302-4c1943d10baa', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('52fa8322-65fe-4be2-9143-578abd5e4973', '9754a94e-2d37-4390-9302-4c1943d10baa', 1, 'Heat milk, oil, and salt together and pour the hot liquid over tapioca starch, stirring until it forms a sticky dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd3f8f67-1fd6-411a-9f64-581eb823908e', '9754a94e-2d37-4390-9302-4c1943d10baa', 2, 'Let the dough cool slightly, then knead in eggs and a generous amount of grated cheese.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('89f61c03-e294-4f4c-b6ee-be075c5dc2ed', '9754a94e-2d37-4390-9302-4c1943d10baa', 3, 'Roll the dough into small balls and place them on a baking sheet.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc7634b4-81a7-4bb3-8cec-06ff51d8c6ac', '9754a94e-2d37-4390-9302-4c1943d10baa', 4, 'Bake until the little rolls puff up and turn golden outside while staying chewy and cheesy inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9754a94e-2d37-4390-9302-4c1943d10baa', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9754a94e-2d37-4390-9302-4c1943d10baa', '789baa1a-0065-464f-ba0d-a9a9b1b282aa') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('9754a94e-2d37-4390-9302-4c1943d10baa', '1b608ee4-9b99-46ea-b2e5-b8ba6aebbf96') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b5a7259e-32ab-41c6-8928-5ae5abeffff8', 'state:Lima', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a06f49db-3bc0-40e0-b41b-ee7ccb1d72cb', 'country:Peru', 'country') ON CONFLICT ("name") DO NOTHING;

-- Ceviche (Lima, Peru)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 'ceviche-lima-peru', 'Ceviche', NULL, 'south_america'::"Continent", 'Peru', 'Lima', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('df0ecced-1559-4d44-9756-820d9f1e1743', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 0, NULL, 'White fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23ed57c1-800a-4586-aefd-fa4697d2c08f', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 1, NULL, 'Lime juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0a6dd6ec-7f89-41fb-9982-ab4e8f1c9e68', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 2, NULL, 'Red onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('666dddb7-5b10-4a4f-ba84-c2f6eb52bb01', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 3, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6c4eb298-6bc8-470f-9246-85829424cfdf', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 4, NULL, 'Aji chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('109fdda4-ecf9-4eca-b0a2-4ddb3ba0f91c', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 5, NULL, 'Sweet potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8401c881-38cf-4431-b3cd-3676c0269083', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 6, NULL, 'Corn') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3cff7eef-6ee3-4bc3-8f7a-ffedd4baa132', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 1, 'Cut fresh raw white fish into bite-sized pieces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1b57af7f-518f-4dfe-a297-7f0af1a41169', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 2, 'Toss the fish with plenty of freshly squeezed lime juice, thinly sliced red onion, chopped cilantro, and a touch of aji chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fcbd9061-a961-4caf-823b-72626f9483a9', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 3, 'Let the mixture marinate briefly, just long enough for the acid in the lime juice to firm and lightly cook the fish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48f49750-6fd5-4800-817e-b7bcacd69939', 'eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 4, 'Serve immediately with slices of boiled sweet potato and corn on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 'b5a7259e-32ab-41c6-8928-5ae5abeffff8') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('eb20b9a6-1493-4741-b2e1-3559cdc6bd5e', 'a06f49db-3bc0-40e0-b41b-ee7ccb1d72cb') ON CONFLICT DO NOTHING;

-- Lomo Saltado (Lima, Peru)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('84264e8c-3182-44e9-bcba-c636c1120a05', 'lomo-saltado-lima-peru', 'Lomo Saltado', NULL, 'south_america'::"Continent", 'Peru', 'Lima', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ec870323-eb26-4301-87bd-d93951c8e715', '84264e8c-3182-44e9-bcba-c636c1120a05', 0, NULL, 'Beef strips') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f47e7848-eb38-43a1-a185-dc0932987c0f', '84264e8c-3182-44e9-bcba-c636c1120a05', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0495b110-d565-47c3-b7cc-326467e78ab7', '84264e8c-3182-44e9-bcba-c636c1120a05', 2, NULL, 'Tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('261bfca9-a772-48f1-b18b-35b5de1d0cee', '84264e8c-3182-44e9-bcba-c636c1120a05', 3, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9000d852-2384-4531-9cd7-44252f5b6774', '84264e8c-3182-44e9-bcba-c636c1120a05', 4, NULL, 'French fries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('62968e02-22f7-487d-bc01-8eb3a1ccf338', '84264e8c-3182-44e9-bcba-c636c1120a05', 5, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3c59885e-f204-4de8-a2a2-a71f7ce4fcc5', '84264e8c-3182-44e9-bcba-c636c1120a05', 6, NULL, 'Cilantro') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('84a1be60-2357-4e98-9481-12d971568143', '84264e8c-3182-44e9-bcba-c636c1120a05', 1, 'Stir-fry strips of beef quickly over very high heat until browned but still tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd39687c-1ced-4b6d-8ab3-e0a76d41d1c6', '84264e8c-3182-44e9-bcba-c636c1120a05', 2, 'Add sliced onion and tomato wedges and toss briefly so they soften slightly while staying a bit crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('44fb03de-0972-4cd3-a867-ae9f8ea58396', '84264e8c-3182-44e9-bcba-c636c1120a05', 3, 'Season with soy sauce and a splash of vinegar, tossing everything together in the hot pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('68e4fa7f-fa88-4562-8c96-61e17f677382', '84264e8c-3182-44e9-bcba-c636c1120a05', 4, 'Fold in crisp French fries just before serving so they stay crunchy, and serve alongside steamed rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('84264e8c-3182-44e9-bcba-c636c1120a05', '909327b3-fdcb-4489-9c9d-1e3a0c0233c9') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('84264e8c-3182-44e9-bcba-c636c1120a05', 'b5a7259e-32ab-41c6-8928-5ae5abeffff8') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('84264e8c-3182-44e9-bcba-c636c1120a05', 'a06f49db-3bc0-40e0-b41b-ee7ccb1d72cb') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f9c53e5b-b757-469e-82bb-793c9979c673', 'region:Oceania', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7e7dd546-0be2-4c43-9fdf-c7bee33fba6b', 'state:Melbourne', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d2f761c8-c696-4012-b464-89740bf5fd23', 'country:Australia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Meat Pie (Melbourne, Australia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 'meat-pie-melbourne-australia', 'Meat Pie', NULL, 'oceania'::"Continent", 'Australia', 'Melbourne', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a91392f-02bd-4a2d-ad86-147f46d45e41', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8c6e2b6-d191-49c2-896c-8b0dada90d5e', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0e75d565-a26b-4665-a865-415d048cea7b', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 2, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b6569b6-09e8-4985-a2ad-9a5c9da53066', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 3, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4408bc1-3ece-4571-bf04-133601dd30d8', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 4, NULL, 'Puff pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc533386-db2e-4558-9177-5ce0854de252', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 5, NULL, 'Tomato sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6bc832b1-9575-45a7-b780-3381af4119a8', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 1, 'Brown ground beef with chopped onion, then add stock and Worcestershire sauce and simmer until the mixture reduces into a thick, savory filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('712d1261-d00a-4215-b879-22547aa8f2b3', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 2, 'Thicken the filling further with a little flour or cornstarch and let it cool.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('08c19b06-dd18-427c-a973-16108a53241e', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 3, 'Line small pie tins with pastry, fill with the meat mixture, and top with a pastry lid, sealing the edges well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd0fab37-42da-4e59-97ea-15d4d5d8ce26', '32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 4, 'Bake until the pastry turns puffed and golden, then serve hot, traditionally with a squeeze of tomato sauce on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 'f9c53e5b-b757-469e-82bb-793c9979c673') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', '7e7dd546-0be2-4c43-9fdf-c7bee33fba6b') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('32c6abbb-ce6e-4868-b83a-8c6c2ac38e53', 'd2f761c8-c696-4012-b464-89740bf5fd23') ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0d12f775-e5b7-49b5-b62b-d908318b5d7d', 'state:Sydney', 'state') ON CONFLICT ("name") DO NOTHING;

-- Lamington (Sydney, Australia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 'lamington-sydney-australia', 'Lamington', NULL, 'oceania'::"Continent", 'Australia', 'Sydney', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-12T05:47:00.000Z', '2026-09-12T05:47:00.000Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f538096e-4e93-4ece-bee3-0d6f70960160', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 0, NULL, 'Sponge cake') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b7444f35-05a8-453c-9ce6-9ee4744bf932', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 1, NULL, 'Chocolate icing') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('49a68188-2c1c-46f9-b784-0e4eec0fabe7', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 2, NULL, 'Desiccated coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('601d88a0-c45e-413b-a8ca-00890e5beb05', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27f9a877-a04d-47df-8ce7-01a00b25213a', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 4, NULL, 'Cocoa powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6b7130b-07ca-439a-a36e-784c8ba8849e', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 5, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7db70def-64df-4bad-bc94-12f9126faa05', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 1, 'Bake a light vanilla sponge cake and let it cool completely, then cut it into small squares.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c735be01-e796-44f7-a0f6-100bdbdc25fc', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 2, 'Make a thin chocolate icing by mixing cocoa powder, sugar, and butter with a little hot water or milk.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('30a356ac-6556-44c5-a814-3e11f9139914', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 3, 'Dip each cake square into the chocolate icing, coating all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('221a020d-d95b-4a76-91e2-a5efa0800b15', '832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 4, 'Immediately roll the coated squares in desiccated coconut before the icing sets, then let them firm up.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 'f9c53e5b-b757-469e-82bb-793c9979c673') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('832fa87e-df1d-47ff-b257-9ad67a6dcd5a', '0d12f775-e5b7-49b5-b62b-d908318b5d7d') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId") VALUES ('832fa87e-df1d-47ff-b257-9ad67a6dcd5a', 'd2f761c8-c696-4012-b464-89740bf5fd23') ON CONFLICT DO NOTHING;

COMMIT;
