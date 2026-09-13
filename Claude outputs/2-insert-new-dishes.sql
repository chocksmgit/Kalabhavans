-- Kalabhavans.com — recipe catalog expansion (new dishes).
-- Generated 2026-09-13T15:15:36.931Z. Adds 123 brand-new dishes across
-- 12 new countries plus a USA top-up. Safe to re-run: ON CONFLICT DO NOTHING.
BEGIN;

INSERT INTO "tags" ("id","name","kind") VALUES ('e2607092-4636-4a7f-8e08-ff8930eac124', 'region:Deep South', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9258f455-79b8-4f18-a71d-a65f70a671b9', 'state:Louisiana', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('14ef99db-1f8c-4a87-bb91-82c103cef5cb', 'country:United States', 'country') ON CONFLICT ("name") DO NOTHING;

-- Shrimp and Andouille Gumbo (Louisiana, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 'shrimp-and-andouille-gumbo-louisiana-united-states', 'Shrimp and Andouille Gumbo', NULL, 'north_america'::"Continent", 'United States', 'Louisiana', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90956bdf-1351-4248-a5c9-d228f1bc4c4c', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 0, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3531108-1edf-4c76-83d3-7719c0fe7f92', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 1, NULL, 'Andouille sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('330af880-92c1-4fb6-8359-f53c8eda0d42', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 2, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a6234c5-6817-4a41-b2f8-b6baf5f25841', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 3, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b01e5b6a-734c-4a0b-8367-e4a69150b7b1', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 4, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a4895b4-5a4b-4ad2-aa14-daa92376c447', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 5, NULL, 'Green bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a5ea8d6b-8801-4197-91c6-399c6b86833e', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 6, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93f451ce-f06b-4e15-9d4d-4517c73a83e1', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 7, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0034d15e-cbf5-4ff6-833f-5ea9130475cb', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 8, NULL, 'Okra') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4ff77f12-3aef-4ed0-a807-8d5b9f0f0513', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 9, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a5185311-8e79-4a0d-8113-a38f5fd1a4a7', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 10, NULL, 'Cajun spice blend') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7c4dacb-59a4-47cd-87c0-bbd6644fe6f1', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 11, NULL, 'White rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28e6ecb2-5dcb-4d15-8dd1-0b66d80c4fd4', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 12, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a9a9c519-626f-46b3-89fd-5aae21ee050f', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 1, 'Heat vegetable oil in a heavy pot over medium heat and whisk in the flour to form a roux.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd424515-ff9f-4a47-b88d-122886edf028', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 2, 'Cook the roux for 25 to 30 minutes, stirring constantly, until it turns a deep reddish brown color and smells nutty and toasted.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('99c53c3d-6ba3-40ac-9e09-9da3b54e1bb2', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 3, 'Add the diced onion, green bell pepper, and celery straight into the hot roux and stir well, letting the vegetables soften for about 5 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('331c9574-7917-4f54-9abc-f84d9583e297', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 4, 'Stir in minced garlic and sliced andouille sausage and cook for 3 more minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9dec46e7-e7a8-499c-b77c-6cb1d3113334', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 5, 'Pour in the chicken stock gradually, whisking to smooth out any lumps, then bring the pot to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9d351bec-dc56-4828-b715-b4531fd1ea05', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 6, 'Add sliced okra and a generous spoonful of Cajun spice blend and let the gumbo simmer uncovered for 45 minutes, stirring occasionally, until it thickens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('979a8821-32c5-402a-8122-6dab80af8fbf', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 7, 'Add the peeled shrimp during the last 5 minutes of cooking and simmer just until they turn pink and opaque.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b916840e-478a-4b97-ac2c-ccc205537835', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 8, 'Taste and adjust the seasoning with salt and hot sauce as needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4ef38f04-00e2-41e5-b65a-c101a5641517', 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', 9, 'Spoon the gumbo over scoops of steamed white rice and scatter chopped green onion on top before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', "id" FROM "tags" WHERE "name" = 'region:Deep South'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', "id" FROM "tags" WHERE "name" = 'state:Louisiana'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'f7f5e5de-592f-43e7-9eb5-a72e62859bcf', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;

-- Fried Shrimp Po'Boy (Louisiana, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b0ef8d63-ad72-4159-b106-b9d379a95a1a', 'fried-shrimp-poboy-louisiana-united-states', 'Fried Shrimp Po''Boy', NULL, 'north_america'::"Continent", 'United States', 'Louisiana', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('30d73cef-9b78-48dd-8dfe-a160f0df6bec', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 0, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2877c83f-3d02-4a07-916e-1f25877bea45', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 1, NULL, 'Cornmeal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('82d76ad5-1000-49a8-aee2-a1a6a2e3ff99', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 2, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c48669ca-9ddf-4c7d-91c8-7c775a44be8b', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 3, NULL, 'Buttermilk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c2c6da2-8874-4583-a0de-20900d3835c7', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 4, NULL, 'Cayenne pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b0a1a3bd-2337-45a9-9733-1845bfcfd9c1', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 5, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f5aecbef-8917-4ae1-8375-c55ae99dbc02', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 6, NULL, 'French bread roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0ddc210d-577e-4d47-a3f1-ca8371f5784a', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 7, NULL, 'Lettuce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('189a003f-40a9-4181-b364-7902be0f7ec1', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 8, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('013aec09-8dc5-4dbe-bb59-43e67e6825a5', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 9, NULL, 'Pickles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('29e3f968-cfa1-4f22-ad06-04a0700f8677', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 10, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c06a289d-a4f3-4e4a-bcc9-90916a41bd75', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 11, NULL, 'Hot sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2a4ffe5f-269f-4fa5-8e5a-f111ad8b0de1', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 1, 'Soak peeled shrimp in buttermilk seasoned with a dash of hot sauce for about 15 minutes to tenderize them.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e448a864-70e7-49cb-947f-de914718fe18', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 2, 'In a shallow dish, mix cornmeal, flour, cayenne pepper, and salt together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4591aae6-8b5a-4b9f-8f48-8f04956adc1b', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 3, 'Heat about 2 inches of vegetable oil in a heavy pot to 350 degrees Fahrenheit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('affd107c-72dc-41ee-a7ca-d880d163c953', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 4, 'Lift the shrimp out of the buttermilk, letting the excess drip off, then dredge each one thoroughly in the cornmeal mixture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2af7ef49-e9e2-469f-883a-78725cb7e617', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 5, 'Fry the shrimp in small batches for 2 to 3 minutes, until the coating turns golden brown and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3d776ba0-6c72-439e-90b9-706f73ede770', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 6, 'Drain the fried shrimp on a wire rack while you split open a crusty French bread roll.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d563720b-cc0b-4b95-9c27-e934bb5fe872', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 7, 'Spread mayonnaise mixed with a little hot sauce along the inside of the roll.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('873eefd6-0a8e-43e3-b78b-c528cfabd4e6', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 8, 'Layer in shredded lettuce, sliced tomato, and pickles, then pile the hot fried shrimp on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('45da1673-afa9-403f-847b-09356c49db93', 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', 9, 'Close the sandwich and serve it right away while the shrimp are still crackling hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', "id" FROM "tags" WHERE "name" = 'region:Deep South'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', "id" FROM "tags" WHERE "name" = 'state:Louisiana'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0ef8d63-ad72-4159-b106-b9d379a95a1a', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2a913f34-5987-4520-831a-72c0175b11f0', 'region:Lowcountry South', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('db8d4088-b848-4338-a74e-8f649a5b8637', 'state:South Carolina', 'state') ON CONFLICT ("name") DO NOTHING;

-- Shrimp and Grits (South Carolina, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('041d2ed9-598f-4344-903d-7e456644c02d', 'shrimp-and-grits-south-carolina-united-states', 'Shrimp and Grits', NULL, 'north_america'::"Continent", 'United States', 'South Carolina', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15491b39-547f-48f5-8144-bb06c9d2160a', '041d2ed9-598f-4344-903d-7e456644c02d', 0, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c460c2e1-7eaf-4279-b8e8-eea15cc39cb0', '041d2ed9-598f-4344-903d-7e456644c02d', 1, NULL, 'Stone-ground grits') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d02f5beb-fd19-412a-9ab4-80e8cb7fa9c9', '041d2ed9-598f-4344-903d-7e456644c02d', 2, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f170c8ca-68ec-4853-8521-a555d05cf046', '041d2ed9-598f-4344-903d-7e456644c02d', 3, NULL, 'Cheddar cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0e9d170-419a-4a1c-868f-5d8e6b43b9c6', '041d2ed9-598f-4344-903d-7e456644c02d', 4, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b44597c8-607f-45ba-9c4f-172bf05d949a', '041d2ed9-598f-4344-903d-7e456644c02d', 5, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1166fb18-693a-4e14-b7b8-88d4d0019f46', '041d2ed9-598f-4344-903d-7e456644c02d', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7e990ca6-9e05-40c1-b887-e9673dfabce0', '041d2ed9-598f-4344-903d-7e456644c02d', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('12d8357f-88a0-438b-9cae-f3bc12a66d74', '041d2ed9-598f-4344-903d-7e456644c02d', 8, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c79503bf-09c8-43e5-b4f2-8452c1584880', '041d2ed9-598f-4344-903d-7e456644c02d', 9, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2f1b14eb-6231-4d94-9994-907525be304f', '041d2ed9-598f-4344-903d-7e456644c02d', 1, 'Bring chicken stock and a splash of water to a boil in a saucepan, then whisk in the stone-ground grits.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f30bd5be-a8a1-47a6-b92c-cf918142d25d', '041d2ed9-598f-4344-903d-7e456644c02d', 2, 'Reduce the heat to low and let the grits simmer gently for 25 to 30 minutes, stirring often, until thick and creamy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d16d75c7-f486-40fb-9038-05e691982e1d', '041d2ed9-598f-4344-903d-7e456644c02d', 3, 'Stir shredded cheddar cheese and a knob of butter into the finished grits and keep them warm over low heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4513cdc9-5f34-44f2-be2f-b459691aeb13', '041d2ed9-598f-4344-903d-7e456644c02d', 4, 'Meanwhile, cook chopped bacon in a skillet over medium heat for about 6 minutes, until crisp, then remove it and set it aside, leaving the fat in the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d3245e94-eb48-4dbb-ba32-c63c5f11fe05', '041d2ed9-598f-4344-903d-7e456644c02d', 5, 'Add diced onion to the bacon fat and cook for 4 minutes, until softened, then stir in minced garlic for 30 seconds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5eb32a8d-14b8-406e-9074-8549a9fb8afd', '041d2ed9-598f-4344-903d-7e456644c02d', 6, 'Toss in the peeled shrimp and cook for 2 to 3 minutes per side, until they turn pink and just cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('49a867d2-0479-4793-b601-a5be9b24cbf3', '041d2ed9-598f-4344-903d-7e456644c02d', 7, 'Squeeze fresh lemon juice over the shrimp and season with salt and black pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1cf0330b-f226-49a3-a82e-7903a1c3559f', '041d2ed9-598f-4344-903d-7e456644c02d', 8, 'Spoon the warm cheesy grits into bowls and top with the shrimp mixture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('35599229-20b6-4269-a1f7-94527c50328c', '041d2ed9-598f-4344-903d-7e456644c02d', 9, 'Scatter the reserved crispy bacon and chopped green onion over the top before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '041d2ed9-598f-4344-903d-7e456644c02d', "id" FROM "tags" WHERE "name" = 'region:Lowcountry South'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '041d2ed9-598f-4344-903d-7e456644c02d', "id" FROM "tags" WHERE "name" = 'state:South Carolina'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '041d2ed9-598f-4344-903d-7e456644c02d', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8a70c773-b784-44e2-b4a9-e397269d1251', 'region:Texas', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7ee822fd-58ba-4ba1-ac5e-2046110c3035', 'state:Texas', 'state') ON CONFLICT ("name") DO NOTHING;

-- Texas Chili con Carne (Texas, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('50f20151-1bf0-44ce-b86a-f07838ce827b', 'texas-chili-con-carne-texas-united-states', 'Texas Chili con Carne', NULL, 'north_america'::"Continent", 'United States', 'Texas', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('05303422-d8b6-40f7-aa52-f80673273724', '50f20151-1bf0-44ce-b86a-f07838ce827b', 0, NULL, 'Beef chuck') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7446919d-25e3-4848-aab2-6af57194bbea', '50f20151-1bf0-44ce-b86a-f07838ce827b', 1, NULL, 'Dried ancho chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5cfd7c6c-b0ae-43ae-ad03-256798b8a393', '50f20151-1bf0-44ce-b86a-f07838ce827b', 2, NULL, 'Dried guajillo chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c612a4c0-7ab8-410a-9cca-9522f8d09997', '50f20151-1bf0-44ce-b86a-f07838ce827b', 3, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7a506e51-ea5a-4903-84e4-4f601580bb80', '50f20151-1bf0-44ce-b86a-f07838ce827b', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('62cd7476-940d-4dd2-8e79-7930afe8366d', '50f20151-1bf0-44ce-b86a-f07838ce827b', 5, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a10e6c0-7aeb-42d6-af0c-d2a043a27615', '50f20151-1bf0-44ce-b86a-f07838ce827b', 6, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e8b5a7d6-fc0e-4338-ba24-3045fb8a4bce', '50f20151-1bf0-44ce-b86a-f07838ce827b', 7, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d7294a89-65f1-47c1-9cf3-6e890faf5459', '50f20151-1bf0-44ce-b86a-f07838ce827b', 8, NULL, 'Masa harina') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aca74b35-ef58-4ea1-8d1a-a84d0b63054e', '50f20151-1bf0-44ce-b86a-f07838ce827b', 9, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cca0bc13-8847-4b00-aceb-d82f57a74c2e', '50f20151-1bf0-44ce-b86a-f07838ce827b', 1, 'Toast the dried ancho and guajillo chilies in a dry skillet over medium heat for about 1 minute per side, until fragrant, then soak them in hot water for 15 minutes to soften.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8b634761-d4e2-42f0-87c1-33d82d8c9be0', '50f20151-1bf0-44ce-b86a-f07838ce827b', 2, 'Blend the softened chilies with a little of their soaking liquid, garlic, and cumin into a smooth paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbc18fd3-24f1-4ac4-a624-97544f153490', '50f20151-1bf0-44ce-b86a-f07838ce827b', 3, 'Cut the beef chuck into small cubes and brown it in a heavy pot over high heat in batches, about 4 minutes per batch, until deeply seared.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1ba5d3d2-e3a2-4f02-a945-030d5632b5be', '50f20151-1bf0-44ce-b86a-f07838ce827b', 4, 'Remove the beef and cook the diced onion in the same pot for 5 minutes, until softened and lightly browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('520da050-73f1-40fb-9b6a-a66ff6470e78', '50f20151-1bf0-44ce-b86a-f07838ce827b', 5, 'Stir in the chili paste and tomato paste and cook for 2 minutes, until the mixture darkens slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02a14dac-77bd-4ed6-9db7-35e150ec4edd', '50f20151-1bf0-44ce-b86a-f07838ce827b', 6, 'Return the browned beef to the pot and pour in enough beef stock to just cover the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5de6ddda-f0e7-4fd3-9212-6929cd4a624a', '50f20151-1bf0-44ce-b86a-f07838ce827b', 7, 'Cover and simmer over low heat for 2 hours, stirring occasionally, until the beef is fork-tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fce140db-4d0a-4524-ba44-1719a2daa2d1', '50f20151-1bf0-44ce-b86a-f07838ce827b', 8, 'Whisk a spoonful of masa harina into the chili to thicken the sauce and simmer uncovered for 10 more minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('440d0bd3-6ab8-4c27-a18e-9d8234a31e39', '50f20151-1bf0-44ce-b86a-f07838ce827b', 9, 'Season with salt and a squeeze of lime juice before ladling into bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '50f20151-1bf0-44ce-b86a-f07838ce827b', "id" FROM "tags" WHERE "name" = 'region:Texas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '50f20151-1bf0-44ce-b86a-f07838ce827b', "id" FROM "tags" WHERE "name" = 'state:Texas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '50f20151-1bf0-44ce-b86a-f07838ce827b', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;

-- Austin-Style Breakfast Tacos (Texas, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('20753962-9046-4c26-821f-c70c1f6bbb92', 'austin-style-breakfast-tacos-texas-united-states', 'Austin-Style Breakfast Tacos', NULL, 'north_america'::"Continent", 'United States', 'Texas', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0e322e29-82c1-439f-a77f-0504848169b3', '20753962-9046-4c26-821f-c70c1f6bbb92', 0, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('da6fc237-d9aa-4cdb-b1d3-2d668500e3f6', '20753962-9046-4c26-821f-c70c1f6bbb92', 1, NULL, 'Chorizo') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d3891c2-dabf-4e4a-827f-34196b2c81bf', '20753962-9046-4c26-821f-c70c1f6bbb92', 2, NULL, 'Flour tortillas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1ae10b4-8070-4b4d-bd2c-9bb3800953c2', '20753962-9046-4c26-821f-c70c1f6bbb92', 3, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37d7c702-34fc-41ff-a3c0-f0624ac55ea7', '20753962-9046-4c26-821f-c70c1f6bbb92', 4, NULL, 'Cheddar cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3b0a4c23-d6c2-4fda-9eaa-f586e6b69be5', '20753962-9046-4c26-821f-c70c1f6bbb92', 5, NULL, 'Pico de gallo') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('343ee7aa-4963-4cd9-a41e-1924545d8406', '20753962-9046-4c26-821f-c70c1f6bbb92', 6, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b6c9af6d-5af2-4056-b76c-31eeb30460ab', '20753962-9046-4c26-821f-c70c1f6bbb92', 1, 'Peel and dice the potato into small cubes and fry them in vegetable oil over medium heat for about 10 minutes, until golden and tender, then drain on paper towels.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('371c767e-aabf-4c47-a248-45a450477580', '20753962-9046-4c26-821f-c70c1f6bbb92', 2, 'Crumble the chorizo into a hot skillet and cook for 6 to 8 minutes, breaking it apart with a spoon, until fully cooked and slightly crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b279a31b-93e8-46a0-8c78-c114821dfb78', '20753962-9046-4c26-821f-c70c1f6bbb92', 3, 'Whisk the eggs with a pinch of salt, then pour them into the skillet with the chorizo.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('abd9024c-2c4c-4e37-927d-56571f8881f2', '20753962-9046-4c26-821f-c70c1f6bbb92', 4, 'Scramble gently over medium-low heat for 2 to 3 minutes, until just set and still soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('876d6f6c-6af1-4eac-b2b3-98172c9f6f36', '20753962-9046-4c26-821f-c70c1f6bbb92', 5, 'Fold the crispy potatoes into the eggs and chorizo and remove the skillet from the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dfabda37-fc0d-4848-bf0b-6831116d7d31', '20753962-9046-4c26-821f-c70c1f6bbb92', 6, 'Warm the flour tortillas on a dry griddle for about 20 seconds per side, until pliable and lightly toasted.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b7d00b79-0719-46c6-a21e-65f77441c9c8', '20753962-9046-4c26-821f-c70c1f6bbb92', 7, 'Spoon the chorizo and egg filling down the center of each tortilla and sprinkle with shredded cheddar cheese.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4fb0231f-d1d3-4ef4-ac6a-93c67b9505dc', '20753962-9046-4c26-821f-c70c1f6bbb92', 8, 'Top with a spoonful of fresh pico de gallo, then fold the tortilla and wrap it in foil for an easy handheld breakfast.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20753962-9046-4c26-821f-c70c1f6bbb92', "id" FROM "tags" WHERE "name" = 'region:Texas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20753962-9046-4c26-821f-c70c1f6bbb92', "id" FROM "tags" WHERE "name" = 'state:Texas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20753962-9046-4c26-821f-c70c1f6bbb92', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6d16fe7d-c94e-4917-b891-4e9a6c2d38ca', 'region:Midwest', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cf2a4110-a712-4e69-96be-bd3933ebbd06', 'state:Illinois', 'state') ON CONFLICT ("name") DO NOTHING;

-- Chicago Deep-Dish Pizza (Illinois, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 'chicago-deep-dish-pizza-illinois-united-states', 'Chicago Deep-Dish Pizza', NULL, 'north_america'::"Continent", 'United States', 'Illinois', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f45e232-0866-4d3f-a486-bc316dd1a35c', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 0, NULL, 'Bread flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6c63c018-2fff-4aa6-b50e-d127d867b346', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 1, NULL, 'Cornmeal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d266c552-8013-4fee-b3e0-b93d2501ce2d', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 2, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cc4037bf-9343-4b9e-b554-7328c07786de', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 3, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('637527c4-29a3-4da0-aa9e-a6e56f572199', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b9b20be-f270-40c5-b6ce-9780b0ea0598', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 5, NULL, 'Mozzarella cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f6d9aec4-7a04-41de-84b8-4cb9d4177a08', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 6, NULL, 'Italian sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6eeb6a2c-9949-445c-8f5c-d9f348f01dc3', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 7, NULL, 'Crushed tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ace3515e-db9c-41d0-a47b-d911ebdf2ff2', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 8, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8e611205-de85-4d3f-bf2b-9cefd50b6ab5', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 9, NULL, 'Dried oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('499b4303-b9df-4114-ab41-400b7de2cc08', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 10, NULL, 'Parmesan cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3875c1da-3aeb-4a46-85a6-659ba4a00acd', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 1, 'Mix bread flour with cornmeal, yeast, salt, and warm water, then knead in softened butter and olive oil until you have a smooth, slightly greasy dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('caf92cda-9031-407b-a5a4-554fd7050d7b', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 2, 'Let the dough rise in a covered bowl for about 1 hour, until doubled in size.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('61ad3c3c-3c43-40a0-894a-7326e3ba56d7', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 3, 'Press the dough evenly into a well-oiled deep round pan, pushing it up the sides to form a thick edge.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('568ec21a-8ccb-4a1d-91f5-06bd1340e0ec', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 4, 'Cook crumbled Italian sausage in a skillet over medium heat for 7 to 8 minutes, until browned, then set it aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('430cd3e8-9403-48bd-8209-84336a8e1a1d', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 5, 'Layer sliced mozzarella cheese directly over the dough first, followed by the cooked sausage.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bed0e5ba-4f44-4555-8b31-d3f91ab851cc', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 6, 'Simmer crushed tomatoes with minced garlic, dried oregano, and a pinch of salt for 10 minutes to make a thick sauce, then spoon it evenly over the toppings.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0792547d-3d97-4ed6-822f-bbd0953a0afa', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 7, 'Sprinkle grated Parmesan cheese over the top and bake in an oven preheated to 425 degrees Fahrenheit for 35 to 40 minutes, until the crust is deep golden brown.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c814eb87-9331-4515-9cb9-088e0e632fb5', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 8, 'Let the pizza rest for 10 minutes before slicing so the layers set.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('278ff09b-dfff-4cd2-bf31-f412dca0fc34', 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', 9, 'Cut into thick wedges and serve hot with a knife and fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', "id" FROM "tags" WHERE "name" = 'region:Midwest'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', "id" FROM "tags" WHERE "name" = 'state:Illinois'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b4c5501f-b1a1-4a1d-b7c8-be00c2830e9e', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e0d345ce-aa06-467d-be0d-bb6e61031c74', 'state:Wisconsin', 'state') ON CONFLICT ("name") DO NOTHING;

-- Fried Cheese Curds (Wisconsin, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b2c9e122-bb76-41c6-9a02-3afc26a53730', 'fried-cheese-curds-wisconsin-united-states', 'Fried Cheese Curds', NULL, 'north_america'::"Continent", 'United States', 'Wisconsin', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('682c7429-84ff-4051-9b6b-ec6dd707cf0f', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 0, NULL, 'Cheese curds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a7c4e5c9-015c-4d3d-8963-d3a6c7ad69b9', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 1, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fb915633-169a-40f7-b2c6-305c21068dd4', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 2, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('895650d5-f102-4e27-96a2-9801521d5053', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 3, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('996868f7-9b5d-4198-a339-ea1af3f5ad91', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 4, NULL, 'Beer') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ad88cd2-c246-46f9-9aea-6c1e541cdc5b', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 5, NULL, 'Breadcrumbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1b13b22a-dcfe-4d9f-8738-226e2096a1e9', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 6, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('55072a6d-ac64-4fac-9c38-e0d8d5a21f3d', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 1, 'Whisk together flour, beer, milk, and a pinch of salt to form a smooth, thick batter, then let it rest for 15 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f991e223-c791-431a-a05f-0ab591d11556', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 2, 'In a separate bowl, beat the eggs with a splash of milk.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7003355e-a0ed-4dbd-b00d-6e445c2dfb62', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 3, 'Set out a plate of breadcrumbs for the final coating.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('45304901-be6d-42d5-9e57-7b914598e32a', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 4, 'Heat about 3 inches of vegetable oil in a deep pot or fryer to 375 degrees Fahrenheit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a28c3590-9550-4c21-a2ba-7be173fee8e8', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 5, 'Dip each cheese curd first into the beer batter, letting the excess drip off, then into the egg wash, and finally roll it in breadcrumbs to coat completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76fcf87b-7b0b-49b9-9741-c7f00e0b49d6', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 6, 'Carefully lower the coated curds into the hot oil in small batches.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c193827b-757a-4e13-b057-d303b5d56276', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 7, 'Fry for about 2 minutes, turning once, until the coating is deep golden brown and the cheese inside just begins to soften.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f695c0c3-cf8a-499f-9df5-cbf28b632024', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 8, 'Lift the curds out with a slotted spoon and drain them briefly on paper towels.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b99222d-77bd-4b47-a66f-3329f5b4899c', 'b2c9e122-bb76-41c6-9a02-3afc26a53730', 9, 'Serve immediately in a paper basket while the outside is crackly and the cheese is warm and squeaky.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b2c9e122-bb76-41c6-9a02-3afc26a53730', "id" FROM "tags" WHERE "name" = 'region:Midwest'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b2c9e122-bb76-41c6-9a02-3afc26a53730', "id" FROM "tags" WHERE "name" = 'state:Wisconsin'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b2c9e122-bb76-41c6-9a02-3afc26a53730', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('209a71df-bfe2-464a-afe5-1bef43d18d47', 'region:New England', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('49fbd611-c950-4b0f-8910-c8beb7b49f85', 'state:Massachusetts', 'state') ON CONFLICT ("name") DO NOTHING;

-- New England Clam Chowder (Massachusetts, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('79fef086-85ac-453e-bfc7-f67fa19448b4', 'new-england-clam-chowder-massachusetts-united-states', 'New England Clam Chowder', NULL, 'north_america'::"Continent", 'United States', 'Massachusetts', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('64d98878-f2a9-4d59-8005-a114d75b6088', '79fef086-85ac-453e-bfc7-f67fa19448b4', 0, NULL, 'Clams') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('62d22916-e016-410c-b6d8-a0b0763b2eb5', '79fef086-85ac-453e-bfc7-f67fa19448b4', 1, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('958970ab-130b-43d7-ac0f-f7740f266032', '79fef086-85ac-453e-bfc7-f67fa19448b4', 2, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c348b349-74c3-4212-aa73-134a05154876', '79fef086-85ac-453e-bfc7-f67fa19448b4', 3, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('54bda274-adac-4406-ab9c-c440d9a7ea43', '79fef086-85ac-453e-bfc7-f67fa19448b4', 4, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('81257c9b-7181-46cf-9092-290508452656', '79fef086-85ac-453e-bfc7-f67fa19448b4', 5, NULL, 'Heavy cream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90123810-c2e9-4841-9c9a-60d250304d76', '79fef086-85ac-453e-bfc7-f67fa19448b4', 6, NULL, 'Clam juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('844d78eb-bae3-4026-b9ad-9fef57769c34', '79fef086-85ac-453e-bfc7-f67fa19448b4', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ce2ded0-a7a3-4d29-8f3f-abf71a399f13', '79fef086-85ac-453e-bfc7-f67fa19448b4', 8, NULL, 'Thyme') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('04c70de5-e03a-4a77-a528-e201e90ba740', '79fef086-85ac-453e-bfc7-f67fa19448b4', 9, NULL, 'Oyster crackers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('240983f3-d167-46b8-8e9f-1c1f62826116', '79fef086-85ac-453e-bfc7-f67fa19448b4', 1, 'Cook diced bacon in a large pot over medium heat for about 6 minutes, until crisp, then remove it with a slotted spoon and set aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a5c8da96-9f62-41ac-8a15-df33666ab87d', '79fef086-85ac-453e-bfc7-f67fa19448b4', 2, 'Add diced onion and celery to the bacon fat and cook for 5 minutes, until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3a03388d-e6ed-4d6b-8cfb-bce83adc7b23', '79fef086-85ac-453e-bfc7-f67fa19448b4', 3, 'Stir in diced potato, clam juice, a splash of water, and a few sprigs of thyme, then bring the pot to a simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('af0e3e3c-4e0b-4b73-ae55-fd4520b07ec1', '79fef086-85ac-453e-bfc7-f67fa19448b4', 4, 'Cook for 12 to 15 minutes, until the potato is tender when pierced with a fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fbf074c7-cd98-414f-bdb2-92ca1f6eef04', '79fef086-85ac-453e-bfc7-f67fa19448b4', 5, 'Meanwhile, steam the clams in a separate covered pot over high heat for 5 to 7 minutes, until they open, then remove the meat from the shells and roughly chop it, reserving any liquid, and discard any clams that stay closed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4f003fb6-099e-4cae-9979-53c52bf952de', '79fef086-85ac-453e-bfc7-f67fa19448b4', 6, 'Strain the reserved clam liquid into the soup pot and stir in the chopped clam meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1dbbe8d7-69d1-41b3-b3d9-dbdddda2f11e', '79fef086-85ac-453e-bfc7-f67fa19448b4', 7, 'Pour in the heavy cream and a knob of butter, then warm the chowder gently over low heat without letting it boil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1200bc99-c306-4333-ab82-f39e92e08f78', '79fef086-85ac-453e-bfc7-f67fa19448b4', 8, 'Season with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be943463-3084-4695-bcbf-adfa62af14d5', '79fef086-85ac-453e-bfc7-f67fa19448b4', 9, 'Ladle into bowls and top with the reserved crispy bacon and a handful of oyster crackers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '79fef086-85ac-453e-bfc7-f67fa19448b4', "id" FROM "tags" WHERE "name" = 'region:New England'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '79fef086-85ac-453e-bfc7-f67fa19448b4', "id" FROM "tags" WHERE "name" = 'state:Massachusetts'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '79fef086-85ac-453e-bfc7-f67fa19448b4', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('05899910-4e68-4ba3-a62b-5ef752a7848f', 'state:Maine', 'state') ON CONFLICT ("name") DO NOTHING;

-- Maine Lobster Roll (Maine, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('55e02896-a928-48f9-8cb6-fa87726ab258', 'maine-lobster-roll-maine-united-states', 'Maine Lobster Roll', NULL, 'north_america'::"Continent", 'United States', 'Maine', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('38231338-7034-41fd-9166-07cf91436a8c', '55e02896-a928-48f9-8cb6-fa87726ab258', 0, NULL, 'Lobster meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('42984f04-7f1e-4a28-a8a0-1339144267ee', '55e02896-a928-48f9-8cb6-fa87726ab258', 1, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5693cde0-98f0-4d08-9dab-699824e34e2a', '55e02896-a928-48f9-8cb6-fa87726ab258', 2, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f0f78770-5586-4362-9802-b5a42bef2492', '55e02896-a928-48f9-8cb6-fa87726ab258', 3, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aae095f4-71a1-4270-bcca-62da9e01ced2', '55e02896-a928-48f9-8cb6-fa87726ab258', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3e0cc0b-01bf-4a46-bb13-ba4b56d5fcbc', '55e02896-a928-48f9-8cb6-fa87726ab258', 5, NULL, 'Hot dog buns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7060c05-8e5c-480c-9f01-e28268edb906', '55e02896-a928-48f9-8cb6-fa87726ab258', 6, NULL, 'Chives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('07acbccc-9d55-49bf-8b1b-2ce80776457f', '55e02896-a928-48f9-8cb6-fa87726ab258', 1, 'Boil the lobsters in a large pot of salted water for 8 to 10 minutes, until the shells turn bright red, then plunge them into ice water to stop the cooking.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b57bbca-95b3-473c-b7cc-49bad1d068c7', '55e02896-a928-48f9-8cb6-fa87726ab258', 2, 'Crack the shells and pick out the meat from the tail, claws, and knuckles, then chop it into bite-sized chunks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8d5c6c4c-a822-486f-afc1-c70bdc5b2701', '55e02896-a928-48f9-8cb6-fa87726ab258', 3, 'In a bowl, gently fold the lobster meat with mayonnaise, finely diced celery, and a squeeze of lemon juice, being careful not to mash the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c676d3c6-5fb7-41d6-8d01-07c4df1b451e', '55e02896-a928-48f9-8cb6-fa87726ab258', 4, 'Season lightly with salt and pepper and chill the mixture in the refrigerator for at least 20 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('26971e5e-7d5d-4e92-8627-2cc16fef5584', '55e02896-a928-48f9-8cb6-fa87726ab258', 5, 'Melt butter in a skillet over medium heat and toast the split-top hot dog buns on their flat sides for about 2 minutes, until golden and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7ea7b263-5a37-432e-b4a6-9c00c4aa1c60', '55e02896-a928-48f9-8cb6-fa87726ab258', 6, 'Spoon the chilled lobster salad generously into each toasted bun, letting it mound over the top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd08bda8-5640-41e1-b181-c4430c411dcf', '55e02896-a928-48f9-8cb6-fa87726ab258', 7, 'Scatter chopped chives over the filling for a fresh finish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('41098b94-8148-4647-942e-c0e0908527d5', '55e02896-a928-48f9-8cb6-fa87726ab258', 8, 'Serve right away from the window while the bun is still warm and the lobster salad is cold.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '55e02896-a928-48f9-8cb6-fa87726ab258', "id" FROM "tags" WHERE "name" = 'region:New England'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '55e02896-a928-48f9-8cb6-fa87726ab258', "id" FROM "tags" WHERE "name" = 'state:Maine'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '55e02896-a928-48f9-8cb6-fa87726ab258', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d0116ab3-1de8-4838-b2a5-83eafc8773e2', 'region:Mid-Atlantic', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2a21bfe6-fb4e-40aa-9f27-2017f404c7d2', 'state:Pennsylvania', 'state') ON CONFLICT ("name") DO NOTHING;

-- Philly Cheesesteak (Pennsylvania, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('af239d50-4e18-4126-ae88-7f637507154d', 'philly-cheesesteak-pennsylvania-united-states', 'Philly Cheesesteak', NULL, 'north_america'::"Continent", 'United States', 'Pennsylvania', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f14cdbf7-70c3-4217-8d4a-5a491cf9cbbe', 'af239d50-4e18-4126-ae88-7f637507154d', 0, NULL, 'Ribeye steak') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9cff45c8-8181-49dc-bc9f-4d04aa4812d1', 'af239d50-4e18-4126-ae88-7f637507154d', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c86928da-82cd-4cad-8941-5416ecb19833', 'af239d50-4e18-4126-ae88-7f637507154d', 2, NULL, 'Provolone cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b9390ad-6fea-4f15-a135-929031d4ecb9', 'af239d50-4e18-4126-ae88-7f637507154d', 3, NULL, 'Hoagie roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fb47d6e7-400d-43b4-b738-8e1a7e4e7a6d', 'af239d50-4e18-4126-ae88-7f637507154d', 4, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50fe1da2-a0b6-4490-abee-3e9e25a74f53', 'af239d50-4e18-4126-ae88-7f637507154d', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8ad30170-5416-480b-83bd-1017e9fc2918', 'af239d50-4e18-4126-ae88-7f637507154d', 6, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2df78cd8-4a96-4162-a89d-902cad6b4ed7', 'af239d50-4e18-4126-ae88-7f637507154d', 1, 'Freeze the ribeye steak for about 30 minutes to firm it up, then slice it as thinly as possible against the grain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8032d771-bade-49c9-a187-eadccc550bf6', 'af239d50-4e18-4126-ae88-7f637507154d', 2, 'Heat a flat griddle or large skillet over high heat with a little vegetable oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9e68905d-04ee-4eb2-9804-a42c87a34879', 'af239d50-4e18-4126-ae88-7f637507154d', 3, 'Add sliced onion to the griddle and cook for 5 to 6 minutes, stirring often, until soft and lightly caramelized, then push it to one side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ea388941-5a5e-431f-9352-b6ffcca84c6c', 'af239d50-4e18-4126-ae88-7f637507154d', 4, 'Spread the thin-sliced steak across the hot griddle and chop it into smaller pieces with the edge of a spatula as it cooks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f9d85d8e-5a2f-44a9-ba51-33a6b77e451e', 'af239d50-4e18-4126-ae88-7f637507154d', 5, 'Season the meat with salt and pepper and cook for 2 to 3 minutes, until no longer pink.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d6c6ada2-e388-4942-bc5a-a32edcf70771', 'af239d50-4e18-4126-ae88-7f637507154d', 6, 'Mix the cooked onion back into the steak, then lay slices of provolone cheese directly over the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1271096f-1ff6-4609-a476-872d05a75a56', 'af239d50-4e18-4126-ae88-7f637507154d', 7, 'Let the cheese melt for about 1 minute, folding it gently into the steak once softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91ef13d0-5ace-45dc-b325-7c3d4347a5b2', 'af239d50-4e18-4126-ae88-7f637507154d', 8, 'Split open a fresh hoagie roll and scoop the cheesy steak mixture directly into it.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5acc3d58-adf7-485c-927d-cc6f4a1793d2', 'af239d50-4e18-4126-ae88-7f637507154d', 9, 'Wrap the sandwich in paper and serve immediately while it is hot and the cheese is still stretchy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af239d50-4e18-4126-ae88-7f637507154d', "id" FROM "tags" WHERE "name" = 'region:Mid-Atlantic'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af239d50-4e18-4126-ae88-7f637507154d', "id" FROM "tags" WHERE "name" = 'state:Pennsylvania'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af239d50-4e18-4126-ae88-7f637507154d', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('205182d6-0273-4d7a-9f76-b8cfc3f2099c', 'region:Pacific Northwest', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('37f5dc81-3beb-49ca-a216-3c7782ecece5', 'state:Washington', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dungeness Crab Cakes (Washington, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 'dungeness-crab-cakes-washington-united-states', 'Dungeness Crab Cakes', NULL, 'north_america'::"Continent", 'United States', 'Washington', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('77dae137-6d70-4167-8def-6ef695b30e2b', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 0, NULL, 'Dungeness crab meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03a6224a-bda2-4652-9c66-b90716fd6a13', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 1, NULL, 'Breadcrumbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37e9a598-f5cd-4833-aa91-c42fc53f6755', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 2, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3f1607a-eff6-4463-8763-61a241362f03', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 3, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e8f5d9fd-431c-489f-a58d-841cc292b5ae', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 4, NULL, 'Dijon mustard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3927ecf0-89dd-4834-b14d-c07d0b7256e0', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 5, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c76c2515-e6d0-446c-9054-6c91a0e8515e', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 6, NULL, 'Old Bay seasoning') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('01abed2c-14c0-43ad-9ca9-146b093c4f49', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('424f3cf0-d4c7-42e6-9eba-610a1e9a952e', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 8, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2fe207ca-a2e7-45c0-a341-e80623883e81', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 1, 'Pick through the crab meat carefully to remove any small bits of shell or cartilage, keeping the lumps as intact as possible.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e79d47cb-c985-4455-9483-10b06aaa4bb4', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 2, 'In a bowl, whisk together the egg, mayonnaise, Dijon mustard, and a spoonful of seasoning until smooth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('859e1e49-ae98-4ef3-adf4-80de7921c931', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 3, 'Gently fold in the crab meat, chopped green onion, and breadcrumbs, mixing just enough to bind everything without breaking up the crab too much.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc728d54-7d23-448e-8cf8-8fd0ac7abdcb', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 4, 'Cover the mixture and refrigerate it for 30 minutes so the cakes hold together better when cooked.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5050d52e-332e-4283-8fa1-33581a55e22b', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 5, 'Shape the chilled mixture into patties about 3 inches wide and 1 inch thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e915e935-4190-450d-b911-919ba9a7abe3', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 6, 'Melt butter in a skillet over medium heat until it foams.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02635c8c-391b-4273-a7ac-94eff59b78fd', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 7, 'Cook the crab cakes for 4 to 5 minutes per side, until deep golden brown and heated through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6bd0bb6e-5dba-4b21-a429-ac5d50eacc9d', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 8, 'Transfer the cakes to a paper towel-lined plate to drain briefly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('69efe596-9bb5-49a3-a235-27b2b68965ba', '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', 9, 'Serve warm with a wedge of lemon and a light drizzle of extra mayonnaise or tartar sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', "id" FROM "tags" WHERE "name" = 'region:Pacific Northwest'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', "id" FROM "tags" WHERE "name" = 'state:Washington'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5c2e6b61-ef1c-4a07-9b6a-faa9e24aee44', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cd6a09ba-472f-4510-b95c-8b43d47f4d63', 'region:California', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cb800d96-399e-4bc9-b2b6-5a3c25196e38', 'state:California', 'state') ON CONFLICT ("name") DO NOTHING;

-- San Francisco Cioppino (California, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2cd0c994-2abd-471f-9a0f-f97c5934525b', 'san-francisco-cioppino-california-united-states', 'San Francisco Cioppino', NULL, 'north_america'::"Continent", 'United States', 'California', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('70a1feeb-3d41-4885-903c-864629d710fd', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 0, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a02f626-0143-427a-ac2b-0fa83ce9aa0b', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 1, NULL, 'Mussels') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1d5ecc1-57dc-4468-a855-b7b9a905863d', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 2, NULL, 'Clams') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('35d1dd94-bafb-4897-af39-6c58ee9996ac', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 3, NULL, 'Firm white fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('07524dae-81c8-42fa-891e-6cf478ef2717', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 4, NULL, 'Crushed tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('651f9520-c585-45c2-917c-e3101835dd3b', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 5, NULL, 'White wine') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f285c2fc-3e46-47f4-affc-bd6a8cdf0eb7', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d20d2227-caf3-4725-b1c9-8fe644270202', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 7, NULL, 'Fennel') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3009c5b-0da2-4581-b620-a48c302b1fd8', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 8, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('69020889-63f7-4cdd-892f-4f03f87a12cc', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 9, NULL, 'Fish stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23ffa2ab-4afc-4eb5-a039-c4dc342717c8', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 10, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a068b432-61ad-4bfd-912c-820b525fad89', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 11, NULL, 'Red chili flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3efe1b74-4d0a-46d9-b8de-3e22d44ec525', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 12, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f13b2b9f-a0c8-4de1-a8b3-c6d6018f2308', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 1, 'Heat olive oil in a large pot over medium heat and cook diced onion and sliced fennel for 6 to 7 minutes, until softened and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bbfcd403-d9f7-43dc-84ce-1cd69ad2bb8a', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 2, 'Stir in minced garlic and a pinch of red chili flakes and cook for 1 more minute.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('62fa361e-7171-4a3a-9ddd-63e0a1cc613b', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 3, 'Pour in the white wine and let it bubble for 2 minutes to cook off the sharp alcohol smell.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1393e054-17f0-4c60-8f69-4f592729f633', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 4, 'Add the crushed tomatoes and fish stock, then bring the pot to a simmer and cook uncovered for 20 minutes to let the flavors deepen.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2bd4a481-1aa1-48d9-8cfd-486684d8f377', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 5, 'Season the broth with salt and pepper to taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3b1d5c96-4053-4df0-91b6-b7b1ecc4152e', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 6, 'Nestle the mussels and clams into the simmering broth first, cover the pot, and cook for 5 minutes, until the shells begin to open.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('13da095d-bf6f-49fd-bebf-6f4520cfe242', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 7, 'Add chunks of firm white fish and the shrimp on top, cover again, and cook for 5 more minutes, until the shrimp turn pink and the fish flakes easily, discarding any shellfish that never opened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eae66df0-567b-420f-b56f-b1dc9c1d94f1', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 8, 'Ladle the cioppino into wide bowls, making sure each portion gets a mix of seafood.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('de52f6d0-6d73-415a-a238-4e38fb898805', '2cd0c994-2abd-471f-9a0f-f97c5934525b', 9, 'Scatter chopped parsley over the top before serving with crusty bread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2cd0c994-2abd-471f-9a0f-f97c5934525b', "id" FROM "tags" WHERE "name" = 'region:California'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2cd0c994-2abd-471f-9a0f-f97c5934525b', "id" FROM "tags" WHERE "name" = 'state:California'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2cd0c994-2abd-471f-9a0f-f97c5934525b', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;

-- San Diego-Style California Burrito (California, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9537aecd-e91c-4947-966f-71012dfc1f3c', 'san-diego-style-california-burrito-california-united-states', 'San Diego-Style California Burrito', NULL, 'north_america'::"Continent", 'United States', 'California', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cc6a5869-7b4d-40c1-bbf2-40dc260ffa13', '9537aecd-e91c-4947-966f-71012dfc1f3c', 0, NULL, 'Carne asada') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('75dac706-0ae7-4488-97dd-3e713218735f', '9537aecd-e91c-4947-966f-71012dfc1f3c', 1, NULL, 'French fries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9c08a599-ee57-40b5-9334-d55d6fd80b42', '9537aecd-e91c-4947-966f-71012dfc1f3c', 2, NULL, 'Cheddar cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bd603fe5-6851-4b4b-8d97-bf9657325547', '9537aecd-e91c-4947-966f-71012dfc1f3c', 3, NULL, 'Sour cream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('af8f661e-a964-4b6a-be84-c5ad011d955b', '9537aecd-e91c-4947-966f-71012dfc1f3c', 4, NULL, 'Guacamole') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('71fc1e55-346e-434c-8f7f-d5a7a35c478a', '9537aecd-e91c-4947-966f-71012dfc1f3c', 5, NULL, 'Pico de gallo') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3be056c-2a57-43b5-898b-4d7cce7f24aa', '9537aecd-e91c-4947-966f-71012dfc1f3c', 6, NULL, 'Flour tortillas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7f970cd-c81d-4642-be33-7cc816caa35f', '9537aecd-e91c-4947-966f-71012dfc1f3c', 1, 'Marinate thin steak strips for carne asada in lime juice, garlic, and a blend of spices for at least 30 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fcacd8e6-4860-498d-9a44-9f3ce04b8a1e', '9537aecd-e91c-4947-966f-71012dfc1f3c', 2, 'Grill the marinated steak over high heat for 2 to 3 minutes per side, until charred on the outside and cooked through, then chop it into small pieces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7762487-db38-48ac-a004-c369a2792c32', '9537aecd-e91c-4947-966f-71012dfc1f3c', 3, 'Meanwhile, fry or bake the French fries until golden brown and crisp, then season them lightly with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1a31923e-df57-4910-b754-00cf0b8fe5bf', '9537aecd-e91c-4947-966f-71012dfc1f3c', 4, 'Warm a large flour tortilla on a hot griddle for about 20 seconds per side, until soft and pliable.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d2cb84b6-02bd-424c-ac67-efb97fce38f4', '9537aecd-e91c-4947-966f-71012dfc1f3c', 5, 'Lay the tortilla flat and spread a layer of guacamole down the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2e0cea70-4a5f-4672-9f61-0061ea25c133', '9537aecd-e91c-4947-966f-71012dfc1f3c', 6, 'Pile on the chopped carne asada, followed by a generous handful of the crispy fries.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('75da9806-3ca6-49fd-aecd-5d21dcfa08c0', '9537aecd-e91c-4947-966f-71012dfc1f3c', 7, 'Sprinkle shredded cheddar cheese over the top and add spoonfuls of sour cream and pico de gallo.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e743fa64-149b-4197-83c1-2dd5f44e45ca', '9537aecd-e91c-4947-966f-71012dfc1f3c', 8, 'Fold in the sides of the tortilla and roll it tightly into a burrito.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d45db842-7789-4eab-81bf-7084328484bd', '9537aecd-e91c-4947-966f-71012dfc1f3c', 9, 'Wrap the burrito in foil and grill it seam-side down for a minute to seal before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9537aecd-e91c-4947-966f-71012dfc1f3c', "id" FROM "tags" WHERE "name" = 'region:California'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9537aecd-e91c-4947-966f-71012dfc1f3c', "id" FROM "tags" WHERE "name" = 'state:California'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9537aecd-e91c-4947-966f-71012dfc1f3c', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0a4342ce-f52f-4ffd-8fa9-3ac4f3bca6c5', 'region:Southwest', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('efc2287a-179b-4d29-9525-1e290bbcb66e', 'state:New Mexico', 'state') ON CONFLICT ("name") DO NOTHING;

-- New Mexico Green Chile Pork Stew (New Mexico, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cd2fc540-8835-4314-b792-ac66b08bb07d', 'new-mexico-green-chile-pork-stew-new-mexico-united-states', 'New Mexico Green Chile Pork Stew', NULL, 'north_america'::"Continent", 'United States', 'New Mexico', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0c5cfbc4-88a6-4d68-a08f-6fb8479e5785', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 0, NULL, 'Pork shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('219950aa-0470-4d27-9121-0d147da1f344', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 1, NULL, 'Green chilies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a96bf6a9-cf5b-4bb1-940a-ddc155c979dd', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 2, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('092660a6-33e3-4ffa-bbc8-af97d9ca9087', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6948140-a0d6-4884-abcd-3d3c53c32c64', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 4, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b269808-f85f-4211-9d3b-1d8fa2110fa4', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 5, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3aade2a-cfd7-407f-a8b4-56d76db09f4d', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 6, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('64882f26-dddd-40a4-8f4a-669b35bc90f1', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 7, NULL, 'Oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8d731d46-1113-4299-9b97-ab9ba2562739', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 8, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('47fec2a7-cc48-4b4c-896c-dbd7eb446a83', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 1, 'Roast the green chilies directly over an open flame or under a broiler, turning often, until the skins blister and blacken on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('31eae9eb-4e42-45c1-8ee5-b78f63046d3c', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 2, 'Place the charred chilies in a covered bowl to steam for 10 minutes, then peel off the skins, remove the seeds, and chop the flesh.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9cacddf1-1191-4a6f-af43-4eab288e584b', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 3, 'Cut the pork shoulder into small cubes and brown it in a heavy pot with a little vegetable oil over high heat, working in batches for about 4 minutes each, until deeply seared.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2ec09a9c-e526-4978-8484-d5597b8d27f1', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 4, 'Remove the pork and cook the diced onion in the same pot for 5 minutes, until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('187d8771-cd98-473f-8507-5868a485e7b5', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 5, 'Stir in minced garlic, cumin, and dried oregano and cook for 1 minute, until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f7524132-e61e-443f-935a-2021fa7909ce', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 6, 'Return the browned pork to the pot along with the chopped green chilies and diced potato.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('09bf1553-bad4-4697-8c13-5b92e843c8c5', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 7, 'Pour in enough chicken stock to cover everything, then bring the pot to a simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c1b819a-8563-4472-8fae-2c2c0aa28739', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 8, 'Cover and cook over low heat for 1 hour and 30 minutes, stirring occasionally, until the pork is fall-apart tender and the potato has thickened the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('64f00490-be23-4376-8802-16afdd3178d4', 'cd2fc540-8835-4314-b792-ac66b08bb07d', 9, 'Season with salt to taste and serve hot with warm tortillas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cd2fc540-8835-4314-b792-ac66b08bb07d', "id" FROM "tags" WHERE "name" = 'region:Southwest'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cd2fc540-8835-4314-b792-ac66b08bb07d', "id" FROM "tags" WHERE "name" = 'state:New Mexico'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cd2fc540-8835-4314-b792-ac66b08bb07d', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8e15509f-372a-49bd-ae9c-9d6277e3b147', 'state:Arizona', 'state') ON CONFLICT ("name") DO NOTHING;

-- Sonoran Hot Dog (Arizona, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('697c75cd-089d-4181-bcb1-009bab468d8e', 'sonoran-hot-dog-arizona-united-states', 'Sonoran Hot Dog', NULL, 'north_america'::"Continent", 'United States', 'Arizona', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('92ad5885-786e-45b7-9ab4-7db0d903dffb', '697c75cd-089d-4181-bcb1-009bab468d8e', 0, NULL, 'Hot dog') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8db973f5-e0fc-4498-949e-a7602b40d8c6', '697c75cd-089d-4181-bcb1-009bab468d8e', 1, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0982048b-bc37-4ea1-8e17-6703026ed7f6', '697c75cd-089d-4181-bcb1-009bab468d8e', 2, NULL, 'Bolillo roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eba31085-de23-43b1-97c2-b4612d9f5c73', '697c75cd-089d-4181-bcb1-009bab468d8e', 3, NULL, 'Pinto beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d57ec1dd-8b23-4717-8cb0-6834ada3d3cb', '697c75cd-089d-4181-bcb1-009bab468d8e', 4, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4bc53b06-2156-43bd-ac09-f0344a5da361', '697c75cd-089d-4181-bcb1-009bab468d8e', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3b6d69cb-39f8-47c3-8b4b-29d957edb011', '697c75cd-089d-4181-bcb1-009bab468d8e', 6, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a176c722-30fa-41be-84f6-1a9972997b08', '697c75cd-089d-4181-bcb1-009bab468d8e', 7, NULL, 'Mustard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f524c75-8a51-4f0e-8514-95e404c326a6', '697c75cd-089d-4181-bcb1-009bab468d8e', 8, NULL, 'Jalapeno salsa') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8873a7fb-5675-49c6-ad3e-30ee121e9dc3', '697c75cd-089d-4181-bcb1-009bab468d8e', 1, 'Wrap each hot dog snugly in a strip of bacon, securing the ends with a toothpick if needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a4bb8442-ddd4-4f79-b616-ce85134ecaa6', '697c75cd-089d-4181-bcb1-009bab468d8e', 2, 'Grill the bacon-wrapped hot dogs over medium heat for 8 to 10 minutes, turning frequently, until the bacon is crisp and fully cooked.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e353065b-ea40-444b-988b-08ecdecb8773', '697c75cd-089d-4181-bcb1-009bab468d8e', 3, 'Warm the pinto beans in a small pot over low heat, mashing them slightly so they become spreadable.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4f3445ba-2698-4d62-b624-003a36c6f8ff', '697c75cd-089d-4181-bcb1-009bab468d8e', 4, 'Slice open a soft bolillo roll lengthwise, leaving a hinge on one side, and warm it briefly on the grill.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('75309452-a77e-41b0-a3ee-c7fcd3af42d0', '697c75cd-089d-4181-bcb1-009bab468d8e', 5, 'Spread a layer of the warm mashed beans along the inside of the roll.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ef3d0250-b735-44f1-8efa-e60fe0fbbf09', '697c75cd-089d-4181-bcb1-009bab468d8e', 6, 'Nestle the hot, bacon-wrapped hot dog into the roll on top of the beans.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0cdd39e5-04dc-4e3b-892d-f34145ff8e90', '697c75cd-089d-4181-bcb1-009bab468d8e', 7, 'Top with diced tomato, chopped onion, and a drizzle of mayonnaise and mustard.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9a2e8dd2-1893-417a-abf8-cefd7656da0f', '697c75cd-089d-4181-bcb1-009bab468d8e', 8, 'Finish with a spoonful of jalapeno salsa for heat, then serve immediately while everything is warm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '697c75cd-089d-4181-bcb1-009bab468d8e', "id" FROM "tags" WHERE "name" = 'region:Southwest'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '697c75cd-089d-4181-bcb1-009bab468d8e', "id" FROM "tags" WHERE "name" = 'state:Arizona'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '697c75cd-089d-4181-bcb1-009bab468d8e', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('38e45e63-db1d-4e98-ba5b-e9fc078dd051', 'region:Hawaii', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7be5a5d2-0f2a-4071-bd23-737b7dcc13f3', 'state:Hawaii', 'state') ON CONFLICT ("name") DO NOTHING;

-- Loco Moco (Hawaii, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('39692237-3964-4add-93ec-9659c44833f5', 'loco-moco-hawaii-united-states', 'Loco Moco', NULL, 'north_america'::"Continent", 'United States', 'Hawaii', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7741e78-12b3-4fb8-91ee-067498fe231c', '39692237-3964-4add-93ec-9659c44833f5', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca78657c-d30e-4630-b435-3b858306f77c', '39692237-3964-4add-93ec-9659c44833f5', 1, NULL, 'White rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dd12b839-0f50-44e5-9833-4b41de33de2a', '39692237-3964-4add-93ec-9659c44833f5', 2, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc083f68-7685-42f7-b718-4f80246105b1', '39692237-3964-4add-93ec-9659c44833f5', 3, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2d960d19-9ea9-4488-814e-7dd759001d21', '39692237-3964-4add-93ec-9659c44833f5', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cee2e5a6-9834-4403-8e94-2382de4f1838', '39692237-3964-4add-93ec-9659c44833f5', 5, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('91d70a97-a904-462c-bb86-ff5c5f3e1a3e', '39692237-3964-4add-93ec-9659c44833f5', 6, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('62dc9e07-4f59-499e-b952-39de7da2d58c', '39692237-3964-4add-93ec-9659c44833f5', 7, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('beb868d7-269f-46d0-ac35-862d5c604cea', '39692237-3964-4add-93ec-9659c44833f5', 1, 'Shape the ground beef into thick patties and season them with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c4f8c69f-845a-49be-9c4f-879643500768', '39692237-3964-4add-93ec-9659c44833f5', 2, 'Cook the patties in a hot skillet over medium-high heat for about 4 minutes per side, until well browned and cooked through, then set them aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e406b5f8-f507-47c9-9081-ba0123c143f5', '39692237-3964-4add-93ec-9659c44833f5', 3, 'In the same skillet, cook sliced onion for 4 minutes, until softened, then sprinkle in flour and stir to form a paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e6cdbfb1-0924-4d2d-8bda-43f9d60ddfc6', '39692237-3964-4add-93ec-9659c44833f5', 4, 'Slowly whisk in the beef stock and a splash of soy sauce, scraping up any browned bits from the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('37d63a4e-e759-41aa-8a42-8fdf619d8ed1', '39692237-3964-4add-93ec-9659c44833f5', 5, 'Simmer the gravy for 5 minutes, until it thickens slightly, then season with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0301a61e-41b4-445b-ae8f-d3265f91b55b', '39692237-3964-4add-93ec-9659c44833f5', 6, 'Melt butter in a separate nonstick pan and fry the eggs over medium-low heat for 3 to 4 minutes, until the whites are set but the yolks remain runny.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e0e985a0-0f08-41ef-89d8-9b01f6643e6a', '39692237-3964-4add-93ec-9659c44833f5', 7, 'Scoop a generous mound of steamed white rice into each bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('92f5e7a6-fb61-4bf7-b655-45f86ed9e483', '39692237-3964-4add-93ec-9659c44833f5', 8, 'Place a beef patty on top of the rice and ladle the hot gravy generously over it.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fbe77fde-0522-49a2-8198-cb8d0d10cace', '39692237-3964-4add-93ec-9659c44833f5', 9, 'Finish each bowl with a fried egg on top so the yolk breaks over the dish when served.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '39692237-3964-4add-93ec-9659c44833f5', "id" FROM "tags" WHERE "name" = 'region:Hawaii'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '39692237-3964-4add-93ec-9659c44833f5', "id" FROM "tags" WHERE "name" = 'state:Hawaii'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '39692237-3964-4add-93ec-9659c44833f5', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;

-- Ahi Poke Bowl (Hawaii, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8e4f2de0-3bef-4557-abd5-83bb27b9d830', 'ahi-poke-bowl-hawaii-united-states', 'Ahi Poke Bowl', NULL, 'north_america'::"Continent", 'United States', 'Hawaii', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc777ca4-ae8d-4a53-8085-2e27008347cb', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 0, NULL, 'Ahi tuna') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6742b077-14f2-480b-a493-d7c877d135a0', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 1, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f857bc71-fd84-4819-9eda-bbd7de5bdab1', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 2, NULL, 'Sesame oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60bc2072-2331-4193-8e3a-dfb34b9830f5', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 3, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f8ca4e02-1c67-40fb-b2e4-4d2644f2892f', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 4, NULL, 'Sweet onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a51efe53-a4f4-4339-9bf7-bc28fe9441a8', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 5, NULL, 'Sesame seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('16d1a368-e0e7-4c2e-9415-fd7d4892bb36', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 6, NULL, 'White rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93fc72f7-512e-4a6e-ae53-b5525c3e60ae', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 7, NULL, 'Seaweed salad') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('679df06b-29a9-4405-8048-31d77fe99f8f', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 8, NULL, 'Macadamia nuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6294c51b-9b5d-464a-969d-da5aebe0f226', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 1, 'Cut the raw ahi tuna into even bite-sized cubes, keeping the pieces as uniform as possible for even seasoning.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4094fd12-1846-4928-a5fe-47b67f29637e', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 2, 'In a bowl, whisk together soy sauce, sesame oil, and a little sugar until combined.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0d2e7a28-a021-49bd-9547-f55bf9514a65', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 3, 'Add thinly sliced sweet onion, chopped green onion, and sesame seeds to the bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('771ec29a-dffe-4b8c-90ca-7b9005974016', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 4, 'Gently fold the cubed tuna into the marinade, tossing carefully so every piece gets coated without breaking apart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ad673253-1aae-4cb4-a320-ef51b6c6120b', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 5, 'Cover the bowl and let it marinate in the refrigerator for 15 to 20 minutes, no longer, so the fish stays fresh and firm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('da1b21ac-dbd1-4ef3-8f2c-8c3bfde2b940', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 6, 'Scoop warm steamed white rice into serving bowls as the base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('701d6336-24be-4499-9b2b-e6a08ce1bd29', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 7, 'Spoon the marinated poke generously over the rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2a1bd4bc-ef64-405d-89dc-18530aba24da', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 8, 'Add a small portion of seaweed salad alongside the poke for a briny contrast.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ab131673-5070-4949-8a86-f0a17acadd93', '8e4f2de0-3bef-4557-abd5-83bb27b9d830', 9, 'Scatter crushed macadamia nuts and a few extra sesame seeds over the top just before serving from the counter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8e4f2de0-3bef-4557-abd5-83bb27b9d830', "id" FROM "tags" WHERE "name" = 'region:Hawaii'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8e4f2de0-3bef-4557-abd5-83bb27b9d830', "id" FROM "tags" WHERE "name" = 'state:Hawaii'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8e4f2de0-3bef-4557-abd5-83bb27b9d830', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f9d843a3-2fe1-4d94-b08f-e3d2d3e8554e', 'region:Appalachia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d3b32af4-67f7-43fc-930f-469d88fb6aaa', 'state:Kentucky', 'state') ON CONFLICT ("name") DO NOTHING;

-- Soup Beans and Skillet Cornbread (Kentucky, United States)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0e114612-5991-48ea-b01a-8919d06dd1e3', 'soup-beans-and-skillet-cornbread-kentucky-united-states', 'Soup Beans and Skillet Cornbread', NULL, 'north_america'::"Continent", 'United States', 'Kentucky', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2125e171-4f37-4fbc-a816-e30a3f5a6ce5', '0e114612-5991-48ea-b01a-8919d06dd1e3', 0, NULL, 'Pinto beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5deb413d-2feb-4b10-8930-5bbc8f364e3d', '0e114612-5991-48ea-b01a-8919d06dd1e3', 1, NULL, 'Ham hock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6175f719-0905-4e41-aa7e-abd56fcde3e7', '0e114612-5991-48ea-b01a-8919d06dd1e3', 2, NULL, 'Yellow onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('169f68d7-fd2e-4343-aa5e-ba900f818479', '0e114612-5991-48ea-b01a-8919d06dd1e3', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9e16dc3b-38e2-4db9-a273-0371649cb37b', '0e114612-5991-48ea-b01a-8919d06dd1e3', 4, NULL, 'Cornmeal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dfa2d412-b067-4fd1-8dab-1ecbeddac429', '0e114612-5991-48ea-b01a-8919d06dd1e3', 5, NULL, 'Buttermilk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33b13164-9d5d-4210-a5cb-9dfcc796a550', '0e114612-5991-48ea-b01a-8919d06dd1e3', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f792d5bf-c327-43c8-a17d-2275672f0556', '0e114612-5991-48ea-b01a-8919d06dd1e3', 7, NULL, 'Baking powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('41f287c1-c72f-4baa-94f0-1fdbc0d0b6bb', '0e114612-5991-48ea-b01a-8919d06dd1e3', 8, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72ed35e4-53ec-4597-88cb-3843b8bcb058', '0e114612-5991-48ea-b01a-8919d06dd1e3', 1, 'Soak the dried pinto beans in a large bowl of water overnight, then drain and rinse them well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b431ac3a-4499-4132-95e9-7c01f737d340', '0e114612-5991-48ea-b01a-8919d06dd1e3', 2, 'Place the soaked beans in a pot with the ham hock, diced onion, minced garlic, and enough water to cover everything by a couple of inches.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d1f09682-63c4-4fcc-b022-653a62f2bb5b', '0e114612-5991-48ea-b01a-8919d06dd1e3', 3, 'Bring the pot to a boil, then reduce the heat and let it simmer gently, partially covered, for 2 hours, until the beans are very soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4aab6ce7-1dfa-4b71-ae17-837735c9f58d', '0e114612-5991-48ea-b01a-8919d06dd1e3', 4, 'Check occasionally and add more water if the beans start to look dry.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2d05b9b6-30dd-442b-82a0-04df9b1e3c8f', '0e114612-5991-48ea-b01a-8919d06dd1e3', 5, 'Remove the ham hock, pull off any meat, and stir the shredded meat back into the pot, discarding the bone and skin.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('01acb0a4-d9c3-49d9-a64b-8ac47d9d7776', '0e114612-5991-48ea-b01a-8919d06dd1e3', 6, 'Mash a small portion of the beans against the side of the pot to thicken the broth slightly, then season with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e338b1e4-d7b9-4e95-a07f-8d98df7d9604', '0e114612-5991-48ea-b01a-8919d06dd1e3', 7, 'While the beans finish cooking, preheat a well-oiled cast iron skillet in an oven set to 425 degrees Fahrenheit for about 10 minutes, until very hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2b2ee3e2-ec51-4849-813b-da172bfb0033', '0e114612-5991-48ea-b01a-8919d06dd1e3', 8, 'Whisk together cornmeal, baking powder, buttermilk, egg, and melted butter, then pour the batter into the hot skillet, where it should sizzle on contact.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('01cf4d10-7b7d-4a3f-9549-3852fb5e263b', '0e114612-5991-48ea-b01a-8919d06dd1e3', 9, 'Bake the cornbread for 20 to 25 minutes, until golden brown on top and a toothpick comes out clean, then serve wedges alongside bowls of the soup beans.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0e114612-5991-48ea-b01a-8919d06dd1e3', "id" FROM "tags" WHERE "name" = 'region:Appalachia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0e114612-5991-48ea-b01a-8919d06dd1e3', "id" FROM "tags" WHERE "name" = 'state:Kentucky'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0e114612-5991-48ea-b01a-8919d06dd1e3', "id" FROM "tags" WHERE "name" = 'country:United States'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('779cce87-55c2-4c3a-8431-ddf9fc475c09', 'region:Sicily', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9fe523a3-cc36-497d-9b35-f12599719e6f', 'state:Palermo', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b7b69df8-f0bc-49ff-ba4b-f2d5c6a11f26', 'country:Italy', 'country') ON CONFLICT ("name") DO NOTHING;

-- Arancini di Riso (Palermo, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5825a349-5dc2-4866-8ad7-a135d17d2434', 'arancini-di-riso-palermo-italy', 'Arancini di Riso', NULL, 'europe'::"Continent", 'Italy', 'Palermo', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9367b5b6-d834-4b4b-b6f3-f45268fa4330', '5825a349-5dc2-4866-8ad7-a135d17d2434', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3d9c459-b086-459b-818b-a6d437313d10', '5825a349-5dc2-4866-8ad7-a135d17d2434', 1, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d34e924-57aa-4194-8c6d-5d149af939cc', '5825a349-5dc2-4866-8ad7-a135d17d2434', 2, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('119417f5-eb34-4d7a-8dc6-160a521e61a7', '5825a349-5dc2-4866-8ad7-a135d17d2434', 3, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4ac68a28-bf61-4348-9285-278648c0fe1d', '5825a349-5dc2-4866-8ad7-a135d17d2434', 4, NULL, 'Peas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d978cc4c-2222-4496-ab04-91539e69d5aa', '5825a349-5dc2-4866-8ad7-a135d17d2434', 5, NULL, 'Mozzarella') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b7752b87-20db-4bd8-82e2-7f8b8bc0b037', '5825a349-5dc2-4866-8ad7-a135d17d2434', 6, NULL, 'Eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a5cf3667-887c-4822-b710-6989cd9f554b', '5825a349-5dc2-4866-8ad7-a135d17d2434', 7, NULL, 'Breadcrumbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4b87a7c6-8546-410b-a353-0706aa9fc8d8', '5825a349-5dc2-4866-8ad7-a135d17d2434', 8, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ccd1b146-b99c-46b0-b34c-17614dfd74ba', '5825a349-5dc2-4866-8ad7-a135d17d2434', 1, 'Cook rice with a pinch of saffron until tender and let it cool completely so it holds together when shaped.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cba8c6af-562c-405f-9c5e-b5dd712a702e', '5825a349-5dc2-4866-8ad7-a135d17d2434', 2, 'Meanwhile, brown ground beef with onion and tomato paste, stirring in peas, to make a thick ragu filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('324db42a-7db2-4c94-8e0f-4afa3a8d1c7c', '5825a349-5dc2-4866-8ad7-a135d17d2434', 3, 'Scoop a portion of the cooled rice into your palm and press a hollow into the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('29e01ce3-f68d-4d24-aa30-f6f250427221', '5825a349-5dc2-4866-8ad7-a135d17d2434', 4, 'Spoon in a little of the ragu filling along with a cube of mozzarella, then mold more rice around it to fully enclose the filling into a ball or cone shape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b6fa568e-f61c-420d-9a06-25116a9e8842', '5825a349-5dc2-4866-8ad7-a135d17d2434', 5, 'Roll each rice ball in flour, dip it in beaten egg, then coat thoroughly in breadcrumbs.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd576644-4651-4ee6-9d8b-d3cfe334dfc4', '5825a349-5dc2-4866-8ad7-a135d17d2434', 6, 'Heat vegetable oil in a deep pot and fry the arancini in batches until deep golden brown and crisp all over.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('40979f90-5cd1-406a-b6e5-c24ae0301fbc', '5825a349-5dc2-4866-8ad7-a135d17d2434', 7, 'Drain briefly on paper towels and let them rest for a minute before serving, since the molten cheese center stays very hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9f33ac37-8eb4-4b36-8987-daddf7f4a0c4', '5825a349-5dc2-4866-8ad7-a135d17d2434', 8, 'Serve warm as a handheld snack, straight from the paper wrapper they are traditionally sold in.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5825a349-5dc2-4866-8ad7-a135d17d2434', "id" FROM "tags" WHERE "name" = 'region:Sicily'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5825a349-5dc2-4866-8ad7-a135d17d2434', "id" FROM "tags" WHERE "name" = 'state:Palermo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5825a349-5dc2-4866-8ad7-a135d17d2434', "id" FROM "tags" WHERE "name" = 'country:Italy'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7796c6a6-4c71-4187-a9e0-1a63787d5ee5', 'region:Tuscany', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3d21c066-1a47-4819-ba48-a4ca2155dcf7', 'state:Florence', 'state') ON CONFLICT ("name") DO NOTHING;

-- Ribollita (Florence, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e66cbe51-08b4-4bf2-be81-9d41a58c829d', 'ribollita-florence-italy', 'Ribollita', NULL, 'europe'::"Continent", 'Italy', 'Florence', 'vegan'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2e51cea3-aeba-4999-84d5-a9233f8cee6c', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 0, NULL, 'Cannellini beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d6c5ce8-324a-4f86-bcb9-49c066396b63', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 1, NULL, 'Cavolo nero (Tuscan kale)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6703ff52-c24b-4be0-be4e-ca9669d04b12', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 2, NULL, 'Carrots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cea00ed9-10f8-4ecb-8157-dad16c240d67', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 3, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f47af7b-ab7c-4117-aaab-65949b12fc29', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50772756-8fa8-4028-b866-702747ef4b3e', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 5, NULL, 'Stale bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4cd47de-bcdc-4288-958c-170093e11103', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 6, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e13abf0b-8a56-4500-88c1-2c690df00f89', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 7, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c824bbdc-d9b0-4e73-ab0b-0213ea13dc32', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 8, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0ca62344-9cff-49f8-b1ae-8a35d3248f64', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 1, 'Soak dried cannellini beans overnight, then simmer them in water with a bay leaf until soft, and set aside a portion to mash into a paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ca2b5cbb-f92c-4a0c-94c0-9e81e8d38f63', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 2, 'Sauté chopped onion, carrot, and celery in olive oil over medium heat for about ten minutes, until softened and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4d947add-7e51-4899-bb92-19b7b8312aa3', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 3, 'Stir in chopped tomato and cook for a few minutes until it breaks down slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22ab0cc0-5e9a-4561-ac37-70f9ee2355f2', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 4, 'Add the whole beans, the mashed bean paste, and enough of the bean cooking liquid to make a loose soup, then simmer for twenty minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c514e6a8-9501-4414-82ba-c556ecb95c03', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 5, 'Add torn cavolo nero leaves and continue simmering until the greens turn tender and deep green.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('70ac37e0-bc43-4f43-9476-5e5994ee46f0', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 6, 'Tear stale, dense country bread into chunks and stir it directly into the pot, letting it soak up the broth and thicken the soup as it sits off the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e4f422af-0335-47a8-a66b-f52884cbec85', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 7, 'Traditionally the soup is made a day ahead and reheated, or reboiled, the next day, which is where its name comes from.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('04d99810-554c-4098-8769-fc88341c8903', 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', 8, 'Ladle into bowls and finish with a generous drizzle of good olive oil before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', "id" FROM "tags" WHERE "name" = 'region:Tuscany'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', "id" FROM "tags" WHERE "name" = 'state:Florence'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e66cbe51-08b4-4bf2-be81-9d41a58c829d', "id" FROM "tags" WHERE "name" = 'country:Italy'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9e5c3577-30ad-494c-b024-ad9cf51b79c7', 'region:Emilia-Romagna', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('78ca2f1a-23df-4238-8ba8-09a634fe32ff', 'state:Bologna', 'state') ON CONFLICT ("name") DO NOTHING;

-- Tagliatelle al Ragù (Bologna, Italy)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 'tagliatelle-al-ragu-bologna-italy', 'Tagliatelle al Ragù', NULL, 'europe'::"Continent", 'Italy', 'Bologna', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ed77d04b-0b61-4002-8884-9bebcf9f0dc8', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d11ee05a-b413-4030-8bda-715a9954d54c', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 1, NULL, 'Pancetta') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('799f4c6f-7b89-47e4-987b-e9dd9b3451de', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 2, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ff0c7472-1a5a-4f68-bb4d-209c1d50b9c9', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 3, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d8cb7e3b-68fb-48a5-a0b0-49000ae30b55', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28a5a526-897f-4c7e-a947-e658a481c221', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 5, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9ee99b28-e6da-4586-886b-002bdd152027', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 6, NULL, 'Red wine') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b49d135-c6a3-414d-8930-4a6804538356', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 7, NULL, 'Whole milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a9435ab3-3a8b-4aa0-910c-1fe3fec57b22', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 8, NULL, 'Tagliatelle pasta') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c14cf313-efc0-43c5-b4b8-e38ce64eb9cd', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 9, NULL, 'Parmesan') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b6ccb0aa-b552-47ce-94e0-da98c6d03f8e', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 1, 'Finely dice pancetta, carrot, celery, and onion, then cook them slowly in a wide pot over low heat until the pancetta renders its fat and the vegetables soften into a fragrant base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('95ab4cdb-da83-4b17-b5a2-2d5e9e424d86', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 2, 'Add ground beef and increase the heat, breaking it apart and browning it thoroughly for several minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a0321f4c-1171-413b-8861-6401a7df97ac', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 3, 'Pour in red wine and let it bubble and reduce until mostly evaporated.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('762248f8-18a0-44f5-988e-e24a15126ac9', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 4, 'Stir in tomato paste and a little stock, then reduce the heat to a bare simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aca4437b-f100-43cc-87f0-02064d460c04', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 5, 'Let the ragu cook uncovered for at least two hours, stirring occasionally and adding splashes of milk partway through to keep it rich and tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2d9cd9fc-31af-4f40-8bd9-75a1cad7c87d', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 6, 'The finished sauce should be thick, deeply savory, and hold together in loose clumps rather than looking watery.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a4c67c36-ef6c-443e-8d7f-4c295159cd16', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 7, 'Cook fresh egg tagliatelle in boiling salted water for just a minute or two, until barely tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('77058b08-01ee-4438-b065-c6f1de3d8c98', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 8, 'Toss the drained pasta directly in the ragu over low heat so the sauce clings to every strand.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4aba8359-bed0-400e-8240-7411c1b3a380', '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', 9, 'Serve immediately with a generous shower of grated Parmesan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', "id" FROM "tags" WHERE "name" = 'region:Emilia-Romagna'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', "id" FROM "tags" WHERE "name" = 'state:Bologna'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8b0dbd89-c7ec-44e4-9ee6-ab0126fa6905', "id" FROM "tags" WHERE "name" = 'country:Italy'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6c5adf43-7295-47aa-9985-55814e7ad5a2', 'region:Guangdong', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0d551338-3485-40c1-9234-d63e0d364749', 'state:Guangzhou', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5d54beec-0377-4ac1-a909-77ad7d09dbe4', 'country:China', 'country') ON CONFLICT ("name") DO NOTHING;

-- Char Siu Bao (Guangzhou, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 'char-siu-bao-guangzhou-china', 'Char Siu Bao', NULL, 'asia'::"Continent", 'China', 'Guangzhou', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db51b45f-1482-42fd-9b0c-1047ffe69dad', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 0, NULL, 'Pork shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('95a11f86-373a-4dec-ac54-c5975a46d02b', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 1, NULL, 'Hoisin sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a9b9835b-1643-4de9-99b9-d1caa4f9b9a8', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 2, NULL, 'Honey') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7c48b96c-e27a-4467-966c-cfa9821fd581', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 3, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('324543d2-379e-409e-ac55-1568c496dc3d', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 4, NULL, 'Five-spice powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a14c463a-02a7-42b5-a3d3-1c43393de478', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 5, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b27b908-5206-4981-8494-e74080071066', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 6, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba76b45e-a841-4df5-8aa0-94b6ce93077a', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 7, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fd2c1b89-7703-4a27-b7e3-14ef23886742', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 8, NULL, 'Baking powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9c446e0b-57cc-488f-a93a-42614cd957cb', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 1, 'Marinate strips of pork shoulder in a mixture of hoisin sauce, soy sauce, honey, and five-spice powder for several hours or overnight.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e442553-9ce5-47c3-bb78-9dfcc1524080', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 2, 'Roast the pork in a hot oven, basting occasionally, until the edges caramelize and turn slightly sticky, then let it cool and dice it into small pieces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d6d8b987-d119-498a-8afe-56e6f668b14b', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 3, 'Simmer the diced pork briefly with any extra marinade and a little cornstarch slurry to make a thick, glossy filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('11a1255e-fdf7-42d4-8c44-22813b230063', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 4, 'Make a soft, slightly sweet dough with flour, sugar, yeast, and baking powder, and let it rise until doubled in size.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbc37f88-3c2d-4d29-80c9-2a4e7c7bf212', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 5, 'Divide the dough into small rounds and flatten each into a disc with a thicker center and thinner edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d079e9c1-153c-49ac-aaa2-683fad5546f2', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 6, 'Spoon the char siu filling into the center of each disc and gather the edges upward, twisting to seal into a pleated bun.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0a7defa8-730c-464c-8009-729339a011f2', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 7, 'Let the shaped buns proof for a further twenty minutes, then steam them over gently boiling water for about twelve minutes, until puffed and glossy white.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bcb69959-87e3-492f-b193-3337115b1657', '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', 8, 'Serve hot, straight from the steamer basket, as they are commonly sold from carts and dim sum stalls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', "id" FROM "tags" WHERE "name" = 'region:Guangdong'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', "id" FROM "tags" WHERE "name" = 'state:Guangzhou'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '239a70a9-15e8-4eb5-80e3-ac69c9fc55cd', "id" FROM "tags" WHERE "name" = 'country:China'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('20242ac5-552e-48f0-8f97-f3307dd50c2c', 'region:Yunnan', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dcc3f365-96f9-40f1-a2b1-4fc1e31f63e1', 'state:Kunming', 'state') ON CONFLICT ("name") DO NOTHING;

-- Crossing-the-Bridge Rice Noodles (Kunming, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 'crossing-the-bridge-rice-noodles-kunming-china', 'Crossing-the-Bridge Rice Noodles', NULL, 'asia'::"Continent", 'China', 'Kunming', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b51ab9c-c383-434e-be0f-55d0744e17ab', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 0, NULL, 'Rice noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2f628847-07d6-468c-ac5b-d25a87519742', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 1, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('56ee3016-a00a-45fe-bb25-0204cb1c102d', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 2, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('71fce790-a924-4d1c-9149-101ac595bd51', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 3, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('706e7304-8eb4-44eb-914f-14fa7eaf2e5f', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 4, NULL, 'Ham') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('366fb39b-228c-4e55-9323-fefb0019d9c1', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 5, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68fd3c5e-eb82-44c8-98a9-2e74addf3dd6', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 6, NULL, 'Scallions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f184d3a-caa4-4236-8d4b-3f6407b8930c', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 7, NULL, 'Chili oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b1d11b78-5a8b-4f41-abfb-d2deed0a63f3', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 8, NULL, 'Chicken fat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4942adf1-ff9e-489d-874a-e364a003fe47', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 1, 'Simmer a whole chicken with aromatics for several hours to make a clear, deeply flavorful stock, then skim a generous layer of fat off the top and reserve it separately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('98d07c73-1602-40fe-b6cf-4fa06eb12719', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 2, 'Shred the cooked chicken meat and thinly slice cured ham into small pieces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6deac1d9-6c83-4f34-8515-994dd56c9265', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 3, 'Bring the stock to a rolling boil and ladle it into a large deep bowl, spooning a layer of the reserved chicken fat on top so the surface seals in heat without appearing to steam.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f48b1283-09aa-458f-b1b1-2a8d32b28ffe', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 4, 'Working quickly at the table, crack a raw egg into the hot broth and let it begin to poach in the residual heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('773b0e65-3683-410b-a6eb-bf1158244b85', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 5, 'Add the thin slices of ham, shredded chicken, and other raw ingredients such as bean sprouts, letting the broth''s heat cook them through in seconds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9bbb2c89-288f-45c3-92d9-3cbb47a7871d', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 6, 'Finally, add freshly boiled rice noodles to the bowl along with chopped scallions.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('27487576-d5e6-4079-90f6-2d0b42883223', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 7, 'Stir everything together gently so the egg finishes cooking and the noodles absorb the rich broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1fe58902-2932-4f28-8911-bc4fbc2c7594', 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', 8, 'Season with a spoonful of chili oil to taste and eat immediately while the broth is still steaming hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', "id" FROM "tags" WHERE "name" = 'region:Yunnan'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', "id" FROM "tags" WHERE "name" = 'state:Kunming'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b09ea0ce-3c90-43b1-93b3-81afffd6eab4', "id" FROM "tags" WHERE "name" = 'country:China'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d8281809-c53b-43c1-ae89-bd27d38c50de', 'region:Shaanxi', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('41e27618-34e4-4ead-9302-bac74dc814af', 'state:Xi''an', 'state') ON CONFLICT ("name") DO NOTHING;

-- Roujiamo (Xi'an, China)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('62c48808-d7d9-43f2-be76-f7d39ff9c4da', 'roujiamo-xian-china', 'Roujiamo', NULL, 'asia'::"Continent", 'China', 'Xi''an', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2885ce76-bb65-46a4-8f22-3e1406bea796', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 0, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60754a96-3568-46c5-ad47-a4684e3673fa', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 1, NULL, 'Star anise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b9790d5c-4f14-4e36-bbac-69627610cd02', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 2, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b8cdcefc-65ad-44e1-967d-a85818c2fa36', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 3, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80a1b740-c448-4935-b592-8920735bb2dc', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 4, NULL, 'Rock sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60998db1-618b-4832-9756-c09d3ef494ce', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 5, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3aa2c17a-0b4d-47df-8b49-3048eadb892f', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 6, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93fccbc5-68a2-4175-a0a5-e6dce5169550', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 7, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bef127f6-af9e-4e54-a7a0-525863553bec', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 8, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('04364ef2-aa99-4bba-908f-c6ea8e62de61', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 1, 'Simmer pork belly in a spiced braising liquid of soy sauce, rock sugar, star anise, cinnamon, and ginger for around two hours, until the meat is fork-tender and the fat has turned soft and translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc8d875a-0d85-42a2-85c0-baa139e9eb78', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 2, 'Let the pork cool slightly in its braising liquid so it stays moist, then chop it roughly with a cleaver, mixing in some of the reduced braising sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6cadd69d-a85e-4836-b9e6-de7e9ef469c7', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 3, 'Make a simple leavened dough with flour, yeast, and water, and let it rest until it puffs slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c3746633-7220-4e59-a97f-4dd10a8a2b63', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 4, 'Divide the dough into rounds and press each into a flat disc.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('33d44229-6edd-4e39-bc76-bf6054dcf7dc', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 5, 'Cook the discs on a dry, hot griddle, flipping occasionally, until both sides develop golden-brown charred spots and the inside stays soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ba2f17b8-7945-4d2f-b974-3aec9a67a0ba', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 6, 'Split each bread open along one edge without cutting all the way through, forming a pocket.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('01b53952-4117-464e-8614-060cc1f32501', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 7, 'Stuff the pocket generously with the chopped, saucy pork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7604e79b-f560-4593-a871-711b2641f138', '62c48808-d7d9-43f2-be76-f7d39ff9c4da', 8, 'Serve immediately, often alongside a bowl of cold noodles or spiced soup, as is common from street stalls in Xi''an.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '62c48808-d7d9-43f2-be76-f7d39ff9c4da', "id" FROM "tags" WHERE "name" = 'region:Shaanxi'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '62c48808-d7d9-43f2-be76-f7d39ff9c4da', "id" FROM "tags" WHERE "name" = 'state:Xi''an'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '62c48808-d7d9-43f2-be76-f7d39ff9c4da', "id" FROM "tags" WHERE "name" = 'country:China'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('11cd8d10-04f2-46a7-8f0b-be89f419bcf1', 'region:Thua Thien Hue', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ab590bad-e8ca-437a-b0c1-967a834e2069', 'state:Hue', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b64258fd-f9ec-4266-b983-2f008e51e43d', 'country:Vietnam', 'country') ON CONFLICT ("name") DO NOTHING;

-- Bun Bo Hue (Hue, Vietnam)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d2dd8868-caf9-469a-9aa3-f0848f664d04', 'bun-bo-hue-hue-vietnam', 'Bun Bo Hue', NULL, 'asia'::"Continent", 'Vietnam', 'Hue', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7740af4a-b90d-4f80-b550-983518bd9d67', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 0, NULL, 'Beef shank') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c1a4eb6-94d1-45f0-b682-f060818f05e1', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 1, NULL, 'Pork hock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e9b9e958-3078-42eb-aced-39f9e46377c4', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 2, NULL, 'Lemongrass') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b1926c3-b50c-4c2e-a101-0db141d4ab4e', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 3, NULL, 'Shrimp paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('94782717-cd72-4768-8fb7-050595367b42', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 4, NULL, 'Chili oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('675709cf-bedd-471f-b6b6-6a21079a8cda', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 5, NULL, 'Rice vermicelli') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3bdca0c-8414-4f32-9367-c959699a2061', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 6, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('637cf7ee-5dcc-4aaa-b391-3d1dcd87489f', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 7, NULL, 'Banana blossom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f42a476-2c16-4df3-97bf-a3d8bceb482c', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 8, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ad4e44c2-6b8c-41f3-b1fb-85cb6dfc95dd', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 1, 'Simmer beef shank and pork hock together in a large pot of water for a couple of hours, skimming off any foam, until both are tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1cac62fc-f768-4351-88d9-8200e1ff9935', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 2, 'Bruise stalks of lemongrass and add them to the pot along with shallots, letting the broth simmer further to absorb their fragrance.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('67a76f81-763a-4561-8161-6c0ce16eb1cd', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 3, 'Stir a spoonful of fermented shrimp paste into the broth for depth, along with a splash of fish sauce and a little sugar to balance the seasoning.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c2bb45fc-2be1-4f0c-a4fb-ca5176cd939d', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 4, 'Remove the meats, slice the beef shank thinly, and chop the pork hock into pieces, then set them aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1d773577-0d14-48c4-922d-150b2c35db63', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 5, 'Skim excess fat from the top of the broth and stir in a spoonful of chili oil to give the soup its characteristic reddish tint and gentle heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5481b5c5-c418-4c2d-bfbe-d2d11664b7c9', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 6, 'Cook thick round rice vermicelli noodles separately until tender, then divide them among serving bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ae232351-43f3-4786-8b93-b1654b0c0970', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 7, 'Ladle the hot, spicy broth over the noodles and top with the sliced beef and pork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('651daaff-3b5f-4677-aaa3-21db25dafac5', 'd2dd8868-caf9-469a-9aa3-f0848f664d04', 8, 'Serve with a plate of fresh herbs, shredded banana blossom, bean sprouts, and lime wedges for guests to add themselves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd2dd8868-caf9-469a-9aa3-f0848f664d04', "id" FROM "tags" WHERE "name" = 'region:Thua Thien Hue'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd2dd8868-caf9-469a-9aa3-f0848f664d04', "id" FROM "tags" WHERE "name" = 'state:Hue'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd2dd8868-caf9-469a-9aa3-f0848f664d04', "id" FROM "tags" WHERE "name" = 'country:Vietnam'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1369ea99-1e72-4d18-94d1-62d082712605', 'region:Quang Nam', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('86549a14-a310-4d71-8672-3869862da582', 'state:Hoi An', 'state') ON CONFLICT ("name") DO NOTHING;

-- Cao Lau (Hoi An, Vietnam)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('c70de9cc-69f0-4668-a46c-4467fd85fd4a', 'cao-lau-hoi-an-vietnam', 'Cao Lau', NULL, 'asia'::"Continent", 'Vietnam', 'Hoi An', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8d717991-f31e-4c91-aecf-ad03874477b2', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 0, NULL, 'Cao lau noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('221dd88a-91c6-408b-961b-232bef45eb03', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 1, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('22fdcfb5-14e1-47a8-9b77-3f575c78bef7', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 2, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('939f0d66-bf62-4a23-a009-52816c316c78', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 3, NULL, 'Five-spice powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0072c468-81b8-443f-bb67-c2052b2dd23c', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 4, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('899e8598-4cf0-4b93-af67-5615dfe9183a', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 5, NULL, 'Fresh herbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('84cbecd4-6b39-400f-9082-59b325fe8e18', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 6, NULL, 'Rice crackers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f3daa61e-eb4b-477c-94ca-0a71a02c6d22', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 7, NULL, 'Star anise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('70ad003c-9fbb-4d7e-a85e-b53eedd0bd86', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 1, 'Marinate slices of pork belly in soy sauce, five-spice powder, and a little sugar for at least an hour.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2cfa8184-c7ce-4677-8a6f-62acc831af52', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 2, 'Sear the marinated pork in a hot pan until the edges caramelize, then add a splash of water and simmer briefly until the pork is glazed and tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7f6cde06-73f2-454f-8581-e0e2b3c5128e', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 3, 'Cook thick, chewy cao lau noodles, which are traditionally made with water from a specific local well, in boiling water just until tender, then drain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8b46b9a3-75c1-40ec-9c0a-e8be7d8a0d9b', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 4, 'Toss the warm noodles with a small amount of the pork''s cooking liquid so they take on a light golden color and savory flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('983998dc-ad16-4c1e-a905-b8fe111706d4', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 5, 'Arrange the noodles in a bowl and top with the sliced braised pork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dc6027aa-83e0-4691-86dd-f99402b311f6', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 6, 'Scatter over a small handful of fresh bean sprouts and torn herbs such as mint and coriander, keeping the noodles mostly dry rather than soupy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ea38d2b3-78bb-4a19-ac62-0a9fb49510d6', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 7, 'Crumble a few crisp rice crackers over the top for crunch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('663d9293-dda0-4ab6-aaa5-e97cf8f5e374', 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', 8, 'Serve immediately at room temperature, as is typical from the noodle stalls of Hoi An''s old town.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', "id" FROM "tags" WHERE "name" = 'region:Quang Nam'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', "id" FROM "tags" WHERE "name" = 'state:Hoi An'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'c70de9cc-69f0-4668-a46c-4467fd85fd4a', "id" FROM "tags" WHERE "name" = 'country:Vietnam'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0fde1542-3878-4ae9-883b-540851099439', 'region:Mekong Delta', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b3de12ed-c0c3-4e30-92dc-44bd450f00c0', 'state:Can Tho', 'state') ON CONFLICT ("name") DO NOTHING;

-- Banh Xeo (Can Tho, Vietnam)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 'banh-xeo-can-tho-vietnam', 'Banh Xeo', NULL, 'asia'::"Continent", 'Vietnam', 'Can Tho', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('529f6a5a-bc40-400e-bced-4e8772e3491c', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 0, NULL, 'Rice flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('543a6926-06fa-4542-8dc8-f9f63ccbe761', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 1, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5b4732ab-166c-43d2-a52c-59296dff8762', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 2, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c56398c-58ee-4b9a-972c-bffff76cf7f5', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 3, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1a361975-2b81-48cd-b425-a6210c76e036', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 4, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6710420e-9df0-41ba-88a1-93fcc650630c', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 5, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00ed8186-3d43-4264-bd78-eab40859bcef', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 6, NULL, 'Scallions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('29785c91-bbb7-4d20-adce-4076b00c3315', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 7, NULL, 'Lettuce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3e43e569-ef70-4084-b967-55504114230a', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 8, NULL, 'Fresh herbs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ccda8794-4037-437e-a155-8748cc0e285a', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 9, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('db6f6725-804a-4397-8ab7-821b17648222', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 1, 'Whisk rice flour with turmeric, coconut milk, and water into a thin, pourable batter and let it rest for at least thirty minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6b836bf4-8edd-4c7a-bb33-eb3259b6f092', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 2, 'Stir-fry sliced pork belly and shrimp in a very hot, well-oiled pan just until the shrimp turns pink.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1937e2a7-39a0-450c-b88c-8f85145608b9', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 3, 'Pour a ladle of batter into the hot pan, swirling quickly to spread it into a thin, even layer that sizzles loudly against the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('249eb3c5-eff8-4f6a-9ef1-acf19097649e', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 4, 'Scatter bean sprouts and scallions over half of the crepe and let the edges crisp and turn lacy for a few minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2f39278e-5127-4e18-b43c-2e136f556979', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 5, 'Fold the crepe in half over the filling once the edges lift easily from the pan and the batter is fully set.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('738ccb63-f73a-42f2-ad02-a23d12dff42e', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 6, 'Slide the folded crepe onto a plate and repeat with the remaining batter and filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('726ce774-8d2a-4c4b-994c-e0a74fe4ad51', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 7, 'Tear off pieces of the crepe and wrap them in lettuce leaves along with fresh herbs.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3bf1fb52-d5c7-4906-ad80-f44e1f1f5151', 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', 8, 'Dip each wrapped piece into a bowl of sweet and tangy fish sauce dip before eating.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', "id" FROM "tags" WHERE "name" = 'region:Mekong Delta'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', "id" FROM "tags" WHERE "name" = 'state:Can Tho'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a0338e7f-873a-4bfc-a3b2-0dec306e3cee', "id" FROM "tags" WHERE "name" = 'country:Vietnam'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8bc45596-b56d-4e9d-b177-fbff32701ae2', 'region:Scotland', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('112e0aa3-3abe-4503-aaf8-9374eba0cf2e', 'state:Moray', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9227169e-a3cc-4ab9-815b-ad8871e9c5ac', 'country:United Kingdom', 'country') ON CONFLICT ("name") DO NOTHING;

-- Cullen Skink (Moray, United Kingdom)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4c4d8109-be34-4379-ac71-087a0c989002', 'cullen-skink-moray-united-kingdom', 'Cullen Skink', NULL, 'europe'::"Continent", 'United Kingdom', 'Moray', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2a40e1fe-88f0-4c23-bf5f-1fbd279e7af6', '4c4d8109-be34-4379-ac71-087a0c989002', 0, NULL, 'Smoked fish (haddock)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba70e72c-17ad-47c3-9cf2-05330ca6e1f5', '4c4d8109-be34-4379-ac71-087a0c989002', 1, NULL, 'Potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('661e310e-952a-4c1e-9060-2f2b9504a495', '4c4d8109-be34-4379-ac71-087a0c989002', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5f7f8224-63b9-417a-ba8a-cf2ed52e5062', '4c4d8109-be34-4379-ac71-087a0c989002', 3, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6156f6ab-e845-42f3-9f71-c6de20cc5359', '4c4d8109-be34-4379-ac71-087a0c989002', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('746f1c28-ac7e-4e62-8717-8d5514ce1122', '4c4d8109-be34-4379-ac71-087a0c989002', 5, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f0f6f34-3070-40cf-8d3e-43ee82143986', '4c4d8109-be34-4379-ac71-087a0c989002', 6, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bff00764-2061-4086-b307-9b59eda51bd0', '4c4d8109-be34-4379-ac71-087a0c989002', 1, 'Place smoked haddock fillets in a wide pan, cover with milk, and add a bay leaf, then gently poach over low heat for about eight minutes, until the fish is just cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eb6104cb-188a-49a7-a3fa-139e3cde534a', '4c4d8109-be34-4379-ac71-087a0c989002', 2, 'Lift the haddock out of the milk and set it aside, straining and reserving the poaching milk separately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('953e66a7-4734-4a76-9d72-a4c13c3a791e', '4c4d8109-be34-4379-ac71-087a0c989002', 3, 'Melt butter in a pot and cook finely chopped onion over medium heat for about eight minutes, until soft and translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d46cda8e-54c7-43d5-a63a-a05a6edc703a', '4c4d8109-be34-4379-ac71-087a0c989002', 4, 'Add diced potatoes to the pot along with the reserved poaching milk and a little water, then simmer for fifteen minutes, until the potatoes are tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df039528-3a96-4387-8b49-5f9c6f6eabb4', '4c4d8109-be34-4379-ac71-087a0c989002', 5, 'Mash some of the potatoes directly in the pot against the side to thicken the soup slightly while leaving other pieces whole.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('30a05a32-f393-462d-8129-4c7325aad38c', '4c4d8109-be34-4379-ac71-087a0c989002', 6, 'Flake the poached haddock into large chunks, discarding any skin and bones, and stir it gently into the soup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b0530e7f-b3b9-4cf3-94fc-bf47c0a08c66', '4c4d8109-be34-4379-ac71-087a0c989002', 7, 'Simmer for a few more minutes so the fish warms through without breaking apart too much.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22354774-bc26-4f0f-bc3d-7634853b34e8', '4c4d8109-be34-4379-ac71-087a0c989002', 8, 'Season with black pepper, ladle into bowls, and finish with a knob of butter and chopped parsley on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4c4d8109-be34-4379-ac71-087a0c989002', "id" FROM "tags" WHERE "name" = 'region:Scotland'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4c4d8109-be34-4379-ac71-087a0c989002', "id" FROM "tags" WHERE "name" = 'state:Moray'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4c4d8109-be34-4379-ac71-087a0c989002', "id" FROM "tags" WHERE "name" = 'country:United Kingdom'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d0ecfa43-209d-4ba7-8f5b-5b91fc33f679', 'region:South West England', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('63e11845-81b1-44f8-8b18-dd68329fa22f', 'state:Cornwall', 'state') ON CONFLICT ("name") DO NOTHING;

-- Cornish Pasty (Cornwall, United Kingdom)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ecf656c5-0282-4890-a37d-e6848e5b4565', 'cornish-pasty-cornwall-united-kingdom', 'Cornish Pasty', NULL, 'europe'::"Continent", 'United Kingdom', 'Cornwall', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('161b2662-bb68-4e4b-a168-6c4c905ce0b6', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3422a535-0aec-4a67-a885-fff7b965e0f8', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 1, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9afd95c4-4255-4181-9298-6b96e52cbd88', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 2, NULL, 'Beef skirt steak') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4725e9ff-67e4-4f23-9183-308bfd2ba643', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 3, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ef89d0fc-fe32-4809-9e94-1ef1dd550eb6', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 4, NULL, 'Swede (rutabaga)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a75f2cb-3876-4fe0-aea4-b820f354176f', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('04b62cb4-2209-49e5-bc69-fce459495191', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7d6d12a8-b829-415e-ab65-72450503ee1c', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 1, 'Rub cold cubed butter into flour with a pinch of salt until the mixture resembles coarse crumbs, then bind it with cold water into a firm dough and chill it for at least thirty minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3964b1b4-edce-4ed6-8624-a108cf9eeb6c', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 2, 'Roll the dough out and cut it into large rounds using a plate as a guide.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cc44bd79-cc7b-4d00-a693-7ce944e90050', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 3, 'Dice beef skirt steak, potato, swede, and onion into small even pieces and toss them together with a good amount of salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('528202cf-4e75-4b0e-b2e6-b9a60a6d0c82', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 4, 'Pile the raw filling onto one half of each pastry round, leaving a border clear around the edge.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0ecf2dcc-5a06-4343-af26-cbe28eae3db0', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 5, 'Brush the border with water, fold the other half of the pastry over the filling, and press the edges together firmly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0fadb626-90e8-4a18-8570-57773a1bf8c6', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 6, 'Crimp the sealed edge by folding it over on itself in a rope pattern along the curve, which was traditionally done so tin miners could hold the pasty by its edge without touching the filling with dirty hands.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('89b59078-4937-4f9c-9126-700e68e51db4', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 7, 'Brush the top of each pasty with beaten egg for a shiny finish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b3de31fb-d05d-465c-ab00-4a10e3470944', 'ecf656c5-0282-4890-a37d-e6848e5b4565', 8, 'Bake in a hot oven for the first twenty minutes, then reduce the heat and continue baking for another forty minutes, until the pastry is deep golden and the filling inside is tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ecf656c5-0282-4890-a37d-e6848e5b4565', "id" FROM "tags" WHERE "name" = 'region:South West England'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ecf656c5-0282-4890-a37d-e6848e5b4565', "id" FROM "tags" WHERE "name" = 'state:Cornwall'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ecf656c5-0282-4890-a37d-e6848e5b4565', "id" FROM "tags" WHERE "name" = 'country:United Kingdom'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('133dc659-1bfc-4308-9875-6bb659205773', 'region:North West England', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('480af074-a28b-4393-86bd-d7c7e21b6de2', 'state:Lancashire', 'state') ON CONFLICT ("name") DO NOTHING;

-- Lancashire Hotpot (Lancashire, United Kingdom)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('985a4c29-d3f5-477a-a37a-9d93ea97acd1', 'lancashire-hotpot-lancashire-united-kingdom', 'Lancashire Hotpot', NULL, 'europe'::"Continent", 'United Kingdom', 'Lancashire', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e16bf5ef-b890-476b-8915-e9dc218bfc53', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 0, NULL, 'Lamb neck or shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('af287a98-40e4-4dd4-b45f-409606438793', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 1, NULL, 'Potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7faa9618-05e1-4a99-a6e6-8dc3edf1e7dd', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('29becb59-c357-4331-b934-0bc0a8c1761c', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 3, NULL, 'Carrots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0711899-df9b-4adb-81cf-c269ab242005', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 4, NULL, 'Lamb or beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('45085971-4653-45b5-9894-eca3814d220c', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 5, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96ec0203-fc25-4a27-af7f-c91a5e7deced', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 6, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e6d99d12-6a6a-48a1-ab3d-84735c160693', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a0f2f0f3-cd11-4dbd-a87d-38cbe842b1c1', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 1, 'Trim lamb neck or shoulder into large chunks and brown them in batches in a hot pan, then set the meat aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f538876-a73e-41cc-9062-1e69d23653d9', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 2, 'Slice potatoes, onion, and carrots thinly and layer some of the onion and carrot in the bottom of a deep baking dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a91402c7-feb5-4ff3-996f-1c3e74d2ff7a', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 3, 'Arrange the browned lamb over the vegetables, season well, and scatter over the rest of the onion and carrot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7ff235e-982e-4d85-b893-8f15d638a298', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 4, 'Pour in enough stock mixed with a dash of Worcestershire sauce to almost cover the meat and vegetables, tucking in a bay leaf.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec0b1c10-66dc-4de6-b777-cdafca7d60fa', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 5, 'Arrange overlapping layers of sliced potato on top, covering the dish completely, and brush the top layer with a little melted butter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6993bcfa-1a99-412f-b5a4-893945e6a319', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 6, 'Cover the dish and bake low and slow for around two hours, until the meat is meltingly tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c97c4837-4064-4ab0-b600-120969cae99b', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 7, 'Remove the cover for the final thirty minutes of cooking, and raise the oven temperature slightly so the potato topping turns golden and crisp at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5a11d71b-067a-46cc-9b45-6fffcb8bb0b4', '985a4c29-d3f5-477a-a37a-9d93ea97acd1', 8, 'Rest the hotpot briefly before serving it straight from the dish, often alongside pickled red cabbage.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '985a4c29-d3f5-477a-a37a-9d93ea97acd1', "id" FROM "tags" WHERE "name" = 'region:North West England'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '985a4c29-d3f5-477a-a37a-9d93ea97acd1', "id" FROM "tags" WHERE "name" = 'state:Lancashire'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '985a4c29-d3f5-477a-a37a-9d93ea97acd1', "id" FROM "tags" WHERE "name" = 'country:United Kingdom'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1d7a65af-099e-42cb-b657-4322a990e601', 'region:Southeastern Anatolia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('335bb3c7-ae9f-41d4-bdfc-b7f3da2dcbb2', 'state:Gaziantep', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8d89a312-f556-42e7-a40e-d0a632c9f2fe', 'country:Turkey', 'country') ON CONFLICT ("name") DO NOTHING;

-- Baklava (Gaziantep, Turkey)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 'baklava-gaziantep-turkey', 'Baklava', NULL, 'asia'::"Continent", 'Turkey', 'Gaziantep', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0fb3c72b-8f39-4b58-8598-910f53258dd8', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 0, NULL, 'Phyllo pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('36889b63-f1b4-4c25-83a8-9e271bf4055f', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 1, NULL, 'Pistachios') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('08c0cb89-e59a-4ea2-8546-c47e62996260', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 2, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9df11576-cbdd-4457-8467-7f6b8cee92aa', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc0555c0-b72e-4f38-9a9d-1a6c389a8c84', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 4, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0f9e1c08-7915-428c-9094-4f25be6358a2', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 5, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('38d44e63-61f4-433b-bebc-81498fd37538', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 1, 'Melt butter and brush it generously over the base of a wide baking tray.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('505153ac-0852-4daf-820e-a299bd62a28f', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 2, 'Layer sheets of thin phyllo pastry into the tray one at a time, brushing melted butter between every couple of sheets, building up about half the total layers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('287da7d2-4ba7-4ff0-ab98-9467e62fbebb', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 3, 'Finely chop pistachios and spread an even layer of them across the buttered phyllo base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f87527a9-88e2-4090-8c20-662ca205732b', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 4, 'Continue layering the remaining phyllo sheets on top, brushing butter between each one, finishing with a well-buttered top layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4cff7d3c-fc25-4237-b819-912e23f8f366', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 5, 'Using a sharp knife, cut the assembled pastry into diamond or square shapes, cutting all the way through to the bottom of the tray.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b7ac971f-b867-4d85-b2d1-0e3d96ef8a32', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 6, 'Bake in a moderate oven for about forty minutes, until the top turns deep golden brown and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('71c565fe-9f51-4d2d-a4e8-2880abe9286e', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 7, 'While the baklava bakes, dissolve sugar in water with a squeeze of lemon juice and simmer it into a light syrup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('165ee52c-8347-449f-8f36-a59f0acb54e8', '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', 8, 'Pour the hot syrup evenly over the baklava as soon as it comes out of the oven, letting it soak in fully as the pastry cools before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', "id" FROM "tags" WHERE "name" = 'region:Southeastern Anatolia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', "id" FROM "tags" WHERE "name" = 'state:Gaziantep'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '11d060f7-9b00-4ee8-b7a6-094d1fad51e1', "id" FROM "tags" WHERE "name" = 'country:Turkey'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a8392d71-9722-4ecd-b032-f3e0db56bfed', 'region:Black Sea Region', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('664b8022-b8ff-40e0-9754-b5e215c1894b', 'state:Trabzon', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kuymak (Trabzon, Turkey)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ab77d31d-9260-4353-ac2f-9295a50c4710', 'kuymak-trabzon-turkey', 'Kuymak', NULL, 'asia'::"Continent", 'Turkey', 'Trabzon', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68753117-fcf4-476c-b0d2-7547e812fccb', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 0, NULL, 'Cornmeal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7b662574-4a5b-4bc1-a16d-a2db07e89282', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 1, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2beea00a-c727-4d7a-94c6-0964d533a17c', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 2, NULL, 'Local cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c9295f33-63f6-44d6-9187-849d157be13f', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 3, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df149a9c-d694-4c90-b2ab-13c84dd8fcc9', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 1, 'Melt a generous amount of butter in a heavy pan over medium heat until it turns lightly golden and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9d439471-0e8f-43d2-bd84-73745b535bde', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 2, 'Slowly sprinkle in cornmeal while whisking constantly, so it does not clump, then add a little water to loosen the mixture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('104aa08a-88a9-40ef-87f1-8bd71a224405', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 3, 'Reduce the heat to low and let the cornmeal cook gently, stirring frequently, for about ten minutes, until it thickens and loses its raw, gritty texture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('90936bee-f191-49fd-9bec-b1bfbfd3a0fb', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 4, 'Grate or tear a soft, stretchy local cheese into small pieces and add it gradually to the pan, stirring continuously.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4b9722ed-8d19-4726-966a-70fe2b880147', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 5, 'Keep stirring over low heat until the cheese melts completely and the mixture becomes smooth, glossy, and elastic, with long stretchy strands forming when lifted with a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a77544e9-2f91-491a-964e-fd6546c2a2c9', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 6, 'Taste and adjust with a touch more butter if the mixture looks dry rather than glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e4e9d848-dae6-4cce-a95a-40d1ec033319', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 7, 'Serve immediately straight from the pan while still bubbling hot, since the dish stiffens quickly as it cools.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88d4345b-595e-4b60-9100-b4fae8632757', 'ab77d31d-9260-4353-ac2f-9295a50c4710', 8, 'Traditionally it is eaten by dipping bread directly into the pan, sharing among the table.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab77d31d-9260-4353-ac2f-9295a50c4710', "id" FROM "tags" WHERE "name" = 'region:Black Sea Region'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab77d31d-9260-4353-ac2f-9295a50c4710', "id" FROM "tags" WHERE "name" = 'state:Trabzon'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab77d31d-9260-4353-ac2f-9295a50c4710', "id" FROM "tags" WHERE "name" = 'country:Turkey'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9c697e29-44dc-4ef8-a5e9-3d5ba8433753', 'state:Şanlıurfa', 'state') ON CONFLICT ("name") DO NOTHING;

-- Lahmacun (Şanlıurfa, Turkey)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('52e08fd7-09d5-416a-bf0d-eac22430190c', 'lahmacun-sanliurfa-turkey', 'Lahmacun', NULL, 'asia'::"Continent", 'Turkey', 'Şanlıurfa', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('247df047-6934-4a8d-9297-aa1ab2535694', '52e08fd7-09d5-416a-bf0d-eac22430190c', 0, NULL, 'Ground lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1826399-a17d-4a82-8c6e-50524032b2ca', '52e08fd7-09d5-416a-bf0d-eac22430190c', 1, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0b038376-84a3-4f23-ad4e-b248d57026eb', '52e08fd7-09d5-416a-bf0d-eac22430190c', 2, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('77cb43e4-b788-4d2f-9dac-fc29cb22a6b1', '52e08fd7-09d5-416a-bf0d-eac22430190c', 3, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8ca0c166-2087-45a4-9e6c-cfca6f9f7e7e', '52e08fd7-09d5-416a-bf0d-eac22430190c', 4, NULL, 'Red bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('496d0039-6efd-46dc-a371-d856297c92dd', '52e08fd7-09d5-416a-bf0d-eac22430190c', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cb6863ba-9587-4756-a694-27b7a12b6535', '52e08fd7-09d5-416a-bf0d-eac22430190c', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c6b0c0ca-00c4-4c8a-8aae-09719bdf2c5f', '52e08fd7-09d5-416a-bf0d-eac22430190c', 7, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ab82b6e0-4345-4dc3-8a78-eff3205bdb0c', '52e08fd7-09d5-416a-bf0d-eac22430190c', 8, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0f72cdbb-6e50-4ff5-8a57-cf6449639cf6', '52e08fd7-09d5-416a-bf0d-eac22430190c', 9, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a78795c0-a69b-4063-8e1c-78b76134cddc', '52e08fd7-09d5-416a-bf0d-eac22430190c', 1, 'Make a simple yeasted dough with flour, water, and a little oil, and let it rest until slightly puffed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1a14a244-024b-4937-92df-0dde70a38c0c', '52e08fd7-09d5-416a-bf0d-eac22430190c', 2, 'Blend tomato, red bell pepper, onion, and garlic into a smooth, thick paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8362e25d-7224-4613-a93f-db78e9008471', '52e08fd7-09d5-416a-bf0d-eac22430190c', 3, 'Mix the paste with ground lamb, chopped parsley, and paprika until it forms a spreadable, well-seasoned filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('004fc205-e3cd-4312-a3e1-c206e0e58f8c', '52e08fd7-09d5-416a-bf0d-eac22430190c', 4, 'Divide the dough into small balls and roll each one out into a very thin, almost paper-like round.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ead69496-752a-4a41-978a-4f7ecc1aa2ad', '52e08fd7-09d5-416a-bf0d-eac22430190c', 5, 'Spread a thin, even layer of the meat mixture over each round, right to the edges, so it covers the dough completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd46fba5-8bfc-49b2-99d6-3ed96bf751eb', '52e08fd7-09d5-416a-bf0d-eac22430190c', 6, 'Slide the topped rounds into a very hot oven, or onto a hot flat griddle, and cook for just a few minutes, until the edges of the dough turn crisp and lightly charred and the meat topping is cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7b4ca807-a6b8-4bbd-a82c-fa081caa7164', '52e08fd7-09d5-416a-bf0d-eac22430190c', 7, 'Squeeze fresh lemon juice over the hot lahmacun as soon as it comes off the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d99fcc73-0692-4ac6-8017-8b1c89cc39ec', '52e08fd7-09d5-416a-bf0d-eac22430190c', 8, 'Roll it up around a handful of fresh parsley and sliced onion, and eat it immediately while walking, as is common from street vendors.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '52e08fd7-09d5-416a-bf0d-eac22430190c', "id" FROM "tags" WHERE "name" = 'region:Southeastern Anatolia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '52e08fd7-09d5-416a-bf0d-eac22430190c', "id" FROM "tags" WHERE "name" = 'state:Şanlıurfa'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '52e08fd7-09d5-416a-bf0d-eac22430190c', "id" FROM "tags" WHERE "name" = 'country:Turkey'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a3294edb-371a-4738-8b83-de1ea10333d0', 'region:Northern Thailand', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d3d34ab1-632b-4882-8f13-0ce6826e3266', 'state:Chiang Mai', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6fd43c99-bef5-4291-a618-0a5c140d6edb', 'country:Thailand', 'country') ON CONFLICT ("name") DO NOTHING;

-- Khao Soi (Chiang Mai, Thailand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 'khao-soi-chiang-mai-thailand', 'Khao Soi', NULL, 'asia'::"Continent", 'Thailand', 'Chiang Mai', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9fa7ff59-98d6-4ddd-aa10-363d53c554c2', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 0, NULL, 'Egg noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5db42d11-054b-463d-8157-85d80f1fcd60', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 1, NULL, 'Chicken thighs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('216ce244-c942-42d0-bee2-5195379f3de8', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 2, NULL, 'Red curry paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2acd9d3f-b59c-4df4-a9c4-6c5ab156ca1d', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 3, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('67fdfac4-2bea-4909-ae14-4402404b8cf1', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 4, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('357b55dc-c9f3-47aa-9dee-aec32af874f8', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 5, NULL, 'Shallots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a1d2095-d8a7-4f0c-af06-56f08e416d07', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 6, NULL, 'Pickled mustard greens') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5eff7df3-0c53-4657-a2d5-68afa62d002b', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 7, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c222e96d-1f73-4aa2-b6fe-52b776274403', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 8, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dea720f4-c3e1-4d44-b53e-9f1a9c5d1bb3', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 1, 'Fry a portion of fresh egg noodles in hot oil in small batches until they puff and turn crisp and golden, then drain them on paper towels and set aside for topping.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f51e6398-77d3-4ebd-abba-52a671389120', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 2, 'Fry red curry paste with a little turmeric in oil over medium heat for a few minutes, until it turns deeply fragrant and slightly darker in color.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b29333b4-4e51-4ae0-88e6-519d7f2909eb', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 3, 'Stir in coconut milk gradually, letting the paste dissolve smoothly into it, then bring the mixture to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6a3aeefa-2548-4072-8b76-8000da2ede0c', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 4, 'Add chicken thighs to the simmering broth and cook for fifteen to twenty minutes, until the chicken is tender and the broth has thickened slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('57918d80-a79c-4748-82d3-fb2e92f1588a', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 5, 'Season the broth with fish sauce, a little sugar, and a splash more coconut milk for richness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3dd2c0d3-ad6c-4148-97dd-3bf2da52265f', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 6, 'Cook a fresh batch of egg noodles in boiling water until tender, then divide them among serving bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d4b6318f-ce9d-4560-b34a-4ca0e7dc4047', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 7, 'Ladle the hot chicken curry broth generously over the noodles.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('98ee1419-ba04-4293-bd62-f8c4f402cc7f', 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', 8, 'Top each bowl with the crispy fried noodles, sliced shallots, pickled mustard greens, and a wedge of lime.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', "id" FROM "tags" WHERE "name" = 'region:Northern Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', "id" FROM "tags" WHERE "name" = 'state:Chiang Mai'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'be3b9c03-4f9f-4d13-bf84-600f31d1c8b5', "id" FROM "tags" WHERE "name" = 'country:Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cbf786fd-c6e3-4890-8e58-7c360d4f6ed8', 'region:Southern Thailand', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('873c8bbc-2421-457e-bbc8-14f916d88b34', 'state:Phuket', 'state') ON CONFLICT ("name") DO NOTHING;

-- Massaman Curry (Phuket, Thailand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('00935600-11a2-482b-90ef-985a79b955c5', 'massaman-curry-phuket-thailand', 'Massaman Curry', NULL, 'asia'::"Continent", 'Thailand', 'Phuket', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b869209-cf9a-492c-a6ee-e2f582854778', '00935600-11a2-482b-90ef-985a79b955c5', 0, NULL, 'Beef chunks') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('785628c4-90ae-4785-8551-c7e99bc8ddf0', '00935600-11a2-482b-90ef-985a79b955c5', 1, NULL, 'Massaman curry paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c495cfdc-2e1a-49a9-a8c9-f2b2e59fa71a', '00935600-11a2-482b-90ef-985a79b955c5', 2, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1d77f2a-7fda-4f67-a90c-5ffe5ccdf954', '00935600-11a2-482b-90ef-985a79b955c5', 3, NULL, 'Potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15049e46-0de7-47a0-9be1-ef11f541af60', '00935600-11a2-482b-90ef-985a79b955c5', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('42364bff-556e-4e0d-9149-83f18faa7b4c', '00935600-11a2-482b-90ef-985a79b955c5', 5, NULL, 'Roasted peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc748dd4-4def-4b98-b294-f1608374faab', '00935600-11a2-482b-90ef-985a79b955c5', 6, NULL, 'Tamarind paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('07ac0ea4-d593-4434-adfa-d8142a63e326', '00935600-11a2-482b-90ef-985a79b955c5', 7, NULL, 'Palm sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34cf3a60-ba4a-448e-b530-c81bbd76c39b', '00935600-11a2-482b-90ef-985a79b955c5', 8, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f171d845-7e96-4728-803c-d29ab0a48dbf', '00935600-11a2-482b-90ef-985a79b955c5', 9, NULL, 'Cardamom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b3a5f62c-74ed-4268-bcfb-c6709fbb3d9b', '00935600-11a2-482b-90ef-985a79b955c5', 1, 'Simmer the thick part of a can of coconut milk in a pot over medium heat, without stirring too much, until the oil begins to separate and rise to the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aa5ea71d-95d2-442f-8a2c-26effdd2eb63', '00935600-11a2-482b-90ef-985a79b955c5', 2, 'Add massaman curry paste to the separated coconut cream and fry it for a few minutes, stirring, until deeply fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('39751f7e-710e-450e-b9c2-e03869921621', '00935600-11a2-482b-90ef-985a79b955c5', 3, 'Add chunks of beef to the pot and stir to coat them thoroughly in the fried paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7064cf88-a935-451f-a62c-1e423afa7eb2', '00935600-11a2-482b-90ef-985a79b955c5', 4, 'Pour in the remaining coconut milk along with cinnamon and cardamom pods, then bring the pot to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5d50c891-188b-440e-9679-7cc634a4fe1b', '00935600-11a2-482b-90ef-985a79b955c5', 5, 'Cover and cook low and slow for around an hour, until the beef begins to turn tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dedbf800-6e16-4a74-b818-22ff285c25ea', '00935600-11a2-482b-90ef-985a79b955c5', 6, 'Add potato chunks, onion wedges, and roasted peanuts, then continue simmering for another thirty minutes, until the potatoes are soft and the beef is falling-apart tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e2784689-33c5-4b9f-9f44-5ce224c7d82a', '00935600-11a2-482b-90ef-985a79b955c5', 7, 'Season the curry with tamarind paste, palm sugar, and fish sauce, balancing it between sweet, sour, and salty.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5155dcf1-570e-4978-8a91-134a99ee1135', '00935600-11a2-482b-90ef-985a79b955c5', 8, 'Serve hot over steamed jasmine rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '00935600-11a2-482b-90ef-985a79b955c5', "id" FROM "tags" WHERE "name" = 'region:Southern Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '00935600-11a2-482b-90ef-985a79b955c5', "id" FROM "tags" WHERE "name" = 'state:Phuket'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '00935600-11a2-482b-90ef-985a79b955c5', "id" FROM "tags" WHERE "name" = 'country:Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('31ad067b-e0e5-4bfa-a237-3aad374a2c10', 'region:Central Thailand', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a15ae59b-233e-41ff-95df-94bbff1ec0fd', 'state:Ayutthaya', 'state') ON CONFLICT ("name") DO NOTHING;

-- Moo Ping (Ayutthaya, Thailand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b384a3d5-aacc-4a62-9158-ff282a9a63fe', 'moo-ping-ayutthaya-thailand', 'Moo Ping', NULL, 'asia'::"Continent", 'Thailand', 'Ayutthaya', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('10686ee2-f370-438f-8f25-75b16cdf4587', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 0, NULL, 'Pork shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2cb4ff58-76d7-4393-99e6-4b604bf159f2', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('70aaf40e-17eb-4a22-ab57-2c7019c55f4e', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 2, NULL, 'Palm sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c925584-4ec8-440c-b9d6-7aa093afd3b0', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 3, NULL, 'Coriander root') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bf145775-f368-44cd-bf6c-ab981321f200', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('44e485f7-239b-4577-8e77-b1bd19659fe9', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 5, NULL, 'White pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e9052347-7b32-4886-b6f8-7be95740f4ce', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 6, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ec5e550f-8507-45d0-aee6-099a8bae6e35', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 7, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37395d4a-fe5b-43a0-94c7-b89ceacf197a', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 8, NULL, 'Sticky rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('371a0c4b-5d17-4aa3-b229-5d615a4b885e', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 1, 'Slice pork shoulder thinly against the grain, keeping a little fat attached to each piece for moisture and flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('58c2a0e2-5cd8-460e-8891-afa5b2e927f6', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 2, 'Pound coriander root, garlic, and white pepper together into a rough paste using a mortar and pestle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('66430988-2e08-4fa1-a66a-84da84836a9c', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 3, 'Mix the paste with coconut milk, palm sugar, fish sauce, and a little soy sauce to make a sweet, savory marinade.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fe7d8a0a-438a-4fdf-823d-6d56e7887ca2', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 4, 'Toss the sliced pork thoroughly in the marinade, cover, and refrigerate for several hours, or overnight for deeper flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f41fc600-8e7a-4bbe-9706-a05de4d0f051', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 5, 'Thread the marinated pork slices onto bamboo skewers, weaving the skewer through each slice a couple of times so it lies flat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('257a218b-9862-49a5-8555-e76b0b00926a', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 6, 'Grill the skewers over medium-hot charcoal, turning frequently, for about eight to ten minutes, until the edges char slightly and caramelize while the pork stays juicy inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c66f7bad-4645-4f44-bc5c-4e57807fd0cd', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 7, 'Brush the skewers with any remaining marinade partway through grilling for extra glaze.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('224290fd-5c0b-4ebd-b3bb-d85fa8a01e60', 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', 8, 'Serve hot off the grill alongside a bag of sticky rice, as is typical from roadside charcoal grills.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', "id" FROM "tags" WHERE "name" = 'region:Central Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', "id" FROM "tags" WHERE "name" = 'state:Ayutthaya'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b384a3d5-aacc-4a62-9158-ff282a9a63fe', "id" FROM "tags" WHERE "name" = 'country:Thailand'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6c26884d-e2be-4518-847d-b15e70bc36e1', 'region:Northern Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0f283939-1830-48ae-ae11-6505fd75f7e2', 'state:Jaffna', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('12be142c-1931-4141-9d80-3dfae1861ef1', 'country:Sri Lanka', 'country') ON CONFLICT ("name") DO NOTHING;

-- Jaffna Crab Curry (Jaffna, Sri Lanka)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d6840b37-3311-4b79-bd24-d96f5ac12870', 'jaffna-crab-curry-jaffna-sri-lanka', 'Jaffna Crab Curry', NULL, 'asia'::"Continent", 'Sri Lanka', 'Jaffna', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b079ecd3-76a0-4c83-83a6-a48e31b5f35f', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 0, NULL, 'Crab') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('932ecf79-b4a1-40be-b467-2019ccc90fff', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5f523edf-a106-4c7f-985c-02d025bb21e8', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 2, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a712f8ad-3af4-4c2d-a2dc-a7199f92742c', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 3, NULL, 'Pandan leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1933f912-6283-413b-ae53-73b641c0c222', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 4, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2cd1c3b3-fdc6-4121-b011-cbe0216bf24e', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 5, NULL, 'Chili powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6446ef9e-6f16-481e-9307-457335144988', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 6, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4f26faa6-15b6-45aa-b04b-49d221972450', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 7, NULL, 'Fennel seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('78f53c16-f1df-4bcf-a197-c86aa3940d98', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 8, NULL, 'Shallots') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f8cec9a1-07cf-4803-8ef8-76105f08f3d0', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 9, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9619c038-738f-40b2-abe3-37237fae7311', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 1, 'Clean whole crabs thoroughly, cracking the claws slightly so the sauce can penetrate, and set them aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('652ec91d-bd72-4224-8b0b-85074ab8fa20', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 2, 'Dry roast chili powder, fennel seeds, and a few other whole spices in a pan for a minute or two, until fragrant, then grind them into a coarse spice mix.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('99a43057-7309-412c-af3c-bb5d9eb753a8', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 3, 'Sauté chopped shallots, garlic, and curry leaves in oil over medium heat until the shallots turn soft and lightly golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bc4e983a-b6c9-40d4-aaa0-ff292cd479f5', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 4, 'Stir in the ground spice mix along with turmeric and cook for a minute, until the raw spice smell fades.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('46b46024-85ec-4f00-897a-40c7bce3fdf5', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 5, 'Add the cleaned crabs to the pot and toss them well to coat evenly in the spice paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a66df209-ccfa-4d40-b6ae-d12b3c805e88', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 6, 'Pour in coconut milk along with a pandan leaf and a small piece of tamarind, then bring the curry to a simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('96164fe1-b8a1-4d8b-b6eb-82271190a35f', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 7, 'Cover and cook for fifteen to twenty minutes, stirring occasionally, until the crab is fully cooked and the sauce has thickened and turned a deep reddish-orange.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('db6934b3-0375-40fd-b50d-006fab9826ed', 'd6840b37-3311-4b79-bd24-d96f5ac12870', 8, 'Serve hot with steamed rice or string hoppers, alongside extra napkins for cracking the shells.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd6840b37-3311-4b79-bd24-d96f5ac12870', "id" FROM "tags" WHERE "name" = 'region:Northern Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd6840b37-3311-4b79-bd24-d96f5ac12870', "id" FROM "tags" WHERE "name" = 'state:Jaffna'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd6840b37-3311-4b79-bd24-d96f5ac12870', "id" FROM "tags" WHERE "name" = 'country:Sri Lanka'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ed459fdb-0120-4256-b6cb-500f7f9a1bdb', 'region:Central Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d6bd1bfd-c2d4-4e08-9503-738a901c4d88', 'state:Kandy', 'state') ON CONFLICT ("name") DO NOTHING;

-- Lamprais (Kandy, Sri Lanka)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('97a44dec-6c66-4156-b508-12c16ab575bd', 'lamprais-kandy-sri-lanka', 'Lamprais', NULL, 'asia'::"Continent", 'Sri Lanka', 'Kandy', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('274b7531-aa32-4696-924a-8ce8d62c38f8', '97a44dec-6c66-4156-b508-12c16ab575bd', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4800757e-e6f1-489a-9321-d4c8a2366d37', '97a44dec-6c66-4156-b508-12c16ab575bd', 1, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bb8eaf57-cdeb-4d53-8015-f00ef68defc2', '97a44dec-6c66-4156-b508-12c16ab575bd', 2, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('08336878-4e7a-495a-926b-4b1c7b181779', '97a44dec-6c66-4156-b508-12c16ab575bd', 3, NULL, 'Frikkadels (meatballs)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9b5b542d-e94a-4d2d-9f75-2fd445afaf35', '97a44dec-6c66-4156-b508-12c16ab575bd', 4, NULL, 'Eggplant') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('621e1c7a-4a4b-4e65-bb86-9911d694dc2f', '97a44dec-6c66-4156-b508-12c16ab575bd', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50e163ec-dbba-497f-ad31-6cc5687a8e1a', '97a44dec-6c66-4156-b508-12c16ab575bd', 6, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ccd252a0-b3e9-450c-93e0-b09233ac8472', '97a44dec-6c66-4156-b508-12c16ab575bd', 7, NULL, 'Banana leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('caca0153-975b-448d-8ba4-6b4112feca73', '97a44dec-6c66-4156-b508-12c16ab575bd', 8, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1f945ac-2a6e-4a74-87c1-7e62d1922b8b', '97a44dec-6c66-4156-b508-12c16ab575bd', 9, NULL, 'Cardamom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df5cdb2e-9090-4e1f-bfc2-a95f64fd6fba', '97a44dec-6c66-4156-b508-12c16ab575bd', 1, 'Cook a mixed meat curry of chicken and beef with cinnamon, cardamom, and other warming spices, simmering until the meat is tender and the sauce is thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f18ed0be-5d27-47ac-adcc-a78591df2cd4', '97a44dec-6c66-4156-b508-12c16ab575bd', 2, 'Separately shape a spiced ground meat mixture into small meatballs, called frikkadels, and shallow fry them until browned on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5884d35f-9461-4251-9719-1c17997ded9a', '97a44dec-6c66-4156-b508-12c16ab575bd', 3, 'Fry sliced eggplant in oil until soft and lightly caramelized, then set it aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('05dbfd7f-4c7b-49f0-9dd2-b5ec8451620b', '97a44dec-6c66-4156-b508-12c16ab575bd', 4, 'Make a tangy onion and tamarind relish by cooking sliced onion in a sour, spiced tamarind sauce until jammy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22d846bc-fd38-4677-8095-586dd918c2e4', '97a44dec-6c66-4156-b508-12c16ab575bd', 5, 'Cook rice in the reserved stock from the meat curry so the grains take on a rich, savory flavor and light brown color.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('58f11fc2-2438-49b4-b33a-ddd395da3f71', '97a44dec-6c66-4156-b508-12c16ab575bd', 6, 'Lay a square of banana leaf flat and place a portion of the flavored rice in the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f8f2cd9b-4c0a-4215-a625-132aa51aaefc', '97a44dec-6c66-4156-b508-12c16ab575bd', 7, 'Arrange spoonfuls of the meat curry, a couple of frikkadels, the fried eggplant, and a little of the onion relish on top of the rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('203933fe-9ba4-4e74-9319-6bb3113dbf36', '97a44dec-6c66-4156-b508-12c16ab575bd', 8, 'Fold the banana leaf over the filling into a secure parcel, securing it with a toothpick or string, then bake or steam the parcels for about twenty minutes so the flavors meld together before unwrapping and serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '97a44dec-6c66-4156-b508-12c16ab575bd', "id" FROM "tags" WHERE "name" = 'region:Central Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '97a44dec-6c66-4156-b508-12c16ab575bd', "id" FROM "tags" WHERE "name" = 'state:Kandy'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '97a44dec-6c66-4156-b508-12c16ab575bd', "id" FROM "tags" WHERE "name" = 'country:Sri Lanka'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7eecde4f-5870-48c9-9ec1-798b6685d72b', 'region:Southern Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c5f6a286-2bc6-4be9-b63f-d1d940985229', 'state:Galle', 'state') ON CONFLICT ("name") DO NOTHING;

-- Isso Wade (Galle, Sri Lanka)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e7757cd9-34c3-44fa-89f0-8170e01b2da2', 'isso-wade-galle-sri-lanka', 'Isso Wade', NULL, 'asia'::"Continent", 'Sri Lanka', 'Galle', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('664eb1c3-0e61-4d52-81d9-db6dea1e2fd8', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 0, NULL, 'Split red lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61408302-5323-495e-8921-543f004ac07a', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 1, NULL, 'Whole prawns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('57d6938b-6ba7-4241-b2c0-f940c7af9c91', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eb8ed2d1-d737-4ea5-8f92-48cd472d90ce', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 3, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b57da052-8c61-476a-8fb0-ea60d9191063', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 4, NULL, 'Curry leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4beadc4b-21df-4cae-b94a-9756883edd64', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 5, NULL, 'Rice flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('05f9002f-b4c5-4c81-8604-68086cd3de3d', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 6, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9436732a-a81c-4a29-b81d-ea1349ca3678', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 1, 'Soak split red lentils in water for a couple of hours, then drain and grind them coarsely, leaving some texture rather than a smooth paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e10c825d-7405-43f3-aac8-02cd4ed044c7', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 2, 'Mix the ground lentils with finely chopped onion, green chili, and curry leaves, along with a little rice flour to help bind the mixture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('39896ffe-1fac-4018-9121-a6f0b2884fd2', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 3, 'Season the batter generously with salt, then shape small portions into flat, round patties using wet hands.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ebcb4a1e-2275-452b-8b61-d8c13489911f', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 4, 'Press one or two whole prawns firmly into the top of each patty so they sit visibly embedded in the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('56c8838a-c1d3-4354-8364-94b4d50171dc', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 5, 'Heat oil in a deep pan or wok until shimmering hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b824c918-5eee-4a4b-956e-f1430e2c2f9b', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 6, 'Carefully slide the patties into the oil, prawn side up, and fry them for a few minutes per side, until deep golden brown and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('332e6c07-bbd6-47a0-9b6b-0cd121d9ff3f', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 7, 'Drain the fritters briefly on paper towels to remove excess oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a70bb27d-3bf2-48d5-94ef-75efb49e15d9', 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', 8, 'Serve hot, wrapped in newspaper or a paper cone, as is traditional from beachfront vendors along the southern coast.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', "id" FROM "tags" WHERE "name" = 'region:Southern Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', "id" FROM "tags" WHERE "name" = 'state:Galle'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7757cd9-34c3-44fa-89f0-8170e01b2da2', "id" FROM "tags" WHERE "name" = 'country:Sri Lanka'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('32b7fcfe-d426-40c9-b2c9-5da312795b4c', 'region:Valencia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('686c30f3-da05-43b0-b61b-652f1c0f567a', 'state:Valencia', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6ee221d5-49c4-4fcb-b4ca-5e2c9d86429b', 'country:Spain', 'country') ON CONFLICT ("name") DO NOTHING;

-- Paella Valenciana (Valencia, Spain)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dfe1b226-1265-4a8f-9523-8d9d9dbea164', 'paella-valenciana-valencia-spain', 'Paella Valenciana', NULL, 'europe'::"Continent", 'Spain', 'Valencia', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e34649b0-1523-4409-a56d-6592382a7c08', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dbf29953-db70-4d10-b68b-516349950441', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 1, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('021d2f4f-6a5b-418a-816e-fa8de526a4de', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 2, NULL, 'Rabbit') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d70f9401-bfeb-44da-b68c-471225bdc620', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 3, NULL, 'Green beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d91a621e-e8ff-4243-b24e-1e2fd5ec0525', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 4, NULL, 'Butter beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bdbd2eb5-9dfb-4bed-980c-c553f8234f7d', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 5, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('986fdb0c-88cf-4b21-bb17-4b1111916348', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 6, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6bd56804-e164-4071-9e01-7b05b74b0b71', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 7, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e49a485d-7598-43fd-8323-99949ce0aba9', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 8, NULL, 'Rosemary') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bb5a3b5e-fd45-4979-b419-5bacde56b832', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 9, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5534f9a5-384a-4742-9577-37bef612a545', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 1, 'Heat olive oil in a wide, shallow paella pan and brown pieces of chicken and rabbit over medium-high heat until golden on all sides, then push them to the edges of the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b73f702e-f116-4acb-9d6c-73acac117dbb', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 2, 'Add green beans and cook them briefly in the center of the pan until they start to blister.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7d4e5fa2-f9ab-48eb-8cf3-15ec6d3cdcab', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 3, 'Grate fresh tomato directly into the pan and cook it down with a little paprika until it forms a thick paste that coats the base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbc799ac-5036-403a-b6fc-291071d0def0', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 4, 'Stir the meat and beans back into the tomato mixture and add butter beans along with a sprig of rosemary.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88c29753-2120-43bd-939c-660121eacab8', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 5, 'Pour in hot water or stock along with a pinch of saffron, and bring the whole pan to a rolling boil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6e4f21c4-4576-4ee6-8ffa-9649bf7f9056', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 6, 'Sprinkle rice evenly over the entire surface of the pan, without stirring it in, and let it settle beneath the liquid.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('60871875-085d-41eb-a173-f1e610082129', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 7, 'Boil hard for the first ten minutes, then reduce the heat to a gentle simmer and cook for another ten minutes, until the rice has absorbed almost all the liquid.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('21b2dd2e-839e-4186-87b2-36c9f2070658', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 8, 'Raise the heat briefly at the very end to let a thin, crisp layer of rice, called socarrat, form on the bottom of the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ba9de72c-545d-4503-bd0e-0eafa9fd1436', 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', 9, 'Remove from the heat, cover loosely, and let it rest for a few minutes before serving directly from the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', "id" FROM "tags" WHERE "name" = 'region:Valencia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', "id" FROM "tags" WHERE "name" = 'state:Valencia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dfe1b226-1265-4a8f-9523-8d9d9dbea164', "id" FROM "tags" WHERE "name" = 'country:Spain'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8a934bc6-1e00-490e-86f5-34dacdac2405', 'region:Basque Country', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b8687c86-ad9c-4327-8958-443dbc2c37a1', 'state:San Sebastian', 'state') ON CONFLICT ("name") DO NOTHING;

-- Gilda Pintxo (San Sebastian, Spain)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 'gilda-pintxo-san-sebastian-spain', 'Gilda Pintxo', NULL, 'europe'::"Continent", 'Spain', 'San Sebastian', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0cd01bbe-e738-404e-be58-04cd28590a33', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 0, NULL, 'Green olives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('91115840-ebbe-4cc4-8ed3-5cf1de3f910a', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 1, NULL, 'Pickled guindilla peppers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f751d148-f533-4ac5-ab95-8a9f8b7ab966', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 2, NULL, 'Anchovy fillets') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bfe3bbe7-e788-4fb2-b51a-4f68330ceaf1', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 3, NULL, 'Cocktail sticks') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db9a43b5-1141-470a-97bb-014d3364d460', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 4, NULL, 'Baguette') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('46a1cd28-803a-4002-bf6b-0689ba12ccc6', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 5, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('81dc2cff-b5fd-4938-99c2-dc96ec2acfb4', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 1, 'Lay out a small cocktail stick for each pintxo you plan to make.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('136917a9-e245-49fd-b169-5c718da8429c', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 2, 'Thread a plump green olive onto the stick first, pushing it down toward one end.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3d115f09-a4e6-4b82-9f4f-6babd24ba96e', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 3, 'Fold a cured anchovy fillet in half and thread it onto the stick next to the olive, so it drapes slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('95bdfc8b-9e24-488f-898b-7868bcffe009', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 4, 'Add a whole pickled guindilla pepper alongside the anchovy, threading it through its stem end so it sits securely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3ee7485f-8c79-47a0-a2c7-efce34f653c0', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 5, 'Repeat the pattern of olive, anchovy, and pepper once more on the same stick for a fuller bite, if desired.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9531f282-1b61-4f66-b524-b92f7025fa1b', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 6, 'Arrange the finished skewers on a small plate or directly on a slice of baguette.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cdd0033a-f474-47aa-ba4e-56beb70ab136', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 7, 'Drizzle lightly with good olive oil just before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('de6659f3-1e68-40ca-90d6-286dc55c9b07', 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', 8, 'Set the pintxos out on a bar counter for guests to help themselves, in the traditional style of Basque tapas bars, where diners pick and choose freely as they move from bar to bar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', "id" FROM "tags" WHERE "name" = 'region:Basque Country'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', "id" FROM "tags" WHERE "name" = 'state:San Sebastian'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'dbf6c29b-e619-471b-ad69-8ee7d3ed2202', "id" FROM "tags" WHERE "name" = 'country:Spain'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('63f87b45-1deb-4f5e-a15a-d02d65c2ca73', 'region:Andalusia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('28f18e1d-5d85-48dd-b533-681c2fb5eb53', 'state:Seville', 'state') ON CONFLICT ("name") DO NOTHING;

-- Gazpacho Andaluz (Seville, Spain)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a4742f29-ef18-4e1e-887d-084d38ecaddd', 'gazpacho-andaluz-seville-spain', 'Gazpacho Andaluz', NULL, 'europe'::"Continent", 'Spain', 'Seville', 'vegan'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('988fc1a1-0068-4e28-82b2-ac57ceb1326a', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 0, NULL, 'Ripe tomatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27662523-b148-4eef-a8bc-0b8fb5ac71bb', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 1, NULL, 'Cucumber') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('25d8ca50-dc96-44bf-9cc4-6ca558cb83b7', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 2, NULL, 'Green bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55e26153-b31b-48bf-9ed9-0c578f4b64bc', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c37ede9b-1ff3-4cb3-aae9-7a7f8e245f85', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 4, NULL, 'Stale bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4bd779b5-b119-4744-b70b-126800388bc7', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 5, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8578d8e9-224d-432e-b462-acd5a179fa19', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 6, NULL, 'Sherry vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dfb59e27-23c1-4565-a71f-e87580407ecc', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 7, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e70fd7b1-c137-4abb-bcd5-56ad49949a9e', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 1, 'Roughly chop ripe tomatoes, cucumber, green bell pepper, and garlic, and place them all in a blender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8391fe46-9e73-4742-86e6-5f15a33dabe3', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 2, 'Tear stale bread into pieces, soak it briefly in water, then squeeze out the excess liquid and add it to the blender too.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('124619dc-ee55-42f4-b6b4-7ce22e20c0d1', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 3, 'Blend everything together on high speed until completely smooth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6405e147-f9c5-4eaf-af4c-0004d3595da5', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 4, 'With the blender still running, drizzle in olive oil slowly, letting it emulsify into the soup and turn the color a lighter, more vivid orange.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('348da1c5-8692-466b-8bb3-260cbbe76016', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 5, 'Add a splash of sherry vinegar and a good pinch of salt, then blend again briefly to combine.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a5e98dc2-8daa-459a-a226-28e257ac6a20', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 6, 'Taste and adjust the balance of vinegar, salt, and oil until the soup tastes bright, rounded, and well seasoned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1317cfad-a109-45c5-8d57-ae35cbd998ca', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 7, 'Pass the soup through a fine sieve for an extra silky texture, pressing firmly to extract as much liquid as possible.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48181113-6f8c-4387-8cb3-eddd651a3bd8', 'a4742f29-ef18-4e1e-887d-084d38ecaddd', 8, 'Chill the gazpacho in the refrigerator for at least two hours before serving very cold, garnished with small diced cucumber, pepper, and a final drizzle of olive oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a4742f29-ef18-4e1e-887d-084d38ecaddd', "id" FROM "tags" WHERE "name" = 'region:Andalusia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a4742f29-ef18-4e1e-887d-084d38ecaddd', "id" FROM "tags" WHERE "name" = 'state:Seville'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a4742f29-ef18-4e1e-887d-084d38ecaddd', "id" FROM "tags" WHERE "name" = 'country:Spain'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('62b1e579-6751-4797-9b03-58cb354b73e5', 'region:Gyeongsang Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('86ee0606-0444-46f8-8d63-043b4dc327f3', 'state:Busan', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fad99686-f038-49af-91bf-07cd6d1992fb', 'country:South Korea', 'country') ON CONFLICT ("name") DO NOTHING;

-- Ssiat Hotteok (Busan, South Korea)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 'ssiat-hotteok-busan-south-korea', 'Ssiat Hotteok', NULL, 'asia'::"Continent", 'South Korea', 'Busan', 'vegan'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('91019c9d-4cc3-403a-988d-3988d043d17e', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b0b17339-31fc-4f9f-a45f-12dfd1c87c09', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 1, NULL, 'Glutinous rice flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('adbcff19-6ce8-4ac2-b3e9-88d9f713cde5', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 2, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a86b569-f1e8-4fd0-bad2-4b6cb4903551', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b16a0e5c-694e-424f-8360-3e45dd76c216', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 4, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('94f724ca-ffd6-4dd5-a252-aacb99da78b8', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 5, NULL, 'Sunflower seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fcc911d9-0981-4306-b71f-631f419256c9', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 6, NULL, 'Pumpkin seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f05ed08-befb-499d-bd06-7e53d10365c9', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 7, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23f577b4-9028-4ae1-8ecd-a04b1a17e258', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 8, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fb8af76e-980d-4188-a296-5282515fb3f1', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 1, 'Mix flour, glutinous rice flour, sugar, and yeast with warm water into a soft, sticky dough, then let it rise in a warm place for about an hour, until doubled in size.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a314c4e1-a913-4791-926f-126877cdf5c5', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 2, 'Mix brown sugar with ground cinnamon to make a sweet, spiced filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('11565e48-ae84-4dc5-a025-45bd2025e7f7', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 3, 'Combine sunflower seeds, pumpkin seeds, and chopped peanuts in a separate small bowl for stuffing.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e3522db8-7984-4284-86e7-ee360534e67a', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 4, 'With well-oiled hands, flatten a portion of the risen dough into a disc and place a spoonful of the cinnamon sugar filling in the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('81374add-c643-43f4-8490-7caef8f21903', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 5, 'Gather the edges of the dough up and over the filling, pinching them together to seal it completely inside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4600fb37-3029-4747-8434-579b31497b2f', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 6, 'Heat a well-oiled griddle over medium heat and place the filled dough ball on it seam-side down, pressing it flat with a special flat press or the back of a spatula.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8711ddf0-32dd-404a-9828-c88144a9e062', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 7, 'Fry for a couple of minutes per side, until the outside turns golden brown and slightly crisp while the filling inside turns syrupy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4cad04bf-e79d-46c4-9509-e00bb96e290c', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 8, 'Just before the pancake finishes cooking, press a handful of the mixed seeds and nuts into the top so they toast lightly and stick to the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1da22d7f-3ed9-4671-8fda-aa92edb8ad17', 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', 9, 'Serve hot in a small paper cup, as is traditional from Busan''s street stalls, since the melted sugar filling stays very hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', "id" FROM "tags" WHERE "name" = 'region:Gyeongsang Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', "id" FROM "tags" WHERE "name" = 'state:Busan'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cbd1a9d6-8c3f-4eba-bb04-79f25a7e97e3', "id" FROM "tags" WHERE "name" = 'country:South Korea'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f19f24b1-e0cb-4c82-ba6e-945b188b502f', 'region:Jeju Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('62f2778e-5118-4a0e-bb4f-ec72aaec687a', 'state:Jeju Island', 'state') ON CONFLICT ("name") DO NOTHING;

-- Jeju Heuk Dwaeji (Grilled Black Pork) (Jeju Island, South Korea)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ca50f954-a678-434c-a2e4-1b05f40af5d0', 'jeju-heuk-dwaeji-grilled-black-pork-jeju-island-south-korea', 'Jeju Heuk Dwaeji (Grilled Black Pork)', NULL, 'asia'::"Continent", 'South Korea', 'Jeju Island', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ecf25c0b-a013-4217-9576-84dbedd65811', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 0, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7fb6b50b-37c4-424c-8b63-1746beb8764a', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 1, NULL, 'Pork collar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca2a96de-9ceb-46ba-ad8e-ad3cc0409ee3', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 2, NULL, 'Coarse salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bf07e47e-f6ae-447b-9da9-dbef4e3d1000', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 3, NULL, 'Sesame oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1b865b02-5a86-4311-b08f-f1dc1a434c6e', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1afd9dd8-3939-4268-96d8-a081bcb290e4', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 5, NULL, 'Ssamjang') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('abe93a21-4a0c-4ec6-ad4f-af9f36a7f0cd', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 6, NULL, 'Lettuce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('258ba05b-5d13-4ba0-9ea4-6c8bf0be1179', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 7, NULL, 'Perilla leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15fa207f-b972-4e3e-9be0-a157125181ab', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 8, NULL, 'Kimchi') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c098440d-3cdb-4eb3-9b44-127045ef230f', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 1, 'Slice thick cuts of pork belly and pork collar from the local black pig breed, keeping the pieces fairly thick for grilling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('18b2882f-4b75-4562-ac95-229736e9792a', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 2, 'Season the pork simply with coarse salt, letting it sit at room temperature for about twenty minutes before cooking.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('153b1c92-6f68-46c0-a3be-14492da36176', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 3, 'Heat a heavy grill pan or griddle until very hot, then lay the pork pieces on it without crowding the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0f9d483c-929f-4d9f-9c67-6fec6b128d87', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 4, 'Grill the pork for several minutes per side, turning occasionally with tongs, until deeply browned on the outside and cooked through but still juicy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fe83d187-922b-4369-b541-1f43449eeb4b', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 5, 'Toward the end of grilling, sear a few whole garlic cloves alongside the pork until softened and lightly charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2ec2199f-f095-4928-a7e9-466c37ba5580', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 6, 'Once cooked, use kitchen scissors to snip the pork into smaller, bite-sized pieces directly on the grill.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9a55b5b4-06cd-46ff-a9f8-c126b0f238a3', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 7, 'Wrap a piece of pork in a lettuce or perilla leaf along with a dab of ssamjang, a slice of grilled garlic, and a little kimchi.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7a6660d1-48dd-427b-8c2d-5aadf8742bf2', 'ca50f954-a678-434c-a2e4-1b05f40af5d0', 8, 'Fold the wrap closed and eat it in one bite, repeating with fresh leaves for each piece of pork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ca50f954-a678-434c-a2e4-1b05f40af5d0', "id" FROM "tags" WHERE "name" = 'region:Jeju Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ca50f954-a678-434c-a2e4-1b05f40af5d0', "id" FROM "tags" WHERE "name" = 'state:Jeju Island'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ca50f954-a678-434c-a2e4-1b05f40af5d0', "id" FROM "tags" WHERE "name" = 'country:South Korea'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('09acd158-10b6-4814-b388-c58c96a63132', 'region:Gangwon Province', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3a186696-21e8-4430-a6f0-073729bb6796', 'state:Chuncheon', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dak Galbi (Chuncheon, South Korea)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('36e2179d-fc70-441d-bfde-4407d99845d6', 'dak-galbi-chuncheon-south-korea', 'Dak Galbi', NULL, 'asia'::"Continent", 'South Korea', 'Chuncheon', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5b6ce525-b2eb-4b28-aada-d2b401724869', '36e2179d-fc70-441d-bfde-4407d99845d6', 0, NULL, 'Chicken thigh') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('828e9fcd-caa0-4851-95d6-929378beb07e', '36e2179d-fc70-441d-bfde-4407d99845d6', 1, NULL, 'Gochujang') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ab5ec2fe-17a0-4999-aaaa-da22f7cf7d16', '36e2179d-fc70-441d-bfde-4407d99845d6', 2, NULL, 'Gochugaru') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('010ea537-f136-4391-85f7-c3f615aca79b', '36e2179d-fc70-441d-bfde-4407d99845d6', 3, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ee40df8f-d4dc-405a-bb30-f5676451ff10', '36e2179d-fc70-441d-bfde-4407d99845d6', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6deaaf0c-32b0-4c05-b68c-2a7ddbefc68b', '36e2179d-fc70-441d-bfde-4407d99845d6', 5, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('367d3169-5063-49c5-95c8-3980b3c8bbc5', '36e2179d-fc70-441d-bfde-4407d99845d6', 6, NULL, 'Cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9fbd8040-5771-4f46-8ab0-0c42923be66d', '36e2179d-fc70-441d-bfde-4407d99845d6', 7, NULL, 'Sweet potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('edcbda11-54e9-4bc8-aa35-1fc792a983b3', '36e2179d-fc70-441d-bfde-4407d99845d6', 8, NULL, 'Rice cakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73ea72f2-656e-455d-b5b1-49479f022eaf', '36e2179d-fc70-441d-bfde-4407d99845d6', 9, NULL, 'Scallions') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('770380e0-34e4-4b26-9fa6-928e81b3dd2e', '36e2179d-fc70-441d-bfde-4407d99845d6', 1, 'Mix gochujang, gochugaru, soy sauce, minced garlic, and grated ginger together into a thick, spicy marinade.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('99c831ea-a0fb-4e7f-aaae-95a4b5593931', '36e2179d-fc70-441d-bfde-4407d99845d6', 2, 'Cut chicken thigh into bite-sized pieces and toss them thoroughly in the marinade, letting them sit for at least thirty minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c4459c07-c9f1-4dba-9f1b-177102d3b405', '36e2179d-fc70-441d-bfde-4407d99845d6', 3, 'Heat a large, flat pan or griddle and add the marinated chicken, spreading it out in a single layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3824728c-341c-4ee9-8828-d3ea79a563b1', '36e2179d-fc70-441d-bfde-4407d99845d6', 4, 'Add chunks of cabbage, sliced sweet potato, and rice cakes around the chicken on the same pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eec37bb4-ef32-4da7-a7c4-4bf57bfa2828', '36e2179d-fc70-441d-bfde-4407d99845d6', 5, 'Cook everything together over medium-high heat, stirring and flipping occasionally, for about fifteen minutes, until the chicken is cooked through and the vegetables have softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('274a8d69-e91f-4a31-95b5-4f25499ad3b2', '36e2179d-fc70-441d-bfde-4407d99845d6', 6, 'Let the mixture continue cooking, undisturbed for short stretches, so some pieces develop a light char against the hot pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('65b62c75-334d-4d11-bcf6-5bf9a94896bc', '36e2179d-fc70-441d-bfde-4407d99845d6', 7, 'Scatter chopped scallions and sesame seeds over the top once everything is cooked.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1ca685c0-c163-48fd-a9be-330f847d83fa', '36e2179d-fc70-441d-bfde-4407d99845d6', 8, 'Serve directly from the pan at the table, with the option to stir in cooked rice at the end to soak up the spicy sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '36e2179d-fc70-441d-bfde-4407d99845d6', "id" FROM "tags" WHERE "name" = 'region:Gangwon Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '36e2179d-fc70-441d-bfde-4407d99845d6', "id" FROM "tags" WHERE "name" = 'state:Chuncheon'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '36e2179d-fc70-441d-bfde-4407d99845d6', "id" FROM "tags" WHERE "name" = 'country:South Korea'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6dd0ada0-b593-4af2-8a71-6edb1543467f', 'region:Arequipa', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1dcf5c45-80b6-481f-9c2a-22655d68caa0', 'state:Arequipa', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b55213fc-1942-4e24-b08e-5e57558b9500', 'country:Peru', 'country') ON CONFLICT ("name") DO NOTHING;

-- Rocoto Relleno (Arequipa, Peru)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1c26efcf-557c-4670-a306-07e429665fbb', 'rocoto-relleno-arequipa-peru', 'Rocoto Relleno', NULL, 'south_america'::"Continent", 'Peru', 'Arequipa', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d8ba997-18fb-4294-9cd5-717b6f1cdc69', '1c26efcf-557c-4670-a306-07e429665fbb', 0, NULL, 'Rocoto peppers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f5ffe275-fea4-4858-9bba-adc94e3b4a0a', '1c26efcf-557c-4670-a306-07e429665fbb', 1, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1afbc58b-bbe8-47f0-8c63-f0e7e221556e', '1c26efcf-557c-4670-a306-07e429665fbb', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8496d4b2-fc0e-4ae7-9f38-24fb1134873c', '1c26efcf-557c-4670-a306-07e429665fbb', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27583e57-f605-4ab9-9b2d-a9a1654f5bdf', '1c26efcf-557c-4670-a306-07e429665fbb', 4, NULL, 'Raisins') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28f62cdd-7f44-4f9d-be05-edaf122d89f9', '1c26efcf-557c-4670-a306-07e429665fbb', 5, NULL, 'Black olives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('16eff8d3-331f-4f23-8a2b-91dfad2cc968', '1c26efcf-557c-4670-a306-07e429665fbb', 6, NULL, 'Hard-boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4be5b58-9804-4273-b28f-a65b13b75e70', '1c26efcf-557c-4670-a306-07e429665fbb', 7, NULL, 'Queso fresco') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4ee2bd86-69b2-43f0-91d6-5fe0da956cd1', '1c26efcf-557c-4670-a306-07e429665fbb', 8, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f1f4329-2998-47e2-8336-b599b8718b94', '1c26efcf-557c-4670-a306-07e429665fbb', 1, 'Cut the tops off rocoto peppers and carefully scoop out the seeds and membranes, keeping the peppers whole.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd079d5f-d7c3-421a-85c9-5ef3be7d185e', '1c26efcf-557c-4670-a306-07e429665fbb', 2, 'Boil the hollowed peppers briefly in water with a little sugar and vinegar to soften them and tame some of their intense heat, then drain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c5ed8209-9feb-4db2-b764-70a58c26aa66', '1c26efcf-557c-4670-a306-07e429665fbb', 3, 'Sauté chopped onion and garlic until soft, then add ground beef and cook until browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('08b4f3e9-8886-40cc-ad0e-029ef785560b', '1c26efcf-557c-4670-a306-07e429665fbb', 4, 'Stir in chopped raisins and sliced black olives, along with a little cumin and paprika, and cook for a few more minutes until well combined.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('37f62adf-caf0-4947-8778-1f54c01f3e19', '1c26efcf-557c-4670-a306-07e429665fbb', 5, 'Chop hard-boiled egg and fold it gently into the beef mixture off the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2e0b18ba-474f-4bf6-be73-5a4f25753b11', '1c26efcf-557c-4670-a306-07e429665fbb', 6, 'Stuff each softened rocoto pepper generously with the beef filling, packing it down firmly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bb659728-1795-4370-9e70-b0a00ba8fe28', '1c26efcf-557c-4670-a306-07e429665fbb', 7, 'Top each stuffed pepper with a slice of queso fresco and set them in a baking dish with a splash of milk poured around the base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec5dbee5-39ab-4bdd-9021-3c04d97b5990', '1c26efcf-557c-4670-a306-07e429665fbb', 8, 'Bake in a hot oven for about twenty minutes, until the cheese on top melts and turns lightly golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cff44e66-6f84-4559-89ab-48e346fd5f23', '1c26efcf-557c-4670-a306-07e429665fbb', 9, 'Serve the stuffed peppers with a slice of baked potato gratin alongside, as is traditional in Arequipa.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1c26efcf-557c-4670-a306-07e429665fbb', "id" FROM "tags" WHERE "name" = 'region:Arequipa'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1c26efcf-557c-4670-a306-07e429665fbb', "id" FROM "tags" WHERE "name" = 'state:Arequipa'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1c26efcf-557c-4670-a306-07e429665fbb', "id" FROM "tags" WHERE "name" = 'country:Peru'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a5a82b23-b77a-4c08-9e0b-f8f91b694aa8', 'region:Cusco', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e784d701-add5-4c8f-befc-e3c3fc47370e', 'state:Cusco', 'state') ON CONFLICT ("name") DO NOTHING;

-- Anticuchos (Cusco, Peru)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ff3aec42-1b7e-4a38-970a-f920691a05a4', 'anticuchos-cusco-peru', 'Anticuchos', NULL, 'south_america'::"Continent", 'Peru', 'Cusco', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a6a5f28-e691-45de-846f-fab7bae3365e', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 0, NULL, 'Beef heart') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c251ff42-fc3e-4919-aef4-9710f1d02ac9', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 1, NULL, 'Aji panca paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bfa9abda-670b-463a-a421-270be0e59863', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2f92e76b-6878-41aa-9145-64ae98a4f064', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 3, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80956466-9e9a-48f4-ab18-2e1593fb222a', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 4, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fbc02d67-e8ef-40b8-8d32-e0eb14acc551', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 5, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('16d97be9-fcd7-4240-9708-41f09dbc09df', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 6, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('52675c2f-0d18-4b3d-bc6c-a329c4624a8e', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 7, NULL, 'Corn') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e03330d3-8167-4361-be06-44555586b718', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 1, 'Trim beef heart of any silver skin and tough connective tissue, then cut the meat into bite-sized cubes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6ed8be15-b834-493c-a346-4794d0fc82df', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 2, 'Blend aji panca paste with garlic, cumin, vinegar, and a little oil into a smooth, deep red marinade.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b24b6bc-b46d-4834-8382-977331505f99', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 3, 'Toss the cubed heart thoroughly in the marinade, cover, and refrigerate for several hours, or ideally overnight, so the meat tenderizes and absorbs the spices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('30b10524-7516-4460-a756-cb10c9da473d', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 4, 'Thread the marinated pieces tightly onto skewers, several to a stick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02d7286a-c6c8-4c7e-baf3-15ebbf112bb7', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 5, 'Grill the skewers over hot charcoal, turning frequently and basting with more marinade, for about eight minutes, until the edges char slightly while the inside stays tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec6444c6-fa18-4ef4-bdf4-b8d232a6d2c1', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 6, 'Boil chunks of potato and corn on the cob separately until tender, to serve alongside the skewers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c1c53fe1-61e0-4dd8-9146-16a1e1c5bb61', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 7, 'Brush the skewers with a little extra oil just before removing them from the grill for a glossy finish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3ecd9f11-392f-401a-bb4d-bb64a714ad00', 'ff3aec42-1b7e-4a38-970a-f920691a05a4', 8, 'Serve hot straight off the grill with the boiled potato and corn, as is classic from street carts found across Peruvian cities in the evening.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ff3aec42-1b7e-4a38-970a-f920691a05a4', "id" FROM "tags" WHERE "name" = 'region:Cusco'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ff3aec42-1b7e-4a38-970a-f920691a05a4', "id" FROM "tags" WHERE "name" = 'state:Cusco'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ff3aec42-1b7e-4a38-970a-f920691a05a4', "id" FROM "tags" WHERE "name" = 'country:Peru'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6a128cf1-c001-49f6-9568-7fe8a4976f8f', 'region:Peruvian Amazon', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b415a6ec-2af8-476f-8a22-375e742313ca', 'state:Loreto', 'state') ON CONFLICT ("name") DO NOTHING;

-- Juane (Loreto, Peru)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('7f4837ff-5345-42c0-9893-72efd89c5c74', 'juane-loreto-peru', 'Juane', NULL, 'south_america'::"Continent", 'Peru', 'Loreto', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('57a2c487-35a2-4372-89dd-a052b8ed9611', '7f4837ff-5345-42c0-9893-72efd89c5c74', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('76eb2fc4-9b3b-4ade-8377-c8d04ea28e37', '7f4837ff-5345-42c0-9893-72efd89c5c74', 1, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('447a793e-4b34-4fb7-aa08-b9a7a0a6d9c6', '7f4837ff-5345-42c0-9893-72efd89c5c74', 2, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ae00420-a040-4264-9730-d19d65d26f61', '7f4837ff-5345-42c0-9893-72efd89c5c74', 3, NULL, 'Hard-boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('92921b70-954a-4d00-9881-73a9326a0433', '7f4837ff-5345-42c0-9893-72efd89c5c74', 4, NULL, 'Black olives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73bcd6a3-2834-4751-af0f-5fcc3fa21d39', '7f4837ff-5345-42c0-9893-72efd89c5c74', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eec37aae-c0d0-40c4-99ba-3f7273db29f8', '7f4837ff-5345-42c0-9893-72efd89c5c74', 6, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('777cf8f2-8b05-44f2-8c31-d747a01c80b4', '7f4837ff-5345-42c0-9893-72efd89c5c74', 7, NULL, 'Bijao leaves (or banana leaf)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72b755cb-c4d5-4201-b1c3-df24120b09ac', '7f4837ff-5345-42c0-9893-72efd89c5c74', 1, 'Marinate chicken pieces in garlic, cumin, and a little turmeric, then cook them until browned and mostly cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76a76032-4527-40d3-9364-027dee7b2800', '7f4837ff-5345-42c0-9893-72efd89c5c74', 2, 'Cook rice with turmeric until it turns a bright yellow color, then let it cool slightly so it is easier to handle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b416d2a6-5361-485a-89e6-d2af7c8d926a', '7f4837ff-5345-42c0-9893-72efd89c5c74', 3, 'Mix the yellow rice with a little of the chicken cooking liquid to keep it moist and flavorful.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ac2c67ee-6451-4f36-95b3-625b69ce0a14', '7f4837ff-5345-42c0-9893-72efd89c5c74', 4, 'Lay a large bijao or banana leaf flat and place a bed of the seasoned rice in the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f547736-0a1e-4a79-bbc6-1398049685c9', '7f4837ff-5345-42c0-9893-72efd89c5c74', 5, 'Nestle a piece of the marinated chicken, a slice of hard-boiled egg, and a black olive into the rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b8a28081-4a07-4a7f-a40a-54f90d2098a6', '7f4837ff-5345-42c0-9893-72efd89c5c74', 6, 'Cover with a little more rice to fully enclose the filling, then fold the leaf tightly around the mound into a compact bundle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ab10cad2-f46b-45e8-aa1f-370c2372c371', '7f4837ff-5345-42c0-9893-72efd89c5c74', 7, 'Tie the wrapped bundle securely with string or strips of the same leaf.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b1bc5d27-0a1d-444a-b087-4f80a51cad4f', '7f4837ff-5345-42c0-9893-72efd89c5c74', 8, 'Boil the wrapped bundles in a large pot of water for about an hour, until the rice inside is fully cooked and firm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f6f3cb80-c4ad-46a9-a94e-f4c68a9a732a', '7f4837ff-5345-42c0-9893-72efd89c5c74', 9, 'Let the bundles cool slightly before unwrapping and serving, traditionally eaten cold or at room temperature during river journeys and festivals.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7f4837ff-5345-42c0-9893-72efd89c5c74', "id" FROM "tags" WHERE "name" = 'region:Peruvian Amazon'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7f4837ff-5345-42c0-9893-72efd89c5c74', "id" FROM "tags" WHERE "name" = 'state:Loreto'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7f4837ff-5345-42c0-9893-72efd89c5c74', "id" FROM "tags" WHERE "name" = 'country:Peru'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7f16adde-4142-44c3-a0ea-b05831f5e5b1', 'region:Southeast Nigeria', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0baa6e7a-43ef-45f0-a578-7b1f57c087e5', 'state:Abia', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('eef4c960-3770-4fbc-91a1-ba83f5128b21', 'country:Nigeria', 'country') ON CONFLICT ("name") DO NOTHING;

-- Abacha (African Salad) (Abia, Nigeria)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('365dab15-1a88-430e-96f8-1ac0cead7b4d', 'abacha-african-salad-abia-nigeria', 'Abacha (African Salad)', NULL, 'africa'::"Continent", 'Nigeria', 'Abia', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e95e39b0-b35e-4c64-873a-ab4c2f5d6e5d', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 0, NULL, 'Cassava flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('456f6b4d-9476-4203-aa1c-d18c5e0b8870', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 1, NULL, 'Palm oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('502cb090-5078-4424-9427-f36d429226e6', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 2, NULL, 'Potash') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1530cede-c101-40d5-b0df-7e449a68fc81', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 3, NULL, 'Ugba (oil bean seeds)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('093493ee-28fd-4474-b55b-ddcb199a3150', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ca3f49b-e332-4775-9ab4-e94c29638d63', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 5, NULL, 'Dried shrimp (crayfish)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19d6ccf9-bffa-41d2-ba94-d6b94e166eb1', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 6, NULL, 'Garden eggs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f01c18f6-e25a-41c1-bc73-72c850b9b500', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 7, NULL, 'Utazi leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('36efc268-25ae-4f7a-a05f-52c7fc8c157c', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 8, NULL, 'Dried fish (stockfish)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8e24ad43-4674-461c-8446-42f2fc9f0185', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 9, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2967081f-6042-47cb-bbac-6896a785a152', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 1, 'Soak dried cassava flakes, known as abacha, in warm water for about ten minutes, until they soften slightly and become pliable, then drain thoroughly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4fb06341-aaa3-4d97-946a-ccc222a94fbb', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 2, 'Dissolve a small amount of potash in a little water, then whisk it into red palm oil until the oil turns pale and creamy in color and texture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b55bcf28-9435-484b-97cd-62b1c15768f7', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 3, 'Grind dried shrimp and scotch bonnet pepper together into a coarse, spicy powder.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e5aa096-b0aa-47f4-b5f5-e77c08ea943a', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 4, 'Combine the softened cassava flakes with the potash-palm oil mixture, tossing thoroughly so every strand is coated in the pale, creamy sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3cb5e805-196b-4d6c-b599-547e575a96a8', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 5, 'Add the ground shrimp and pepper, along with fermented oil bean seeds called ugba, chopped onion, and thin strips of bitter utazi leaves, then toss again.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('82dcb983-eabf-4bb1-a744-2f4b7047d914', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 6, 'Fold in small pieces of softened dried fish for added flavor and protein.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8f5ee95-26e5-45f4-bedb-96542dfa481b', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 7, 'Taste and adjust the seasoning with salt and more pepper as needed, since the dish should taste rich, tangy, and lightly bitter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('18c2cf4c-e72b-47ed-b874-cb10dbcbb6b1', '365dab15-1a88-430e-96f8-1ac0cead7b4d', 8, 'Serve at room temperature, often garnished with sliced garden eggs on the side, as is common from roadside sellers who prepare it fresh to order.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '365dab15-1a88-430e-96f8-1ac0cead7b4d', "id" FROM "tags" WHERE "name" = 'region:Southeast Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '365dab15-1a88-430e-96f8-1ac0cead7b4d', "id" FROM "tags" WHERE "name" = 'state:Abia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '365dab15-1a88-430e-96f8-1ac0cead7b4d', "id" FROM "tags" WHERE "name" = 'country:Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7621dd2f-f91b-4f02-a635-d752dae57678', 'region:Southwest Nigeria', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dff2c26a-de37-488c-bd6c-198a85402f81', 'state:Oyo', 'state') ON CONFLICT ("name") DO NOTHING;

-- Amala with Ewedu and Gbegiri (Oyo, Nigeria)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5375aa9e-daea-4190-bc05-3f7571d39f28', 'amala-with-ewedu-and-gbegiri-oyo-nigeria', 'Amala with Ewedu and Gbegiri', NULL, 'africa'::"Continent", 'Nigeria', 'Oyo', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1223d6d-3a5f-43f5-b90f-158ca3edbea0', '5375aa9e-daea-4190-bc05-3f7571d39f28', 0, NULL, 'Yam flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d389b6a6-d931-41fd-8e04-a9172995b8c8', '5375aa9e-daea-4190-bc05-3f7571d39f28', 1, NULL, 'Jute leaves (ewedu)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b6579415-5eab-48da-956c-854fe19252b0', '5375aa9e-daea-4190-bc05-3f7571d39f28', 2, NULL, 'Locust beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('458d1964-e1d9-4558-913d-91c8cdfefa27', '5375aa9e-daea-4190-bc05-3f7571d39f28', 3, NULL, 'Brown beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8c74ca3e-6454-4952-a916-d7610dd60eaf', '5375aa9e-daea-4190-bc05-3f7571d39f28', 4, NULL, 'Palm oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00c2540b-662f-40b4-bbe3-42d21a519eb7', '5375aa9e-daea-4190-bc05-3f7571d39f28', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2fc33cfb-4977-42da-ac87-c25155f79e65', '5375aa9e-daea-4190-bc05-3f7571d39f28', 6, NULL, 'Dried shrimp (crayfish)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('764cfe67-d22e-4a31-9403-7a50f26d8364', '5375aa9e-daea-4190-bc05-3f7571d39f28', 7, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('26265b62-66c7-412b-9b30-f2265b77c008', '5375aa9e-daea-4190-bc05-3f7571d39f28', 8, NULL, 'Dried fish (stockfish)') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eb23b6c1-27d5-4e85-b670-f04596bec408', '5375aa9e-daea-4190-bc05-3f7571d39f28', 9, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a9f22e3f-2c99-4b9d-a3e4-fdb4678bda23', '5375aa9e-daea-4190-bc05-3f7571d39f28', 1, 'Boil water in a pot, then gradually whisk in yam flour, stirring vigorously and continuously to prevent lumps from forming, until the mixture turns into a smooth, stretchy, dark brown dough called amala.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('70ada474-aebb-411b-9bd0-8e8dbe80970f', '5375aa9e-daea-4190-bc05-3f7571d39f28', 2, 'Cover and keep the amala warm while preparing the soups.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a0b12b5f-175b-4618-bc37-b8751daad9bb', '5375aa9e-daea-4190-bc05-3f7571d39f28', 3, 'Blanch fresh jute leaves briefly, then blend or chop them very finely, and simmer them with a little locust bean paste, ground dried shrimp, and chopped onion until the mixture becomes thick and slightly slimy, forming ewedu soup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('97f5f17e-ca1b-42f1-96ad-3e8cd5018593', '5375aa9e-daea-4190-bc05-3f7571d39f28', 4, 'In a separate pot, boil peeled brown beans until completely soft, then blend or mash them smooth with some of their cooking water.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('190f78f9-3758-40a3-b9ab-9379dbb373dc', '5375aa9e-daea-4190-bc05-3f7571d39f28', 5, 'Simmer the blended beans with palm oil, ground dried shrimp, chopped onion, and pieces of cooked beef and dried fish to make a rich gbegiri soup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4b3e4ad1-1027-4090-97c8-388946666d27', '5375aa9e-daea-4190-bc05-3f7571d39f28', 6, 'Blend scotch bonnet pepper with onion and tomato, then fry the mixture in palm oil until it thickens into a spicy stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9f0b4539-8ba3-4933-a0f7-d39b3fb8ae5b', '5375aa9e-daea-4190-bc05-3f7571d39f28', 7, 'Combine the gbegiri and the pepper stew together in one pot just before serving, so their flavors meld while keeping the ewedu separate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e2479279-223d-4fa8-868f-2843c18d273f', '5375aa9e-daea-4190-bc05-3f7571d39f28', 8, 'Mold the warm amala into smooth, rounded portions using a wooden spoon or paddle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f7853579-60d1-49e7-a6df-4a1cce58cd18', '5375aa9e-daea-4190-bc05-3f7571d39f28', 9, 'Serve the amala in a bowl surrounded by the ewedu and combined gbegiri stew, ready to be scooped together in each bite without chewing, as amala is traditionally swallowed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5375aa9e-daea-4190-bc05-3f7571d39f28', "id" FROM "tags" WHERE "name" = 'region:Southwest Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5375aa9e-daea-4190-bc05-3f7571d39f28', "id" FROM "tags" WHERE "name" = 'state:Oyo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5375aa9e-daea-4190-bc05-3f7571d39f28', "id" FROM "tags" WHERE "name" = 'country:Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9b2873f8-9e15-4c69-aff3-6bb8a1c9fca0', 'region:Northern Nigeria', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9d344a85-65b2-4083-be0c-fe393fd928e8', 'state:Kano', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kilishi (Kano, Nigeria)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('392e0e10-841b-4dfc-b723-1658229f8e5a', 'kilishi-kano-nigeria', 'Kilishi', NULL, 'africa'::"Continent", 'Nigeria', 'Kano', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c45b610-d084-4e8a-bc7e-2d7b6254f213', '392e0e10-841b-4dfc-b723-1658229f8e5a', 0, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4f6ba877-7d0e-4a04-be69-e0bba344a35a', '392e0e10-841b-4dfc-b723-1658229f8e5a', 1, NULL, 'Peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('de7319d4-d6fa-4473-bd71-701a668b4641', '392e0e10-841b-4dfc-b723-1658229f8e5a', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9c1eb166-dd5e-4a0f-9036-34c84d1f7ee7', '392e0e10-841b-4dfc-b723-1658229f8e5a', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0371d517-a73e-4106-bbcf-d8064ac1390e', '392e0e10-841b-4dfc-b723-1658229f8e5a', 4, NULL, 'Cayenne pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('26c923d7-357a-46fb-ad6e-617b812a9ef8', '392e0e10-841b-4dfc-b723-1658229f8e5a', 5, NULL, 'Cloves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fb1dd753-33db-4eba-b16a-3bf6985d73ca', '392e0e10-841b-4dfc-b723-1658229f8e5a', 6, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b69a1426-bdf2-4a3d-a52e-6eeb45969732', '392e0e10-841b-4dfc-b723-1658229f8e5a', 7, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b01a9990-27cf-46ce-a27f-1d7c64178fcd', '392e0e10-841b-4dfc-b723-1658229f8e5a', 1, 'Slice lean beef into very thin, wide sheets, trimming away as much fat as possible.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5c5094c1-694b-4f9f-92bc-7e36991875d5', '392e0e10-841b-4dfc-b723-1658229f8e5a', 2, 'Lay the beef sheets out on raised wire racks or mats and dry them under the sun or over a low fire for several hours, until they become firm and leathery.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aad41225-c6d6-4c18-9e85-712ac766eeea', '392e0e10-841b-4dfc-b723-1658229f8e5a', 3, 'Grind roasted peanuts into a fine, oily paste and mix it with ground ginger, garlic, cayenne pepper, and a pinch of ground cloves to make a thick spice paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ddc78d09-7b52-4252-b565-7333883e0e58', '392e0e10-841b-4dfc-b723-1658229f8e5a', 4, 'Brush the dried beef sheets generously on both sides with the peanut spice paste, coating them evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e11983b5-e765-45de-ac83-f942c70bf43c', '392e0e10-841b-4dfc-b723-1658229f8e5a', 5, 'Return the coated beef to the racks and dry it again in the sun, or briefly over open flame, until the spice coating sets and dries onto the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e5ad3a0b-9186-4ff3-a673-b8a48edf0763', '392e0e10-841b-4dfc-b723-1658229f8e5a', 6, 'Once fully dried, quickly pass each sheet over an open flame or hot coals for a short time, just enough to lightly toast and char the spice coating without burning the meat underneath.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9f60059-213a-47db-8f23-d8a130ed9111', '392e0e10-841b-4dfc-b723-1658229f8e5a', 7, 'Let the kilishi cool completely before handling, at which point it becomes firm, chewy, and intensely savory.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22c15396-5b9c-4f6c-97af-522db3f15220', '392e0e10-841b-4dfc-b723-1658229f8e5a', 8, 'Break or cut the dried spiced beef into smaller pieces and sell it wrapped in paper, a popular snack found at roadside stalls and markets across northern Nigeria.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '392e0e10-841b-4dfc-b723-1658229f8e5a', "id" FROM "tags" WHERE "name" = 'region:Northern Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '392e0e10-841b-4dfc-b723-1658229f8e5a', "id" FROM "tags" WHERE "name" = 'state:Kano'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '392e0e10-841b-4dfc-b723-1658229f8e5a', "id" FROM "tags" WHERE "name" = 'country:Nigeria'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('35da8527-948f-45bb-b312-45cf54ec6e3f', 'region:Kathmandu Valley', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1d9498f8-a4af-4cd1-b93b-3a57ee15dcc2', 'state:Bagmati Province', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3a4e5e29-bd0e-4ef2-8ab5-acda92e3ad5c', 'country:Nepal', 'country') ON CONFLICT ("name") DO NOTHING;

-- Newari Choila (Bagmati Province, Nepal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e8376e28-6157-4689-8a3f-11506f49fdff', 'newari-choila-bagmati-province-nepal', 'Newari Choila', NULL, 'asia'::"Continent", 'Nepal', 'Bagmati Province', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d4292c8-4efc-4ebc-a430-0919bcece9b6', 'e8376e28-6157-4689-8a3f-11506f49fdff', 0, NULL, 'Buffalo meat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba49f970-e824-472a-8998-a076e6f6cc1e', 'e8376e28-6157-4689-8a3f-11506f49fdff', 1, NULL, 'Mustard oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3d2f733-6bbf-44cd-bfb2-a11cf9d7cbc6', 'e8376e28-6157-4689-8a3f-11506f49fdff', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c30e176-9434-4e33-974a-349fbbb266ee', 'e8376e28-6157-4689-8a3f-11506f49fdff', 3, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('26a50cc4-45a4-40e3-9e0e-782f062492b1', 'e8376e28-6157-4689-8a3f-11506f49fdff', 4, NULL, 'Dried red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4518251f-222b-4666-b227-37e56d51d3ed', 'e8376e28-6157-4689-8a3f-11506f49fdff', 5, NULL, 'Timur pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e2fc1ef0-3393-4c31-a296-6f2bb8434b5d', 'e8376e28-6157-4689-8a3f-11506f49fdff', 6, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('234b2bc1-1510-44fa-978c-6d12ff8c4b67', 'e8376e28-6157-4689-8a3f-11506f49fdff', 7, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('585856bf-6cca-4be9-a215-1f9757838cef', 'e8376e28-6157-4689-8a3f-11506f49fdff', 8, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a51b793e-541e-4d5f-b412-4915d45bcd38', 'e8376e28-6157-4689-8a3f-11506f49fdff', 9, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55a2d53a-3f77-4eea-bdaa-12abd1a94c49', 'e8376e28-6157-4689-8a3f-11506f49fdff', 10, NULL, 'Beaten rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bc2b37fb-0370-4a2e-a315-954e465d2e42', 'e8376e28-6157-4689-8a3f-11506f49fdff', 1, 'Hold the buffalo meat directly over an open charcoal flame or under a very hot grill, turning it every couple of minutes until the surface is charred and blistered on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('82ab0998-9ec7-41d3-9c6e-c48172c06356', 'e8376e28-6157-4689-8a3f-11506f49fdff', 2, 'Let the meat rest for a few minutes, then chop it into small bite-sized pieces with a heavy cleaver.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3d1301fe-3e37-4a7f-b681-e34be96b5810', 'e8376e28-6157-4689-8a3f-11506f49fdff', 3, 'Heat mustard oil in a wide pan until it just begins to smoke, then pull the pan off the heat to let the oil settle for a moment.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12c1580b-3e40-4619-9ee8-9293fc91de30', 'e8376e28-6157-4689-8a3f-11506f49fdff', 4, 'Add crushed garlic, ginger, and dried red chili to the warm oil and stir for under a minute, until the kitchen fills with their aroma.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('331c5fea-2dea-4107-bb35-8855a54789d7', 'e8376e28-6157-4689-8a3f-11506f49fdff', 5, 'Toss the chopped meat into the pan along with sliced green chili, thinly sliced onion, and a pinch of ground timur pepper, mixing everything so the meat soaks up the spiced oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7b3c761f-54fb-4ec1-afe1-7f076019ee78', 'e8376e28-6157-4689-8a3f-11506f49fdff', 6, 'Return the pan to low heat and cook for another 5 minutes, stirring often, until the edges of the meat crisp up slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8911cb96-057a-4b2f-9246-f48edc36b37d', 'e8376e28-6157-4689-8a3f-11506f49fdff', 7, 'Finish with a generous squeeze of lemon juice and a handful of chopped fresh coriander.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9a31979c-accb-4814-a97e-d314c2b9ebbc', 'e8376e28-6157-4689-8a3f-11506f49fdff', 8, 'Serve the choila warm, piled onto a plate of flattened beaten rice, the way street vendors in Kathmandu''s old town ladle it out from big steel pans.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e8376e28-6157-4689-8a3f-11506f49fdff', "id" FROM "tags" WHERE "name" = 'region:Kathmandu Valley'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e8376e28-6157-4689-8a3f-11506f49fdff', "id" FROM "tags" WHERE "name" = 'state:Bagmati Province'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e8376e28-6157-4689-8a3f-11506f49fdff', "id" FROM "tags" WHERE "name" = 'country:Nepal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bab85386-1287-476c-9d5e-3ac8fd384d61', 'region:Gandaki Hills', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c46825e7-9dba-4577-ac8b-0bb6b7f27f92', 'state:Kaski District', 'state') ON CONFLICT ("name") DO NOTHING;

-- Dhindo with Gundruk Soup (Kaski District, Nepal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e6f5bf48-aeef-4149-a382-81a7f494ad74', 'dhindo-with-gundruk-soup-kaski-district-nepal', 'Dhindo with Gundruk Soup', NULL, 'asia'::"Continent", 'Nepal', 'Kaski District', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5b7ad05-98eb-4f1e-80a3-4e1a12a3ec6f', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 0, NULL, 'Millet flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('87287889-8250-49ca-b166-a960e17020e8', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 1, NULL, 'Buckwheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c42a758f-29ed-4a99-be46-868b08bf2456', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 2, NULL, 'Gundruk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93cf3c63-4030-4804-b85e-2ca001b77289', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 3, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('46d82dc8-2949-4c46-bacf-a53e57d094aa', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6c170f79-255b-40dd-bf7c-194b4fe79a19', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 5, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d30db580-fac0-4775-9cf5-85f51f36f00b', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 6, NULL, 'Cumin seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1a7e9452-864d-4c82-bfcb-cbcce5dd202b', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 7, NULL, 'Timur pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f76af1b8-1ac6-4712-a056-41d7dcbaac32', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 8, NULL, 'Mustard oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0e4e390-e5cf-4df1-ab2d-2544d6b189c7', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 9, NULL, 'Soybean') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a797eb6b-b4f9-4e80-b945-dda13cc2e940', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 10, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9329f652-d055-4451-afda-0f2bfce04eb9', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 1, 'Bring a pot of water to a rolling boil and season it lightly with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7a192814-2a6a-4b54-bad5-800bde52595f', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 2, 'Slowly sprinkle in millet flour with one hand while stirring constantly with a wooden paddle in the other, so no lumps form.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('20fbf010-62e6-4b8e-af94-b6302589f6d0', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 3, 'Keep stirring and folding the mixture over itself for about 10 minutes as it thickens into a stiff, glossy dough, then reduce the heat to low and let it steam gently for a couple more minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('afe00dd1-ab3d-4e01-9b56-5c99dff7cde9', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 4, 'While the dhindo cooks, soak the dried gundruk leaves in warm water for 10 minutes to soften them, then drain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('43584197-a093-4df1-8503-6f6f06e50165', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 5, 'Heat mustard oil in a separate pot and toast cumin seeds and crushed timur pepper until they crackle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5d313989-da9d-4696-a6e7-f36951090685', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 6, 'Add chopped garlic, ginger, and green chili, then stir in soaked soybeans and the softened gundruk.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b22898c8-4939-45c9-a196-b7adf1a50194', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 7, 'Pour in enough water to make a light soup, add chopped tomato, and simmer for 15 minutes until the gundruk turns tender and the broth turns tangy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('af0a47d4-8322-4ca4-8b8b-614bc2b10cd5', 'e6f5bf48-aeef-4149-a382-81a7f494ad74', 8, 'Turn the hot dhindo out onto a plate, shaping it into a smooth dome with a wet spoon, and serve it alongside bowls of the sour gundruk soup.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e6f5bf48-aeef-4149-a382-81a7f494ad74', "id" FROM "tags" WHERE "name" = 'region:Gandaki Hills'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e6f5bf48-aeef-4149-a382-81a7f494ad74', "id" FROM "tags" WHERE "name" = 'state:Kaski District'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e6f5bf48-aeef-4149-a382-81a7f494ad74', "id" FROM "tags" WHERE "name" = 'country:Nepal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('35248938-65f8-4782-8795-a9590fc18e4c', 'region:Terai Plains', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8d51e517-c36a-4333-b22c-3902f078ba21', 'state:Dhanusha District', 'state') ON CONFLICT ("name") DO NOTHING;

-- Terai-Style Chatpate (Dhanusha District, Nepal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e0de8245-243f-4e73-9149-a7d0a99d9f03', 'terai-style-chatpate-dhanusha-district-nepal', 'Terai-Style Chatpate', NULL, 'asia'::"Continent", 'Nepal', 'Dhanusha District', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('762ec964-1989-476f-8a1a-34bf783c34eb', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 0, NULL, 'Puffed rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8fc942d3-f727-49b2-8f3b-c2762342c643', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 1, NULL, 'Boiled potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('65d2e8b6-c745-4fc8-bcbd-15ed38279187', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 2, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0540d267-3f5a-4f24-bcb4-6526928f7a2c', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 3, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('97654d27-45b3-45cf-b2a4-dd09ae7398df', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8cadf747-93b9-49b2-a22a-b881b1755654', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 5, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('496d4e58-fbb5-48eb-9199-aa48b003dbb9', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 6, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7c77e096-82c9-4774-822a-a4b3e6f5c30c', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 7, NULL, 'Chaat masala') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e85dc32d-4719-4291-9d01-c2c0a571767f', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 8, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('89fd7254-9927-46d6-b7d8-9d184cf0cd89', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 9, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c0c7f332-e2e5-4eb6-8d7d-9334fb7d25f8', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 10, NULL, 'Sev') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('192eb20a-2d56-48bc-8ffb-479809834f5b', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 1, 'Set a large steel bowl on the street cart and tip in a generous mound of puffed rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5da51162-3849-44dd-818f-685e5bf084de', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 2, 'Add diced boiled potato and boiled chickpeas, then scatter over finely chopped onion, tomato, and green chili.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c374219e-e9fc-4f8a-8cb9-1f24be99e5e8', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 3, 'Whisk tamarind pulp with a little water and a spoonful of chaat masala until it forms a thin, tangy sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('97de36f4-990b-494d-aa9c-3c080d35d76d', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 4, 'Pour the tamarind sauce over the puffed rice mixture and toss everything vigorously with two long spoons, the way vendors do it to coat every grain evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3dd01cfb-28bf-4d8a-a751-90a82613bdec', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 5, 'Squeeze fresh lemon juice over the top and sprinkle on a little more chaat masala and salt to sharpen the flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91c957cc-b8f3-464d-aa8d-0cbeddcb2686', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 6, 'Toss once more, then finish with a shower of crunchy sev and chopped coriander leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2a24c292-dc4a-4db6-85ec-bc24e5de6905', 'e0de8245-243f-4e73-9149-a7d0a99d9f03', 7, 'Spoon the chatpate into a small paper cone or bowl and hand it over immediately, before the puffed rice has any chance to soften.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e0de8245-243f-4e73-9149-a7d0a99d9f03', "id" FROM "tags" WHERE "name" = 'region:Terai Plains'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e0de8245-243f-4e73-9149-a7d0a99d9f03', "id" FROM "tags" WHERE "name" = 'state:Dhanusha District'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e0de8245-243f-4e73-9149-a7d0a99d9f03', "id" FROM "tags" WHERE "name" = 'country:Nepal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9f168358-bf6a-438c-8501-267bc06c89fe', 'region:Fes-Meknes', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7b0b77da-01e7-4193-9abe-7fb6cead0030', 'state:Fes', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c33c0a45-1128-4267-be80-f4a7ae2b278c', 'country:Morocco', 'country') ON CONFLICT ("name") DO NOTHING;

-- Fes-Style Chicken Pastilla (Fes, Morocco)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('550cf170-28c4-4064-9792-1d0d6f7d580a', 'fes-style-chicken-pastilla-fes-morocco', 'Fes-Style Chicken Pastilla', NULL, 'africa'::"Continent", 'Morocco', 'Fes', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a36e79f5-a0fb-40aa-9e83-0eb37c0a5fd4', '550cf170-28c4-4064-9792-1d0d6f7d580a', 0, NULL, 'Chicken thighs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9e79efde-c467-4eb8-8ca4-d25b9bbec631', '550cf170-28c4-4064-9792-1d0d6f7d580a', 1, NULL, 'Warqa pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ea4b5e3-6429-4e9d-ba28-2d1d011a66fb', '550cf170-28c4-4064-9792-1d0d6f7d580a', 2, NULL, 'Almonds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4eb6d67-b621-4d09-be96-9ae708cf9a85', '550cf170-28c4-4064-9792-1d0d6f7d580a', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('237d2581-df0f-4039-9749-4688a86fb2d6', '550cf170-28c4-4064-9792-1d0d6f7d580a', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d44839bd-a003-47df-92c0-661d60546ac3', '550cf170-28c4-4064-9792-1d0d6f7d580a', 5, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('04edf1dd-f191-4436-b6fe-95ebe6eeca62', '550cf170-28c4-4064-9792-1d0d6f7d580a', 6, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96584379-cffe-4202-8b06-11ffac64f837', '550cf170-28c4-4064-9792-1d0d6f7d580a', 7, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b357694b-c1df-493f-be7e-0e97be7a16c5', '550cf170-28c4-4064-9792-1d0d6f7d580a', 8, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2fbd4acc-1305-4295-a2c5-9fa073b175a1', '550cf170-28c4-4064-9792-1d0d6f7d580a', 9, NULL, 'Powdered sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('33c90584-d679-417c-a696-96a5a8d63983', '550cf170-28c4-4064-9792-1d0d6f7d580a', 10, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5b6f625d-b181-49d8-b742-25113fdd2b74', '550cf170-28c4-4064-9792-1d0d6f7d580a', 1, 'Simmer chicken thighs in a wide pot with chopped onion, saffron threads, ground ginger, and a stick of cinnamon, covering everything with water and cooking gently for about 40 minutes until the meat is very tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('600cdab2-c326-4cd2-a324-19f27865d37e', '550cf170-28c4-4064-9792-1d0d6f7d580a', 2, 'Lift the chicken out to cool, then shred it into small pieces with your fingers, discarding the skin and bones.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('009a03ee-c92d-4506-8a02-d1888669daa0', '550cf170-28c4-4064-9792-1d0d6f7d580a', 3, 'Boil the cooking liquid hard until it reduces to a thick, fragrant sauce, then whisk in beaten eggs a little at a time, stirring constantly until they scramble into soft curds within the sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('85a4ea0b-0659-445e-9edb-8fc46dc4e856', '550cf170-28c4-4064-9792-1d0d6f7d580a', 4, 'Toast whole almonds in a dry pan until golden, then crush them coarsely and mix with powdered sugar and a little ground cinnamon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0ca54207-6a07-4433-8b5e-a6801f929b74', '550cf170-28c4-4064-9792-1d0d6f7d580a', 5, 'Brush a round baking pan with melted butter and layer sheets of warqa pastry across it, letting the edges drape over the sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f56935bd-d906-4c51-b515-c3e2ff3806e1', '550cf170-28c4-4064-9792-1d0d6f7d580a', 6, 'Spread the shredded chicken and egg mixture over the pastry, then scatter the sweet almond mixture on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72ce625b-0214-40fc-a6c9-efffe6bf9363', '550cf170-28c4-4064-9792-1d0d6f7d580a', 7, 'Fold the overhanging pastry edges back over the filling, brushing each layer with more melted butter, then add a final layer of pastry on top to seal everything in.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('722c1968-e514-478a-8871-d2d0ec19a63a', '550cf170-28c4-4064-9792-1d0d6f7d580a', 8, 'Bake in a hot oven for about 25 minutes, until the pastry turns deep golden and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('23297285-a435-4bf7-ba28-bba0c40dba83', '550cf170-28c4-4064-9792-1d0d6f7d580a', 9, 'Dust the finished pastilla generously with powdered sugar and a lattice of ground cinnamon before slicing it into wedges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '550cf170-28c4-4064-9792-1d0d6f7d580a', "id" FROM "tags" WHERE "name" = 'region:Fes-Meknes'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '550cf170-28c4-4064-9792-1d0d6f7d580a', "id" FROM "tags" WHERE "name" = 'state:Fes'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '550cf170-28c4-4064-9792-1d0d6f7d580a', "id" FROM "tags" WHERE "name" = 'country:Morocco'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('444a4557-3483-416a-b17f-40f172938cfa', 'region:Marrakech-Safi', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7ee876e5-c83f-477a-afc3-7db3716a5183', 'state:Marrakech', 'state') ON CONFLICT ("name") DO NOTHING;

-- Marrakech Maakouda (Marrakech, Morocco)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6c3c28c5-0400-4a9e-8db7-0b528108f47a', 'marrakech-maakouda-marrakech-morocco', 'Marrakech Maakouda', NULL, 'africa'::"Continent", 'Morocco', 'Marrakech', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c45cf1d-4150-4fd1-ad94-4d677b6e3849', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 0, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5966d85-a13e-4bba-b86b-39c244dab085', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('130f9620-94b2-4f95-8ca3-d43bca7447ac', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 2, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('56aaefce-be7c-4084-9c78-c0ed89fb5883', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 3, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4963cc52-3f33-412d-92ae-587adcf7650d', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 4, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bdc1229b-d7f7-4aa8-8a0a-75af02180284', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 5, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b74fab11-9c9b-4695-b0ed-ad2d2e2527c2', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db97cb3d-76f3-4653-9733-9a7b24879e16', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 7, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e0185e81-0aa4-41aa-838c-87807dd064e3', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 8, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f456c4c-60af-4550-b097-22344c1a1d9d', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 9, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('44dd26f2-a3ce-4def-b0d1-7155e20a2ec9', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 1, 'Boil peeled potatoes in salted water for about 20 minutes, until a knife slides through them easily, then drain and mash them while still warm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2989ab1c-599a-4a56-aa3b-3d0d24cb3016', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 2, 'Stir crushed garlic, chopped coriander, chopped parsley, ground cumin, and paprika into the warm mash, seasoning well with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76a2e538-2d4d-4920-a69b-6bc93465bf7a', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 3, 'Let the mixture cool slightly, then shape it into small flat patties with damp hands.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fb9c3489-07be-4dad-a8e1-f60176666807', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 4, 'Beat an egg in one shallow bowl and spread flour in another, then dip each patty first into the flour and then into the egg.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec34316e-3975-4206-885a-bf3e6e2fa849', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 5, 'Heat a generous depth of vegetable oil in a wide pan set over the vendor''s charcoal brazier until it shimmers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cbb6a70b-0707-4e03-b4ec-9d0566959412', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 6, 'Fry the patties in batches for about 3 minutes per side, until the outside turns deep golden brown and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('047159aa-b3cd-496a-9e2a-275f9cbd68ab', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 7, 'Lift them out onto a tray lined with paper to drain off the excess oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('efff762e-3ceb-4eb9-ba90-88d0806e10c1', '6c3c28c5-0400-4a9e-8db7-0b528108f47a', 8, 'Serve the maakouda hot, wrapped in a scrap of paper with a squeeze of lemon and sometimes tucked into a small bread roll with harissa.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6c3c28c5-0400-4a9e-8db7-0b528108f47a', "id" FROM "tags" WHERE "name" = 'region:Marrakech-Safi'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6c3c28c5-0400-4a9e-8db7-0b528108f47a', "id" FROM "tags" WHERE "name" = 'state:Marrakech'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6c3c28c5-0400-4a9e-8db7-0b528108f47a', "id" FROM "tags" WHERE "name" = 'country:Morocco'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('591237b3-a122-4b9f-a638-99d9506297b9', 'region:Marrakech-Safi Coast', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7de7903a-4df5-445c-b393-2a90e41dcb20', 'state:Essaouira', 'state') ON CONFLICT ("name") DO NOTHING;

-- Essaouira Grilled Sardines (Essaouira, Morocco)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 'essaouira-grilled-sardines-essaouira-morocco', 'Essaouira Grilled Sardines', NULL, 'africa'::"Continent", 'Morocco', 'Essaouira', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3f7f2730-c9ba-4a77-a0f8-b921346f19a9', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 0, NULL, 'Fresh sardines') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fddd9a50-2241-4d72-b005-b501157f2444', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e7194079-33f4-4a9a-a9f8-d2691c82e13b', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 2, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dfc5b495-9935-4472-9d21-c160fc7412b6', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 3, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80160fd4-cb4c-4f32-854c-f65c3187874f', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 4, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ed317ea4-4945-4ac6-870e-95e00fdd2d49', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 5, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ebdf55d5-4ec1-40d2-96e5-d72ac6091e33', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 6, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9815509a-b977-4e82-acf0-d2c4b36a9628', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 7, NULL, 'Sea salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0bc770c0-5970-4281-ac81-4ae35a053d62', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 8, NULL, 'Chili flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('60147355-6ba7-4d66-a121-0b1c99e8fa7c', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 1, 'Scale and gut fresh sardines at the harborside stall, keeping the heads and tails on so they hold together over the fire.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('94175d0b-7108-45c2-a768-48dd7281353a', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 2, 'Blend crushed garlic, chopped coriander, paprika, cumin, and a splash of olive oil into a loose green marinade called chermoula.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f45ff006-0a80-44d2-8a3d-8dfd2ead4271', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 3, 'Rub the chermoula generously inside and over the outside of each sardine, then let them sit for about 15 minutes so the flavors soak in.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7be5cecf-2002-46dc-a495-3038eb8685a6', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 4, 'Lay the sardines directly onto a small charcoal grill balanced on the cart, arranging them in neat rows.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('998ad5f1-6e3a-421d-bd9d-0d4b4b1a49e5', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 5, 'Grill the sardines for about 2 minutes per side, watching closely as the skin blisters and the flesh turns opaque and firm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a319bfe9-c7af-41e9-b9e9-12c2235b4f34', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 6, 'Turn them only once with a thin metal spatula to keep the delicate skin from tearing.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('93ddb67b-b2b5-4ef6-817b-e2ba27e85393', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 7, 'Scatter chili flakes and a pinch of sea salt over the hot fish as soon as they come off the grill.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63003a66-13d1-427b-9585-5a272f6b8441', '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', 8, 'Serve the sardines stacked on a sheet of paper with lemon wedges, ready to be eaten with the fingers by the harbor wall.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', "id" FROM "tags" WHERE "name" = 'region:Marrakech-Safi Coast'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', "id" FROM "tags" WHERE "name" = 'state:Essaouira'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '9eb16e49-a8c4-4497-a6e8-c7a488a860c1', "id" FROM "tags" WHERE "name" = 'country:Morocco'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ab5a473a-16d2-4f29-afbb-245883bc4cb4', 'region:Oaxaca Valley', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c990187e-2f4c-4d58-97fc-c8002fe28533', 'state:Oaxaca', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f56832a6-755a-4348-87af-2936ed7733a0', 'country:Mexico', 'country') ON CONFLICT ("name") DO NOTHING;

-- Oaxacan Tlayudas (Oaxaca, Mexico)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 'oaxacan-tlayudas-oaxaca-mexico', 'Oaxacan Tlayudas', NULL, 'north_america'::"Continent", 'Mexico', 'Oaxaca', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1ac783b-917b-4bbf-90f9-2c3a4055a545', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 0, NULL, 'Corn tortilla') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3790a77-dd8e-476f-8532-14fe70a9a9e7', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 1, NULL, 'Refried black beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1ef603e1-199c-4e98-8b99-4a16147932d5', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 2, NULL, 'Oaxaca cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fe72dee3-794f-4292-94b6-0515b4ba9a99', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 3, NULL, 'Lettuce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0f44c359-9f19-4d3f-a388-f8fb521737f4', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 4, NULL, 'Avocado') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8c4b324-0c33-4786-bb62-4c3a556940c0', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 5, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cf097bc5-c640-4fa5-a37f-16d5bbf6faed', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 6, NULL, 'Tasajo beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4089533f-8551-45ce-b12b-fe14aed0319a', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 7, NULL, 'Salsa roja') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('84d18d04-a528-49dc-b928-66266a2c4c68', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 8, NULL, 'Lard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed2c356d-ff74-48f8-a47f-4b034ced60e8', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 1, 'Warm a large, thin corn tortilla directly over a charcoal comal until it turns slightly leathery and dotted with brown spots.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c974ea91-14c7-4ac5-b46b-66fd50df6274', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 2, 'Spread a thin layer of lard across the tortilla, then follow with a generous smear of refried black beans all the way to the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c42d62fc-c50c-4a47-9c62-c05b08317b90', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 3, 'Scatter shredded Oaxaca cheese evenly over the beans so it melts as the tortilla continues to cook.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('59aeae2e-ecb3-40ff-9922-127c017b2666', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 4, 'Lay the tortilla back onto the comal and cook it for a few more minutes, until the underside crisps up like a cracker and the cheese turns soft and glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e9171e58-121d-4b37-9e0d-7f0a7177e17a', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 5, 'While it cooks, grill strips of tasajo beef over the same open flame until charred at the edges and cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6b6c8bee-3a94-4dd1-ae07-7c1fbca5d9f3', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 6, 'Slide the crisp tortilla onto a board and top it with shredded lettuce, sliced tomato, and mashed avocado.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('41d69729-6b64-4772-976c-edc2d4fdea60', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 7, 'Lay the grilled tasajo over one half of the tlayuda and drizzle everything with salsa roja.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d85acf79-a883-46ab-a4a0-9f74256b29aa', 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', 8, 'Fold the tlayuda in half like a giant taco and cut it into wedges for sharing.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', "id" FROM "tags" WHERE "name" = 'region:Oaxaca Valley'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', "id" FROM "tags" WHERE "name" = 'state:Oaxaca'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b70d5009-52f5-4199-8c2a-b6be2ec6aba9', "id" FROM "tags" WHERE "name" = 'country:Mexico'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('91b2f31c-4349-4454-9347-401f938bb824', 'region:Yucatan Peninsula', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('934f7126-7b1c-4d99-8962-3c396a4bf26a', 'state:Yucatan', 'state') ON CONFLICT ("name") DO NOTHING;

-- Yucatecan Cochinita Pibil (Yucatan, Mexico)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 'yucatecan-cochinita-pibil-yucatan-mexico', 'Yucatecan Cochinita Pibil', NULL, 'north_america'::"Continent", 'Mexico', 'Yucatan', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c735fcde-8920-4e82-a125-dfb6193daf6f', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 0, NULL, 'Pork shoulder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4b4a430-5756-4e5e-a49f-f0ae50bc2707', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 1, NULL, 'Achiote paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8a293967-d03b-430e-86b6-d16f4aadb166', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 2, NULL, 'Sour orange juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('92716e36-179c-47ed-8063-9c35f6479779', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5d744e41-aad2-4a5a-a585-0fa1bf904622', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 4, NULL, 'Banana leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('735cd24f-5d9f-4780-b0f2-ef82b937ad86', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 5, NULL, 'White onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('622b6cb5-e12d-431b-a274-ca3c7b744f6e', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 6, NULL, 'Habanero chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('76e45c9b-5324-4d1c-848c-172c1273956e', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 7, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61cdebd8-3d9d-4b68-b642-aa2becee2004', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 8, NULL, 'Oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9952dfa7-5c5a-433b-844e-3a5a8206d8cb', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 1, 'Dissolve achiote paste into sour orange juice along with crushed garlic, cumin, and oregano, whisking until the marinade turns a deep brick red.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6ad91a0b-7110-402e-a446-a82ded70bbb0', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 2, 'Cut the pork shoulder into large chunks and rub the achiote marinade into the meat thoroughly, working it into every crevice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('654bc31e-668c-4d2d-b972-1e0a8d2865d1', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 3, 'Cover the meat and let it marinate in the refrigerator for at least 4 hours, or overnight for a deeper flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b7cf48fa-9330-46da-a96f-9c0f55a62645', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 4, 'Pass banana leaves briefly over an open flame until they soften and turn glossy, then use them to line a heavy roasting dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2338bc00-2524-4933-b64b-5329f5bfc962', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 5, 'Pile the marinated pork into the banana leaf lined dish and fold the leaves over the top to wrap the meat completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7ed6c7fd-937d-4424-a337-c0eb2782d39f', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 6, 'Roast the wrapped pork in a low oven for about 3 hours, until it becomes so tender it falls apart at the touch of a fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8d9d461-a7a4-4fd7-97db-21638c0a5a89', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 7, 'Meanwhile, pickle thinly sliced white onion and sliced habanero chili in sour orange juice with a pinch of salt, letting them turn bright pink.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88a57d41-dbca-4a0d-b01e-a32976d30e4a', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 8, 'Unwrap the pork and shred it with two forks, mixing the shredded meat with the flavorful juices left in the leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f5c9653d-33fc-4a79-99a3-32452c4b71d8', '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', 9, 'Serve the cochinita pibil piled onto warm tortillas and topped with the pickled onion and habanero.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', "id" FROM "tags" WHERE "name" = 'region:Yucatan Peninsula'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', "id" FROM "tags" WHERE "name" = 'state:Yucatan'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '763fe1e6-fc42-4a32-a8d1-2d18d75e9a9d', "id" FROM "tags" WHERE "name" = 'country:Mexico'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6fc6d440-1456-48eb-8c71-f9071af32fd8', 'region:Gulf Coast', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7cf72fc3-f130-4417-af24-50ff8fdc7e0d', 'state:Veracruz', 'state') ON CONFLICT ("name") DO NOTHING;

-- Pescado a la Veracruzana (Veracruz, Mexico)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4be900f7-a125-4799-ba76-277df8a1e3e3', 'pescado-a-la-veracruzana-veracruz-mexico', 'Pescado a la Veracruzana', NULL, 'north_america'::"Continent", 'Mexico', 'Veracruz', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('155a3467-4860-40be-a7c3-5736efb5cbd2', '4be900f7-a125-4799-ba76-277df8a1e3e3', 0, NULL, 'Red snapper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40c29a40-1edb-46aa-bde0-44118a95b4ab', '4be900f7-a125-4799-ba76-277df8a1e3e3', 1, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('892bbe83-1b5a-4735-9dec-07f6796097fd', '4be900f7-a125-4799-ba76-277df8a1e3e3', 2, NULL, 'White onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03d98d65-47a3-4675-81a1-6f461e306edc', '4be900f7-a125-4799-ba76-277df8a1e3e3', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e74ee42d-9230-448f-b2f1-7026cf4f6d02', '4be900f7-a125-4799-ba76-277df8a1e3e3', 4, NULL, 'Green olives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('115d8560-8722-40b6-b86a-7cba482db992', '4be900f7-a125-4799-ba76-277df8a1e3e3', 5, NULL, 'Capers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('38532832-b3d0-4783-bd01-ac1731adb0fd', '4be900f7-a125-4799-ba76-277df8a1e3e3', 6, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1091ab5c-a638-4c1a-9ad0-a9e53734ba25', '4be900f7-a125-4799-ba76-277df8a1e3e3', 7, NULL, 'Pickled jalapeno') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37c01f0b-ce73-41ee-9443-df4dddab8608', '4be900f7-a125-4799-ba76-277df8a1e3e3', 8, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f947702f-ad0a-4499-9a7d-790155d8ce29', '4be900f7-a125-4799-ba76-277df8a1e3e3', 9, NULL, 'Fresh oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bfb5887f-ff84-4f28-af56-292a9b255495', '4be900f7-a125-4799-ba76-277df8a1e3e3', 1, 'Season whole red snapper fillets with salt and a squeeze of lime, then set them aside while the sauce comes together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1364677f-1a9f-46c0-8dfe-ffa4a6914e8a', '4be900f7-a125-4799-ba76-277df8a1e3e3', 2, 'Heat olive oil in a wide skillet and cook chopped onion and garlic over medium heat for about 5 minutes, until soft and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ecbd87f2-399f-425a-913a-4cc90f710d19', '4be900f7-a125-4799-ba76-277df8a1e3e3', 3, 'Add chopped tomato, bay leaf, and dried oregano, and let the mixture simmer for 10 minutes, stirring occasionally, until it thickens into a rich sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d2ac344c-b212-4619-9b8c-91dd3e9420fe', '4be900f7-a125-4799-ba76-277df8a1e3e3', 4, 'Stir in sliced green olives, capers, and sliced pickled jalapeno, letting their brininess mingle into the tomato base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('40fa4035-5c3d-4840-bf5b-e2f3bd2462e9', '4be900f7-a125-4799-ba76-277df8a1e3e3', 5, 'Nestle the seasoned fish fillets into the simmering sauce, spooning some sauce over the top of each piece.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4169e91c-a441-41c3-89fa-ee6c78b3ea13', '4be900f7-a125-4799-ba76-277df8a1e3e3', 6, 'Cover the skillet and let the fish poach gently for about 10 minutes, until it turns opaque and flakes easily with a fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('179f21a7-eca9-47e5-9532-fa42238c359a', '4be900f7-a125-4799-ba76-277df8a1e3e3', 7, 'Baste the fish once more with the sauce just before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c55faf4a-ac8e-4894-87f7-8bbe65cf4c2b', '4be900f7-a125-4799-ba76-277df8a1e3e3', 8, 'Plate the fish with plenty of the tomato and olive sauce spooned over the top, alongside steamed white rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4be900f7-a125-4799-ba76-277df8a1e3e3', "id" FROM "tags" WHERE "name" = 'region:Gulf Coast'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4be900f7-a125-4799-ba76-277df8a1e3e3', "id" FROM "tags" WHERE "name" = 'state:Veracruz'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4be900f7-a125-4799-ba76-277df8a1e3e3', "id" FROM "tags" WHERE "name" = 'country:Mexico'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cbb15515-08be-4f58-bda1-108e1eef9472', 'region:Mount Lebanon Coast', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9dd4b7d4-cf2b-4428-b551-fab55e4d42e2', 'state:Beirut', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b0f7b3b7-ae31-4f52-b03f-daf4fa27ba7d', 'country:Lebanon', 'country') ON CONFLICT ("name") DO NOTHING;

-- Beirut Street Manakish (Beirut, Lebanon)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5df0e0f0-ef10-4083-9ed4-618837eac0e6', 'beirut-street-manakish-beirut-lebanon', 'Beirut Street Manakish', NULL, 'asia'::"Continent", 'Lebanon', 'Beirut', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96ddb76c-0589-488b-98f0-292e46ea536f', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3e536cc-bd6a-4a6a-8892-dc5ad7a4c14c', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 1, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('78a73c94-0a9f-4341-8f04-1ef4dd8cbbf3', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 2, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('56e66d3c-551f-4247-82fa-46c60039fca4', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 3, NULL, 'Za''atar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3596173f-8459-482f-80cb-69b5bfa60fa1', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 4, NULL, 'Sesame seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3293ab3-ec33-447d-8374-cfdaea18995c', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 5, NULL, 'Sumac') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a47cc1c0-fff9-4cd1-8579-fa5ceae77d8b', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 6, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40d28d0d-41b9-42fb-879e-15b4f3174454', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 7, NULL, 'Fresh mint') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bc927637-92e5-4455-8d60-173f9ee0dbc9', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 8, NULL, 'Cucumber') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('306133c2-4248-4a97-99c9-e31e5725f8af', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 1, 'Mix flour with yeast, a little olive oil, and warm water, kneading the dough for about 8 minutes until it turns smooth and elastic.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0b287759-9125-479e-88c7-b8ba0e1b79ab', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 2, 'Cover the dough and let it rest near the oven for about an hour, until it doubles in size.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ea2116f0-9408-4f90-8efd-c6d3da137b05', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 3, 'Punch the dough down and divide it into small rounds, then roll each one out thin on a floured board.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3189af48-3add-4603-ae0e-ca0fdf8e703f', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 4, 'Stir za''atar, sesame seeds, sumac, and a good amount of olive oil together in a bowl until it forms a loose, fragrant paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7e83ba07-acf1-4709-b26a-8ff8dd9526f7', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 5, 'Spread the za''atar paste generously over each dough round, right to the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ced77bd2-8d24-41d6-aac8-26bf8f0134e1', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 6, 'Slide the topped rounds onto the hot stone base of the vendor''s oven and bake for about 5 minutes, until the edges puff and turn golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f06d74a-71b2-401a-a078-f53a8ca69318', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 7, 'Lift the hot manakish out with a long wooden peel and fold each one in half.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('faf68471-4f26-4568-8590-ffc074be466d', '5df0e0f0-ef10-4083-9ed4-618837eac0e6', 8, 'Serve it wrapped in paper with fresh mint, sliced cucumber, and tomato tucked inside for the customer to eat on the walk to work.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5df0e0f0-ef10-4083-9ed4-618837eac0e6', "id" FROM "tags" WHERE "name" = 'region:Mount Lebanon Coast'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5df0e0f0-ef10-4083-9ed4-618837eac0e6', "id" FROM "tags" WHERE "name" = 'state:Beirut'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5df0e0f0-ef10-4083-9ed4-618837eac0e6', "id" FROM "tags" WHERE "name" = 'country:Lebanon'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('21eb4cab-8c89-4a87-81e5-4b3ee89eb45b', 'region:Bekaa Valley', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('502847c4-acad-4187-9067-0bfeaf6d52d2', 'state:Zahle', 'state') ON CONFLICT ("name") DO NOTHING;

-- Bekaa Valley Kibbeh bil Sanieh (Zahle, Lebanon)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('27e4982d-d492-475d-8054-525e2cb89735', 'bekaa-valley-kibbeh-bil-sanieh-zahle-lebanon', 'Bekaa Valley Kibbeh bil Sanieh', NULL, 'asia'::"Continent", 'Lebanon', 'Zahle', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('773205ad-fa05-4f2d-b781-c59c2b492b52', '27e4982d-d492-475d-8054-525e2cb89735', 0, NULL, 'Ground lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d208e600-8ca7-4a02-a926-d31880fac2b0', '27e4982d-d492-475d-8054-525e2cb89735', 1, NULL, 'Bulgur wheat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('25002bcc-c8ac-4ef7-ac3e-fa97432192ea', '27e4982d-d492-475d-8054-525e2cb89735', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('63dd7910-8692-4f19-ae0e-c299ab3b3537', '27e4982d-d492-475d-8054-525e2cb89735', 3, NULL, 'Pine nuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ad363beb-15c7-40a3-b8ba-0d49eb2a5541', '27e4982d-d492-475d-8054-525e2cb89735', 4, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ed65b4df-a7f0-4b43-8948-b993746d77d7', '27e4982d-d492-475d-8054-525e2cb89735', 5, NULL, 'Allspice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40de50df-530b-4dd6-a95d-c16787abb3b8', '27e4982d-d492-475d-8054-525e2cb89735', 6, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ab6ee8e3-094b-41c3-905a-33935e0b5091', '27e4982d-d492-475d-8054-525e2cb89735', 7, NULL, 'Pomegranate molasses') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91dcb432-3053-49b6-9515-cd02690923f3', '27e4982d-d492-475d-8054-525e2cb89735', 1, 'Soak fine bulgur wheat in cold water for about 15 minutes, then squeeze it dry with your hands until no excess water remains.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0051b671-808c-4b93-8ba1-14ddba332354', '27e4982d-d492-475d-8054-525e2cb89735', 2, 'Blend the soaked bulgur with half the ground lamb, grated onion, cinnamon, and allspice in a food processor until the mixture turns into a smooth, pale paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('85afa7b4-a834-4654-92e7-978097830b5f', '27e4982d-d492-475d-8054-525e2cb89735', 3, 'For the filling, cook the remaining ground lamb in a pan with chopped onion and pine nuts, stirring for about 10 minutes until the meat browns and the nuts turn golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('472f2410-cf58-4b15-9772-c27aa19fe491', '27e4982d-d492-475d-8054-525e2cb89735', 4, 'Season the filling with more cinnamon and allspice, then set it aside to cool slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e8da686-361a-4761-8049-4cfed913be9b', '27e4982d-d492-475d-8054-525e2cb89735', 5, 'Grease a round baking tray with butter and press half of the bulgur and lamb paste evenly across the bottom.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7f54222-9f8c-4a5f-9e23-d600425a56ae', '27e4982d-d492-475d-8054-525e2cb89735', 6, 'Spread the cooked filling over this base, then top with the remaining bulgur paste, smoothing it into an even layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91d7218f-4d39-416e-ae3b-81ea25fca2de', '27e4982d-d492-475d-8054-525e2cb89735', 7, 'Score the top into diamond shapes with a knife and dot the surface with small pieces of butter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aa659ad9-73b1-481b-9f2f-6420dadaf3e1', '27e4982d-d492-475d-8054-525e2cb89735', 8, 'Bake in a hot oven for about 30 minutes, until the top turns deep golden brown and slightly crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('efcce2de-a96a-4da7-bcbf-4654ef29945d', '27e4982d-d492-475d-8054-525e2cb89735', 9, 'Drizzle the kibbeh with pomegranate molasses before cutting along the scored lines and serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '27e4982d-d492-475d-8054-525e2cb89735', "id" FROM "tags" WHERE "name" = 'region:Bekaa Valley'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '27e4982d-d492-475d-8054-525e2cb89735', "id" FROM "tags" WHERE "name" = 'state:Zahle'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '27e4982d-d492-475d-8054-525e2cb89735', "id" FROM "tags" WHERE "name" = 'country:Lebanon'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cb25aa55-275e-40d8-8419-9bf1ca44e3f5', 'region:North Lebanon', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d4de903b-582a-4636-8bce-28aa33014410', 'state:Tripoli', 'state') ON CONFLICT ("name") DO NOTHING;

-- Tripoli-Style Knafeh (Tripoli, Lebanon)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 'tripoli-style-knafeh-tripoli-lebanon', 'Tripoli-Style Knafeh', NULL, 'asia'::"Continent", 'Lebanon', 'Tripoli', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('30053f42-ecc4-4ac0-9e46-59e2ad226524', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 0, NULL, 'Shredded phyllo') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d9193d0-9b5e-4c8c-8d42-e892b08b3292', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 1, NULL, 'Akkawi cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f587ae9b-bcb3-4c3e-8521-4a52cdf485ca', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 2, NULL, 'Clarified butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ba67159-d8e7-447b-b1fe-9b0437bcff46', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 3, NULL, 'Sugar syrup') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bfd76497-5bf0-4225-a9c4-4537b6c181db', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 4, NULL, 'Rosewater') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8ccb6e44-fb0b-4958-8c49-a3030e834fd5', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 5, NULL, 'Ground pistachio') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('603e035a-6672-45e0-919f-72a0be375df9', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 1, 'Soak akkawi cheese in cold water the night before, changing the water once or twice to draw out its saltiness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f789423b-12b0-44c7-997d-c7d1e047bcd6', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 2, 'Chop the shredded phyllo dough finely on a large tray, working in clarified butter until every strand is coated and glistening.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f376e81c-8aeb-48ea-b525-30ef6e2007fe', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 3, 'Press about two thirds of the buttered phyllo firmly into the base of a round metal tray, packing it down into an even layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9e5aaff-6870-4259-8d63-48181dc4fa64', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 4, 'Drain the soaked cheese well and slice it thin, then layer the cheese evenly over the phyllo base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('815c8073-5fd3-4299-9d0c-618c4e295f6b', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 5, 'Cover the cheese completely with the remaining buttered phyllo, pressing it down firmly so the layers stick together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e925a211-3ac7-4df2-915a-ea235d5fe4e6', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 6, 'Set the tray directly over the vendor''s flat griddle and cook it for about 15 minutes, rotating often, until the underside turns deep golden and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f6a61174-274d-47ef-b87d-8fd4f6a72f1d', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 7, 'Flip the whole knafeh out onto a large tray in one confident motion, so the crisp golden side faces up.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3302160f-94c1-4d18-84de-9870b8ba29f6', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 8, 'Drizzle the hot knafeh immediately with cool sugar syrup scented with rosewater, letting it soak in.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd1f7916-1509-4d21-a6bf-a90124adc546', '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', 9, 'Scatter crushed pistachio over the top and cut the knafeh into squares to serve right away while the cheese is still stretchy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', "id" FROM "tags" WHERE "name" = 'region:North Lebanon'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', "id" FROM "tags" WHERE "name" = 'state:Tripoli'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '37c6db5f-45cd-4a05-bd58-1beeb5ed4abc', "id" FROM "tags" WHERE "name" = 'country:Lebanon'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4c93e5a1-4ce5-4489-8d8f-92cff4657096', 'region:Kyushu', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7312e919-5932-4091-81b5-204634fe6641', 'state:Fukuoka', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e071cee3-9ad3-49ca-90d8-ed47475a4fa1', 'country:Japan', 'country') ON CONFLICT ("name") DO NOTHING;

-- Fukuoka Tonkotsu Ramen (Fukuoka, Japan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b0036ec4-656c-4b3c-92ea-ce894c7106c4', 'fukuoka-tonkotsu-ramen-fukuoka-japan', 'Fukuoka Tonkotsu Ramen', NULL, 'asia'::"Continent", 'Japan', 'Fukuoka', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('444f63c3-9be2-4bde-b3dc-2c99285ad06e', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 0, NULL, 'Pork bones') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('037bcd71-0e71-44b4-bbd8-de479df40fb3', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 1, NULL, 'Thin ramen noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0ea31faf-03ef-48b0-811e-ba6c5ae19b06', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 2, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3738c637-6383-4486-994b-b228e1776cc9', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a4eef99-3543-40e2-9380-8a4723c9a968', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 4, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0159eaa-1f11-4c9c-b197-32ee89eef861', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 5, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9287d305-4145-41be-ad27-799268c9115f', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 6, NULL, 'Wood ear mushroom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('02f600bf-efb4-43b3-bf16-96d85c3fc701', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 7, NULL, 'Sesame oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b2bd8fc-84f4-43f2-ab22-eb813baae3e8', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 8, NULL, 'Pickled ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5b0d95bd-fb44-498b-8de0-e5bc324d7829', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 1, 'Blanch pork bones in boiling water for a few minutes to remove impurities, then scrub them clean under running water.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fe743c48-d681-4fe0-92c1-c74cdbc99696', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 2, 'Return the cleaned bones to a large stockpot, cover them generously with fresh water, and bring the pot to a hard, rolling boil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('da249afa-3c2d-44bf-af86-85dba1b1bed2', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 3, 'Keep the broth boiling vigorously, uncovered, for several hours, topping up water as needed, until it turns cloudy white and thickens into a rich, milky base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22f39de5-bb22-4368-b5b0-e09fd45a1a79', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 4, 'Separately, braise pork belly in a mixture of soy sauce, sake, and sugar until it becomes tender enough to slice with a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b0b0b631-11e2-4a67-b424-b6b6814e5ca1', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 5, 'Strain the finished tonkotsu broth through a fine sieve and season it with a splash of soy sauce and crushed garlic just before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7977b8ce-7415-4a3b-9fac-c13acd38eef9', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 6, 'Cook thin ramen noodles in a separate pot of boiling water for less than a minute, since they are meant to stay firm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('590c5391-96f9-4f5b-82b6-7b52aad590c1', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 7, 'Drain the noodles quickly and coil them into the bottom of a deep bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8ce77dab-3dc9-472c-928a-70571b69e7ae', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 8, 'Ladle the hot, milky broth over the noodles and arrange slices of braised pork belly, wood ear mushroom, and chopped green onion on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c37a8749-90d0-464a-8a26-fc6ef0b8dbfa', 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', 9, 'Finish with a few drops of sesame oil and a small pile of pickled ginger on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', "id" FROM "tags" WHERE "name" = 'region:Kyushu'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', "id" FROM "tags" WHERE "name" = 'state:Fukuoka'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0036ec4-656c-4b3c-92ea-ce894c7106c4', "id" FROM "tags" WHERE "name" = 'country:Japan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('26b86778-c1d8-4794-9fed-65dc5e240bb1', 'region:Kansai', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ac3e703e-c31f-4e62-9e91-92cbf78510ce', 'state:Osaka', 'state') ON CONFLICT ("name") DO NOTHING;

-- Osaka Takoyaki (Osaka, Japan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('7a838784-04f9-4a4d-a564-bd988cee57d2', 'osaka-takoyaki-osaka-japan', 'Osaka Takoyaki', NULL, 'asia'::"Continent", 'Japan', 'Osaka', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eb1ada77-fc84-4f09-9a13-8cf7bddf2322', '7a838784-04f9-4a4d-a564-bd988cee57d2', 0, NULL, 'Octopus') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5664ca12-8413-4981-a468-d4e63a5fe481', '7a838784-04f9-4a4d-a564-bd988cee57d2', 1, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f23fbef1-252e-4289-b97c-49ac9d476959', '7a838784-04f9-4a4d-a564-bd988cee57d2', 2, NULL, 'Dashi stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('64ea01be-d65d-4846-ac13-d1bdc06b8ebf', '7a838784-04f9-4a4d-a564-bd988cee57d2', 3, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a6e095e3-8f89-4a37-9a2f-e4559d39acf3', '7a838784-04f9-4a4d-a564-bd988cee57d2', 4, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f9110ea6-650e-43cc-9dbd-7d5d000819b1', '7a838784-04f9-4a4d-a564-bd988cee57d2', 5, NULL, 'Pickled ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b9a6a839-3bc6-4b40-93b8-d0b39b528bef', '7a838784-04f9-4a4d-a564-bd988cee57d2', 6, NULL, 'Takoyaki sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d1e7be2-31c2-47f3-9ca3-98135c8f560b', '7a838784-04f9-4a4d-a564-bd988cee57d2', 7, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('51af2893-2f5b-49bf-bde5-4c9d68291aa4', '7a838784-04f9-4a4d-a564-bd988cee57d2', 8, NULL, 'Bonito flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba5084aa-66c5-46a4-9b35-f3d0c1b537dd', '7a838784-04f9-4a4d-a564-bd988cee57d2', 9, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d96c79b7-8952-48fa-bd17-c86bf2f42f77', '7a838784-04f9-4a4d-a564-bd988cee57d2', 1, 'Whisk flour, dashi stock, and beaten egg together into a thin, pourable batter and let it rest for a few minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0c3c1617-0cb7-4147-8a4c-bb7b59c7c3d4', '7a838784-04f9-4a4d-a564-bd988cee57d2', 2, 'Brush the hemispherical wells of a hot cast iron takoyaki pan generously with vegetable oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91f0ab1d-7ba8-4241-b174-2a676c85ce49', '7a838784-04f9-4a4d-a564-bd988cee57d2', 3, 'Pour the batter into the wells until they overflow slightly, letting it pool across the surface of the pan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88e3c93d-2232-492c-b55a-a77d7e2522a5', '7a838784-04f9-4a4d-a564-bd988cee57d2', 4, 'Drop a small piece of boiled octopus, a pinch of chopped green onion, and a bit of pickled ginger into each filled well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('962cb442-9134-4c16-ab5f-b438a7994b09', '7a838784-04f9-4a4d-a564-bd988cee57d2', 5, 'Once the edges of the batter begin to set, use two thin picks to slice around each ball, cutting away the excess batter connecting them.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('583f2d12-1f88-4f18-b965-4a967654a314', '7a838784-04f9-4a4d-a564-bd988cee57d2', 6, 'Flip each partially formed ball a quarter turn, letting the raw batter from the surface flow down into the well to reshape it into a sphere.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4bf184f4-6286-44fb-b406-f9a4cdbb4d70', '7a838784-04f9-4a4d-a564-bd988cee57d2', 7, 'Keep rotating and flipping every ball every minute or so, until each one turns a deep golden brown and cooks through completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1903313f-cfcd-42ec-aa41-876f983eec96', '7a838784-04f9-4a4d-a564-bd988cee57d2', 8, 'Pile the finished takoyaki balls into a paper boat and brush them generously with sweet takoyaki sauce and mayonnaise.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2afd3674-1b01-4de6-86f5-6a7634b0895e', '7a838784-04f9-4a4d-a564-bd988cee57d2', 9, 'Finish with a shower of dried bonito flakes that flutter in the rising heat, and hand the tray over still steaming.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7a838784-04f9-4a4d-a564-bd988cee57d2', "id" FROM "tags" WHERE "name" = 'region:Kansai'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7a838784-04f9-4a4d-a564-bd988cee57d2', "id" FROM "tags" WHERE "name" = 'state:Osaka'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '7a838784-04f9-4a4d-a564-bd988cee57d2', "id" FROM "tags" WHERE "name" = 'country:Japan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b0aa9d1d-647a-44f2-9c3c-a9f31bede1a6', 'region:Hokkaido', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d8ea49f6-ff78-474c-a4b2-0e606e9a02b9', 'state:Ishikari', 'state') ON CONFLICT ("name") DO NOTHING;

-- Hokkaido Ishikari Nabe (Ishikari, Japan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b0384e69-348a-499d-ad67-588d81b467bc', 'hokkaido-ishikari-nabe-ishikari-japan', 'Hokkaido Ishikari Nabe', NULL, 'asia'::"Continent", 'Japan', 'Ishikari', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('09354003-c0a3-427c-b968-de390b3720d1', 'b0384e69-348a-499d-ad67-588d81b467bc', 0, NULL, 'Salmon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5134a84c-236f-40be-a411-80dcc48a7edc', 'b0384e69-348a-499d-ad67-588d81b467bc', 1, NULL, 'Miso paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8d8833d-c041-4b99-b0af-1da8f5f08c7d', 'b0384e69-348a-499d-ad67-588d81b467bc', 2, NULL, 'Napa cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9dc5886d-d985-4ba0-ad97-dec9a0dfd7f2', 'b0384e69-348a-499d-ad67-588d81b467bc', 3, NULL, 'Daikon radish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ec1ddcc-8f41-4f06-a127-e2402184862b', 'b0384e69-348a-499d-ad67-588d81b467bc', 4, NULL, 'Tofu') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('420e6478-aa2d-44e8-84c0-aa800ab1bf28', 'b0384e69-348a-499d-ad67-588d81b467bc', 5, NULL, 'Shiitake mushroom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00fa956d-0f35-41ba-819f-64afed11dfc4', 'b0384e69-348a-499d-ad67-588d81b467bc', 6, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ee83d65-111d-4ac2-a328-ed084a0cc203', 'b0384e69-348a-499d-ad67-588d81b467bc', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c449ded4-0a5a-4361-8b36-62a6b24aa01b', 'b0384e69-348a-499d-ad67-588d81b467bc', 8, NULL, 'Kombu') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a37ac346-9364-4335-ac7f-8cc2a7494945', 'b0384e69-348a-499d-ad67-588d81b467bc', 9, NULL, 'Corn') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('877b2ddc-3a75-4239-8c85-9dd14fea5f82', 'b0384e69-348a-499d-ad67-588d81b467bc', 1, 'Soak a sheet of kombu in cold water in a large pot for about 30 minutes to draw out its flavor, then set the pot over low heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0bbc5aaf-b941-41cd-a3cc-ec8aefdd8651', 'b0384e69-348a-499d-ad67-588d81b467bc', 2, 'Just before the water reaches a boil, lift out the kombu and dissolve miso paste directly into the gently simmering stock.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('34e9a786-7744-45f6-9a47-3e04af8c7a8c', 'b0384e69-348a-499d-ad67-588d81b467bc', 3, 'Cut salmon into thick steaks and add them to the pot along with chunks of daikon radish, letting everything simmer for about 10 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('40a953c3-03b9-482a-b9fa-38329e1de3f6', 'b0384e69-348a-499d-ad67-588d81b467bc', 4, 'Add wedges of napa cabbage, sliced shiitake mushroom, and cubes of tofu, tucking them into the broth around the salmon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b1270184-12c9-4d35-933c-9828b71ab5d0', 'b0384e69-348a-499d-ad67-588d81b467bc', 5, 'Simmer everything together for another 10 minutes, until the vegetables turn tender and the salmon flakes easily.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('871467c8-e3c4-472e-96d2-93bd4fd73763', 'b0384e69-348a-499d-ad67-588d81b467bc', 6, 'Scatter kernels of sweet corn and chopped green onion over the top in the final few minutes of cooking.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('61346bdf-2274-479c-9d7f-8db437939c19', 'b0384e69-348a-499d-ad67-588d81b467bc', 7, 'Drop a small knob of butter into the center of the pot just before serving, letting it melt slowly into the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4909935e-2ecd-4d82-9ccc-7bda08ef76b2', 'b0384e69-348a-499d-ad67-588d81b467bc', 8, 'Bring the pot straight to the table still bubbling and let everyone ladle their own portions into individual bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0384e69-348a-499d-ad67-588d81b467bc', "id" FROM "tags" WHERE "name" = 'region:Hokkaido'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0384e69-348a-499d-ad67-588d81b467bc', "id" FROM "tags" WHERE "name" = 'state:Ishikari'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b0384e69-348a-499d-ad67-588d81b467bc', "id" FROM "tags" WHERE "name" = 'country:Japan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d72d0925-67cd-4c52-b8b5-8764bb129341', 'region:Central Java', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d686e85f-98a9-4e7a-8492-858499fc7f61', 'state:Yogyakarta', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('62f6275b-ff7d-4945-94ce-e2e72fce9a82', 'country:Indonesia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Yogyakarta Gudeg (Yogyakarta, Indonesia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ed6712af-cff8-4841-a993-b7abe41ebe32', 'yogyakarta-gudeg-yogyakarta-indonesia', 'Yogyakarta Gudeg', NULL, 'asia'::"Continent", 'Indonesia', 'Yogyakarta', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('634890ee-bd5e-4586-b9ef-c341023aea21', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 0, NULL, 'Young jackfruit') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('82f76a07-9fd9-4ee8-b4ea-a06c7b343b18', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ee91c588-b4b4-42ca-b945-64d3d1fdcd59', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 2, NULL, 'Palm sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7ceeecf4-9a21-49c8-a396-3b9a56429f36', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 3, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5699e904-6386-44ee-a70d-0ce93d8a7566', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 4, NULL, 'Galangal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9868281f-4c0a-4b11-8c16-528e8afb0499', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 5, NULL, 'Shallot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2b4a68a0-6dfa-4136-a7c1-1f440c53f1a9', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6523fef9-dd18-4bd7-aa98-11347d0c30fe', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 7, NULL, 'Coriander seed') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00d71368-93d8-4a28-acd4-03a2b148e1ad', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 8, NULL, 'Teak leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('36bf44ee-f9d9-4d80-b767-d6bb151a5742', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 1, 'Cut young jackfruit into large chunks and boil them in water for about 20 minutes, until they soften slightly and lose their raw bitterness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e61df3ee-d66b-4702-96e0-dc664483b647', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 2, 'Grind shallot, garlic, and coriander seed into a smooth paste using a mortar and pestle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d391a49e-6a22-4896-b6c1-59f90e04cc68', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 3, 'Layer teak leaves in the bottom of a heavy clay pot, a traditional trick that helps turn the finished dish a deep reddish brown.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('99e63c4b-420c-4d42-afa0-a597e58012f8', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 4, 'Arrange the boiled jackfruit over the leaves, then pour over the ground spice paste, bruised galangal, and torn bay leaves.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f2a56b74-de09-437c-81b5-f458a80fe437', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 5, 'Pour in coconut milk until the jackfruit is mostly submerged, then add generous chunks of palm sugar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dba2339c-de72-41c7-8631-1fa9948e2e6b', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 6, 'Bring the pot to a gentle simmer and cook it uncovered for several hours, stirring occasionally and topping up coconut milk as it reduces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('41c98475-fdaa-475c-8ade-f87170fb1393', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 7, 'Continue simmering until the jackfruit turns deeply tender and almost falls apart, and the liquid reduces into a thick, sweet, mahogany colored sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('06360e6a-36f3-4060-9778-9dcaa3d0cbcf', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 8, 'Let the gudeg rest off the heat for a while so the jackfruit soaks up even more flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('24cb38f0-ad47-4643-bb75-a40f3d34639b', 'ed6712af-cff8-4841-a993-b7abe41ebe32', 9, 'Serve the gudeg warm over steamed rice, often alongside hard boiled eggs and fried tempeh for a full meal.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ed6712af-cff8-4841-a993-b7abe41ebe32', "id" FROM "tags" WHERE "name" = 'region:Central Java'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ed6712af-cff8-4841-a993-b7abe41ebe32', "id" FROM "tags" WHERE "name" = 'state:Yogyakarta'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ed6712af-cff8-4841-a993-b7abe41ebe32', "id" FROM "tags" WHERE "name" = 'country:Indonesia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('77bc3ad5-30bb-4ad6-97b7-20ef3f3a636d', 'region:West Sumatra', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('84443ac6-7ac8-4b3b-89b8-161ac46a559d', 'state:Padang', 'state') ON CONFLICT ("name") DO NOTHING;

-- Padang Beef Rendang (Padang, Indonesia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('84bcb90e-cb69-4658-85f7-7265b157471c', 'padang-beef-rendang-padang-indonesia', 'Padang Beef Rendang', NULL, 'asia'::"Continent", 'Indonesia', 'Padang', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f07756e6-a3a3-4fac-be82-0f316fe64dfc', '84bcb90e-cb69-4658-85f7-7265b157471c', 0, NULL, 'Beef chuck') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f6d84ee-b27f-4b91-94d8-edacadfe6a72', '84bcb90e-cb69-4658-85f7-7265b157471c', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8bc6af2c-8447-48d2-afa2-134c70607714', '84bcb90e-cb69-4658-85f7-7265b157471c', 2, NULL, 'Shallot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0a2ae5ce-32a7-4298-9f16-6a8d974684e8', '84bcb90e-cb69-4658-85f7-7265b157471c', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('46ff953c-ca1e-4f9f-80af-6df5d7432a26', '84bcb90e-cb69-4658-85f7-7265b157471c', 4, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('662c8d50-309b-42c0-913d-1de63eaeb59a', '84bcb90e-cb69-4658-85f7-7265b157471c', 5, NULL, 'Galangal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('533af3a4-5689-4aba-b84c-58eb382ff9ba', '84bcb90e-cb69-4658-85f7-7265b157471c', 6, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d3d638d0-ba9f-429c-b246-2f04d79fe7c5', '84bcb90e-cb69-4658-85f7-7265b157471c', 7, NULL, 'Lemongrass') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d782af8e-efd3-492f-a292-726af9141f71', '84bcb90e-cb69-4658-85f7-7265b157471c', 8, NULL, 'Dried chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3401056b-88e7-44c8-b068-4a5d082ac294', '84bcb90e-cb69-4658-85f7-7265b157471c', 9, NULL, 'Kaffir lime leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f5e5a35-d0bc-40c8-93b5-741849101d2f', '84bcb90e-cb69-4658-85f7-7265b157471c', 10, NULL, 'Toasted coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd224761-b022-448a-9613-69d3c26b03d3', '84bcb90e-cb69-4658-85f7-7265b157471c', 1, 'Grind shallot, garlic, ginger, galangal, turmeric, and soaked dried chili into a smooth, deep red paste using a mortar and pestle or blender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3b43989a-adb8-428a-b6c0-05c89425dc99', '84bcb90e-cb69-4658-85f7-7265b157471c', 2, 'Cut beef chuck into large cubes, leaving some fat on for richness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b50b0817-98e2-451e-b344-9d3db3b012f7', '84bcb90e-cb69-4658-85f7-7265b157471c', 3, 'Heat the ground spice paste in a heavy pot over medium heat, stirring for about 10 minutes until it turns fragrant and the oil begins to separate at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6753f49b-2f25-4837-973a-f3512b2d785b', '84bcb90e-cb69-4658-85f7-7265b157471c', 4, 'Add bruised lemongrass and torn kaffir lime leaves, stirring them into the paste for a minute.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('734ccc65-231f-4378-af29-7198c5d33739', '84bcb90e-cb69-4658-85f7-7265b157471c', 5, 'Add the beef cubes and stir to coat every piece thoroughly in the fragrant paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b2bcf795-50d8-4361-b7d8-d4528e65abf3', '84bcb90e-cb69-4658-85f7-7265b157471c', 6, 'Pour in coconut milk to cover the meat, then bring the pot to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('90f4ac08-c7e9-497b-9caf-7c5165e3ddef', '84bcb90e-cb69-4658-85f7-7265b157471c', 7, 'Cook the rendang uncovered over low heat for several hours, stirring occasionally to prevent it from catching on the bottom.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a65d718b-2977-412a-a98f-6c8a7b5f7299', '84bcb90e-cb69-4658-85f7-7265b157471c', 8, 'Stir in toasted, ground coconut partway through cooking to help thicken the sauce and deepen its flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c96ca46c-a108-48d5-b0b1-7eb8020117d2', '84bcb90e-cb69-4658-85f7-7265b157471c', 9, 'Continue simmering until almost all the liquid has evaporated and the beef turns dark brown and glossy, coated in a thick, almost dry spice paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '84bcb90e-cb69-4658-85f7-7265b157471c', "id" FROM "tags" WHERE "name" = 'region:West Sumatra'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '84bcb90e-cb69-4658-85f7-7265b157471c', "id" FROM "tags" WHERE "name" = 'state:Padang'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '84bcb90e-cb69-4658-85f7-7265b157471c', "id" FROM "tags" WHERE "name" = 'country:Indonesia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('79feba5a-53d4-4c48-9c3b-894ba6ad5e12', 'region:Bali', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c2297d6e-89aa-4981-88f4-cc7a7b9da4c1', 'state:Gianyar', 'state') ON CONFLICT ("name") DO NOTHING;

-- Balinese Sate Lilit (Gianyar, Indonesia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8ed047c7-b0fc-4719-8aad-714857ea8c40', 'balinese-sate-lilit-gianyar-indonesia', 'Balinese Sate Lilit', NULL, 'asia'::"Continent", 'Indonesia', 'Gianyar', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3d0ccb2-28d6-486d-bae1-a8d11d38f68d', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 0, NULL, 'Minced fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68ae7df6-b919-4924-b0a0-ea9c74e12f5e', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 1, NULL, 'Grated coconut') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a32a6061-0902-4676-bd6c-21f32bc990f1', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 2, NULL, 'Shallot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8ea36ff2-e507-4810-aff3-fd8d161ddf61', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aefe09f4-45ac-4737-897c-9d0fff6a1573', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 4, NULL, 'Turmeric') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0009ecbb-0493-464b-a9e6-50ac12b43b57', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 5, NULL, 'Galangal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d03e3755-5b43-4b58-98cb-6f86e0f4d501', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 6, NULL, 'Lemongrass stalks') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7c5bfdc-0987-4d55-adcf-9438cede93fb', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 7, NULL, 'Kaffir lime leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc4eef66-7d89-4dc9-ad2f-4b3b761e2e26', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 8, NULL, 'Palm sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93f676d1-1685-4afd-a070-97019ea74b8e', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 9, NULL, 'Bird''s eye chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec699c73-40d4-4728-9d8f-7d9cf995b33f', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 1, 'Grind shallot, garlic, turmeric, galangal, and bird''s eye chili into a fine, aromatic paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f188e454-34f9-428d-9b59-f83c74856eb9', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 2, 'Mix the spice paste into minced fish along with grated coconut, finely sliced kaffir lime leaves, and a little palm sugar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72198d5e-5701-46e8-a618-15bb117af688', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 3, 'Knead the mixture firmly with your hands for a few minutes, until it turns sticky and holds together well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f075053-c9df-4a68-8c35-e1a00e62c002', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 4, 'Take a lemongrass stalk, trimmed to leave a firm handle, and mold a portion of the fish mixture around the upper part of the stalk.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c860e75a-9c0f-4f9f-acc2-e5b6775a1173', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 5, 'Press and smooth the mixture with wet fingers until it forms an even, tapered layer wrapped around the stalk like a small torch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f25ba47a-fec8-4df6-806d-7cab8e0d9da9', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 6, 'Repeat with the remaining mixture and stalks, arranging the finished skewers on a tray.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8a272859-de12-4458-8ca6-f113fad15b6f', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 7, 'Grill the sate over hot charcoal, turning them every minute or so, until the coconut mixture turns golden brown and lightly charred in spots.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('05bc6037-a7b2-484e-8475-5bb84a109bc4', '8ed047c7-b0fc-4719-8aad-714857ea8c40', 8, 'Serve the sate lilit hot off the grill, holding the lemongrass stalk as a natural handle while eating.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8ed047c7-b0fc-4719-8aad-714857ea8c40', "id" FROM "tags" WHERE "name" = 'region:Bali'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8ed047c7-b0fc-4719-8aad-714857ea8c40', "id" FROM "tags" WHERE "name" = 'state:Gianyar'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8ed047c7-b0fc-4719-8aad-714857ea8c40', "id" FROM "tags" WHERE "name" = 'country:Indonesia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b8f375fe-e0c2-4d0f-89d4-b9daf28a22fd', 'region:Central Macedonia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bd3dceb3-b130-4c8d-8069-9561e00b184f', 'state:Thessaloniki', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('39ad087d-8d24-490a-bb1c-fc6100bd88ec', 'country:Greece', 'country') ON CONFLICT ("name") DO NOTHING;

-- Thessaloniki Bougatsa (Thessaloniki, Greece)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('af253341-a6dd-40cc-a269-467e6a8215bb', 'thessaloniki-bougatsa-thessaloniki-greece', 'Thessaloniki Bougatsa', NULL, 'europe'::"Continent", 'Greece', 'Thessaloniki', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ebcd6c0-586e-4240-a48e-562ddee76662', 'af253341-a6dd-40cc-a269-467e6a8215bb', 0, NULL, 'Phyllo pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('07ccc47f-8ddc-4e28-aba5-0a94a157276c', 'af253341-a6dd-40cc-a269-467e6a8215bb', 1, NULL, 'Semolina') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6572624d-39b4-48db-ad85-3761ad8756c9', 'af253341-a6dd-40cc-a269-467e6a8215bb', 2, NULL, 'Milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8eeb280d-4860-4065-b22b-769380383f8e', 'af253341-a6dd-40cc-a269-467e6a8215bb', 3, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9bae57a0-6ae4-404a-b84a-c313d31173f0', 'af253341-a6dd-40cc-a269-467e6a8215bb', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00038771-a7e4-43bb-bbe9-948f71a371c6', 'af253341-a6dd-40cc-a269-467e6a8215bb', 5, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('693b3305-6a45-4dd7-85e8-5265f2a1d174', 'af253341-a6dd-40cc-a269-467e6a8215bb', 6, NULL, 'Vanilla') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ce9d6fca-c0f3-4368-a423-fdf84d3f3e48', 'af253341-a6dd-40cc-a269-467e6a8215bb', 7, NULL, 'Cinnamon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('769d747b-3247-4f4f-bc2a-71410f6aa7f0', 'af253341-a6dd-40cc-a269-467e6a8215bb', 8, NULL, 'Powdered sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0a6df36e-b7dd-498b-a4fc-a385e117f48c', 'af253341-a6dd-40cc-a269-467e6a8215bb', 1, 'Heat milk in a pot with sugar and a scrape of vanilla until it just begins to steam.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cb8cc962-b339-408f-81e4-254543daa442', 'af253341-a6dd-40cc-a269-467e6a8215bb', 2, 'Sprinkle in semolina gradually while whisking constantly, so the mixture thickens smoothly without forming lumps.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('82dfa1a7-2a88-4fb6-a9cc-a84dc4f13708', 'af253341-a6dd-40cc-a269-467e6a8215bb', 3, 'Keep stirring over low heat for a few minutes until the custard turns thick enough to coat the back of a spoon, then remove it from the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('200419e6-3504-44f2-b57e-31a7dbf9a281', 'af253341-a6dd-40cc-a269-467e6a8215bb', 4, 'Whisk a beaten egg into the slightly cooled custard until fully incorporated.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b52f546b-9593-4a1f-9e92-0d68dd8a13ba', 'af253341-a6dd-40cc-a269-467e6a8215bb', 5, 'Brush a wide baking tray with melted butter and lay down several sheets of phyllo, brushing each one with more butter before adding the next.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3a4dbf57-bc35-4177-a91b-c986b90a3c86', 'af253341-a6dd-40cc-a269-467e6a8215bb', 6, 'Spread the semolina custard evenly over the buttered phyllo base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3ff0ca0d-e928-460c-b91e-cf8e0e3434fe', 'af253341-a6dd-40cc-a269-467e6a8215bb', 7, 'Fold the edges of the phyllo over the filling, then top with a few more buttered sheets, tucking the edges neatly underneath.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e4ef93f6-b883-46c7-a3d1-67eb5c07923e', 'af253341-a6dd-40cc-a269-467e6a8215bb', 8, 'Bake the bougatsa in a hot oven for about 30 minutes, until the pastry turns golden and shatteringly crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0d60312b-6aa9-4423-88dd-8e850cfca473', 'af253341-a6dd-40cc-a269-467e6a8215bb', 9, 'Cut the bougatsa into squares at the counter and dust each portion generously with powdered sugar and cinnamon before handing it to the customer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af253341-a6dd-40cc-a269-467e6a8215bb', "id" FROM "tags" WHERE "name" = 'region:Central Macedonia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af253341-a6dd-40cc-a269-467e6a8215bb', "id" FROM "tags" WHERE "name" = 'state:Thessaloniki'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'af253341-a6dd-40cc-a269-467e6a8215bb', "id" FROM "tags" WHERE "name" = 'country:Greece'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e9550118-7579-4a0f-a2eb-e9138550c6cd', 'region:Crete', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f045b978-614e-43ca-8940-5e57bf51d0f6', 'state:Chania', 'state') ON CONFLICT ("name") DO NOTHING;

-- Cretan Gamopilafo (Chania, Greece)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 'cretan-gamopilafo-chania-greece', 'Cretan Gamopilafo', NULL, 'europe'::"Continent", 'Greece', 'Chania', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('66138c7a-6e47-4469-9dbe-b821c40fd6dd', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 0, NULL, 'Lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f4b91862-1bad-478a-bebd-1051b9cc9ba0', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 1, NULL, 'Short grain rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eb681ef5-9797-4ea4-9753-1ea79448283b', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 2, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7b8d4770-1b4c-49fb-a9c5-11a951d6c74f', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 3, NULL, 'Staka') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5be3798-eb02-485b-8765-8db34a68005b', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 4, NULL, 'Lemon juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7146ba81-1d3d-4480-b5a5-8f10b240746e', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('795ffd91-30ee-4394-9cf6-cee43a6ec377', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 6, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f0ab404-d698-4f88-a558-5a7e1b887ac9', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 7, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('71e8e10f-8ba2-4bca-8784-e93f85c9d845', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 1, 'Place lamb pieces in a large pot with a sliced onion and bay leaf, cover with water, and bring it to a boil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ddb6be60-29a8-4565-a90d-afb467ad9f30', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 2, 'Skim off any foam that rises to the surface, then lower the heat and let the lamb simmer gently for about 2 hours, until it becomes very tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4d5642d3-eb3b-470e-8bd6-9f309bae0c25', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 3, 'Lift the lamb out of the pot and strain the broth through a fine sieve, discarding the onion and bay leaf.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4ef83d17-ca08-4e06-9a23-56033b38294b', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 4, 'Keep the lamb warm while the rice cooks in the fragrant broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('62783883-2ae2-44bb-922a-651bf614f0f7', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 5, 'Melt butter in a wide pot, then pour in the strained lamb broth and bring it back to a simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('04663551-6ad8-4891-84d3-d9cbe2b976f2', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 6, 'Stir in short grain rice and cook it uncovered, stirring occasionally, until it absorbs most of the liquid and turns creamy, similar to a risotto.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48e21e43-332c-4119-82ad-85214e811813', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 7, 'Whisk in a spoonful of staka, the local clotted cream, along with a good squeeze of lemon juice, stirring until the rice turns glossy and rich.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0177bfb5-5fe7-406a-90a1-d5aa9311109c', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 8, 'Season with salt and black pepper to taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9fcec90d-1731-4776-bd98-58e46e8ea0e1', '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', 9, 'Serve the creamy rice in wide bowls with the tender lamb pieces arranged on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', "id" FROM "tags" WHERE "name" = 'region:Crete'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', "id" FROM "tags" WHERE "name" = 'state:Chania'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '0fe5244f-b9d5-41e2-8782-d98c09c9f0ec', "id" FROM "tags" WHERE "name" = 'country:Greece'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1741496a-bd85-4117-9a5b-64f6f042c2b3', 'region:Peloponnese', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5c018cd8-ff5d-4724-a77d-48faeb2470c7', 'state:Messenia', 'state') ON CONFLICT ("name") DO NOTHING;

-- Peloponnese Gemista (Messenia, Greece)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('488e068a-0d6e-4933-bd06-ba15d5ec7292', 'peloponnese-gemista-messenia-greece', 'Peloponnese Gemista', NULL, 'europe'::"Continent", 'Greece', 'Messenia', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('14723172-f677-41bb-abfc-aa2b32382d4e', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 0, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b72aab6-9d6e-4678-87d7-397308f8583b', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 1, NULL, 'Bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('548ae756-b579-474b-a714-c8b0edc63a00', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 2, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d95f2f8f-0492-4ea0-a8b1-eccfb743cfae', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('00aea158-fffa-4132-84ed-e7b1b432b3e0', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 4, NULL, 'Fresh mint') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d3a370e4-20c7-4f0d-93f8-fdd8b9ba299d', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 5, NULL, 'Fresh parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('13d0ba16-e456-4cc3-a045-ca7681f9c836', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 6, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('87fbb177-4edf-4b0f-a7ca-58f16e9cf64e', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 7, NULL, 'Pine nuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('26f23734-5de9-4993-9f55-d046760db021', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 8, NULL, 'Currants') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d5605871-f72b-4c14-8bb1-fd4194d60f9e', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 9, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e20fed77-1e19-4903-8eec-a17ca3b87820', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 1, 'Slice the tops off ripe tomatoes and bell peppers and set the caps aside, then scoop out the flesh and seeds with a spoon, keeping the tomato pulp for later.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('51e19e9a-9ce5-4ea3-990b-0b51b49344fa', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 2, 'Chop the reserved tomato pulp and mix it with finely diced onion, chopped mint, and chopped parsley.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('621f292a-a948-47ec-8988-f6ea0b9fe516', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 3, 'Stir in rice, a generous amount of olive oil, toasted pine nuts, and a handful of currants, seasoning the filling with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('82aa71c3-a72b-4e9c-b307-e7eba0345be0', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 4, 'Spoon the rice mixture into the hollowed tomatoes and peppers, filling them about three quarters full to leave room for the rice to expand.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0505012b-c370-47e1-aafb-e5f79e94c53d', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 5, 'Replace the caps loosely on top of each vegetable.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbc90bcb-820d-42df-8b7f-9b3ad11ac885', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 6, 'Arrange the stuffed vegetables snugly in a large baking dish, tucking wedges of potato into the gaps between them.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3ccaae23-a86a-42dd-8111-ed240e08534a', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 7, 'Drizzle everything generously with olive oil and pour a little water into the bottom of the dish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b5dcaf28-dc71-4df4-a87a-091d9f59b1c2', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 8, 'Bake in a moderate oven for about an hour, basting occasionally, until the rice turns tender and the tomatoes and peppers soften and caramelize slightly at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('86715174-d9b1-406c-a3ad-9c2a95bdea34', '488e068a-0d6e-4933-bd06-ba15d5ec7292', 9, 'Let the gemista cool to warm room temperature before serving, as is traditional in Greek homes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '488e068a-0d6e-4933-bd06-ba15d5ec7292', "id" FROM "tags" WHERE "name" = 'region:Peloponnese'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '488e068a-0d6e-4933-bd06-ba15d5ec7292', "id" FROM "tags" WHERE "name" = 'state:Messenia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '488e068a-0d6e-4933-bd06-ba15d5ec7292', "id" FROM "tags" WHERE "name" = 'country:Greece'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e02cbba6-f16c-4880-8784-9a9efdadb5b2', 'region:Provence', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8a12cc64-3236-49dd-aea8-52f3f6fe06c5', 'state:Provence-Alpes-Côte d''Azur', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('86664462-6145-4688-a173-3333baf719a0', 'country:France', 'country') ON CONFLICT ("name") DO NOTHING;

-- Provençal Ratatouille (Provence-Alpes-Côte d'Azur, France)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 'provencal-ratatouille-provence-alpes-cote-dazur-france', 'Provençal Ratatouille', NULL, 'europe'::"Continent", 'France', 'Provence-Alpes-Côte d''Azur', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e69bcfe3-d3a1-44a7-814f-9affcaa78a4d', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 0, NULL, 'Eggplant') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cac0d77a-52df-4ee5-b31e-16d66bec2309', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 1, NULL, 'Zucchini') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d16f8887-de32-430c-8158-3a36f7526fcd', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 2, NULL, 'Bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7c89bc8-a6c0-4259-85d0-0ce73a331b84', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 3, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b57afd8f-d882-45f4-bd72-ffbe8cd76eb4', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('446f361a-30b5-4c55-9502-d30f3c093fa7', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19a756fb-1ef4-4e84-ac28-6567a2d0fff4', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 6, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b83229fe-b14d-425e-8659-6bd8586d6656', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 7, NULL, 'Fresh thyme') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fd03db8c-fa32-426e-b51c-3f056609a171', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 8, NULL, 'Fresh basil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3b4a02a2-190a-4a78-832a-a61313108b07', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 9, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d7ddf6bf-6781-4652-96c6-7971518c55a6', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 1, 'Cut the eggplant, zucchini, and bell pepper into similarly sized chunks, keeping each vegetable separate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('30ea50e3-2145-4112-8b7e-2868ffa73275', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 2, 'Heat olive oil in a wide pan and sauté the eggplant on its own over medium heat for about 8 minutes, until it turns golden and softens, then transfer it to a bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('217222fa-adfe-45a1-8b32-2437c412e2d8', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 3, 'Repeat the process separately with the zucchini and then the bell pepper, cooking each vegetable individually so their distinct textures and flavors stay intact.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cf9a9771-ce1c-4c15-a49a-19a11d5e0c1b', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 4, 'In the same pan, cook chopped onion and garlic for a few minutes until softened, then add chopped tomato, thyme, and a bay leaf.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aba18e9c-17dd-45aa-9b85-2a9df8cc86a1', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 5, 'Let the tomato mixture simmer for about 15 minutes, stirring occasionally, until it breaks down into a thick, fragrant sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('40abc427-e6f9-4603-8416-bf5ac1d7a6bd', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 6, 'Return all the separately cooked vegetables to the pan with the tomato sauce, folding them together gently so they keep some of their individual shape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a94847ce-1ae2-4a9e-a677-cd2cb0469992', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 7, 'Simmer everything together over low heat for another 15 minutes, allowing the flavors to meld without turning the vegetables mushy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f5e1a42b-9607-4532-b4e6-3069637ebdbf', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 8, 'Season with salt and pepper to taste, and remove the bay leaf.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12088dce-f0d5-4672-8ab6-980c5723f895', 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', 9, 'Tear fresh basil leaves over the top just before serving, either warm or at room temperature.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', "id" FROM "tags" WHERE "name" = 'region:Provence'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', "id" FROM "tags" WHERE "name" = 'state:Provence-Alpes-Côte d''Azur'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a6731f0a-147d-4bb6-b760-39d8ebe1ef1a', "id" FROM "tags" WHERE "name" = 'country:France'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8855ccc1-006b-45a7-aaec-23114525fa33', 'region:Brittany', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4441c055-1542-428b-b3e2-24da0e50427f', 'state:Finistère', 'state') ON CONFLICT ("name") DO NOTHING;

-- Breton Galette Complète (Finistère, France)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('76b24f46-9460-454c-bf31-3e6997758076', 'breton-galette-complete-finistere-france', 'Breton Galette Complète', NULL, 'europe'::"Continent", 'France', 'Finistère', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96970fa9-c823-4029-8f11-27a81354a24f', '76b24f46-9460-454c-bf31-3e6997758076', 0, NULL, 'Buckwheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28a9fe4d-86fe-4db3-bc28-8d15c9031c4c', '76b24f46-9460-454c-bf31-3e6997758076', 1, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40914a21-2242-4862-94d3-6b791d573f98', '76b24f46-9460-454c-bf31-3e6997758076', 2, NULL, 'Ham') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bee9ce5c-67c9-4752-9f84-47c0a823317b', '76b24f46-9460-454c-bf31-3e6997758076', 3, NULL, 'Gruyère cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d50cf7b-1868-42eb-869c-d528c761fcde', '76b24f46-9460-454c-bf31-3e6997758076', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5aea8a49-e962-4a95-b036-d6390bef6204', '76b24f46-9460-454c-bf31-3e6997758076', 5, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1ef08d3c-409d-48a3-8959-cd9df792f8a2', '76b24f46-9460-454c-bf31-3e6997758076', 6, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7845d68e-0abf-48ba-859a-bc00373dd8a1', '76b24f46-9460-454c-bf31-3e6997758076', 1, 'Whisk buckwheat flour with a pinch of salt, then gradually beat in water until the batter turns completely smooth and pourable, similar to a thin crepe batter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fa0a9758-2d4b-469b-9a12-6e457de4fe72', '76b24f46-9460-454c-bf31-3e6997758076', 2, 'Let the batter rest for at least an hour so the buckwheat fully hydrates.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('339f4f1b-b16c-467d-82c2-0fb279301907', '76b24f46-9460-454c-bf31-3e6997758076', 3, 'Heat a wide, flat crepe griddle until a drop of water sizzles and dances across the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9b25ac62-9883-49cd-8ee0-5353415ff16f', '76b24f46-9460-454c-bf31-3e6997758076', 4, 'Ladle a portion of batter onto the hot griddle and quickly spread it into a thin, even round using a wooden rake.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('23161784-b00f-4623-818d-12fa86ba30a0', '76b24f46-9460-454c-bf31-3e6997758076', 5, 'Cook the galette for a couple of minutes until the edges begin to lift and turn lacy and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8b4c0177-5e78-4356-8aa9-a76a4f7e9099', '76b24f46-9460-454c-bf31-3e6997758076', 6, 'Crack an egg directly onto the center of the galette and scatter grated Gruyère cheese and torn slices of ham around it.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cb595add-d245-4cbe-82ec-8a28866fe2fa', '76b24f46-9460-454c-bf31-3e6997758076', 7, 'Fold the four edges of the galette inward toward the center, forming a square and leaving the egg yolk visible in the middle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('62c6bcdb-4624-4c64-8aa2-1486b4c291d0', '76b24f46-9460-454c-bf31-3e6997758076', 8, 'Let it cook for another minute or two, until the egg white sets but the yolk stays soft and the cheese melts.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8cd5073-51a9-465e-b614-8e458043069f', '76b24f46-9460-454c-bf31-3e6997758076', 9, 'Slide the galette off the griddle with a wide spatula and serve it hot, straight from the stall.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '76b24f46-9460-454c-bf31-3e6997758076', "id" FROM "tags" WHERE "name" = 'region:Brittany'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '76b24f46-9460-454c-bf31-3e6997758076', "id" FROM "tags" WHERE "name" = 'state:Finistère'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '76b24f46-9460-454c-bf31-3e6997758076', "id" FROM "tags" WHERE "name" = 'country:France'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('92af4d1c-70e3-481b-8518-b0fba4242b38', 'region:Alsace', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ddd3a0e4-8aa2-490f-8e6c-f1569a5ce674', 'state:Bas-Rhin', 'state') ON CONFLICT ("name") DO NOTHING;

-- Alsatian Tarte Flambée (Bas-Rhin, France)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ded9b035-a1cb-4221-8e23-003258bca367', 'alsatian-tarte-flambee-bas-rhin-france', 'Alsatian Tarte Flambée', NULL, 'europe'::"Continent", 'France', 'Bas-Rhin', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('061fee83-da4b-4c21-8c98-eaf1caa62ddc', 'ded9b035-a1cb-4221-8e23-003258bca367', 0, NULL, 'Bread dough') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f24ddabd-bbfd-4e5e-930a-3b3d5615f560', 'ded9b035-a1cb-4221-8e23-003258bca367', 1, NULL, 'Crème fraîche') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('801c82d0-b484-4c9a-aaa5-adf7e71d346c', 'ded9b035-a1cb-4221-8e23-003258bca367', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dfb904a5-acd8-4575-bea3-cd4ad581cdd1', 'ded9b035-a1cb-4221-8e23-003258bca367', 3, NULL, 'Bacon lardons') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('be2b97fe-eafc-4b0b-b46c-ee1fadcd4133', 'ded9b035-a1cb-4221-8e23-003258bca367', 4, NULL, 'Nutmeg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('41191648-62fd-411f-882c-8c888bc6b7f2', 'ded9b035-a1cb-4221-8e23-003258bca367', 5, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e934dc3d-6764-40b6-a33d-03cac656aaf3', 'ded9b035-a1cb-4221-8e23-003258bca367', 1, 'Stretch a small ball of bread dough out on a floured surface, rolling and pulling it until it forms a very thin, almost translucent rectangle.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91cfac7c-00ee-4fca-8423-436c2404a4b7', 'ded9b035-a1cb-4221-8e23-003258bca367', 2, 'Spread crème fraîche in a thin, even layer over the dough, leaving a small border bare around the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0385dbe9-7136-4cc8-9a2a-c6e97dd1249c', 'ded9b035-a1cb-4221-8e23-003258bca367', 3, 'Season the crème fraîche generously with a little nutmeg and black pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('03abc312-d752-40fb-af25-5860a95b5735', 'ded9b035-a1cb-4221-8e23-003258bca367', 4, 'Scatter thinly sliced onion evenly across the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('313887df-2cf1-4ecd-abc6-832c1b8efbe4', 'ded9b035-a1cb-4221-8e23-003258bca367', 5, 'Fry bacon lardons briefly in a hot pan just until they begin to render their fat, then scatter them over the onions while still warm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0543c82f-27bf-4d58-bbea-5016fe11ce8c', 'ded9b035-a1cb-4221-8e23-003258bca367', 6, 'Slide the tarte onto a well floured peel and transfer it into a very hot wood fired oven.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ccfd46cc-dea7-4704-855e-e4d2b3f42747', 'ded9b035-a1cb-4221-8e23-003258bca367', 7, 'Bake the tarte flambée for only a few minutes, watching closely, until the edges char slightly and the onions turn soft and lightly browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f3eb9364-89a3-43d3-8a0a-2394bee6ede8', 'ded9b035-a1cb-4221-8e23-003258bca367', 8, 'Pull the tarte out while the center is still tender and the crust is crisp at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9ed7d280-1596-4ef3-a264-bbcd23563e9d', 'ded9b035-a1cb-4221-8e23-003258bca367', 9, 'Cut it into rough squares with a pizza wheel and serve it immediately, piping hot from the fire.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ded9b035-a1cb-4221-8e23-003258bca367', "id" FROM "tags" WHERE "name" = 'region:Alsace'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ded9b035-a1cb-4221-8e23-003258bca367', "id" FROM "tags" WHERE "name" = 'state:Bas-Rhin'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ded9b035-a1cb-4221-8e23-003258bca367', "id" FROM "tags" WHERE "name" = 'country:France'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('45c4e8b1-18e9-4dc1-ba10-2d90410111e7', 'region:Amhara Region', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fe2c79dc-f8ca-4dd8-a59c-347da15c7922', 'state:Gondar', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('07e3a918-c707-4f59-af31-882c311eee22', 'country:Ethiopia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Gondar Doro Wat (Gondar, Ethiopia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 'gondar-doro-wat-gondar-ethiopia', 'Gondar Doro Wat', NULL, 'africa'::"Continent", 'Ethiopia', 'Gondar', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15c94f80-d64e-4944-bde0-79cbcfb961de', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 0, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7622c904-759e-4f24-8990-a2a4216c5bed', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 1, NULL, 'Berbere spice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('86c0260c-92ef-4e56-be69-681ed3a91428', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 2, NULL, 'Red onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('14e02ac9-971e-43c3-8925-3d7fe155b2ee', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a9bb506-5d73-4805-a02a-bf13c2a94d39', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 4, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bb48a621-1a1b-4775-b0fd-fa737a4f84bd', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 5, NULL, 'Niter kibbeh') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c24077a-a5bd-4aa8-a230-6334e20f0dc1', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 6, NULL, 'Hard boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('84ec3bf7-b50e-4137-9d22-29666d72052a', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 7, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1c71202a-f593-4a56-8491-f1584e89c5a4', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 8, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('96abe6d5-fd13-4200-b7e8-4812f91c3f77', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 1, 'Cook finely chopped red onion in a dry pot over medium heat, stirring often for about 20 minutes, until it turns soft and deeply golden without any oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f091cb65-6d64-4afd-b533-461a53dd19c6', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 2, 'Stir in niter kibbeh, the spiced clarified butter, along with crushed garlic and grated ginger, letting them sizzle into the onions for a minute.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('47fefb25-b77d-42b8-97dc-c472ff645474', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 3, 'Add a generous amount of berbere spice paste and stir constantly for several minutes, toasting the spices until the mixture turns a deep brick red and smells intensely fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c82cca06-a53a-4618-89c2-1ed5653abdea', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 4, 'Stir in a spoonful of tomato paste and a splash of water, then let the sauce simmer for about 10 minutes, thickening slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('532b87a1-b3e2-4840-ab25-7b14704a6e8d', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 5, 'Score chicken pieces with shallow cuts and rub them with lemon juice before adding them to the simmering sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5c473d75-45f8-4981-859d-0db1c69fc5ff', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 6, 'Cover and cook the chicken in the sauce over low heat for about 30 minutes, turning the pieces occasionally, until they turn deeply tender and the sauce clings thickly to the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5a4b84c8-ffa2-4924-a71b-d0dda03b6c7c', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 7, 'Gently nestle peeled hard boiled eggs into the sauce during the last 10 minutes of cooking, spooning sauce over them so they soak up the color and flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6b8da827-3a7e-48bf-a56c-2892e62c6530', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 8, 'Taste and adjust the seasoning with more lemon juice or salt as needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9af2be6d-62f8-4264-84c5-9e113176fc2d', '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', 9, 'Serve the doro wat hot, with the eggs halved and arranged on top, alongside injera for scooping.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', "id" FROM "tags" WHERE "name" = 'region:Amhara Region'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', "id" FROM "tags" WHERE "name" = 'state:Gondar'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5b2dc569-07c4-4aa1-984c-e5e942d9ea06', "id" FROM "tags" WHERE "name" = 'country:Ethiopia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('22b797f7-36b3-4661-a7c9-a080e6dae99f', 'region:Tigray Region', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7cf49db7-0cbd-4fa6-a534-2e3aa63ba95a', 'state:Mekelle', 'state') ON CONFLICT ("name") DO NOTHING;

-- Tigray Tihlo (Mekelle, Ethiopia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cf20c727-6d61-42a0-99e8-56c28c2b5a05', 'tigray-tihlo-mekelle-ethiopia', 'Tigray Tihlo', NULL, 'africa'::"Continent", 'Ethiopia', 'Mekelle', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fe46aa64-5886-48f4-a812-c6c20889875d', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 0, NULL, 'Roasted barley flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55cc7dac-916b-4421-8576-ae9a6ea8c199', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 1, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cdef8ad0-dc37-44ac-a53f-3b80e87c258e', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 2, NULL, 'Berbere spice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('106aa315-1b3b-4fb0-a0e0-f30d9d758276', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 3, NULL, 'Niter kibbeh') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f681d496-193e-4e81-ab8e-2007a9cd48c0', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d4037560-e387-4f96-9c1e-2d41f7b1a717', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3c9985a-6491-4d40-806e-c72cf8bc25e7', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 6, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('65617145-f56f-479f-8273-afd5892ba200', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 1, 'Toast barley flour in a dry pan over medium heat for a few minutes, stirring constantly, until it turns a shade darker and smells nutty and roasted.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('99524c26-44e6-40b1-bb93-4701d80fe404', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 2, 'Bring water to a boil in a separate pot, then gradually stir in the toasted barley flour, mixing vigorously to prevent lumps from forming.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('87533fb7-a86f-4398-8d32-a7a29274b16a', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 3, 'Keep stirring and kneading the mixture directly in the pot with a wooden spoon for several minutes, until it comes together into a smooth, stiff dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('536b2219-4132-400c-92bf-588f0892affe', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 4, 'Wet your hands with cold water and roll small portions of the warm dough into smooth, firm balls about the size of a walnut.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5e4c0d05-4ecb-48c5-81a7-8b1e54f969b1', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 5, 'Set the barley balls aside to firm up slightly as they cool.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aed968c5-a156-4317-b6e7-537d25db3c6a', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 6, 'For the sauce, cook chopped onion and garlic in niter kibbeh until softened, then stir in chopped tomato and a generous amount of berbere spice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7b085e5f-d5ba-46b2-8632-82b339c78657', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 7, 'Simmer the sauce for about 15 minutes, until it thickens into a rich, spicy stew.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bc2c548e-1ba1-456c-a3e0-2ca94c001df9', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 8, 'Drop the barley balls into the hot sauce, turning them gently so they become coated on all sides without breaking apart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12f18b59-d24a-49da-9231-d97d9cf7bec1', 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', 9, 'Serve the tihlo balls hot, speared with small wooden sticks, dipped directly into the spicy sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', "id" FROM "tags" WHERE "name" = 'region:Tigray Region'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', "id" FROM "tags" WHERE "name" = 'state:Mekelle'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cf20c727-6d61-42a0-99e8-56c28c2b5a05', "id" FROM "tags" WHERE "name" = 'country:Ethiopia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8584c9ee-5bc0-40df-aba5-e2ec79b006b7', 'region:Oromia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2170aca9-fea9-4883-ac1d-0ab49893c0c1', 'state:Addis Ababa', 'state') ON CONFLICT ("name") DO NOTHING;

-- Addis Ababa Meat Sambusa (Addis Ababa, Ethiopia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 'addis-ababa-meat-sambusa-addis-ababa-ethiopia', 'Addis Ababa Meat Sambusa', NULL, 'africa'::"Continent", 'Ethiopia', 'Addis Ababa', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0b79589a-1a1c-4bce-b27a-dba8bc1275bc', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0be7dc4b-dd95-4f7f-86e8-aa5210535f1d', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('826334c4-ed0f-4334-98ab-e07b497bbaa7', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 2, NULL, 'Berbere spice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('01d1c34a-f67a-4e29-a4df-de3c30dd8218', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3346742b-bd43-4675-9e33-ae9f1dfed6f7', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 4, NULL, 'Jalapeno') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('31ff282d-27ac-49c9-a7ab-b7e54949635d', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 5, NULL, 'Thin pastry sheets') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8bfe30c3-2f68-48fc-a2ef-bcdfd21b28dd', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 6, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7662aede-fbe4-4fb3-8e79-2bd50456c6bb', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 7, NULL, 'Flour paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9e9a452c-5cb8-4315-88c9-761c3fcb3d27', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 1, 'Cook finely chopped onion and garlic in a hot pan for a few minutes until softened and translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22330710-c131-4415-bb5a-4f27783ebca3', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 2, 'Add ground beef, breaking it apart with a spoon, and cook for about 8 minutes until it browns evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12341bd2-fd24-4640-a1a9-e9c3dd245c4d', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 3, 'Stir in berbere spice and finely chopped jalapeno, cooking for a few more minutes until the mixture turns fragrant and any liquid evaporates.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('271bc196-c1df-4eef-9940-0ba4b8d4c9ef', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 4, 'Let the filling cool completely before handling it further.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('15c7934c-1905-46c5-b6d6-b7a4e3a03f02', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 5, 'Cut thin pastry sheets into long strips and place a spoonful of the cooled filling near one corner of each strip.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f8266f00-c4c3-4f45-ba83-a6d1be593528', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 6, 'Fold the pastry over the filling in a triangular shape, continuing to fold it triangle over triangle down the length of the strip, the way street vendors do it in quick, practiced motions.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('62118207-40de-4f82-8c76-33aff9e523f0', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 7, 'Seal the final edge with a dab of flour paste mixed with water, pressing it firmly closed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f4dfdb41-5130-4769-8932-a7a2d267198f', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 8, 'Heat vegetable oil in a deep pan until hot, then fry the sambusas in batches for about 4 minutes, turning occasionally, until they turn golden brown and crisp on every side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('291fd1e2-d030-498f-a732-df25a4b5b023', 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', 9, 'Drain the sambusas briefly on paper before handing them out hot, often with a small side of extra berbere or green chili sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', "id" FROM "tags" WHERE "name" = 'region:Oromia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', "id" FROM "tags" WHERE "name" = 'state:Addis Ababa'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a67b7d0c-8ca3-475d-bb6b-d5d399805c87', "id" FROM "tags" WHERE "name" = 'country:Ethiopia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('70015e19-023d-4a54-a382-db0a9002d6b1', 'region:Greater Cairo', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0dbb4849-2a16-4172-b715-039a0f591005', 'state:Cairo', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5ae66198-a8bc-4365-a578-7ffb374eea51', 'country:Egypt', 'country') ON CONFLICT ("name") DO NOTHING;

-- Cairo Koshari (Cairo, Egypt)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cc000163-0f6f-4ceb-a447-8afa91f975ac', 'cairo-koshari-cairo-egypt', 'Cairo Koshari', NULL, 'africa'::"Continent", 'Egypt', 'Cairo', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d93471f0-d466-42c4-a00e-79d248ce92f1', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('52f46314-3eac-4112-919b-e921ab5a3470', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 1, NULL, 'Brown lentils') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b892bac6-ace6-4342-9abd-895713c11dd6', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 2, NULL, 'Macaroni') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73966aa1-2911-4f4d-a693-027660a9621b', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 3, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1ea77f0a-9895-4f39-8d03-02423abf1bec', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 4, NULL, 'Fried onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2f46bb96-bfd4-4504-ac6f-a250fc814f0a', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 5, NULL, 'Tomato sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0c64301b-803a-4297-b79a-de3a68162cc0', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc94869a-9fe4-4dbc-a2cb-029e1041d40b', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 7, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c4c9631c-3f23-4f74-8813-3555cfdce91c', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 8, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cdde140c-67d9-4b4a-b162-d03b02973604', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 9, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('26874f85-1dcb-4f34-ac7f-ca2238d69e8d', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 1, 'Cook brown lentils in a pot of water until they turn tender but still hold their shape, then drain and set them aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('126a069c-bc2f-4d72-a498-96a2e05c900c', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 2, 'In a separate pot, cook rice until fluffy, and in another, boil macaroni until just tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('38d6d825-53de-417a-b51b-5e68d5926753', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 3, 'Slice onions thin and fry them in oil over medium heat, stirring often, until they turn deep brown and shatteringly crisp, then drain them on paper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f814ca5e-3f87-43e9-ba5b-0dac3a0a4fed', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 4, 'For the sauce, simmer tomato sauce with crushed garlic, cumin, a splash of vinegar, and chili until it thickens into a tangy, spiced sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fbe15bc5-71ba-4bde-aedf-bfce381c5179', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 5, 'To build a bowl, layer rice on the bottom, followed by lentils, macaroni, and warmed chickpeas, piling them up in neat sections rather than mixing them together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('edb19b4f-f624-4a83-9e7e-1ffce1692bb2', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 6, 'Ladle the spiced tomato sauce generously over the top of the layered carbohydrates and legumes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('de178d00-2d31-4b21-8d25-e8718d5a58c8', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 7, 'Finish with a heavy scattering of the crisp fried onions over everything.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('db1785ae-2925-4835-bbf4-310f56177c46', 'cc000163-0f6f-4ceb-a447-8afa91f975ac', 8, 'Serve the koshari with extra vinegar and chili sauce on the side, so the customer can adjust the tang and heat to their own taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc000163-0f6f-4ceb-a447-8afa91f975ac', "id" FROM "tags" WHERE "name" = 'region:Greater Cairo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc000163-0f6f-4ceb-a447-8afa91f975ac', "id" FROM "tags" WHERE "name" = 'state:Cairo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc000163-0f6f-4ceb-a447-8afa91f975ac', "id" FROM "tags" WHERE "name" = 'country:Egypt'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d9aff239-aa28-45cc-9583-be3201a20dad', 'region:Mediterranean Coast', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e9ce9b9a-82b8-4345-82a5-cbd7c4efcfff', 'state:Alexandria', 'state') ON CONFLICT ("name") DO NOTHING;

-- Alexandria Samak Meshwi (Alexandria, Egypt)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('83316b11-42cc-48c2-95c0-0a87fff2cdea', 'alexandria-samak-meshwi-alexandria-egypt', 'Alexandria Samak Meshwi', NULL, 'africa'::"Continent", 'Egypt', 'Alexandria', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cca3aab7-4809-467e-a4a8-b7d6c3c701d4', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 0, NULL, 'Whole sea bream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90585382-026b-495a-adb3-fbd736e9a244', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f5d72b25-a0c8-47d5-8978-c7478e90786a', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 2, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f9154876-f98c-4d9b-be79-d3b6d3a3b482', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 3, NULL, 'Coriander seed') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b7472a79-e415-4e08-a1b9-c9c1504bea82', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 4, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1b803e3-c855-44da-8b5a-3a7b2e4c768b', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 5, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bcdb52aa-38f4-492d-b02e-a28777629baa', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 6, NULL, 'Fresh parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1ba485f-e0b2-4114-9323-d83cfe289082', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 7, NULL, 'Tahini') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5a8ede5-9a04-4809-8c86-4fd96ee5ed89', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 8, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b73ef848-ce46-49f1-88fb-01c5c0ec0192', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 1, 'Clean and scale a whole sea bream, then score the flesh on both sides with a few diagonal cuts to help the marinade penetrate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('00ac3966-39c2-49b2-a897-86720cc0df4c', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 2, 'Crush garlic with cumin, ground coriander seed, and a pinch of salt into a rough paste, then loosen it with olive oil and lemon juice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ada81cfa-c5e6-4bfa-aa2c-8fa525495186', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 3, 'Rub the marinade all over the fish, working it into the scored cuts and the cavity, then let it rest for about 30 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5846874d-db3e-42de-93ef-6357d9ac848f', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 4, 'Stuff the cavity with a few slices of lemon and a handful of parsley stems.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a1869240-7f54-4251-b3cc-5c082235abee', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 5, 'Heat a grill or a heavy pan until very hot, then lay the fish down and cook it for about 6 minutes per side, until the skin turns crisp and blistered and the flesh flakes easily.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cb40510b-4504-4f0d-8903-0a54a558d65c', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 6, 'While the fish grills, prepare a simple rice pilaf and whisk tahini with lemon juice and water into a smooth, pourable sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('caf0e5c1-6c59-4a73-923d-41aa6069136b', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 7, 'Transfer the grilled fish to a platter and drizzle it with a little more olive oil and lemon juice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3325df98-bc16-4764-a64d-9fc316c5287d', '83316b11-42cc-48c2-95c0-0a87fff2cdea', 8, 'Serve the fish whole alongside the rice and a bowl of tahini sauce for spooning over each portion.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '83316b11-42cc-48c2-95c0-0a87fff2cdea', "id" FROM "tags" WHERE "name" = 'region:Mediterranean Coast'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '83316b11-42cc-48c2-95c0-0a87fff2cdea', "id" FROM "tags" WHERE "name" = 'state:Alexandria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '83316b11-42cc-48c2-95c0-0a87fff2cdea', "id" FROM "tags" WHERE "name" = 'country:Egypt'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0690b71d-7833-40ce-9cba-d11e04c39e3b', 'region:Upper Egypt', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('806cffaf-4e1c-4c4e-9f9e-3d4040da8edd', 'state:Aswan', 'state') ON CONFLICT ("name") DO NOTHING;

-- Aswan Ful Medames (Aswan, Egypt)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('13dfef6b-f579-411f-9ad0-7b139defc73a', 'aswan-ful-medames-aswan-egypt', 'Aswan Ful Medames', NULL, 'africa'::"Continent", 'Egypt', 'Aswan', 'vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8349d328-bbd7-443a-9b58-24e3958eccac', '13dfef6b-f579-411f-9ad0-7b139defc73a', 0, NULL, 'Fava beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('131311d0-f933-402d-8c9a-291afc9c800a', '13dfef6b-f579-411f-9ad0-7b139defc73a', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('393dc2ab-a333-4464-a41c-9d610309d1be', '13dfef6b-f579-411f-9ad0-7b139defc73a', 2, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('048dde4c-7c6c-4f2b-9692-6755cac5fe00', '13dfef6b-f579-411f-9ad0-7b139defc73a', 3, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bb54f3b3-5666-4ae6-bec0-d22e3c6908e5', '13dfef6b-f579-411f-9ad0-7b139defc73a', 4, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ad6df184-b7bd-486c-97b7-1e31c509b6b6', '13dfef6b-f579-411f-9ad0-7b139defc73a', 5, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('99fa6749-7323-4064-aa30-9144fe9cfc2f', '13dfef6b-f579-411f-9ad0-7b139defc73a', 6, NULL, 'Fresh parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ecf16794-218d-409e-a5f7-e4442b169f0d', '13dfef6b-f579-411f-9ad0-7b139defc73a', 7, NULL, 'Flatbread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b743fdc2-89cb-47e9-befb-4fea6c776fe8', '13dfef6b-f579-411f-9ad0-7b139defc73a', 1, 'Simmer dried fava beans in a large pot of water for several hours, or use a pressure pot for less time, until they turn completely soft and creamy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('66e77c0d-3979-4f3d-b224-814f1278a193', '13dfef6b-f579-411f-9ad0-7b139defc73a', 2, 'Drain the beans, reserving a little of the cooking liquid, and return them to the pot set over low heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('57ee875d-2744-436d-8d78-a32d22ede7ce', '13dfef6b-f579-411f-9ad0-7b139defc73a', 3, 'Mash some of the beans against the side of the pot with a spoon, leaving others whole for texture.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2ae00c96-c71f-4888-8a7f-11428ca7af97', '13dfef6b-f579-411f-9ad0-7b139defc73a', 4, 'Stir in crushed garlic, a pinch of cumin, and a splash of the reserved cooking liquid to loosen the mixture slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2e155a2b-54f1-4f95-890d-b1e1d723d7d4', '13dfef6b-f579-411f-9ad0-7b139defc73a', 5, 'Ladle the warm beans into small serving bowls at the street cart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c04d2ad2-b4b3-46d7-96ac-41abf6eae823', '13dfef6b-f579-411f-9ad0-7b139defc73a', 6, 'Drizzle each bowl generously with olive oil and a squeeze of fresh lemon juice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c64f9b95-b8f5-4df9-820e-65960cbc213b', '13dfef6b-f579-411f-9ad0-7b139defc73a', 7, 'Top with chopped tomato and chopped parsley, letting customers add extra chili or more lemon as they like.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b5c7496f-16cc-409c-a9b3-5d1ff3dc5cb0', '13dfef6b-f579-411f-9ad0-7b139defc73a', 8, 'Serve the ful medames with warm flatbread for scooping, the way workers grab their breakfast on the way to the fields or the docks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '13dfef6b-f579-411f-9ad0-7b139defc73a', "id" FROM "tags" WHERE "name" = 'region:Upper Egypt'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '13dfef6b-f579-411f-9ad0-7b139defc73a', "id" FROM "tags" WHERE "name" = 'state:Aswan'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '13dfef6b-f579-411f-9ad0-7b139defc73a', "id" FROM "tags" WHERE "name" = 'country:Egypt'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6f5d5905-07d8-44df-acd7-7af54eadf3f3', 'region:Bahia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a9a3b1c4-227e-4cc6-85ac-e0461e029e3c', 'state:Salvador', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7fda0a36-b1ea-4c7e-bb3d-3abc80f09d93', 'country:Brazil', 'country') ON CONFLICT ("name") DO NOTHING;

-- Bahian Acarajé (Salvador, Brazil)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 'bahian-acaraje-salvador-brazil', 'Bahian Acarajé', NULL, 'south_america'::"Continent", 'Brazil', 'Salvador', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dd43b9df-d79e-414c-bb63-fad5e1daf21f', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 0, NULL, 'Black-eyed peas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('218e7452-a2cd-487f-8c0c-77e709c6419f', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('70201d52-45fd-4953-ae11-95b98deaca21', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 2, NULL, 'Dried shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0ceeaeeb-e1d1-4462-bd15-580769844808', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 3, NULL, 'Palm oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8dae738c-a21f-4d47-acbb-d271f3340100', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 4, NULL, 'Vatapá') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0affe8e5-a09d-453d-bf59-434aea798b3f', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 5, NULL, 'Chili pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e8085059-4360-4075-9616-83f379f38573', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 6, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('338a03c0-e2f8-4d75-8028-a57c64f18728', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 1, 'Soak black-eyed peas in water for a few hours, then rub them between your hands to loosen and remove their skins, letting the loosened skins float to the top to be skimmed away.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7f52aa7a-006f-4a3a-a77e-7608cd1fedcd', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 2, 'Drain the skinned peas and grind them with chopped onion in a food processor until the mixture turns into a thick, pale, slightly grainy paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ee43f4f1-309c-4467-8f65-e41c32ae6e9a', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 3, 'Whip the paste vigorously by hand or with a mixer for several minutes, beating in air until it turns light and fluffy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('03eaef33-8114-466e-9993-f34e5ecad8da', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 4, 'Season the whipped batter with a pinch of salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5a5ef99e-8054-4b21-bc81-37a0aab30aa4', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 5, 'Heat a deep pot of dendê palm oil until it shimmers and turns fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('76081897-ab9b-45a0-b408-48dffc40ef68', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 6, 'Scoop portions of the batter with a large spoon, shaping each one into an oval as it''s lowered gently into the hot oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('062cb513-cd76-4503-8f3a-dfaae9045955', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 7, 'Fry the acarajé for a few minutes, turning once, until the outside turns deep orange red and crisp while the inside stays soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63f4eb97-438f-4a2c-b6cb-cf3f9bc31279', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 8, 'Drain the fried acarajé briefly, then slice each one open like a pocket.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4709f64a-cae1-4eab-be90-91f104cdd544', 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', 9, 'Fill the pocket with dried shrimp, a spoonful of vatapá, and a dab of chili pepper sauce, and hand it over wrapped in paper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', "id" FROM "tags" WHERE "name" = 'region:Bahia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', "id" FROM "tags" WHERE "name" = 'state:Salvador'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'cc01f5a5-218a-4e4c-9e81-2467f8e09a8a', "id" FROM "tags" WHERE "name" = 'country:Brazil'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('89d89260-3e8f-4c5c-b1b6-e1a34b203fe1', 'region:Minas Gerais', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0328b1f0-97e9-4f5e-b01a-de625d2c6e68', 'state:Ouro Preto', 'state') ON CONFLICT ("name") DO NOTHING;

-- Minas Gerais Feijão Tropeiro (Ouro Preto, Brazil)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('3d0f819a-eedf-494e-b5d6-28b9c83c940c', 'minas-gerais-feijao-tropeiro-ouro-preto-brazil', 'Minas Gerais Feijão Tropeiro', NULL, 'south_america'::"Continent", 'Brazil', 'Ouro Preto', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2d195079-dcad-46d8-be10-986737da5e9f', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 0, NULL, 'Pinto beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5904898b-8c78-4c67-acbb-ec321101c28c', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 1, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1d3e3d4-06cb-4c2c-abfc-df2564b82c85', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 2, NULL, 'Pork sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('25a02b35-1ebf-4726-9772-70cc77ddebe6', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 3, NULL, 'Cassava flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('badec424-32c3-4fb8-9202-28856733a0d4', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9ac8dd73-6239-476a-a2bf-b1ffbffb1e38', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc8f65ef-26a4-49da-9b92-93d838226455', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('de517790-62fa-4fff-88f7-372eafa84c60', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 7, NULL, 'Collard greens') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2e71fc32-acb4-49ce-92d4-69ad6a277fac', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 8, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be616128-8585-48de-9708-b6f2fac22f0a', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 1, 'Cook dried pinto beans in a pot of water with a bay leaf until they turn tender but still hold their shape, then drain them, reserving a little of the liquid.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3bcba546-861b-4797-92a9-6dc63d8e9bb7', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 2, 'Cut bacon and pork sausage into small pieces and fry them together in a wide pan over medium heat for about 10 minutes, until they render their fat and turn crisp and golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f3ee105a-f48a-4342-922d-8b2e49e6c3af', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 3, 'Add chopped onion and garlic to the pan and cook for a few more minutes, until softened in the rendered fat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c66f5bd-b36d-4ebe-82fa-646c9a808b44', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 4, 'Stir the cooked beans into the pan along with a splash of their reserved cooking liquid, mixing everything together.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('50a7b4be-479d-4e14-aa97-26517ec5419e', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 5, 'Fry eggs separately in a little of the bacon fat until the whites set but the yolks stay soft, then chop them roughly and set aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('68d3fb30-466f-43b3-890b-666ab7fd2ef2', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 6, 'Sprinkle cassava flour gradually over the bean and bacon mixture, stirring constantly so it toasts lightly and binds everything into a loose, grainy texture rather than a paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aae9310f-0d79-42be-a06e-8d09b69ffa02', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 7, 'Wilt shredded collard greens in a separate hot pan with a touch of oil for a minute or two, until they turn bright green and tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7dfa18cd-94fb-4252-bc69-ca5cefa4fd7d', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 8, 'Fold the chopped fried eggs and wilted collard greens into the tropeiro just before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f9c9f83e-32b2-4573-8349-c793437351b6', '3d0f819a-eedf-494e-b5d6-28b9c83c940c', 9, 'Serve the feijão tropeiro warm as a hearty side, traditionally alongside grilled meats and rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3d0f819a-eedf-494e-b5d6-28b9c83c940c', "id" FROM "tags" WHERE "name" = 'region:Minas Gerais'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3d0f819a-eedf-494e-b5d6-28b9c83c940c', "id" FROM "tags" WHERE "name" = 'state:Ouro Preto'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3d0f819a-eedf-494e-b5d6-28b9c83c940c', "id" FROM "tags" WHERE "name" = 'country:Brazil'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('149789db-b6ef-4bfe-a376-254c22dd0022', 'region:Rio Grande do Sul', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1cf4556c-6065-42c7-8491-17ca9c8b1744', 'state:Porto Alegre', 'state') ON CONFLICT ("name") DO NOTHING;

-- Gaúcho Churrasco Picanha (Porto Alegre, Brazil)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 'gaucho-churrasco-picanha-porto-alegre-brazil', 'Gaúcho Churrasco Picanha', NULL, 'south_america'::"Continent", 'Brazil', 'Porto Alegre', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9d17d79f-b39c-4715-a369-8c307d127ff6', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 0, NULL, 'Picanha beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b6d9d699-7d33-4525-af38-efda85ffb644', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 1, NULL, 'Coarse salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aa17bcfe-ceeb-4287-8198-43686161241d', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 2, NULL, 'Skewers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('086089a1-89ce-4c11-9b24-7ac5614a043c', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 3, NULL, 'Chimichurri') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b5bbab17-f5e3-4c80-8225-ad0fca2473ef', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('49809490-d992-4697-aca1-09f1c5a078ae', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 5, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7dc0f5a9-2759-4689-85c9-fa4382b18608', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 6, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3485f5eb-91ec-4c1a-9352-2ed966dc7ad1', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 7, NULL, 'Vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('42f09775-9531-4c52-9d2a-8f7bfa1ed807', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 1, 'Trim the picanha cut of any excess silver skin, leaving a thick, even layer of fat cap intact on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1ade1c2c-1cbb-4225-a4e6-f7adaa854ef1', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 2, 'Score the fat cap in a shallow crosshatch pattern, cutting just through the fat without reaching the meat below.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('94c7bfe1-dec4-43af-ab08-3a1ccc1937e0', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 3, 'Curve the meat into a crescent shape and thread it onto a long metal skewer, fat side out, securing it firmly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('38b803c9-830c-4a32-8c31-43964fd37919', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 4, 'Pack a generous, even layer of coarse salt over the entire surface of the meat, letting it cling to the fat and flesh alike.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48ce649d-deb3-4a54-95a7-04657411795c', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 5, 'Set up a bed of hot coals or wood embers and position the skewer at a moderate distance from the heat, fat side facing the fire first.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('54047d83-8b05-4406-b157-e802ca0a8017', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 6, 'Roast the picanha slowly, rotating the skewer every several minutes, until the fat renders and turns deeply golden and crackling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a1559c7d-dd55-4d7b-ae0f-4303e8c4a639', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 7, 'Slice thin portions directly off the outer crust as it forms, returning the remaining roast to the fire to continue cooking, a technique that lets everyone eat in rounds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('64a15979-4e28-4821-b927-1e7a3b64438d', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 8, 'Continue rotating and slicing until the whole cut is cooked through, with the center reaching a warm rosy pink.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2c83c09c-d1c2-484f-aa98-76c1bd75c920', '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', 9, 'Serve the sliced picanha immediately with a bowl of chimichurri made from chopped parsley, garlic, olive oil, and vinegar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', "id" FROM "tags" WHERE "name" = 'region:Rio Grande do Sul'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', "id" FROM "tags" WHERE "name" = 'state:Porto Alegre'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6e73e6b2-31d5-4477-b9bf-b3f9f2772450', "id" FROM "tags" WHERE "name" = 'country:Brazil'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('049802a6-90eb-4f73-b209-552dc334464a', 'region:Far North Queensland', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e1f2b19e-2924-470e-9d32-5906683d3a23', 'state:Cairns', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ae40397e-af18-4c18-8eb8-95f338a2cb08', 'country:Australia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Queensland Grilled Barramundi (Cairns, Australia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 'queensland-grilled-barramundi-cairns-australia', 'Queensland Grilled Barramundi', NULL, 'oceania'::"Continent", 'Australia', 'Cairns', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f59e7337-fcdd-48a4-ac04-8932371821df', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 0, NULL, 'Barramundi fillet') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bd4d20b7-e865-4a52-a7f9-95f14ea410d7', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 1, NULL, 'Mango') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3ea788f-68a8-4136-9a4d-6ead1fab0cfd', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 2, NULL, 'Red onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('afef7617-8745-4251-bace-ab262a75b4e7', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 3, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('957b0be2-edc8-47ae-ab5d-80fbcc0051c0', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 4, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ee387e12-250b-423f-9bef-2d17e2a3cd9f', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 5, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c0569536-84c7-4a5e-849e-abde40d9c676', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 6, NULL, 'Macadamia oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f9110331-f747-4dc8-9973-46882e3d4b9f', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 7, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('213561e9-d2a4-41ee-a792-b2edaa832026', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 1, 'Pat the barramundi fillets dry and season both sides well with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('800fb2e3-5b61-4c2b-886e-df9a83f3245f', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 2, 'Dice ripe mango and red onion finely, then toss them together with chopped chili, chopped coriander, and a squeeze of lime juice to make a quick salsa.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('769f8b40-4766-4790-b39d-1a048de99b92', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 3, 'Let the salsa sit for a few minutes so the flavors combine while the grill heats up.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbeb083b-aac6-4cc4-9394-08703d528a76', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 4, 'Brush a hot grill or heavy pan with macadamia oil and lay the barramundi skin side down.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('23a0a238-c970-4b0f-a4ef-8d62afc91c1a', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 5, 'Cook the fillets for about 4 minutes without moving them, until the skin turns crisp and releases easily from the grill.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('91642135-ba42-4d5a-842c-29c39ccc1640', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 6, 'Flip the fillets carefully and add a small knob of butter to the pan, tilting it so the melted butter bastes over the fish.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e9030f35-30e9-4876-b24d-e759a2353c2b', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 7, 'Cook for another 2 to 3 minutes, until the flesh turns opaque and flakes easily under gentle pressure.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('384209d2-6c03-47c3-bc8f-09edd53b77a2', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 8, 'Rest the fish for a minute off the heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('949c5fd2-6c82-4cb6-82a8-bbec24764610', '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', 9, 'Plate the barramundi skin side up and spoon the mango salsa generously alongside, finishing with a final squeeze of lime.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', "id" FROM "tags" WHERE "name" = 'region:Far North Queensland'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', "id" FROM "tags" WHERE "name" = 'state:Cairns'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8722cfb7-eefa-4eb3-856c-304d4cf0b5f0', "id" FROM "tags" WHERE "name" = 'country:Australia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6c8cb1d0-8e90-496d-ab65-4389e26d8cf9', 'region:Victoria', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e1631333-15a8-469b-a556-dd69497cfcb7', 'state:Melbourne', 'state') ON CONFLICT ("name") DO NOTHING;

-- Melbourne Meat Pie (Melbourne, Australia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b9539f46-7f05-40a9-ab9b-404fc45c95d2', 'melbourne-meat-pie-melbourne-australia', 'Melbourne Meat Pie', NULL, 'oceania'::"Continent", 'Australia', 'Melbourne', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('536f1ab2-a53c-415d-8780-48c02ab0b034', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('22a5a13c-3950-4072-b004-ef0ac2bb6483', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 1, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc2de7fc-8a5d-47fd-8ad0-91505a56f86f', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('abf7fefb-02be-4b05-bc5e-81573a2b658a', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 3, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('68f9a01e-a671-4dbb-934e-1feca865d8b6', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 4, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1b80aef-4a1d-41d6-ab5f-99fd6d6a46f0', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 5, NULL, 'Puff pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('44cd1851-1c9a-41f6-a3e5-5d73a82476ab', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 6, NULL, 'Shortcrust pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fb06be30-fc5c-4875-9b0a-a34809dfc018', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 7, NULL, 'Egg wash') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03a9e3b6-ca88-4048-ae1d-02278967caf9', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 8, NULL, 'Tomato sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3d229021-55f0-472a-860c-5a8cc2c56b1f', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 1, 'Cook chopped onion in a hot pot until softened, then add ground beef and brown it thoroughly, breaking up any clumps with a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('97bdb55b-9daf-4e52-b3a6-5324b3a4dd3e', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 2, 'Sprinkle flour over the browned beef and stir it in, letting it cook for a minute to lose its raw taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3dfaa909-1d30-4de7-8833-de12bacb59e9', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 3, 'Pour in beef stock and a dash of Worcestershire sauce, stirring until the mixture turns smooth and gravy-like.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f1eddb10-bf61-4e96-ac67-13ee654e78a2', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 4, 'Simmer the filling gently for about 20 minutes, stirring occasionally, until it thickens into a rich, glossy mince that holds its shape on a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('337e8e99-59aa-4c03-bbaa-3e083108a0e7', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 5, 'Let the filling cool completely, since hot filling would make the pastry soggy and hard to work with.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('844c3758-3c9e-4663-8fee-476a9684ab0e', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 6, 'Line small pie tins with shortcrust pastry, pressing it into the corners and trimming the excess from the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a0e7dbd1-c96d-4345-a3f5-6c5de9130a2a', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 7, 'Spoon the cooled beef filling into each pastry shell, mounding it slightly in the center.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9f4d22d5-6402-4c96-89da-efd35f918b05', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 8, 'Top each pie with a round of puff pastry, crimping the edges firmly to seal in the filling, then brush the tops with egg wash.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cd9680b2-3fa9-4b26-8fd5-d44f4b57d926', 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', 9, 'Bake the pies in a hot oven for about 25 minutes, until the puff pastry rises tall and turns deep golden brown, then serve hot with a squeeze of tomato sauce on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', "id" FROM "tags" WHERE "name" = 'region:Victoria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', "id" FROM "tags" WHERE "name" = 'state:Melbourne'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b9539f46-7f05-40a9-ab9b-404fc45c95d2', "id" FROM "tags" WHERE "name" = 'country:Australia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('31b2b819-db87-4362-8c56-f5f410fa668d', 'region:South Australia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('368277a6-f8c0-403e-986f-a588b1264f07', 'state:Adelaide', 'state') ON CONFLICT ("name") DO NOTHING;

-- Adelaide Pie Floater (Adelaide, Australia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4e171d1a-02ed-49e5-83be-481a012105b4', 'adelaide-pie-floater-adelaide-australia', 'Adelaide Pie Floater', NULL, 'oceania'::"Continent", 'Australia', 'Adelaide', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b5ecf06-ccf2-4212-b01e-5e6229b62925', '4e171d1a-02ed-49e5-83be-481a012105b4', 0, NULL, 'Meat pie') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc0a2c7c-9e32-4543-ab18-bdf59fab899e', '4e171d1a-02ed-49e5-83be-481a012105b4', 1, NULL, 'Dried split peas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bc5f4c1b-ff4c-45f1-80a4-1da2da4d3c1e', '4e171d1a-02ed-49e5-83be-481a012105b4', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3f03b74-2d5a-46d7-a1a1-f7666d0ea5f4', '4e171d1a-02ed-49e5-83be-481a012105b4', 3, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0777bd31-a12d-42cd-8c85-a7b63b4ce9dd', '4e171d1a-02ed-49e5-83be-481a012105b4', 4, NULL, 'Vegetable stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6b8aa3b9-5378-4f5a-bfaa-b369fde7c0f8', '4e171d1a-02ed-49e5-83be-481a012105b4', 5, NULL, 'Tomato sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f367aa6-9b36-4762-87a4-f63380776e50', '4e171d1a-02ed-49e5-83be-481a012105b4', 6, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6662e30a-ece6-47fe-9e81-5ea238c96563', '4e171d1a-02ed-49e5-83be-481a012105b4', 7, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('407098cd-3b2b-43ca-ad30-ac05746113ba', '4e171d1a-02ed-49e5-83be-481a012105b4', 1, 'Soak dried split peas for a few hours, then drain them and add them to a pot with chopped onion, chopped carrot, and vegetable stock.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e19648fe-f630-4e69-80de-a59a150914f2', '4e171d1a-02ed-49e5-83be-481a012105b4', 2, 'Bring the pot to a boil, then lower the heat and simmer for about an hour, stirring occasionally, until the peas break down completely into a thick, bright green mush.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('75cf4e02-f4c0-4ea1-91ad-f13cf1794a4a', '4e171d1a-02ed-49e5-83be-481a012105b4', 3, 'Season the pea soup with salt and a dash of Worcestershire sauce, adjusting the consistency with a little extra stock if it turns too thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7a589408-d255-49c2-a6af-23d625e8c8e1', '4e171d1a-02ed-49e5-83be-481a012105b4', 4, 'Keep the soup at a steady simmer in a large pot set on the street cart, ready to be ladled at a moment''s notice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('38427957-4991-4ea1-b732-82da0070f760', '4e171d1a-02ed-49e5-83be-481a012105b4', 5, 'Bake or reheat a whole meat pie until the pastry turns crisp and the filling inside is piping hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1cb10f39-7976-4b60-88de-1195b1f9eb90', '4e171d1a-02ed-49e5-83be-481a012105b4', 6, 'Ladle a generous pool of the hot pea soup into a deep bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dfd98940-58e1-445b-868e-2b73ab37916e', '4e171d1a-02ed-49e5-83be-481a012105b4', 7, 'Lower the whole meat pie upside down into the center of the soup, so it floats with the pastry base facing up and the soup pooling around its sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bca53a63-6768-4c0c-ba12-9aa0b21541b7', '4e171d1a-02ed-49e5-83be-481a012105b4', 8, 'Squeeze a generous zigzag of tomato sauce across the top of the floating pie.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('517ea125-5a7c-4b60-8d50-684de0960e3c', '4e171d1a-02ed-49e5-83be-481a012105b4', 9, 'Hand the bowl over immediately with a spoon, the classic late-night order from Adelaide''s stainless steel food carts.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4e171d1a-02ed-49e5-83be-481a012105b4', "id" FROM "tags" WHERE "name" = 'region:South Australia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4e171d1a-02ed-49e5-83be-481a012105b4', "id" FROM "tags" WHERE "name" = 'state:Adelaide'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4e171d1a-02ed-49e5-83be-481a012105b4', "id" FROM "tags" WHERE "name" = 'country:Australia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('260ee2af-7311-4aa3-9f4a-6588ae6b12a4', 'region:Quebec', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('63d9e285-8b24-4980-84c5-5b13cd10ddda', 'state:Montreal', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5262153f-d817-4391-b94a-cdacad4b6796', 'country:Canada', 'country') ON CONFLICT ("name") DO NOTHING;

-- Montreal Poutine (Montreal, Canada)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('faf82331-d8da-4615-bec7-94b7d3235007', 'montreal-poutine-montreal-canada', 'Montreal Poutine', NULL, 'north_america'::"Continent", 'Canada', 'Montreal', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('32976044-3578-4f90-b1cd-016a0c459845', 'faf82331-d8da-4615-bec7-94b7d3235007', 0, NULL, 'Russet potatoes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('31985b55-75c6-4f69-b30c-2a0fbe0ffe20', 'faf82331-d8da-4615-bec7-94b7d3235007', 1, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1c8544d9-ec63-4cfc-95aa-ca281d0b3995', 'faf82331-d8da-4615-bec7-94b7d3235007', 2, NULL, 'Cheese curds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('24544c52-1f0c-47b5-b37a-f6c5192f7881', 'faf82331-d8da-4615-bec7-94b7d3235007', 3, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a4313e15-fda6-4329-9db6-7979dfc24f1a', 'faf82331-d8da-4615-bec7-94b7d3235007', 4, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('25d5beef-1bb6-4e59-93d9-4b9b9b330539', 'faf82331-d8da-4615-bec7-94b7d3235007', 5, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('39ec2d47-a017-474c-986f-9afed7f3738c', 'faf82331-d8da-4615-bec7-94b7d3235007', 6, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('074b2456-42d0-4dfa-876d-1a57580cba2d', 'faf82331-d8da-4615-bec7-94b7d3235007', 7, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3da6799-dfb4-4442-8aaf-73d1bb01e931', 'faf82331-d8da-4615-bec7-94b7d3235007', 8, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e9002cf9-b155-4ac9-b3e0-917854e3e4fd', 'faf82331-d8da-4615-bec7-94b7d3235007', 9, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('db47a1ee-7619-4d23-ad22-07b9dda14ab6', 'faf82331-d8da-4615-bec7-94b7d3235007', 1, 'Peel the potatoes and cut them into thick fries, then soak them in cold water for about 30 minutes to draw out excess starch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be02f9a4-7071-4d9d-bf1f-75b49730d6d0', 'faf82331-d8da-4615-bec7-94b7d3235007', 2, 'Drain the fries and pat them completely dry with a clean towel.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('390d87e9-5d31-469a-b9a6-aa3dd1523574', 'faf82331-d8da-4615-bec7-94b7d3235007', 3, 'Heat the oil to 325 degrees Fahrenheit and blanch the fries in batches for about 5 minutes, until they are soft and pale but not browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('68fca232-cdf9-4bcb-affc-62fff6746209', 'faf82331-d8da-4615-bec7-94b7d3235007', 4, 'Lift the fries out and let them rest on a rack for at least 15 minutes while you prepare the gravy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e31aed20-1ee4-4530-827c-206bc878a62b', 'faf82331-d8da-4615-bec7-94b7d3235007', 5, 'Melt the butter in a saucepan over medium heat, whisk in the flour, and cook for 2 minutes to form a light roux.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8986f127-370f-4313-b554-b0496eda2447', 'faf82331-d8da-4615-bec7-94b7d3235007', 6, 'Stir in the finely chopped onion and garlic, then slowly whisk in the beef stock and simmer for 10 minutes, until the gravy thickens enough to coat the back of a spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a606b7d1-df6b-41cc-8a5a-ff802c4a79ea', 'faf82331-d8da-4615-bec7-94b7d3235007', 7, 'Season the gravy with salt and pepper and keep it warm over low heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c9965e81-980d-43b8-a2e7-6449879f5b4f', 'faf82331-d8da-4615-bec7-94b7d3235007', 8, 'Raise the oil to 375 degrees Fahrenheit and fry the potatoes a second time for 3 to 4 minutes, until deeply golden and crackling crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6713bd05-047b-43fa-90be-c62a37d8f250', 'faf82331-d8da-4615-bec7-94b7d3235007', 9, 'Pile the hot fries into a bowl, scatter the cheese curds generously over the top, and ladle the hot gravy over everything so the curds begin to soften and squeak.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'faf82331-d8da-4615-bec7-94b7d3235007', "id" FROM "tags" WHERE "name" = 'region:Quebec'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'faf82331-d8da-4615-bec7-94b7d3235007', "id" FROM "tags" WHERE "name" = 'state:Montreal'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'faf82331-d8da-4615-bec7-94b7d3235007', "id" FROM "tags" WHERE "name" = 'country:Canada'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('2c85493b-8f47-4984-8066-796311425120', 'region:Atlantic Canada', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3f1a7dc0-3196-436b-ada9-483d59fbb20e', 'state:Nova Scotia', 'state') ON CONFLICT ("name") DO NOTHING;

-- Halifax Donair (Nova Scotia, Canada)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('d3e24665-f2b0-481a-af25-eca2e03791c7', 'halifax-donair-nova-scotia-canada', 'Halifax Donair', NULL, 'north_america'::"Continent", 'Canada', 'Nova Scotia', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3207610c-bc0a-4cb2-989c-40f95dc012c8', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a4e9ff4c-cd92-43b6-afe9-fda2c6020df6', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 1, NULL, 'Garlic powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8cbedb9-b0b6-484d-be87-a924614d5dc6', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 2, NULL, 'Onion powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('64b7de52-1abd-45c7-971d-3a44d23b7d61', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 3, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9632443d-1849-4acd-956d-4447ca0cd1f5', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 4, NULL, 'Dried oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0c5e0067-02b9-43fe-a260-29e4f490b3ab', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 5, NULL, 'Evaporated milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('15535c56-7604-4368-b2f4-421e01a8e767', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 6, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('10cf4e2e-c524-4e0f-8efb-d7366cbaad91', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 7, NULL, 'White vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ddee581a-88d9-419f-b7bf-3b5eed0d0e79', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 8, NULL, 'Pita bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ec33c3a-7973-4cbb-ae13-0e950b64e80c', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 9, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9abba5c3-0f37-4b3e-84ba-65ebcaa84927', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 10, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4748ae4b-2bc3-4354-8f68-fc08f8604d9f', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 1, 'In a large bowl, combine the ground beef with garlic powder, onion powder, paprika, dried oregano, and a generous amount of salt, then knead the mixture firmly with your hands for several minutes until it turns pale and sticky.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ec978e99-9cd3-4807-baa0-3bb66ee77f65', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 2, 'Press the meat tightly into a loaf shape on a baking sheet or mold it onto a vertical skewer to mimic a spit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b4752523-c42f-41f1-93ae-5ccd9d886109', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 3, 'Roast the meat in an oven preheated to 350 degrees Fahrenheit for about 1 hour, until the internal temperature reaches 160 degrees Fahrenheit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('74255ef7-b9d0-4c6f-af9c-73cc2082b399', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 4, 'Let the meat rest for 15 minutes, then slice it into thin shavings once it has firmed up enough to cut cleanly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4c4ed05b-91ef-4d40-bb53-3afbf9b6a77b', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 5, 'While the meat rests, whisk together the evaporated milk, sugar, and white vinegar in a bowl, letting the mixture thicken into a sweet, tangy sauce over about 10 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5938820e-c30c-41ac-99cd-d3063ebc8e11', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 6, 'Warm a pita on a dry skillet for about 1 minute per side, until soft and lightly toasted.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d0095f5c-ae83-4ebe-bb64-1614d62413d2', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 7, 'Reheat a portion of the sliced meat in a hot pan for 2 to 3 minutes, until the edges crisp slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7cb326d4-bc2d-4c76-b682-b238a3502694', 'd3e24665-f2b0-481a-af25-eca2e03791c7', 8, 'Pile the meat onto the warm pita, top with chopped tomato and onion, and drizzle generously with the sweet garlic sauce before folding and serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd3e24665-f2b0-481a-af25-eca2e03791c7', "id" FROM "tags" WHERE "name" = 'region:Atlantic Canada'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd3e24665-f2b0-481a-af25-eca2e03791c7', "id" FROM "tags" WHERE "name" = 'state:Nova Scotia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'd3e24665-f2b0-481a-af25-eca2e03791c7', "id" FROM "tags" WHERE "name" = 'country:Canada'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1b7604de-fd7d-45d4-97bb-c18012339e73', 'region:Prairies', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a2d1b743-da35-49ff-8eff-e34e1ed8e827', 'state:Alberta', 'state') ON CONFLICT ("name") DO NOTHING;

-- Alberta Beef and Barley Stew (Alberta, Canada)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a2948260-9589-4985-8cb8-e6037099761d', 'alberta-beef-and-barley-stew-alberta-canada', 'Alberta Beef and Barley Stew', NULL, 'north_america'::"Continent", 'Canada', 'Alberta', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('01ec35b7-1c01-4fec-a660-289c0380b183', 'a2948260-9589-4985-8cb8-e6037099761d', 0, NULL, 'Beef chuck') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('35d553a1-3077-42bd-81cc-c0789b107d60', 'a2948260-9589-4985-8cb8-e6037099761d', 1, NULL, 'Pearl barley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('85823be0-7d96-4b4d-a579-8ae7d54dc688', 'a2948260-9589-4985-8cb8-e6037099761d', 2, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f4c716e-e5ef-4017-87ba-6a92e899c5c5', 'a2948260-9589-4985-8cb8-e6037099761d', 3, NULL, 'Celery') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('638a017f-a978-4f39-8aae-bfeaa41d70e2', 'a2948260-9589-4985-8cb8-e6037099761d', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a6b8271-d0ed-4d7c-9596-8e3497b07804', 'a2948260-9589-4985-8cb8-e6037099761d', 5, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4908e9f2-c5ed-4b83-9eaa-c3ca8b751226', 'a2948260-9589-4985-8cb8-e6037099761d', 6, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f44c5ed-a41a-4827-a47b-2c4693443959', 'a2948260-9589-4985-8cb8-e6037099761d', 7, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f8f93dfb-b29c-4758-ae50-3751010914c4', 'a2948260-9589-4985-8cb8-e6037099761d', 8, NULL, 'Thyme') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('62b7df2b-31be-42ef-a887-473ba5be5603', 'a2948260-9589-4985-8cb8-e6037099761d', 9, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6f1b731a-26a1-48a7-8628-9263013ea660', 'a2948260-9589-4985-8cb8-e6037099761d', 10, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0f42e5f0-b9a2-46ab-9cc4-5fae947b94d1', 'a2948260-9589-4985-8cb8-e6037099761d', 1, 'Cut the beef chuck into bite-sized cubes and pat them dry, then season generously with salt and pepper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('80a20729-cc3b-40fe-b8a2-46b235b9dfa7', 'a2948260-9589-4985-8cb8-e6037099761d', 2, 'Heat butter in a heavy pot over medium-high heat and sear the beef in batches for about 4 minutes per side, until deeply browned, then set the beef aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('536bc00d-9462-49bc-9db3-112a0438970e', 'a2948260-9589-4985-8cb8-e6037099761d', 3, 'Add the chopped onion, carrot, and celery to the same pot and cook for 6 minutes, stirring occasionally, until softened and lightly caramelized.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9bb929ad-172c-428b-b67b-8accc24dbf79', 'a2948260-9589-4985-8cb8-e6037099761d', 4, 'Stir in the tomato paste and cook for 1 minute, until it darkens slightly and coats the vegetables.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('44eb5627-9f40-4efc-a891-fd1c1b570d9b', 'a2948260-9589-4985-8cb8-e6037099761d', 5, 'Return the beef to the pot along with the beef stock, bay leaf, and thyme, then bring everything to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f1d1831-d21e-459e-9778-8edb7636b8f2', 'a2948260-9589-4985-8cb8-e6037099761d', 6, 'Cover and cook over low heat for about 1 1/2 hours, until the beef is nearly tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02c3733b-6c60-4325-8164-3892b7f806db', 'a2948260-9589-4985-8cb8-e6037099761d', 7, 'Stir in the pearl barley and continue simmering, uncovered, for 30 more minutes, until the barley is tender and the stew has thickened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4a7bc664-33b1-4f2f-b78d-33cc9608b41d', 'a2948260-9589-4985-8cb8-e6037099761d', 8, 'Remove the bay leaf, taste and adjust the seasoning with salt and pepper, and ladle the hot stew into bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a2948260-9589-4985-8cb8-e6037099761d', "id" FROM "tags" WHERE "name" = 'region:Prairies'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a2948260-9589-4985-8cb8-e6037099761d', "id" FROM "tags" WHERE "name" = 'state:Alberta'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a2948260-9589-4985-8cb8-e6037099761d', "id" FROM "tags" WHERE "name" = 'country:Canada'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('496ed670-6e51-4b32-85af-0352a2cc4264', 'region:Bavaria', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e8de4cc5-9c74-49df-953d-2e9ee600510c', 'state:Munich', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4ade998e-f3a6-4ee0-9267-aee26f6511db', 'country:Germany', 'country') ON CONFLICT ("name") DO NOTHING;

-- Munich Weisswurst (Munich, Germany)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 'munich-weisswurst-munich-germany', 'Munich Weisswurst', NULL, 'europe'::"Continent", 'Germany', 'Munich', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('71946a2f-8f1f-4eeb-8882-6706228c032b', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 0, NULL, 'Veal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('17f57b18-7765-4a1d-a1a1-9c9679e00d1c', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 1, NULL, 'Pork back fat') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('22a6437f-3e84-46b7-8b25-a619711c7514', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 2, NULL, 'Ice water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d0bd04e6-8618-40fc-acb7-2300db1a1037', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0f39550d-d15f-4591-bb56-fe5c6b438c4e', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 4, NULL, 'Lemon zest') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c279ebf1-e253-4266-9591-a5f0ac94f117', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 5, NULL, 'Ground mace') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27138a49-fbb6-407f-aae7-f6c48ff99c02', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 6, NULL, 'Cardamom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4681516b-5b66-4592-810a-a7834b527513', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 7, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5fc3bd90-601d-4943-8622-253c9999c483', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 8, NULL, 'Sausage casings') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0552b050-e039-47ec-97db-74be6f5253bd', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 9, NULL, 'Sweet mustard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ee78e606-10ba-4487-9cbf-ac93a74b935b', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 10, NULL, 'Pretzel') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('93666df9-1840-401b-9491-24ff180b3ee8', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 1, 'Grind the veal and pork back fat together through a fine die, keeping everything very cold to prevent the fat from smearing.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('501d711b-b9b5-44c5-956f-6d4f68537e79', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 2, 'Transfer the ground meat to a food processor and blend with ice water, finely chopped onion, lemon zest, ground mace, and a pinch of cardamom until the mixture becomes a smooth, pale emulsion.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3d78d0eb-ce82-4ce8-98a4-8dd2204e11f3', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 3, 'Fold in the chopped parsley by hand, then chill the mixture in the refrigerator for at least 30 minutes to firm it up.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5c3b92c9-f6a3-4a52-93f3-60a087831cd6', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 4, 'Stuff the mixture into sausage casings, twisting into individual links about 4 inches long.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c99cf434-e2ea-4b37-8678-35ccee08c51c', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 5, 'Bring a large pot of water to just below a simmer, around 175 degrees Fahrenheit, since boiling would split the delicate casings.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('16916f95-ee44-4e99-885f-f7c0ed1e3c17', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 6, 'Lower the sausages into the water and poach gently for about 20 minutes, until they turn opaque and firm to the touch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('07b2e636-0fc4-4fbb-9fca-1d35baf4a5a0', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 7, 'Lift the sausages out with a slotted spoon and let them drain briefly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c69cf148-1df4-41f6-9c91-3ef7c8cc898e', '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', 8, 'Serve the warm sausages with sweet mustard and a soft pretzel on the side, traditionally enjoyed as a late-morning meal before noon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', "id" FROM "tags" WHERE "name" = 'region:Bavaria'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', "id" FROM "tags" WHERE "name" = 'state:Munich'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c354c08-79c5-4b27-9d7c-c40ca1c8ef85', "id" FROM "tags" WHERE "name" = 'country:Germany'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('23c792a8-ce6a-4d4e-aa62-f16d00e1300b', 'region:Berlin', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('75dd0496-37f1-41fb-886d-a5a350abc14b', 'state:Berlin', 'state') ON CONFLICT ("name") DO NOTHING;

-- Berlin Currywurst (Berlin, Germany)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 'berlin-currywurst-berlin-germany', 'Berlin Currywurst', NULL, 'europe'::"Continent", 'Germany', 'Berlin', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f65bf61f-f84c-4d81-a679-d0d3ef7f34b0', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 0, NULL, 'Pork sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('620e49cf-902a-400c-bef1-c0ec0a74bc0d', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 1, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bceeede9-59b0-4509-9d67-edb45f926ceb', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 2, NULL, 'Ketchup') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3a30ebad-de62-4b59-9e3c-9540d987eb45', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 3, NULL, 'Curry powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('edec0ab6-cdcb-4074-be45-a6976877366e', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 4, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('65923a36-044d-44d2-922a-824ea3eabba7', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 5, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('06164fb7-7af4-4288-88ed-88d37a8805cc', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 6, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b919a884-4a63-45c2-9095-b9e51a9b969c', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 7, NULL, 'Onion powder') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c9627887-682b-4be4-88d7-88361eb18168', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 1, 'Heat a griddle or heavy skillet over medium-high heat and add a splash of oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f32e3ec-1c76-4e3d-af7e-c1b2a86b067b', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 2, 'Grill the pork sausages for about 8 minutes, turning occasionally, until the skins are deeply browned and blistered and the inside is cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('145d0496-0fb2-403a-a34e-663087925d06', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 3, 'While the sausages cook, combine the ketchup, curry powder, paprika, Worcestershire sauce, sugar, and onion powder in a small saucepan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c816eb57-4dae-459b-82d9-629d613a7d9d', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 4, 'Warm the sauce over low heat for about 5 minutes, stirring often, until the flavors meld and the sauce turns glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e96d68ea-d290-4732-bf15-4c53fbf0c560', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 5, 'Remove the sausages from the heat and let them rest for 1 minute, then slice them into bite-sized rounds on a diagonal.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c1a29c9-67dd-43f4-9a31-768be65a81d9', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 6, 'Arrange the sliced sausage on a paper tray or plate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0e25217a-7d1e-41af-a63e-8b25f208f5c0', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 7, 'Ladle the warm curry sauce generously over the sausage pieces.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('71e19f56-644e-4863-88fe-16e857376899', '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', 8, 'Dust the top with an extra pinch of curry powder and serve immediately with a small wooden fork and a side of fries.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', "id" FROM "tags" WHERE "name" = 'region:Berlin'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', "id" FROM "tags" WHERE "name" = 'state:Berlin'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8c7cb8d3-f197-45eb-adf9-8e916de5c4c9', "id" FROM "tags" WHERE "name" = 'country:Germany'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fa199173-ceed-4822-88d1-361db968afe3', 'region:Rhineland', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('e95e211d-4ae0-41a3-aaa7-f1137cb4a15b', 'state:North Rhine-Westphalia', 'state') ON CONFLICT ("name") DO NOTHING;

-- Rhineland Sauerbraten (North Rhine-Westphalia, Germany)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6ed32ab5-5eb9-4323-8e48-5da9586928e4', 'rhineland-sauerbraten-north-rhine-westphalia-germany', 'Rhineland Sauerbraten', NULL, 'europe'::"Continent", 'Germany', 'North Rhine-Westphalia', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d4535904-4869-407b-b98e-cfa5b034d61d', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 0, NULL, 'Beef roast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6894a56f-1674-467c-844b-4b1680c8db92', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 1, NULL, 'Red wine vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b6101373-34ce-402e-bce3-df910d6f7c31', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 2, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('620e55f6-e70f-4e2c-bec2-1b170e4e83e4', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('262d03e4-2c5a-45c3-ba51-19a317605ec5', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 4, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d15591a0-dc96-4a48-ae8b-0e1ad0bbd7cc', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 5, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('be729186-8897-43d3-aa84-a0ead0b13545', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 6, NULL, 'Juniper berries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3c17e28e-c120-409b-925b-910f148b8579', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 7, NULL, 'Cloves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('092b512a-3af5-46d1-a341-58120b1c8bf9', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 8, NULL, 'Black peppercorns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8c10149b-1648-4c2f-94e4-bdcc9ec13d65', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 9, NULL, 'Gingersnap cookies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a332dc3c-7520-41f6-9671-9036ee2787a3', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 10, NULL, 'Raisins') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34a078e5-54c5-4fa2-b53a-c8cd9310917b', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 11, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2d131f77-f5c2-4f0c-a5b0-dace70fbda4b', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 1, 'Place the beef roast in a deep non-reactive container and cover it with a marinade made from red wine vinegar, water, sliced onion, carrot, bay leaf, juniper berries, cloves, and peppercorns.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('94c901ea-5f5a-47a6-ba4b-56426d22656a', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 2, 'Cover the container and refrigerate the beef for at least 3 days, turning it once daily so it marinates evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f370e980-7bc3-4dd8-8e4d-80caaee39e68', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 3, 'Remove the beef from the marinade and pat it completely dry, reserving the marinade and its vegetables.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6f648ae0-d3df-440f-a016-53b2f3f9ef0c', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 4, 'Heat butter in a heavy pot over medium-high heat and sear the beef on all sides for about 10 minutes total, until deeply browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8fed17f0-7404-47c0-ba89-f26d183a6c4c', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 5, 'Strain the marinade, add the vegetables back to the pot around the beef, then pour in enough of the strained liquid to come halfway up the roast.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df10fe04-782f-470c-a171-996fc06beb83', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 6, 'Cover and braise over low heat for about 3 hours, turning the beef occasionally, until it is fork-tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6f3fd3f0-c224-4708-ae11-14438159603c', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 7, 'Lift the beef out and let it rest under foil while you strain the braising liquid into a saucepan.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f3c5c056-38ae-43b7-b417-43644e807745', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 8, 'Whisk crushed gingersnap cookies and raisins into the liquid and simmer for 10 minutes, until the gravy thickens and turns glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9509c35f-10f2-41c3-baec-f2cb6705a6fd', '6ed32ab5-5eb9-4323-8e48-5da9586928e4', 9, 'Slice the beef against the grain and serve it napped with the sweet-and-sour gravy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6ed32ab5-5eb9-4323-8e48-5da9586928e4', "id" FROM "tags" WHERE "name" = 'region:Rhineland'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6ed32ab5-5eb9-4323-8e48-5da9586928e4', "id" FROM "tags" WHERE "name" = 'state:North Rhine-Westphalia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6ed32ab5-5eb9-4323-8e48-5da9586928e4', "id" FROM "tags" WHERE "name" = 'country:Germany'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('a17324c6-ad6a-4250-944b-287dbec4f276', 'region:Pampas', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3bc9f2a7-5b61-4977-8e8c-00b715b46dbd', 'state:Buenos Aires', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('624f60b2-aa2d-40c2-8a8f-d7a5960dbf73', 'country:Argentina', 'country') ON CONFLICT ("name") DO NOTHING;

-- Buenos Aires Choripán (Buenos Aires, Argentina)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('56751163-f3f2-48fe-8bd5-10e366ba4401', 'buenos-aires-choripan-buenos-aires-argentina', 'Buenos Aires Choripán', NULL, 'south_america'::"Continent", 'Argentina', 'Buenos Aires', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('238657ec-e3e0-45be-9a83-f59f7dc88a7b', '56751163-f3f2-48fe-8bd5-10e366ba4401', 0, NULL, 'Chorizo sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3af0cf6-9aa1-4e93-bc3b-2fe5f685bcd0', '56751163-f3f2-48fe-8bd5-10e366ba4401', 1, NULL, 'Crusty bread roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('838a8788-a8a5-48f7-8222-9caa82e710be', '56751163-f3f2-48fe-8bd5-10e366ba4401', 2, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2561a4d1-b0c9-4df3-953f-36021d53b39a', '56751163-f3f2-48fe-8bd5-10e366ba4401', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('af839140-914d-43c7-95b7-a6be66676e03', '56751163-f3f2-48fe-8bd5-10e366ba4401', 4, NULL, 'Red wine vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('58991e0d-0854-49ae-beeb-c0ba825de27d', '56751163-f3f2-48fe-8bd5-10e366ba4401', 5, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('99273ed1-9e1f-4b2f-aa8b-40a633c29f0c', '56751163-f3f2-48fe-8bd5-10e366ba4401', 6, NULL, 'Dried oregano') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6275d8ff-0e1e-4424-a5db-57ee2d60192e', '56751163-f3f2-48fe-8bd5-10e366ba4401', 7, NULL, 'Red chili flakes') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('86120865-0b68-4915-93ed-51a71a2e021e', '56751163-f3f2-48fe-8bd5-10e366ba4401', 8, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('31e74339-5d9f-4626-8286-c1fb056797cd', '56751163-f3f2-48fe-8bd5-10e366ba4401', 1, 'Light a charcoal grill and let the coals burn down until covered with white ash and glowing evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('70d0c720-babc-492e-a758-6d0e7a2faadd', '56751163-f3f2-48fe-8bd5-10e366ba4401', 2, 'Place the chorizo sausages on the grill and cook for about 15 minutes total, turning every few minutes, until the casings are charred in spots and the inside is cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('32e2ddec-6a94-4c77-b62d-7941d8e7ed96', '56751163-f3f2-48fe-8bd5-10e366ba4401', 3, 'While the sausages grill, finely chop the parsley and garlic and combine them in a bowl with red wine vinegar, olive oil, dried oregano, and a pinch of chili flakes to make the chimichurri sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e0b18e9d-46d6-4d77-9f63-23b39d2e51ac', '56751163-f3f2-48fe-8bd5-10e366ba4401', 4, 'Let the chimichurri rest for at least 10 minutes so the flavors combine.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('17024fb7-463b-405f-8c6c-87b6b37b72b6', '56751163-f3f2-48fe-8bd5-10e366ba4401', 5, 'Split the crusty bread roll lengthwise without cutting all the way through, then toast it briefly on the edges of the grill for about 1 minute, until warm and lightly marked.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1a07342b-da89-4703-8cad-e487ac9c1f25', '56751163-f3f2-48fe-8bd5-10e366ba4401', 6, 'Remove the chorizo from the grill and slice it lengthwise down the middle to open it flat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3e4d64f7-4dde-4db3-8452-d463dbac30f3', '56751163-f3f2-48fe-8bd5-10e366ba4401', 7, 'Nestle the split sausage inside the warm roll.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9a1895e5-006a-4923-b7cc-b1c400654f2f', '56751163-f3f2-48fe-8bd5-10e366ba4401', 8, 'Spoon the chimichurri generously over the sausage and top with a few thin slices of raw onion before serving hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '56751163-f3f2-48fe-8bd5-10e366ba4401', "id" FROM "tags" WHERE "name" = 'region:Pampas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '56751163-f3f2-48fe-8bd5-10e366ba4401', "id" FROM "tags" WHERE "name" = 'state:Buenos Aires'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '56751163-f3f2-48fe-8bd5-10e366ba4401', "id" FROM "tags" WHERE "name" = 'country:Argentina'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('59d2fd96-699a-4ea0-a3fc-3e30b98c30eb', 'region:Northwest Argentina', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('57bfb124-0c45-4e21-870a-3aea8b4adb11', 'state:Salta', 'state') ON CONFLICT ("name") DO NOTHING;

-- Salta-Style Locro (Salta, Argentina)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('daece06c-dd0b-4a12-b54a-a15f8637043a', 'salta-style-locro-salta-argentina', 'Salta-Style Locro', NULL, 'south_america'::"Continent", 'Argentina', 'Salta', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50f527fe-9c2c-490f-9a38-2828305f521c', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 0, NULL, 'White corn kernels') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('27ef509a-55ff-47ee-8174-53bfd755631f', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 1, NULL, 'Pork ribs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4533d75d-ea61-4fda-ac5e-088ec34d1436', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 2, NULL, 'Chorizo sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('32dc9cec-d6c4-47bd-a663-60d364310bb1', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 3, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8a768a91-fb38-45f5-928e-9fa4acd2fe05', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 4, NULL, 'White beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7a0b03ef-a1be-42ef-85f7-ad2cdd4f32ef', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 5, NULL, 'Pumpkin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('23ca5864-0b40-45f2-b9de-d262ef60c976', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 6, NULL, 'Sweet potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('786f5e08-ad88-4287-a419-0826b22a7640', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 7, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('98ec5716-8859-43bd-81ef-1eca5ab1894d', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 8, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('38b107fb-bd1b-4ad8-9f55-3b23d2a022a6', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 9, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2806515b-a072-4f49-8c5d-79d56fc37f10', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 10, NULL, 'Scallion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e46bb409-a906-4461-b483-b87d63e58234', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 1, 'Soak the dried white corn kernels and white beans separately in water overnight, then drain both the next day.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a8953de7-9473-47ac-80ee-14071d75259e', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 2, 'Place the corn in a large heavy pot with fresh water and bring it to a simmer, cooking for about 1 hour, until the kernels begin to soften and split.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('81dbc18c-85f7-4082-bc47-be7b17323b88', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 3, 'Add the pork ribs, chorizo, and beef to the pot along with the drained beans, then top up with more water so everything is well covered.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('468a0c27-b3e0-44bb-b167-e277e80f650d', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 4, 'Simmer gently, partially covered, for about 2 hours, skimming off any foam that rises to the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4b07b375-7f88-4986-8d01-f80f27318574', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 5, 'Stir in the diced pumpkin and sweet potato and continue cooking for 30 more minutes, until the vegetables break down and thicken the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8a04c66-9f86-4a62-bd9d-b9667a206ab9', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 6, 'Meanwhile, cook chopped onion in a small pan with paprika and cumin for about 5 minutes, until soft and fragrant, to make a spiced topping.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('da8b44fe-d63b-44c9-a101-52faa9761437', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 7, 'Taste the locro and adjust the seasoning with salt as needed, since the long cooking time mellows the flavors.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e03e552e-86c0-454c-8717-c974d88efb4d', 'daece06c-dd0b-4a12-b54a-a15f8637043a', 8, 'Ladle the thick stew into bowls and finish each portion with a spoonful of the spiced onion topping and a scattering of chopped scallion.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'daece06c-dd0b-4a12-b54a-a15f8637043a', "id" FROM "tags" WHERE "name" = 'region:Northwest Argentina'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'daece06c-dd0b-4a12-b54a-a15f8637043a', "id" FROM "tags" WHERE "name" = 'state:Salta'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'daece06c-dd0b-4a12-b54a-a15f8637043a', "id" FROM "tags" WHERE "name" = 'country:Argentina'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('968f3aef-fb26-4905-ac3b-a5c9248d23ed', 'region:Patagonia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f576e255-d43a-4ee5-bf6f-28f904ae797a', 'state:Chubut', 'state') ON CONFLICT ("name") DO NOTHING;

-- Patagonian Spit-Roasted Lamb (Chubut, Argentina)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('734e2380-85b9-488e-8ae0-eee3793f4c0c', 'patagonian-spit-roasted-lamb-chubut-argentina', 'Patagonian Spit-Roasted Lamb', NULL, 'south_america'::"Continent", 'Argentina', 'Chubut', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aaebbc1c-d0f1-433a-97d0-596291d95a33', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 0, NULL, 'Lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d6dd6a7-f15c-41d2-8388-ac72be5ad33c', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 1, NULL, 'Coarse salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e2a34535-3da2-4c34-bf1f-5e9338b096b7', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 2, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0880bb1d-665d-471f-a9ad-5bd77e589e96', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 3, NULL, 'Rosemary') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c554517a-2d27-418e-ac46-728d2cae0de1', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 4, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d989c3de-0d1a-4231-8702-5f73eab0c3eb', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 5, NULL, 'Red wine vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2cf67bbe-d961-4540-b82f-6acd821dac37', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 1, 'Butterfly a whole leg or half carcass of lamb and season it generously on both sides with coarse salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e7fc7de3-7f8c-4a95-85ed-87273949bfce', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 2, 'Set up a wood or charcoal fire and let it burn down to steady, glowing embers positioned to one side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aa7de2d9-60c4-494e-a350-a55ac6661da3', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 3, 'Skewer the lamb onto a metal cross or mount it on a rack angled toward the embers, with the bone side facing the heat first.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4de5a364-3cf0-4e8c-a2d3-e67443048722', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 4, 'Cook the lamb slowly for about 3 hours, rotating and repositioning it occasionally so the heat reaches every part evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d1cbe0cb-5f34-4526-9dbc-1b7aa7062b17', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 5, 'Meanwhile, crush garlic and chopped rosemary together with olive oil and red wine vinegar to make a basting sauce.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e9950f7c-7693-4afa-96c1-cf91b25cc66c', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 6, 'Baste the lamb with this mixture every 30 minutes or so, which keeps the meat moist as it renders.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8c248e1b-53ab-4111-8f25-345b4493a0eb', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 7, 'Continue cooking until the internal temperature reaches about 160 degrees Fahrenheit and the skin turns deeply crisp and mahogany colored.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('17affd4e-4463-4aee-8155-b34756cff21b', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 8, 'Remove the lamb from the fire and let it rest for 15 minutes before carving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c1a0391d-36b3-497e-9d14-6cdf49b0504c', '734e2380-85b9-488e-8ae0-eee3793f4c0c', 9, 'Carve the meat into portions at the table and serve it simply, with just the pan juices spooned over the top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '734e2380-85b9-488e-8ae0-eee3793f4c0c', "id" FROM "tags" WHERE "name" = 'region:Patagonia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '734e2380-85b9-488e-8ae0-eee3793f4c0c', "id" FROM "tags" WHERE "name" = 'state:Chubut'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '734e2380-85b9-488e-8ae0-eee3793f4c0c', "id" FROM "tags" WHERE "name" = 'country:Argentina'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('82d4f2f0-c778-4123-b0ef-5382d4c2044a', 'region:Andean Region', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('4d49edad-30b7-42ed-aac4-488ccc8ac9c2', 'state:Bogotá', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('107172cd-7c8d-44ab-bb65-204590289ac4', 'country:Colombia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Bogotá Ajiaco (Bogotá, Colombia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6d06d58a-9198-4b31-a80e-bbc55693eadc', 'bogota-ajiaco-bogota-colombia', 'Bogotá Ajiaco', NULL, 'south_america'::"Continent", 'Colombia', 'Bogotá', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b0dba0d-3eff-4446-aa1a-4d68c420143f', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 0, NULL, 'Chicken breast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0294c36e-bc42-4d38-a56c-02e92122804b', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 1, NULL, 'Papa criolla potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ab1e7518-d03d-4f95-81d8-0f2058537ce5', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 2, NULL, 'Russet potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d7288488-855a-4955-abab-9f036da7377a', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 3, NULL, 'Yukon gold potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f06a455-dc77-44f1-b343-a343b1f5c86e', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 4, NULL, 'Corn on the cob') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('873eea96-c18f-4a7b-9828-e4ec585b163f', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 5, NULL, 'Guascas herb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7814c4cd-e957-4d8f-bf6e-51f8c323e3d3', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 6, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9ce776ed-3834-48b9-a7d9-5508535f0fef', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 7, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f31053b-240c-46c9-aaf9-2c031dc0285c', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 8, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3cc9c91-b66d-4593-8c11-767fe5a3ecc1', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 9, NULL, 'Heavy cream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5dd1173d-fbcf-4310-9964-8a350ec1bbdd', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 10, NULL, 'Capers') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19a1cdca-3a03-495b-b4f0-05bf2a42de4d', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 11, NULL, 'Avocado') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c826a00-b6bb-447a-b5c8-ecf57779fe95', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 1, 'Place the chicken breast in a large pot with chicken stock, chopped onion, and garlic, then bring it to a gentle simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('126dfb87-0409-43a1-aafa-4a5fa7359077', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 2, 'Cook the chicken for about 25 minutes, until it is cooked through and easily shreds with a fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f1bec0e5-bccc-4c8e-8267-a11689b6faba', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 3, 'Remove the chicken and set it aside to cool, then shred it into bite-sized pieces and return the shredded meat to the pot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('df65bdb6-f8b1-430f-a3fd-b210a40f7c79', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 4, 'Peel and slice all three varieties of potato and add them to the simmering broth along with the corn cut into thick rounds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c1f35104-f518-4199-9dc7-ba019e2ef888', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 5, 'Cook the potatoes for about 30 minutes, stirring occasionally, until the papa criolla variety completely breaks down and thickens the soup naturally.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('405db9fa-ad05-4797-ab99-ebe42876e892', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 6, 'Stir in the dried guascas herb during the last 10 minutes of cooking, which gives the ajiaco its distinctive earthy aroma.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7960b59d-19f5-4f32-af74-6f83dcd31be3', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 7, 'Taste the soup and season it well with salt, then ladle it into wide bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e2bc0071-e23e-4b87-bf40-df7ce9a2fc07', '6d06d58a-9198-4b31-a80e-bbc55693eadc', 8, 'Finish each bowl with a swirl of heavy cream, a spoonful of capers, and a few slices of ripe avocado on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d06d58a-9198-4b31-a80e-bbc55693eadc', "id" FROM "tags" WHERE "name" = 'region:Andean Region'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d06d58a-9198-4b31-a80e-bbc55693eadc', "id" FROM "tags" WHERE "name" = 'state:Bogotá'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d06d58a-9198-4b31-a80e-bbc55693eadc', "id" FROM "tags" WHERE "name" = 'country:Colombia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b117e0f3-344d-4ebe-9f24-b8e399a5dc95', 'region:Antioquia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('32a8350d-fd5f-41b9-8b8b-b05ca69463e1', 'state:Medellín', 'state') ON CONFLICT ("name") DO NOTHING;

-- Medellín Bandeja Paisa (Medellín, Colombia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('4a22a5f4-4060-4629-9c0f-95d32bf68a03', 'medellin-bandeja-paisa-medellin-colombia', 'Medellín Bandeja Paisa', NULL, 'south_america'::"Continent", 'Colombia', 'Medellín', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('886a3dcf-9159-4e55-8703-b40eb42b93e3', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 0, NULL, 'Red beans') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9ef30e89-888d-444b-ae36-bd6c52fcceb1', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 1, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90b9eb0d-3234-440d-a75d-042efb4f212f', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 2, NULL, 'Chorizo sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dc0d8e44-df0b-475a-99e8-bfdca84cd7e3', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 3, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a5a243e9-edb9-48b3-bb8e-46e534c0f976', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 4, NULL, 'White rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d07c2a4c-af37-4212-993b-e2aff39dfda5', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 5, NULL, 'Plantain') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fc55cad2-76ee-4042-b8b2-a79fba1c46de', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 6, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8054d93c-77c9-4507-91f7-e64473f554a7', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 7, NULL, 'Avocado') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dd1c1a50-cd70-4771-9de5-498a5a679902', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 8, NULL, 'Arepa') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d3f6de0-603c-4d08-b869-e7dbcb8a92f1', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 9, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('65a7c243-7625-4475-b563-f6b0da4aba10', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 10, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('72e051db-7d0f-4149-a978-cf3a585b13b8', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 1, 'Soak the red beans overnight in plenty of water, then drain and rinse them the next day.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('327fd085-3532-45df-a27e-7b5e3ea85fe0', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 2, 'Simmer the beans in fresh water with garlic and a pinch of cumin for about 1 1/2 hours, until they turn tender and creamy, adding more water as needed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5b147475-487d-435e-baea-a2f5ae35bc61', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 3, 'Meanwhile, cook the pork belly in a dry skillet over medium heat for about 15 minutes, until the fat renders and the pieces turn golden and crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('482d50be-be92-4588-84af-b1ee9ce63236', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 4, 'Season the ground beef with salt, cumin, and chopped garlic, then cook it in a separate pan over medium-high heat for about 10 minutes, breaking it apart, until fully browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbe49e2b-7e37-4ecb-a030-d54c7442b021', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 5, 'Grill or pan-fry the chorizo for about 8 minutes, turning occasionally, until cooked through and lightly charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c23a4a2b-ba49-4315-9da6-e5de20991822', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 6, 'Cook the white rice separately according to the standard method until fluffy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('71411426-b694-43a3-8b6b-974bda612c41', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 7, 'Slice the ripe plantain lengthwise and fry it in hot oil for about 3 minutes per side, until caramelized and golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('44232dd6-6aa6-4773-907f-e4c05a8c6023', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 8, 'Fry an egg sunny-side up in a lightly oiled pan for about 3 minutes, until the white sets but the yolk stays runny.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('47f427ef-dde1-468a-8639-46798c1f230b', '4a22a5f4-4060-4629-9c0f-95d32bf68a03', 9, 'Arrange the beans, rice, pork belly, ground beef, chorizo, plantain, fried egg, sliced avocado, and a warm arepa together on one large platter before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4a22a5f4-4060-4629-9c0f-95d32bf68a03', "id" FROM "tags" WHERE "name" = 'region:Antioquia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4a22a5f4-4060-4629-9c0f-95d32bf68a03', "id" FROM "tags" WHERE "name" = 'state:Medellín'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '4a22a5f4-4060-4629-9c0f-95d32bf68a03', "id" FROM "tags" WHERE "name" = 'country:Colombia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6cd2d257-1353-40c2-8854-bf2e32281052', 'region:Caribbean Coast', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8d1b249b-49dd-41f6-a337-5b2967fda41a', 'state:Bolívar', 'state') ON CONFLICT ("name") DO NOTHING;

-- Cartagena Arepa de Huevo (Bolívar, Colombia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 'cartagena-arepa-de-huevo-bolivar-colombia', 'Cartagena Arepa de Huevo', NULL, 'south_america'::"Continent", 'Colombia', 'Bolívar', 'eggetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c69c1e3e-db36-4e45-9d1b-48c9f926125b', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 0, NULL, 'White corn flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('65df18b3-fb5d-429d-88ea-0e55d197abc2', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 1, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('372d1e2a-29ba-431e-a0ad-a5ec9202a144', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 2, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('723c4235-11e6-4bec-921a-f744f3f8595c', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 3, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a280d29a-b452-464e-9e51-2fad60189bc6', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 4, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f45679c7-e048-450e-93bc-14295987cef7', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 1, 'Combine the white corn flour with warm water and a pinch of salt, kneading the mixture by hand for a few minutes until it forms a smooth, pliable dough.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2fac96bf-3bbe-4344-9e69-4a7d9233501a', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 2, 'Divide the dough into small balls and flatten each one into a disc about a quarter inch thick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9db145b-c832-4f3e-89af-de4d1a211a18', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 3, 'Heat vegetable oil in a deep pot to about 350 degrees Fahrenheit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0752b617-2c85-496f-a060-20c75451dafb', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 4, 'Fry the discs in the hot oil for about 2 minutes per side, until they puff slightly and turn a pale golden color, then remove them to drain.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e89fce83-66b4-4790-ba18-0b79d9737dbd', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 5, 'While each arepa is still warm, carefully slice a small opening along one edge to create a pocket without tearing through the other side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b7233757-f23c-44e0-bc19-0654f51f8003', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 6, 'Crack a raw egg into a small cup, then pour it carefully into the pocket of the arepa.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d4cf5394-bcca-41c0-b6cf-94a9c5a6af80', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 7, 'Pinch the opening closed as best you can and return the stuffed arepa to the hot oil immediately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aca51327-295c-49b8-b0c8-e960f363a6d3', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 8, 'Fry for about 3 more minutes, turning gently, until the outside is deep golden brown and the egg inside has set.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('13ed43fe-6f9d-42a0-9ca4-95568c76fed7', '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', 9, 'Drain briefly on paper and serve hot, often with a dab of hot sauce on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', "id" FROM "tags" WHERE "name" = 'region:Caribbean Coast'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', "id" FROM "tags" WHERE "name" = 'state:Bolívar'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '6d35f1c8-c8d8-41d6-bf7e-a6181bdb7465', "id" FROM "tags" WHERE "name" = 'country:Colombia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('33bcf182-77ea-4a5e-b6fc-eed3e043a59f', 'region:Punjab', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ad58138c-cd5d-4af3-b00c-0a160db853ab', 'state:Lahore', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9f523428-a238-4f3e-8238-fd5e1143da6d', 'country:Pakistan', 'country') ON CONFLICT ("name") DO NOTHING;

-- Lahori Nihari (Lahore, Pakistan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('89eb327f-954f-4059-b064-312bd6e385a9', 'lahori-nihari-lahore-pakistan', 'Lahori Nihari', NULL, 'asia'::"Continent", 'Pakistan', 'Lahore', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c809c2ae-b5bc-4e97-8830-bcd7bde4b66b', '89eb327f-954f-4059-b064-312bd6e385a9', 0, NULL, 'Beef shank') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3cb0ad4-2f2b-48ba-9e6a-b83423b50de1', '89eb327f-954f-4059-b064-312bd6e385a9', 1, NULL, 'Whole wheat flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e5ffc5d8-0c12-45ec-8c20-962577e2d289', '89eb327f-954f-4059-b064-312bd6e385a9', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('449d7e46-3a6a-43fa-a833-9cbef2a78995', '89eb327f-954f-4059-b064-312bd6e385a9', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('276e9b6d-204a-4d79-afc3-ab2ed3d84293', '89eb327f-954f-4059-b064-312bd6e385a9', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('192debd1-2e4d-49e7-8de6-5b0dbda243ea', '89eb327f-954f-4059-b064-312bd6e385a9', 5, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('330d467b-f8ce-4d4c-994a-ac5a552ee15e', '89eb327f-954f-4059-b064-312bd6e385a9', 6, NULL, 'Nihari masala spice blend') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d82ca9e-7861-48a4-80a0-1c55892a7574', '89eb327f-954f-4059-b064-312bd6e385a9', 7, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6e8dabe9-550c-444e-93d6-19977bdb9f2b', '89eb327f-954f-4059-b064-312bd6e385a9', 8, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80a5f7f7-0fa7-4ba6-bcab-90ad5a17bd17', '89eb327f-954f-4059-b064-312bd6e385a9', 9, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('40b7674b-5bbb-459b-ae31-55d525224082', '89eb327f-954f-4059-b064-312bd6e385a9', 1, 'Heat ghee in a heavy pot over medium-high heat and fry the sliced onion for about 12 minutes, stirring often, until deeply browned and caramelized.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ee7f2704-4e87-4c37-b844-0ee0969c0625', '89eb327f-954f-4059-b064-312bd6e385a9', 2, 'Add ginger and garlic paste and cook for 1 minute, until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d083c6a2-40a1-40e9-9b01-fba0fdd591a1', '89eb327f-954f-4059-b064-312bd6e385a9', 3, 'Stir in the nihari masala spice blend and cook briefly for 1 minute, toasting the spices in the hot ghee.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bacf1eca-5256-46b2-8491-d84149852d7f', '89eb327f-954f-4059-b064-312bd6e385a9', 4, 'Add the beef shank pieces and sear them in the spiced ghee for about 8 minutes, turning occasionally, until browned on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ced5b296-7dcf-4501-9695-b209889f6d74', '89eb327f-954f-4059-b064-312bd6e385a9', 5, 'Pour in enough hot water to fully cover the meat, then bring the pot to a boil before reducing it to a very low simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d178ad32-8632-4080-ba61-b3b8c66d50f8', '89eb327f-954f-4059-b064-312bd6e385a9', 6, 'Cover and cook the nihari for about 5 hours, checking occasionally and topping up water as needed, until the beef becomes completely tender and starts falling apart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b0d6f3a9-b3ba-40a1-afc9-cc3adbe6f249', '89eb327f-954f-4059-b064-312bd6e385a9', 7, 'Mix the whole wheat flour with a little water into a smooth paste and whisk it into the pot to thicken the gravy, simmering for 15 more minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b02bcc88-2e48-44dc-847c-968874712645', '89eb327f-954f-4059-b064-312bd6e385a9', 8, 'Taste and adjust the seasoning with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('958272d2-6e36-45c2-be5f-3cdc6ef916c1', '89eb327f-954f-4059-b064-312bd6e385a9', 9, 'Ladle the nihari into bowls and garnish with julienned ginger, sliced green chili, chopped coriander, and a squeeze of lemon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '89eb327f-954f-4059-b064-312bd6e385a9', "id" FROM "tags" WHERE "name" = 'region:Punjab'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '89eb327f-954f-4059-b064-312bd6e385a9', "id" FROM "tags" WHERE "name" = 'state:Lahore'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '89eb327f-954f-4059-b064-312bd6e385a9', "id" FROM "tags" WHERE "name" = 'country:Pakistan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('9da37ca4-ba3c-4ba2-9b0f-d49b3c98dde7', 'region:Sindh', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0613ae72-f9c3-4b7c-a20f-aa11f1478219', 'state:Karachi', 'state') ON CONFLICT ("name") DO NOTHING;

-- Karachi Bun Kabab (Karachi, Pakistan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('afc91748-c560-4a27-ae45-67d9eed27128', 'karachi-bun-kabab-karachi-pakistan', 'Karachi Bun Kabab', NULL, 'asia'::"Continent", 'Pakistan', 'Karachi', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8bfe0925-1a44-43c8-b491-0fb8a7f7596d', 'afc91748-c560-4a27-ae45-67d9eed27128', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b8f7ade1-17aa-4335-a9c2-6c11a2dac0fd', 'afc91748-c560-4a27-ae45-67d9eed27128', 1, NULL, 'Chana dal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fce30620-5194-44d6-b22a-8e66cbb2f6e8', 'afc91748-c560-4a27-ae45-67d9eed27128', 2, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e3073a6b-6906-43e1-9ecb-790665f9fc44', 'afc91748-c560-4a27-ae45-67d9eed27128', 3, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('868c9d5b-a8df-40b3-8f99-8bec9d13eb45', 'afc91748-c560-4a27-ae45-67d9eed27128', 4, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b691f677-eeab-4213-9181-38a9dea73d51', 'afc91748-c560-4a27-ae45-67d9eed27128', 5, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d00dd288-b8ca-4797-aadb-a1b818f444e0', 'afc91748-c560-4a27-ae45-67d9eed27128', 6, NULL, 'Coriander seed') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9e67148c-2a79-4c4a-8de8-b64989121409', 'afc91748-c560-4a27-ae45-67d9eed27128', 7, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('84e81be9-f0f8-4a9c-b471-2d5e520a819a', 'afc91748-c560-4a27-ae45-67d9eed27128', 8, NULL, 'Bread roll') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cfbbc809-3465-48d0-be4e-78381502bd90', 'afc91748-c560-4a27-ae45-67d9eed27128', 9, NULL, 'Tamarind chutney') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f3cfceb8-436c-445c-9cf9-cd7e0639b558', 'afc91748-c560-4a27-ae45-67d9eed27128', 10, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('66b862cb-a167-4d03-9481-c5e1a933153c', 'afc91748-c560-4a27-ae45-67d9eed27128', 11, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('02c5ccc4-7936-4c62-bd4d-eebfee4e925a', 'afc91748-c560-4a27-ae45-67d9eed27128', 1, 'Soak the chana dal in water for about 1 hour, then boil it with ginger and garlic until soft, about 20 minutes, and drain thoroughly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9616b3c-0365-44f7-ad25-4f308245bd67', 'afc91748-c560-4a27-ae45-67d9eed27128', 2, 'Mash the cooked dal into the ground beef along with chopped green chili, cumin, and ground coriander seed until fully combined.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b3f9a1fd-c799-438c-8bb9-c19fda862257', 'afc91748-c560-4a27-ae45-67d9eed27128', 3, 'Shape the mixture into flat, round patties about 3 inches wide.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('eb5e465f-c981-46d8-a737-55a5341f157b', 'afc91748-c560-4a27-ae45-67d9eed27128', 4, 'Heat a griddle with a little oil over medium heat and shallow-fry the patties for about 4 minutes per side, until a deep brown crust forms and the inside is cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('27aec05c-6e2e-4ac5-af7b-c8a6cef15bcd', 'afc91748-c560-4a27-ae45-67d9eed27128', 5, 'Beat an egg in a shallow bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('288df83b-385e-4a9d-99fc-9002ebef0c5d', 'afc91748-c560-4a27-ae45-67d9eed27128', 6, 'Dip each cooked patty briefly into the beaten egg and return it to the hot griddle for about 1 minute per side, until the egg coating sets into a golden layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b0442b9e-1db0-49a6-8b73-029873c2bd2e', 'afc91748-c560-4a27-ae45-67d9eed27128', 7, 'Split a soft bread roll and warm it briefly on the same griddle for about 30 seconds.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6c19136a-5662-4b28-a511-7a2265818232', 'afc91748-c560-4a27-ae45-67d9eed27128', 8, 'Spread tamarind chutney on both cut sides of the roll.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ab2e72f8-6c5a-4547-ae4b-ff40b8cb7d8d', 'afc91748-c560-4a27-ae45-67d9eed27128', 9, 'Nestle the hot patty inside the roll along with sliced onion and tomato before pressing the bun closed and serving immediately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'afc91748-c560-4a27-ae45-67d9eed27128', "id" FROM "tags" WHERE "name" = 'region:Sindh'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'afc91748-c560-4a27-ae45-67d9eed27128', "id" FROM "tags" WHERE "name" = 'state:Karachi'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'afc91748-c560-4a27-ae45-67d9eed27128', "id" FROM "tags" WHERE "name" = 'country:Pakistan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1dec2a1c-c456-4971-a06b-f36325ddffd4', 'region:Khyber Pakhtunkhwa', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('dfbe73d9-0253-4195-bd34-8ccc51ee9cbf', 'state:Peshawar', 'state') ON CONFLICT ("name") DO NOTHING;

-- Peshawari Chapli Kebab (Peshawar, Pakistan)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('21c326b7-0c40-4d67-af7f-85811c278bfe', 'peshawari-chapli-kebab-peshawar-pakistan', 'Peshawari Chapli Kebab', NULL, 'asia'::"Continent", 'Pakistan', 'Peshawar', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('936a0f51-0bd9-4041-bb5e-b741d41aa85c', '21c326b7-0c40-4d67-af7f-85811c278bfe', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f1fc0bf9-7780-43c6-b34c-043d8c084349', '21c326b7-0c40-4d67-af7f-85811c278bfe', 1, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('41abea26-f10b-4685-a227-5da6c9a2d3de', '21c326b7-0c40-4d67-af7f-85811c278bfe', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3b9b0eed-4164-4c79-a06b-fe1f2f953105', '21c326b7-0c40-4d67-af7f-85811c278bfe', 3, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9714ae26-9d19-47c3-96ad-8d179454ac12', '21c326b7-0c40-4d67-af7f-85811c278bfe', 4, NULL, 'Coriander seed') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34ff3d82-4342-4d42-acb3-c2494bcd53d1', '21c326b7-0c40-4d67-af7f-85811c278bfe', 5, NULL, 'Pomegranate seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5ab0ab9b-81d5-4a4b-94ea-3a7da2352d62', '21c326b7-0c40-4d67-af7f-85811c278bfe', 6, NULL, 'Cornstarch') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0c162234-fe8c-47ea-8103-b3642f30c118', '21c326b7-0c40-4d67-af7f-85811c278bfe', 7, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7e7f1af2-cc73-4056-9757-06ec522bdbd0', '21c326b7-0c40-4d67-af7f-85811c278bfe', 8, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7c675f0-6d9d-4617-aa00-1c731cf2d98d', '21c326b7-0c40-4d67-af7f-85811c278bfe', 9, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('db0db44b-0cf3-4c36-a14a-dabb5e70f9d2', '21c326b7-0c40-4d67-af7f-85811c278bfe', 1, 'Combine the ground beef in a large bowl with finely chopped tomato, onion, green chili, and fresh coriander.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('39131339-61c7-4192-bf15-97d707270a63', '21c326b7-0c40-4d67-af7f-85811c278bfe', 2, 'Coarsely crush the coriander seeds and dried pomegranate seeds with a mortar and pestle, then mix them into the meat along with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('308d7eba-802a-47ab-9156-0c4b7e0494e4', '21c326b7-0c40-4d67-af7f-85811c278bfe', 3, 'Add the cornstarch and a beaten egg to the mixture and knead everything together firmly for a few minutes, until it feels cohesive and slightly sticky.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('017c4456-1c29-4dae-8f77-9531483eae56', '21c326b7-0c40-4d67-af7f-85811c278bfe', 4, 'Shape the mixture into flat, wide patties about half an inch thick, pressing a few extra slices of tomato directly onto the surface of each one.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('daebb0a1-4705-4a20-835f-a874adeff9e7', '21c326b7-0c40-4d67-af7f-85811c278bfe', 5, 'Heat a generous layer of oil in a wide, flat pan over medium heat until shimmering.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('011ad2ae-0323-405e-940e-903fc858df8d', '21c326b7-0c40-4d67-af7f-85811c278bfe', 6, 'Carefully slide the patties into the hot oil and fry for about 5 minutes per side, until a deeply crisp, craggy crust forms and the inside is fully cooked.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9513cc46-d57d-4283-a931-193dc5134abe', '21c326b7-0c40-4d67-af7f-85811c278bfe', 7, 'Press down gently on each kebab partway through cooking to help it hold its wide, flat shape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9456ad9c-1635-4102-8934-abaf42838b9b', '21c326b7-0c40-4d67-af7f-85811c278bfe', 8, 'Drain the kebabs briefly on paper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2520c900-156a-42ce-b7ea-0f9c2d68ba1d', '21c326b7-0c40-4d67-af7f-85811c278bfe', 9, 'Serve hot, wrapped in naan bread with sliced onion and a wedge of lemon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '21c326b7-0c40-4d67-af7f-85811c278bfe', "id" FROM "tags" WHERE "name" = 'region:Khyber Pakhtunkhwa'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '21c326b7-0c40-4d67-af7f-85811c278bfe', "id" FROM "tags" WHERE "name" = 'state:Peshawar'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '21c326b7-0c40-4d67-af7f-85811c278bfe', "id" FROM "tags" WHERE "name" = 'country:Pakistan'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('b5eb3f64-115e-494c-8862-26e74259f463', 'region:Dhaka Division', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ca6c1e05-0679-4ce6-bae0-68c23e66c11f', 'state:Dhaka', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('458fd8d0-eba8-43d0-8202-ac1e4b1136a2', 'country:Bangladesh', 'country') ON CONFLICT ("name") DO NOTHING;

-- Dhaka Kacchi Biryani (Dhaka, Bangladesh)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('1125fbc6-7bea-4877-bffc-00973b7d2c36', 'dhaka-kacchi-biryani-dhaka-bangladesh', 'Dhaka Kacchi Biryani', NULL, 'asia'::"Continent", 'Bangladesh', 'Dhaka', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2e79b891-7d66-4a3b-8eea-4a60501a2ddb', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 0, NULL, 'Basmati rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a1755cc-f61c-4f32-a7e0-8904aadded8a', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 1, NULL, 'Mutton') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3b3c6db8-01c9-4e75-bd45-f6163db6dc99', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 2, NULL, 'Yogurt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c1fac5d-b581-4072-8d30-c9cc6e592b21', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 3, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('88a12595-00b6-4947-9abf-c33b192569e2', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('06018b4b-1e36-406e-a96c-0b64d48d419a', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 5, NULL, 'Fried onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('539bd944-da89-4ce8-80e8-7cadf9428ccd', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 6, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1e36fc88-c78e-4714-bdce-d7de1dbadbc2', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 7, NULL, 'Ghee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3ad2383-6aeb-4d38-a910-e25c0eb72cb5', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 8, NULL, 'Saffron') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('babdc0be-6ce3-459e-947d-dd2870f0ada0', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 9, NULL, 'Garam masala') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a9ed7e29-2860-48e2-b490-ec45cf51a4a3', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 10, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5c0984df-788c-4ed8-9904-da8a3dc83944', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 11, NULL, 'Rosewater') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('73aabe08-937d-4bf1-883e-98838daeafbb', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 1, 'Marinate the mutton pieces in yogurt, ginger-garlic paste, fried onion, garam masala, and a little ghee, then cover and refrigerate for at least 4 hours or overnight.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e6eaf113-11bd-49a4-92fa-3c10fe3230b5', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 2, 'Parboil the basmati rice in salted water for about 6 minutes, until the grains are still firm at the center, then drain well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('edd4c0db-78a5-42ba-b0f4-4db9d21a05f8', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 3, 'Fry the peeled potatoes in hot ghee for about 4 minutes, until lightly golden on the outside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f261c712-403e-4017-9494-8133c4e27a87', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 4, 'Layer the marinated raw mutton across the bottom of a heavy pot, then arrange the fried potatoes over the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('401a3e10-de00-4b73-933c-d3425f05b9b7', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 5, 'Spread the parboiled rice evenly over the meat and potatoes as the next layer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c41d08ec-41c1-44c9-a916-c5a0ae8f7481', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 6, 'Soak a pinch of saffron in warm milk and drizzle it over the rice along with a splash of rosewater and a scatter of extra fried onion.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a02140bc-da93-4e4a-9d2f-183f1bdce471', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 7, 'Cover the pot tightly with a lid, sealing the edges with a strip of dough if needed to trap the steam completely.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7eca88c4-2cc7-4efd-acac-8ff42ecc1cce', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 8, 'Cook over very low heat for about 45 minutes, allowing the rice to steam and the meat to cook entirely in its own juices.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('feb8d14c-f7b6-419f-a40c-805a08fde9d2', '1125fbc6-7bea-4877-bffc-00973b7d2c36', 9, 'Let the pot rest undisturbed for 10 minutes off the heat, then gently fold the layers together before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1125fbc6-7bea-4877-bffc-00973b7d2c36', "id" FROM "tags" WHERE "name" = 'region:Dhaka Division'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1125fbc6-7bea-4877-bffc-00973b7d2c36', "id" FROM "tags" WHERE "name" = 'state:Dhaka'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '1125fbc6-7bea-4877-bffc-00973b7d2c36', "id" FROM "tags" WHERE "name" = 'country:Bangladesh'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('3c319457-9b5f-4be5-b4d5-6a37969e1a08', 'region:Chittagong Division', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8cbb8731-04b4-4d58-8c5c-d8a33cc12bf9', 'state:Chattogram', 'state') ON CONFLICT ("name") DO NOTHING;

-- Chattogram Mezban Beef Curry (Chattogram, Bangladesh)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 'chattogram-mezban-beef-curry-chattogram-bangladesh', 'Chattogram Mezban Beef Curry', NULL, 'asia'::"Continent", 'Bangladesh', 'Chattogram', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d2a62db2-4304-47e7-ab55-174ab7e2b260', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 0, NULL, 'Beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3919ded9-6480-4b27-ba8e-e3ead278a177', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 1, NULL, 'Mustard oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4820d652-db93-4df1-9587-f7aeb5ab5078', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55052923-6792-481d-832e-8ac591d7cf56', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 3, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b652bd7-acdd-43fd-9ed4-1827977c6209', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7a7ce541-d5ed-4d82-b129-452d42562ef5', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 5, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cc45ad14-d46c-4dd6-a6c8-45532f0fb37f', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 6, NULL, 'Coriander seed') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e2f922ff-faa7-4f02-9ada-82551b695b91', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 7, NULL, 'Dried red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1f87903e-a400-47a6-bae7-7510135b9daa', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 8, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('317f76c6-2fe4-4afd-a8c0-e59e1b753165', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 9, NULL, 'Black cardamom') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('612685d4-6834-4dfc-9c71-d7c00293d3e8', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 10, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bbf86af4-f043-4365-842c-4e2e89f2a966', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 1, 'Heat mustard oil in a large heavy pot until it begins to shimmer and lose its raw sharpness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b6798dc4-4bc6-430c-9b02-7706390ca85f', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 2, 'Add sliced onion and fry for about 10 minutes, stirring frequently, until deeply browned.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0a239dde-8934-4ad3-a3a9-c14fea76f83d', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 3, 'Stir in ginger and garlic paste and cook for 2 minutes, until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f9957e4-6405-43c9-947f-630000ddb09e', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 4, 'Add cumin, ground coriander seed, dried red chili, bay leaf, and black cardamom, then toast the spices in the hot oil for about 1 minute.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6160d341-1c17-47f6-8027-7fda37d89ad2', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 5, 'Add the beef pieces and sear them directly in the spice mixture for about 10 minutes, until well coated and browned on the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9689b5bf-0e73-47e8-ad59-4de3a633ade9', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 6, 'Pour in enough water to just cover the meat, then bring the pot to a boil before lowering it to a steady simmer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6ab6a139-aea3-43d3-8cc6-e2a5eaf6c191', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 7, 'Cover and cook for about 2 hours, stirring occasionally, until the beef becomes very tender and the gravy turns thick and dark.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fcb22b7d-145c-4e65-8ffa-8febb54784b6', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 8, 'Uncover the pot for the final 15 minutes of cooking to let the sauce reduce and intensify.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2d040a9d-8efd-4379-adf8-dd1532ae0dbc', '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', 9, 'Finish with whole green chilies stirred in just before serving, alongside plain steamed rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', "id" FROM "tags" WHERE "name" = 'region:Chittagong Division'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', "id" FROM "tags" WHERE "name" = 'state:Chattogram'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2403f37a-c08b-4b24-9aaa-bb03a5b58e17', "id" FROM "tags" WHERE "name" = 'country:Bangladesh'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('40aed183-bf33-4464-b3a6-a3c8f5bc408d', 'state:Old Dhaka', 'state') ON CONFLICT ("name") DO NOTHING;

-- Old Dhaka Fuchka (Old Dhaka, Bangladesh)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('963181ef-cc43-4926-a33a-a4688c8156df', 'old-dhaka-fuchka-old-dhaka-bangladesh', 'Old Dhaka Fuchka', NULL, 'asia'::"Continent", 'Bangladesh', 'Old Dhaka', 'vegan'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('140600f3-0883-4c7f-a462-c40b72fd0db1', '963181ef-cc43-4926-a33a-a4688c8156df', 0, NULL, 'Semolina') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9224a6c4-e41d-40b9-947a-c99e66f05aef', '963181ef-cc43-4926-a33a-a4688c8156df', 1, NULL, 'All-purpose flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('80a6fcd7-be33-482f-97b6-1d2623c47ae9', '963181ef-cc43-4926-a33a-a4688c8156df', 2, NULL, 'Vegetable oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4349e901-9fb5-48a2-b07c-e134d92d1521', '963181ef-cc43-4926-a33a-a4688c8156df', 3, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a716f80a-8e31-4691-9029-b9a9406e9ccf', '963181ef-cc43-4926-a33a-a4688c8156df', 4, NULL, 'Chickpeas') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f7272385-54be-489e-86eb-db56ce462afe', '963181ef-cc43-4926-a33a-a4688c8156df', 5, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50c0b7c6-7f15-4f96-b3f5-1ddb0dc553fe', '963181ef-cc43-4926-a33a-a4688c8156df', 6, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('58883af2-014a-489c-9949-737f2c9b7a70', '963181ef-cc43-4926-a33a-a4688c8156df', 7, NULL, 'Cumin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ed29e55-30a3-4288-aa1c-eb1d6efc76c4', '963181ef-cc43-4926-a33a-a4688c8156df', 8, NULL, 'Black salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b432c70a-77d7-496b-a12d-aed1cc045dbb', '963181ef-cc43-4926-a33a-a4688c8156df', 9, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a7bb0b2-dddf-4ad5-8449-663fc7861507', '963181ef-cc43-4926-a33a-a4688c8156df', 10, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d762e842-73db-4f9c-9d1b-c5134a440759', '963181ef-cc43-4926-a33a-a4688c8156df', 1, 'Mix the semolina and flour with a little oil and water into a stiff dough, then cover it and let it rest for about 20 minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('629847f9-fc12-4f94-9e6f-26df8561b8f6', '963181ef-cc43-4926-a33a-a4688c8156df', 2, 'Roll the dough out thin and cut it into small circles about 2 inches wide.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('45b17fd2-c106-42dd-ba81-69a35b75dc17', '963181ef-cc43-4926-a33a-a4688c8156df', 3, 'Heat oil in a deep pot to about 375 degrees Fahrenheit.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e3623698-aca0-4653-97c1-abb10f7a27e6', '963181ef-cc43-4926-a33a-a4688c8156df', 4, 'Fry the dough circles in small batches for about 1 minute, pressing them gently with a slotted spoon so they puff into hollow shells, then drain them on paper.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('77b46dbe-d7b7-4eda-aab1-b43eb2b43db6', '963181ef-cc43-4926-a33a-a4688c8156df', 5, 'Boil the potatoes until tender, about 15 minutes, then peel, mash, and mix them with boiled chickpeas, chopped onion, green chili, and a pinch of black salt to make the filling.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fade0a18-3d35-4cfa-9850-c7f951cbb9e5', '963181ef-cc43-4926-a33a-a4688c8156df', 6, 'Blend tamarind pulp with water, cumin, and a touch more black salt into a thin, tangy tamarind water.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('645f8c61-1482-4225-9842-3db09893fd23', '963181ef-cc43-4926-a33a-a4688c8156df', 7, 'Crack a small hole in the top of each puffed shell with your thumb.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3f08ec92-f17b-401f-bb70-0cf85eb107b5', '963181ef-cc43-4926-a33a-a4688c8156df', 8, 'Spoon a little of the potato and chickpea filling into each shell.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2ab12bc3-a996-45c9-950f-4d88fa75ec2e', '963181ef-cc43-4926-a33a-a4688c8156df', 9, 'Fill each shell to the brim with the tangy tamarind water and serve them immediately, before the shells turn soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '963181ef-cc43-4926-a33a-a4688c8156df', "id" FROM "tags" WHERE "name" = 'region:Dhaka Division'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '963181ef-cc43-4926-a33a-a4688c8156df', "id" FROM "tags" WHERE "name" = 'state:Old Dhaka'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '963181ef-cc43-4926-a33a-a4688c8156df', "id" FROM "tags" WHERE "name" = 'country:Bangladesh'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('949fcdb4-ea55-4dee-a694-4f62be90fcf2', 'region:Central Luzon', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fc20b36d-659f-4226-b930-2aee91d3d188', 'state:Pampanga', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('05c9d194-39a7-4571-b059-0e36ef47917a', 'country:Philippines', 'country') ON CONFLICT ("name") DO NOTHING;

-- Pampanga-Style Sisig (Pampanga, Philippines)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('99fffdbb-09e4-4534-a1c1-aef4825cdaec', 'pampanga-style-sisig-pampanga-philippines', 'Pampanga-Style Sisig', NULL, 'asia'::"Continent", 'Philippines', 'Pampanga', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('682a4441-ccd0-40fd-b977-d565633dcf75', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 0, NULL, 'Pork ears') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('08a93dba-3665-4bc0-b369-55fd0bb8e606', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 1, NULL, 'Pork jowl') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d8162355-b3c7-4554-a555-0b59e7e3cabb', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 2, NULL, 'Chicken liver') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c612d7e0-ca24-4a37-834c-444f2c7188b6', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3803830-87af-4cab-b8f2-47e2716a0b03', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 4, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3cd1b5d8-33e3-4a51-b449-5a52e8463c10', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 5, NULL, 'Red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37b5211d-305c-4bbc-b903-8152c8f8df93', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 6, NULL, 'Calamansi juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('481dbf44-80a6-4684-b51f-653539346c58', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 7, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('99dca942-4442-4162-8b63-d5aeb298dc77', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 8, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('38c92b15-c5aa-4f2c-aa7c-abb654bcccbd', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 9, NULL, 'Mayonnaise') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('db2d7b5d-034b-41da-9d8b-e5032248ef05', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 10, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3e7a5eeb-3dc3-425f-8c07-dc77b1d00afb', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 11, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bad265e4-e4b9-4d45-b60f-58528172b052', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 12, NULL, 'Black peppercorns') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('25ec8c4e-5de4-4d77-92ee-d694f6a77e2b', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 1, 'Boil pork ears and pork jowl in water with bay leaves, peppercorns, and salt for about forty five minutes, until tender enough to pierce easily with a fork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dcdcba32-5cd9-447d-8836-fe6ee66e289f', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 2, 'Drain the pork and pat it dry, then grill it over hot charcoal for about eight minutes per side, until the skin is deeply browned and slightly charred.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1a8fb222-cbb2-4ab7-a14a-b4cc3b8e14f2', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 3, 'Let the grilled pork cool slightly, then chop it into very small, even pieces along with the chicken liver.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d982ba01-2e34-45ba-b99e-f5499e98518a', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 4, 'Melt butter in a large flat pan or skillet over high heat, then add the chopped pork and liver and sear for about five minutes, stirring frequently, until crisp at the edges.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0c50a8fb-e2f2-40e6-a877-3005f991f712', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 5, 'Add finely chopped onion and both green and red chili, and cook for two more minutes, until the onion softens slightly but still has some bite.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bdf62068-6ca1-40ed-adc9-a7d851ceacce', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 6, 'Season with soy sauce, calamansi juice, salt, and pepper, tossing everything together over high heat for one minute to combine.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8ed29e51-ee74-4cdd-8a22-af47fc5f9d72', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 7, 'Transfer the sizzling mixture onto a hot sizzling plate or heatproof platter, then stir in a spoonful of mayonnaise for richness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('41246543-eb5f-413d-bca7-15311b548de3', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 8, 'Crack a raw egg directly on top of the hot sisig and let the residual heat begin to cook it as you bring the dish to the table.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aed2f2d3-6308-41fe-a742-53915e78fead', '99fffdbb-09e4-4534-a1c1-aef4825cdaec', 9, 'Mix the egg into the sisig tableside just before eating, and serve with extra calamansi wedges on the side.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '99fffdbb-09e4-4534-a1c1-aef4825cdaec', "id" FROM "tags" WHERE "name" = 'region:Central Luzon'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '99fffdbb-09e4-4534-a1c1-aef4825cdaec', "id" FROM "tags" WHERE "name" = 'state:Pampanga'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '99fffdbb-09e4-4534-a1c1-aef4825cdaec', "id" FROM "tags" WHERE "name" = 'country:Philippines'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('67c4973b-523e-4d9b-aa7b-20b50dd8ce7e', 'region:Western Visayas', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('39c997b6-78d0-4606-8783-4616371e210e', 'state:Iloilo', 'state') ON CONFLICT ("name") DO NOTHING;

-- Iloilo La Paz Batchoy (Iloilo, Philippines)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('bb7124a5-ec62-4161-a081-17389e5f09f3', 'iloilo-la-paz-batchoy-iloilo-philippines', 'Iloilo La Paz Batchoy', NULL, 'asia'::"Continent", 'Philippines', 'Iloilo', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('732f62f7-28dd-46d3-8163-97e84278511b', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 0, NULL, 'Pork bones') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7eb66291-5f57-4fac-8635-05085e17e791', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 1, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1593c7e5-5300-44f6-82e8-4b4265073a53', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 2, NULL, 'Pork liver') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6d8a81dd-a91e-48b4-98d6-520ba5067555', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 3, NULL, 'Fresh egg noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('823847a1-e3d4-4225-8d48-9d4e3522dd15', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 4, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('978a9cfd-ddbc-4d77-aae5-c121aae27811', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1e4844a5-bc48-4827-a8b3-e2dc4b82edc2', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 6, NULL, 'Fish sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d3b2bee1-200d-468b-830e-bc39f708aa7d', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 7, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6a0f8c38-11af-406b-9530-f2080c0a9c77', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 8, NULL, 'Chicharon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40fa3993-d8a8-4b59-9a7c-e65ecb015c15', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 9, NULL, 'Spring onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c4082f47-0f27-4c4a-9276-cdd4dd816c33', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 10, NULL, 'Boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('67433c7a-2801-4e3a-b1c7-4f0931763b7d', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 1, 'Simmer pork bones and pork belly in a large pot of water with quartered onion and crushed garlic for about ninety minutes, skimming off any foam, until a rich stock forms.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aa00f806-ae1b-42e8-8e26-fbcc50af1ecf', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 2, 'Remove the pork belly once tender, let it cool, then slice it thinly and set it aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bfae6e0a-f11a-4f87-a534-267de35e9669', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 3, 'Strain the stock into a clean pot and season it with fish sauce and a splash of soy sauce, tasting and adjusting until it is deeply savory.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c00c5b7c-515e-4ac4-8df1-cc291b7d29a8', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 4, 'In a separate small pan, fry thinly sliced garlic in oil over medium heat for about two minutes, until golden and fragrant, then set the garlic and its oil aside separately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1233f2ab-47de-43b6-ab66-0280817c86f5', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 5, 'Bring a second pot of water to a boil and cook fresh egg noodles for about two minutes, until just tender, then drain well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9f479dc3-1e8a-4581-a4e3-10a5cb01a2eb', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 6, 'Divide the noodles among deep serving bowls and top each with sliced pork belly and a portion of raw pork liver, thinly sliced.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('803360e7-f339-4aaa-a93f-e1393b962aef', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 7, 'Ladle the boiling hot stock directly over the noodles and liver so that the heat gently cooks the liver as it hits the bowl.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('21d9fbb9-16b8-45f4-a5f3-40b32219817d', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 8, 'Crush a generous handful of chicharon over each bowl so it begins to soften slightly in the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8c3e1579-0e46-4a56-87a3-42302c7f7b09', 'bb7124a5-ec62-4161-a081-17389e5f09f3', 9, 'Finish each bowl with the fried garlic and oil, chopped spring onion, and a halved boiled egg before serving immediately.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bb7124a5-ec62-4161-a081-17389e5f09f3', "id" FROM "tags" WHERE "name" = 'region:Western Visayas'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bb7124a5-ec62-4161-a081-17389e5f09f3', "id" FROM "tags" WHERE "name" = 'state:Iloilo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bb7124a5-ec62-4161-a081-17389e5f09f3', "id" FROM "tags" WHERE "name" = 'country:Philippines'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f3f30a4e-2753-4d5e-9e6f-926b29165281', 'region:Bicol Region', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('76a98c34-1ecb-496b-9c50-1b0359cafcaf', 'state:Camarines Sur', 'state') ON CONFLICT ("name") DO NOTHING;

-- Camarines Sur Bicol Express (Camarines Sur, Philippines)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('24920c1d-82d2-437a-93ef-8f349af1f29b', 'camarines-sur-bicol-express-camarines-sur-philippines', 'Camarines Sur Bicol Express', NULL, 'asia'::"Continent", 'Philippines', 'Camarines Sur', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bcd08c74-d85e-4268-8241-4d77f2067829', '24920c1d-82d2-437a-93ef-8f349af1f29b', 0, NULL, 'Pork belly') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ae2a60d0-ba54-4b51-9ef7-f3903e43bf61', '24920c1d-82d2-437a-93ef-8f349af1f29b', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('97116023-70a5-440b-90f3-0126527a8d7e', '24920c1d-82d2-437a-93ef-8f349af1f29b', 2, NULL, 'Shrimp paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c291779c-a059-4a3d-9060-a7d5df07b856', '24920c1d-82d2-437a-93ef-8f349af1f29b', 3, NULL, 'Green chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('61c3a8ff-49c9-4fdc-94a4-7797f27f6488', '24920c1d-82d2-437a-93ef-8f349af1f29b', 4, NULL, 'Red chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('df3c16ab-a7e4-478c-90a4-8328a110cf0c', '24920c1d-82d2-437a-93ef-8f349af1f29b', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('096f27b9-cfba-4fe3-864a-b65bbc1a77b7', '24920c1d-82d2-437a-93ef-8f349af1f29b', 6, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73eb4969-4301-476d-95f2-b8e2bda96fc8', '24920c1d-82d2-437a-93ef-8f349af1f29b', 7, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('89b16192-1fe4-4458-906a-79408f7d577b', '24920c1d-82d2-437a-93ef-8f349af1f29b', 8, NULL, 'Cooking oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ff084317-6658-487c-badb-1c6c178f26b8', '24920c1d-82d2-437a-93ef-8f349af1f29b', 1, 'Cut pork belly into small cubes and set them aside while you prepare the aromatics.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c97b9f30-c2b7-416b-855b-9ece9d43d026', '24920c1d-82d2-437a-93ef-8f349af1f29b', 2, 'Heat oil in a heavy pot over medium heat and sauté minced garlic, chopped onion, and grated ginger for about three minutes, until fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f639b36a-f64f-47e0-87ac-e20df05bdbff', '24920c1d-82d2-437a-93ef-8f349af1f29b', 3, 'Add the pork belly and cook for about eight minutes, stirring occasionally, until the pieces are lightly browned on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2fd4c083-6e01-471d-8dac-39dbcc54daf8', '24920c1d-82d2-437a-93ef-8f349af1f29b', 4, 'Stir in the shrimp paste and cook for one minute to let its flavor bloom into the oil and pork.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f2e3730f-8024-4e3a-b844-c266a98e96ad', '24920c1d-82d2-437a-93ef-8f349af1f29b', 5, 'Pour in the coconut milk and bring the mixture to a gentle simmer, then reduce the heat to low.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('48924ed0-7c05-46e6-8318-0040d4df714a', '24920c1d-82d2-437a-93ef-8f349af1f29b', 6, 'Cover and cook for about thirty minutes, stirring occasionally, until the pork is tender and the sauce has thickened slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e80a5442-48c1-4a74-8826-932b5691d8fc', '24920c1d-82d2-437a-93ef-8f349af1f29b', 7, 'Add sliced green and red chili and continue simmering uncovered for ten more minutes, until the sauce turns rich and glossy and the chili has softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f53705b2-3522-49b0-b0c6-bea9fd9363e8', '24920c1d-82d2-437a-93ef-8f349af1f29b', 8, 'Taste and adjust the seasoning, adding a little more shrimp paste if a saltier, deeper flavor is wanted.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9e097243-5ed8-4245-b877-9fa1efeeb116', '24920c1d-82d2-437a-93ef-8f349af1f29b', 9, 'Serve hot over steamed rice, with extra sliced chili scattered on top for those who want more heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '24920c1d-82d2-437a-93ef-8f349af1f29b', "id" FROM "tags" WHERE "name" = 'region:Bicol Region'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '24920c1d-82d2-437a-93ef-8f349af1f29b', "id" FROM "tags" WHERE "name" = 'state:Camarines Sur'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '24920c1d-82d2-437a-93ef-8f349af1f29b', "id" FROM "tags" WHERE "name" = 'country:Philippines'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('fe9b93cb-3ff2-4f7c-95ca-924d64719417', 'region:Northern Peninsular Malaysia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bc27f34f-14db-4dd3-a50d-61efdb029aac', 'state:Penang', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c5eddd94-9a8e-4310-9ba0-bbbc24e00a21', 'country:Malaysia', 'country') ON CONFLICT ("name") DO NOTHING;

-- Penang Char Kway Teow (Penang, Malaysia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('8f6d73b5-7c08-425a-960d-1b661b477ac2', 'penang-char-kway-teow-penang-malaysia', 'Penang Char Kway Teow', NULL, 'asia'::"Continent", 'Malaysia', 'Penang', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('96f6cda0-5db8-4028-bd7f-9cf3aaa2637f', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 0, NULL, 'Flat rice noodles') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ae20d32a-fa6b-45c6-9ac8-4834ce6944fa', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 1, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('eb08318f-a4b1-4ef2-abef-6b141022c796', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 2, NULL, 'Chinese sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('22519fa7-ec65-4458-92c8-d53f16837ab2', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 3, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ebb85417-b04d-41fd-9240-30d3145ffe6e', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 4, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('18c9e296-5cb8-4e13-8de7-c0cf7ea657a2', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 5, NULL, 'Garlic chives') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1598ae79-b05d-483f-bbe2-8f45d5355dbb', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 6, NULL, 'Dark soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9e1249ef-8ad9-4465-9d47-3e69097ff163', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 7, NULL, 'Light soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f84b1714-354f-485e-a2b2-75960287e6aa', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 8, NULL, 'Chili paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d09d55bf-e7bb-42ed-9e7e-0ec49ba18783', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 9, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b6e186a0-0004-42bf-9688-d07ac00db26f', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 10, NULL, 'Cooking oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1e2f6f5b-1dd4-485d-8e52-2680e0d38e64', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 1, 'Heat a well seasoned wok over very high heat until it just begins to smoke, then add a generous splash of oil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b758c711-a296-4204-b044-9bec4b45f099', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 2, 'Add minced garlic and sliced Chinese sausage and stir fry for about one minute, until fragrant and the sausage edges start to crisp.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a51f0d43-f02d-4b74-8b01-90fd460656e4', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 3, 'Add the shrimp and stir fry for about two minutes, until they turn pink and just cooked through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ffc7fcb1-8890-4a32-a940-ab2f8ec7c12f', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 4, 'Push everything to one side of the wok, crack in an egg, and scramble it briefly before folding it into the other ingredients.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('00db6faa-6e6c-4f94-9714-31921e3514aa', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 5, 'Add the flat rice noodles along with dark soy sauce, light soy sauce, and a spoonful of chili paste, tossing constantly over high heat for about two minutes so the noodles pick up color and a faint smoky aroma from the hot wok.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7384e6ae-ae82-43cc-bfc2-74317582888a', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 6, 'Add bean sprouts and cut lengths of garlic chives, and toss for another minute, just until the sprouts soften slightly but still stay crunchy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0a754a39-f249-4a38-8f15-26cdb035312b', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 7, 'Taste and adjust the seasoning with a little more soy sauce if needed, keeping the heat high throughout so nothing steams or turns soggy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b89c91b0-a71c-4e0e-b82c-27329a9f4d9f', '8f6d73b5-7c08-425a-960d-1b661b477ac2', 8, 'Transfer immediately to a plate and serve right away while the noodles are still hot and glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8f6d73b5-7c08-425a-960d-1b661b477ac2', "id" FROM "tags" WHERE "name" = 'region:Northern Peninsular Malaysia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8f6d73b5-7c08-425a-960d-1b661b477ac2', "id" FROM "tags" WHERE "name" = 'state:Penang'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '8f6d73b5-7c08-425a-960d-1b661b477ac2', "id" FROM "tags" WHERE "name" = 'country:Malaysia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('7c54ee6b-0db4-45ed-8bbb-ee11d63ec50e', 'region:Central Peninsular Malaysia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('39d223c2-5b34-4c7d-ad3b-734fd100aad9', 'state:Kuala Lumpur', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kuala Lumpur Nasi Lemak (Kuala Lumpur, Malaysia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('bc11f51e-4615-49a1-aba6-e00813592cb7', 'kuala-lumpur-nasi-lemak-kuala-lumpur-malaysia', 'Kuala Lumpur Nasi Lemak', NULL, 'asia'::"Continent", 'Malaysia', 'Kuala Lumpur', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('50b8baae-3757-409c-966b-89e176267afa', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 0, NULL, 'Rice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('085ca361-19c8-434e-b565-f41747f7858b', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 1, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d26536c0-c75a-4e6c-ab65-0a41e5ade574', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 2, NULL, 'Pandan leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('31744d0d-f7be-4975-93e9-2ffaaf36e943', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 3, NULL, 'Dried anchovies') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a7d81eff-2d97-4302-846a-17f21cffe406', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 4, NULL, 'Roasted peanuts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cbc3fc90-ba57-462e-8f9a-4078268cfa3c', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 5, NULL, 'Cucumber') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d8b009ca-3553-4a4e-a74b-ff8714f65487', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 6, NULL, 'Hard boiled egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5677488d-2ffc-447d-8452-c266d3baceb4', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 7, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('625e1ce5-f406-4b61-94b2-e9673ee1e524', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 8, NULL, 'Dried chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d1a3b38a-b079-4e1f-bd2b-99bc736a99e8', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 9, NULL, 'Shrimp paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e62bc681-335e-47cb-8c53-34bd0020780d', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 10, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('869e8477-b228-4d76-8e07-a157a4d6362b', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 11, NULL, 'Tamarind') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e8e5dcf2-9210-4e96-89da-949a28e19825', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 1, 'Rinse the rice well and cook it in a pot with coconut milk, water, a knotted pandan leaf, and a pinch of salt, using the usual ratio for steamed rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c5406704-8caf-4cd9-806d-6bc1ae77cd94', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 2, 'Once the liquid has mostly absorbed, cover the pot and let the rice steam undisturbed on the lowest heat for about fifteen minutes, until fluffy and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2767f4c2-41f4-4e45-a2ec-2a9537a554d6', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 3, 'While the rice cooks, rinse dried anchovies and fry them in oil over medium heat for about four minutes, until crisp and golden, then drain and set aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cf26b4ec-d523-4f53-bf0b-9ccedbdd5309', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 4, 'In the same oil, fry a handful of raw peanuts for about three minutes, until golden brown, then drain them separately from the anchovies.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63b87944-c736-4c8a-80f7-18bb6d891f9e', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 5, 'Blend onion, garlic, dried chili, and shrimp paste into a smooth paste, then fry it in oil over low heat for about ten minutes, stirring often, until it turns deep red and fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1fe4ecc0-2c3f-4ba4-9e41-c43f4862b697', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 6, 'Stir in tamarind pulp dissolved in water along with a pinch of sugar, and simmer the sambal for five more minutes, until thickened and glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('520b8d77-90c3-403a-a16b-9bf50a15f559', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 7, 'Fluff the coconut rice with a fork and mound it onto plates.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d9db512e-5bd6-4da8-91ce-6f7487ade5f2', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 8, 'Arrange sliced cucumber, a halved hard boiled egg, the fried anchovies, and the fried peanuts around the rice.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ac38dcb2-d54a-4293-900b-3284b9713b98', 'bc11f51e-4615-49a1-aba6-e00813592cb7', 9, 'Spoon the warm sambal generously over or alongside the rice just before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bc11f51e-4615-49a1-aba6-e00813592cb7', "id" FROM "tags" WHERE "name" = 'region:Central Peninsular Malaysia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bc11f51e-4615-49a1-aba6-e00813592cb7', "id" FROM "tags" WHERE "name" = 'state:Kuala Lumpur'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'bc11f51e-4615-49a1-aba6-e00813592cb7', "id" FROM "tags" WHERE "name" = 'country:Malaysia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f54126c8-1a7d-4208-b113-6391fa48f477', 'region:East Malaysia (Borneo)', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5a908cdb-b011-45ae-9495-607169b47e95', 'state:Sarawak', 'state') ON CONFLICT ("name") DO NOTHING;

-- Sarawak Laksa (Sarawak, Malaysia)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 'sarawak-laksa-sarawak-malaysia', 'Sarawak Laksa', NULL, 'asia'::"Continent", 'Malaysia', 'Sarawak', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('407c8fe5-4c43-49c8-83c8-f5156abe4955', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 0, NULL, 'Rice vermicelli') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b75b7afc-ce6c-42b9-bb07-2c445af042bc', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 1, NULL, 'Chicken breast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('482821c8-d92b-458b-84cd-4f00f0887b70', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 2, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7f45ca8b-dd93-436a-976d-01768e084b54', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 3, NULL, 'Bean sprouts') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3f7c600c-8398-495c-a609-105120f92b52', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('93633ea1-f4f0-4a81-a290-0f7d1b53c30f', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 5, NULL, 'Laksa spice paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8fb0e11a-d78e-4eca-a17c-f932255adc71', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 6, NULL, 'Coconut milk') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3ef72e35-9fd1-45ea-ab71-5d1cb6f0456b', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 7, NULL, 'Chicken stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c14d2675-43bc-4799-9be8-05e72370b335', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 8, NULL, 'Sambal') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ef02464e-9f48-457e-ac8c-1b0e61f4e142', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 9, NULL, 'Lime') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b3f2b276-374e-4630-b710-082d0477cb53', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 10, NULL, 'Coriander leaves') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('170a6960-794c-4403-a9b3-b0e81c77231b', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 1, 'Poach chicken breast in simmering water for about fifteen minutes, until cooked through, then remove it, let it cool, and shred it into thin strips, reserving the poaching liquid as stock.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbd0c711-7225-49b6-806b-5d6c7041637c', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 2, 'Heat oil in a pot over medium heat and fry the laksa spice paste for about six minutes, stirring constantly, until it darkens slightly and turns deeply fragrant.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('35dccf2a-d4c3-475e-a29e-0ec85d79cbbb', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 3, 'Pour in the reserved chicken stock and bring it to a simmer, then stir in coconut milk and let the broth simmer gently for ten minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7744382d-ef17-4616-908a-c5b1baa08b30', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 4, 'Season the broth with salt and a little sugar, tasting until it reaches a balance of rich, spicy, and slightly sweet flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c8265fdb-397a-4032-98da-d2c54a867998', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 5, 'Blanch the shrimp in the simmering broth for about two minutes, until just pink, then remove them and set aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0ac5780d-eea8-44d3-8691-974e553475d1', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 6, 'Soak rice vermicelli in hot water for about five minutes, until softened, then drain and divide it among serving bowls.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('80c04788-ad84-4529-a70c-c150e85e9bb5', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 7, 'Prepare a thin omelet by frying beaten egg in a lightly oiled pan for about two minutes, then slice it into fine strips once cooled.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8c873198-9507-4320-8ac9-80614fb78a8a', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 8, 'Ladle the hot broth over the noodles, then top each bowl with shredded chicken, the poached shrimp, bean sprouts, and the shredded omelet.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('141a7026-4d83-4acb-a664-54acb7d1fa3f', 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', 9, 'Finish with a spoonful of sambal, a squeeze of lime, and chopped coriander leaves before serving hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', "id" FROM "tags" WHERE "name" = 'region:East Malaysia (Borneo)'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', "id" FROM "tags" WHERE "name" = 'state:Sarawak'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'b531e3ca-be6d-46d5-a574-53ebcfb97c4a', "id" FROM "tags" WHERE "name" = 'country:Malaysia'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8ea7c9bc-1e25-45e6-b5c9-c9aa57d7f933', 'region:Mazovia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('bfd64cc1-33ef-41fd-83ff-e76719c460d4', 'state:Warsaw', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f4242984-6ab3-41a7-b525-cfe19a8e4338', 'country:Poland', 'country') ON CONFLICT ("name") DO NOTHING;

-- Warsaw Pierogi Ruskie (Warsaw, Poland)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5894d7e7-9358-414d-8556-d14d32843f14', 'warsaw-pierogi-ruskie-warsaw-poland', 'Warsaw Pierogi Ruskie', NULL, 'europe'::"Continent", 'Poland', 'Warsaw', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1227e1eb-5f5f-449c-9daf-7743fe325a08', '5894d7e7-9358-414d-8556-d14d32843f14', 0, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('542112e7-735a-410a-abb5-9875f05e374d', '5894d7e7-9358-414d-8556-d14d32843f14', 1, NULL, 'Farmer''s cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7851abdc-7e0b-430c-8d83-aaba3579eab6', '5894d7e7-9358-414d-8556-d14d32843f14', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('47bb195d-bdbf-401b-b5da-0d7919a0c1fb', '5894d7e7-9358-414d-8556-d14d32843f14', 3, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('09e766a2-caa2-4d4e-808f-21493bb0b6ba', '5894d7e7-9358-414d-8556-d14d32843f14', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d3cf9999-5777-40de-a2e4-8af50c6a2ced', '5894d7e7-9358-414d-8556-d14d32843f14', 5, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0d585c64-7514-4842-ac79-b44d54e67e18', '5894d7e7-9358-414d-8556-d14d32843f14', 6, NULL, 'Sour cream') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a3280788-cdeb-457f-8c2f-2dc6431f380b', '5894d7e7-9358-414d-8556-d14d32843f14', 7, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9256093d-e01c-4012-82b7-c610f902d4f2', '5894d7e7-9358-414d-8556-d14d32843f14', 1, 'Boil peeled potatoes in salted water for about twenty minutes, until soft enough to mash easily, then drain well.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('63621146-6c9c-4689-90d6-ec0bc5ded9c9', '5894d7e7-9358-414d-8556-d14d32843f14', 2, 'Mash the potatoes while still warm and mix them with crumbled farmer''s cheese, folding until evenly combined.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('acef86d9-a7a4-4f0b-8e0d-da915d70acb3', '5894d7e7-9358-414d-8556-d14d32843f14', 3, 'Finely chop half an onion and sauté it in butter over medium heat for about six minutes, until soft and golden, then stir most of it into the potato and cheese filling, reserving the rest for topping.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ac4cb24c-60d4-453b-aee8-05e3351f6371', '5894d7e7-9358-414d-8556-d14d32843f14', 4, 'Season the filling generously with salt and pepper, then set it aside to cool slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('d317de4e-cd6b-4226-8d11-5637cad348d9', '5894d7e7-9358-414d-8556-d14d32843f14', 5, 'On a lightly floured surface, knead together flour, egg, a pinch of salt, and enough warm water to form a smooth, elastic dough, then let it rest for ten minutes under a cloth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fbc4d27d-761a-4644-877f-e54e9d4aa0ac', '5894d7e7-9358-414d-8556-d14d32843f14', 6, 'Roll the dough out thinly and cut circles using a glass or round cutter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7159f740-41e9-4930-a65e-1dbcd08c9bb2', '5894d7e7-9358-414d-8556-d14d32843f14', 7, 'Place a spoonful of filling in the center of each circle, fold the dough over into a half moon, and pinch the edges firmly to seal.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3e76bbb8-120d-49a9-a066-2fbb807f156c', '5894d7e7-9358-414d-8556-d14d32843f14', 8, 'Drop the pierogi into a large pot of gently boiling salted water and cook for about three minutes after they float to the surface.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a47cdfdc-8924-4ea9-b9d3-bffc1c6099ed', '5894d7e7-9358-414d-8556-d14d32843f14', 9, 'Drain the pierogi and serve them warm, topped with the reserved sautéed onion and a dollop of sour cream.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5894d7e7-9358-414d-8556-d14d32843f14', "id" FROM "tags" WHERE "name" = 'region:Mazovia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5894d7e7-9358-414d-8556-d14d32843f14', "id" FROM "tags" WHERE "name" = 'state:Warsaw'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5894d7e7-9358-414d-8556-d14d32843f14', "id" FROM "tags" WHERE "name" = 'country:Poland'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cd122660-57c0-4b9e-9fbd-40a1c94b1173', 'region:Silesia', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6743f243-6b2e-42fe-b63d-87daf7623414', 'state:Upper Silesia', 'state') ON CONFLICT ("name") DO NOTHING;

-- Silesian Dumplings with Beef Roulade (Upper Silesia, Poland)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('20720a71-6d62-427f-9c33-eeb595fcec05', 'silesian-dumplings-with-beef-roulade-upper-silesia-poland', 'Silesian Dumplings with Beef Roulade', NULL, 'europe'::"Continent", 'Poland', 'Upper Silesia', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('126d7753-e682-497f-91bd-03ebee0d7c0b', '20720a71-6d62-427f-9c33-eeb595fcec05', 0, NULL, 'Beef slices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d55580d4-fbea-4736-a457-1e32ba766cc9', '20720a71-6d62-427f-9c33-eeb595fcec05', 1, NULL, 'Bacon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6cf8b94d-5120-403e-bc42-427388a56c3e', '20720a71-6d62-427f-9c33-eeb595fcec05', 2, NULL, 'Pickle') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('86b5c025-08f7-4330-8291-6a368f8ca820', '20720a71-6d62-427f-9c33-eeb595fcec05', 3, NULL, 'Mustard') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e20c2eb7-7e27-452e-b1df-4550c5781f08', '20720a71-6d62-427f-9c33-eeb595fcec05', 4, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5da86353-fe65-4ad0-a4dd-3feba9a50389', '20720a71-6d62-427f-9c33-eeb595fcec05', 5, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9a06f174-15c7-463e-bb1a-d11c83e72541', '20720a71-6d62-427f-9c33-eeb595fcec05', 6, NULL, 'Potato starch') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b6f52804-38fd-45c2-a808-0d213ba4210d', '20720a71-6d62-427f-9c33-eeb595fcec05', 7, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('40d61965-9aef-452d-9676-15130860bcfb', '20720a71-6d62-427f-9c33-eeb595fcec05', 8, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('237a3a2a-6af4-4571-ae88-e3459d3e8fab', '20720a71-6d62-427f-9c33-eeb595fcec05', 9, NULL, 'Red cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8813eb16-9de0-4256-8676-e5c669101ab9', '20720a71-6d62-427f-9c33-eeb595fcec05', 1, 'Lay the beef slices flat and spread each with a thin layer of mustard.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b55228b4-06a8-4a93-b6ca-699b1d195b66', '20720a71-6d62-427f-9c33-eeb595fcec05', 2, 'Top each slice with a strip of bacon, a few slices of pickle, and some chopped onion, then roll tightly and secure with kitchen string or a toothpick.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('41cb70b2-29bb-475b-bd26-3b9c72d880b5', '20720a71-6d62-427f-9c33-eeb595fcec05', 3, 'Brown the beef rolls in a hot pan with oil for about six minutes, turning occasionally, until seared on all sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be31a4f1-39d7-48aa-8761-664e3adc3e18', '20720a71-6d62-427f-9c33-eeb595fcec05', 4, 'Transfer the rolls to a pot, add sliced onion and beef stock to cover, and simmer gently, covered, for about one hour and thirty minutes, until the meat is fork tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a130a28b-d75a-4f14-8861-6800761ce5ef', '20720a71-6d62-427f-9c33-eeb595fcec05', 5, 'While the rolls braise, boil peeled potatoes until soft, then drain and let them cool slightly before pressing them through a ricer.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('45532177-165f-4e29-a9cd-d9415ab3188c', '20720a71-6d62-427f-9c33-eeb595fcec05', 6, 'Mix the riced potato with potato starch and a pinch of salt, forming a smooth dough, then shape it into small flattened rounds with a shallow thumbprint in the center of each.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('36e5c594-c2f3-459a-8040-650ecf1f020c', '20720a71-6d62-427f-9c33-eeb595fcec05', 7, 'Cook the dumplings in a pot of gently boiling salted water for about four minutes, until they float to the surface and turn slightly translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('17bcd2f9-2f3b-49cd-8e57-bca311977951', '20720a71-6d62-427f-9c33-eeb595fcec05', 8, 'Remove the beef rolls from the pot and thicken the braising liquid with a spoonful of flour whisked into cold water, simmering for a few minutes until glossy.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ff944ee0-596f-4f17-b4dc-5431dbc4d491', '20720a71-6d62-427f-9c33-eeb595fcec05', 9, 'Serve the sliced beef rolls and dumplings together with the gravy spooned over, alongside warm braised red cabbage.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20720a71-6d62-427f-9c33-eeb595fcec05', "id" FROM "tags" WHERE "name" = 'region:Silesia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20720a71-6d62-427f-9c33-eeb595fcec05', "id" FROM "tags" WHERE "name" = 'state:Upper Silesia'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '20720a71-6d62-427f-9c33-eeb595fcec05', "id" FROM "tags" WHERE "name" = 'country:Poland'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('716983db-3867-4243-829d-b58fcc2d0a8f', 'region:Lesser Poland', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f3140141-b92b-48e8-9a84-da1973c38de7', 'state:Kraków', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kraków Obwarzanek (Kraków, Poland)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('5197bced-5ec4-4256-887e-e66917af5a4f', 'krakow-obwarzanek-krakow-poland', 'Kraków Obwarzanek', NULL, 'europe'::"Continent", 'Poland', 'Kraków', 'vegan'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4c094d61-cab2-4a6e-b2e5-8695171b28b8', '5197bced-5ec4-4256-887e-e66917af5a4f', 0, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('14402dda-3719-4f87-a6e2-0a13411f59d1', '5197bced-5ec4-4256-887e-e66917af5a4f', 1, NULL, 'Yeast') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('0cbf6202-a007-45d0-a9ec-31b3064d9f14', '5197bced-5ec4-4256-887e-e66917af5a4f', 2, NULL, 'Sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a6cea9e1-897f-4b8e-ae98-eacfdaea72f6', '5197bced-5ec4-4256-887e-e66917af5a4f', 3, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e67e0aad-ba5c-4288-be4b-1b9030bc7355', '5197bced-5ec4-4256-887e-e66917af5a4f', 4, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e41fec29-54ce-4131-984c-996469190c06', '5197bced-5ec4-4256-887e-e66917af5a4f', 5, NULL, 'Poppy seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('28e33414-edf8-428f-81aa-400f2471ba1c', '5197bced-5ec4-4256-887e-e66917af5a4f', 6, NULL, 'Sesame seeds') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('82504a38-abc7-4d51-bfb5-ee6160ec2d75', '5197bced-5ec4-4256-887e-e66917af5a4f', 7, NULL, 'Coarse salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6cda9ef4-f068-48b2-b968-ccb734ae77c9', '5197bced-5ec4-4256-887e-e66917af5a4f', 8, NULL, 'Malt syrup') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a239bfaf-5ee5-4170-b312-cfcc9dd63ac5', '5197bced-5ec4-4256-887e-e66917af5a4f', 1, 'Dissolve yeast and a pinch of sugar in warm water and let the mixture stand for about ten minutes, until foamy on top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('cb6c90ba-777b-4d65-a995-e4d90e020c17', '5197bced-5ec4-4256-887e-e66917af5a4f', 2, 'Mix the yeast mixture into flour and salt, then knead for about eight minutes, until the dough is smooth and elastic.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4a495b52-20eb-4c06-b58c-82a710d1058f', '5197bced-5ec4-4256-887e-e66917af5a4f', 3, 'Cover the dough and let it rise in a warm spot for about one hour, until roughly doubled in size.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7fc5bf85-ee57-46ac-a853-916ed1b55ecd', '5197bced-5ec4-4256-887e-e66917af5a4f', 4, 'Divide the dough into equal pieces and roll each into a long rope, then twist two ropes together and join the ends to form a ring.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('13ef5227-7612-405d-98be-52925de68266', '5197bced-5ec4-4256-887e-e66917af5a4f', 5, 'Let the shaped rings rest, covered, for about twenty minutes while you bring a wide pot of water mixed with malt syrup to a gentle boil.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('574ce3ce-d85a-4c93-8dcc-43d0679c5c9d', '5197bced-5ec4-4256-887e-e66917af5a4f', 6, 'Boil each ring for about thirty seconds per side, until it puffs slightly and rises to the surface, then lift it out with a slotted spoon and drain briefly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a405f23a-73f8-4557-aab1-4e2df43e4cb4', '5197bced-5ec4-4256-887e-e66917af5a4f', 7, 'Immediately press the top of each warm ring into a dish of poppy seeds, sesame seeds, or coarse salt so the topping sticks.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e7ef005-f6a9-4be2-aea7-2e7ab5579640', '5197bced-5ec4-4256-887e-e66917af5a4f', 8, 'Arrange the rings on a baking tray lined with parchment and bake in a hot oven at around two hundred twenty degrees Celsius for about eighteen minutes, until deeply golden and crisp on the outside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3087cdf8-920c-4941-bf96-019aa4a1c81e', '5197bced-5ec4-4256-887e-e66917af5a4f', 9, 'Cool the rings briefly on a wire rack before selling or serving, as street vendors traditionally do, threaded on long dowels or piled in baskets.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5197bced-5ec4-4256-887e-e66917af5a4f', "id" FROM "tags" WHERE "name" = 'region:Lesser Poland'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5197bced-5ec4-4256-887e-e66917af5a4f', "id" FROM "tags" WHERE "name" = 'state:Kraków'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '5197bced-5ec4-4256-887e-e66917af5a4f', "id" FROM "tags" WHERE "name" = 'country:Poland'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ed6ed4e0-8b67-4e2c-b163-ed6ee32fa591', 'region:Alentejo', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('5367a57f-455a-4449-b954-050f48d979f8', 'state:Évora', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('61347c6e-4d31-4a9e-b7b3-7447e77e4ff6', 'country:Portugal', 'country') ON CONFLICT ("name") DO NOTHING;

-- Évora Açorda Alentejana (Évora, Portugal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('2b44e091-9e22-4c45-b58c-fffd34d499f7', 'evora-acorda-alentejana-evora-portugal', 'Évora Açorda Alentejana', NULL, 'europe'::"Continent", 'Portugal', 'Évora', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e6df87e6-472e-4388-84c4-0e3ba7c7db93', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 0, NULL, 'Stale bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ee83434a-bbfb-4f4f-accf-a025d14e21c0', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 1, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('67451db8-4b37-41cf-b253-0a437598f5ff', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 2, NULL, 'Fresh coriander') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3d86ca56-d374-486d-a40c-92b8d0aa2004', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 3, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('480d9e82-2902-4270-b534-d6ed51f9e97d', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 4, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('543c33fa-023b-434a-b02d-69d900738af0', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 5, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6ff4a6ca-b24e-428b-b04d-ad1c2732121b', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 6, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1a3e8c59-d2f6-4aa2-ac27-dc12e8d3d8c7', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 7, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0514f054-9745-4e6e-806e-d47a5263c1c2', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 1, 'Crush garlic cloves with a pinch of salt in a large mortar until a smooth paste forms.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('afe10dc8-cd26-45d2-ac46-15939e853cab', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 2, 'Add a generous handful of fresh coriander leaves to the mortar and continue pounding until the mixture turns into a fragrant green paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1a452fd1-453d-4bfb-a784-9af3d13637ac', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 3, 'Transfer the paste to a large bowl and stir in a good glug of olive oil, working it together with a wooden spoon.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('01347657-e6a7-40c9-b624-62a017923daa', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 4, 'Tear stale bread into rough chunks and set them into the bowl on top of the garlic and coriander paste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e5532ff6-dbce-41a1-a4ac-9beb708eaa7f', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 5, 'Bring water seasoned with a bay leaf and a pinch of salt to a rolling boil in a separate pot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('545a2b14-2828-499c-bab5-5c63805a6b0f', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 6, 'Pour the boiling water over the bread and paste, then stir vigorously so the bread breaks down and thickens the mixture into a rustic, porridge-like consistency.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('618422f4-ec5e-4d96-8ccd-ed58f46dbbc7', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 7, 'Poach eggs gently in a separate pot of barely simmering water for about three minutes, until the whites are set but the yolks stay soft.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('1dd72e13-4ba6-4b72-8a17-8a219411bc8c', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 8, 'Ladle the açorda into shallow bowls and top each portion with a poached egg.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e3cba9df-916c-4b43-93b9-c2ddc8aa14d3', '2b44e091-9e22-4c45-b58c-fffd34d499f7', 9, 'Drizzle with a little more olive oil and scatter extra coriander leaves over the top before serving immediately while still hot.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2b44e091-9e22-4c45-b58c-fffd34d499f7', "id" FROM "tags" WHERE "name" = 'region:Alentejo'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2b44e091-9e22-4c45-b58c-fffd34d499f7', "id" FROM "tags" WHERE "name" = 'state:Évora'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '2b44e091-9e22-4c45-b58c-fffd34d499f7', "id" FROM "tags" WHERE "name" = 'country:Portugal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ffb74d91-2ac8-4fb7-8174-9124e7bb499f', 'region:Algarve', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('6273ea6a-87d7-49ec-94ac-bd3f207b2a0f', 'state:Faro', 'state') ON CONFLICT ("name") DO NOTHING;

-- Algarve Cataplana de Marisco (Faro, Portugal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('12776fa8-a407-4fb2-8b81-5c45c99d8486', 'algarve-cataplana-de-marisco-faro-portugal', 'Algarve Cataplana de Marisco', NULL, 'europe'::"Continent", 'Portugal', 'Faro', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d9fb61d4-ee89-427e-bdee-d149a29cc02a', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 0, NULL, 'Clams') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7d548c68-882b-4d62-a1c0-f568c0a04e9e', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 1, NULL, 'Shrimp') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3317d2f9-46db-432c-bf95-de29db4f27e6', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 2, NULL, 'Mussels') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ca1f2a63-eaf4-434e-92aa-8f7fe19f7e26', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 3, NULL, 'White fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a08c5526-5b93-4f00-8ef7-454cb4deb333', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 4, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ef05a53a-2e7d-4360-87b1-5a3a765ac7d3', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 5, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('921ea9a1-bc21-484a-8183-c2e98dae4821', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b33cddd0-d8ec-4683-919a-f46af1267375', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 7, NULL, 'Bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6a7e8c17-a446-49b9-b80a-e9a33db0eafa', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 8, NULL, 'White wine') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bef39262-3aab-4528-9a75-6136e31eba6d', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 9, NULL, 'Olive oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5980270f-4274-4562-9d24-36874e1c9309', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 10, NULL, 'Paprika') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('19785b42-73f3-40fa-b419-dcc5eff2f207', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 11, NULL, 'Bay leaf') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5aa6b425-4d70-4656-8f8b-7223bca12d33', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 12, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ce887668-ff1a-42a6-8286-25f9b807cd03', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 1, 'Heat olive oil in a wide pan over medium heat and sauté chopped onion and garlic for about five minutes, until softened and translucent.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('47b5b6a9-f41f-4385-ae92-0406cfa4a2b9', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 2, 'Add sliced bell pepper and cook for another three minutes, until it begins to soften slightly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('668bedeb-095f-4d58-b3e5-c6f24c99eef6', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 3, 'Stir in chopped tomato, a pinch of paprika, and a bay leaf, and cook for about eight minutes, until the tomato breaks down into a thick base.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('052e1f1e-bf8c-46c7-9dfb-f8cf3830f6a5', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 4, 'Pour in white wine and let it bubble for two minutes to cook off the sharp alcohol smell.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ba7ef03d-d5c5-4644-9f11-b9e63f154991', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 5, 'Nestle chunks of white fish into the sauce first, since they need the longest cooking time, and simmer gently for four minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('aefc451d-fa69-4c46-bab9-979e3416fc5a', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 6, 'Add the clams and mussels, cover the pan tightly, and cook for about five minutes, until the shells begin to open.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dec01ab1-f926-47f8-b74b-d55cd641901f', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 7, 'Scatter the shrimp over the top, cover again, and cook for three more minutes, until the shrimp turn pink and any remaining shells have opened fully.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('edb02893-5c1a-4cbf-b8f6-7b168279e5cf', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 8, 'Discard any shellfish that have not opened, then season the broth with salt and pepper to taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('bd9bb1dd-574c-4f06-80e6-4a240ad5acca', '12776fa8-a407-4fb2-8b81-5c45c99d8486', 9, 'Sprinkle with chopped parsley and serve straight from the pan with crusty bread for soaking up the broth.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '12776fa8-a407-4fb2-8b81-5c45c99d8486', "id" FROM "tags" WHERE "name" = 'region:Algarve'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '12776fa8-a407-4fb2-8b81-5c45c99d8486', "id" FROM "tags" WHERE "name" = 'state:Faro'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '12776fa8-a407-4fb2-8b81-5c45c99d8486', "id" FROM "tags" WHERE "name" = 'country:Portugal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1fd6bc7a-7b6e-46fe-8d0a-da0a6f1c7349', 'region:Norte', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('ebe62d70-bbc9-4d83-b331-f10757944845', 'state:Porto', 'state') ON CONFLICT ("name") DO NOTHING;

-- Porto Francesinha (Porto, Portugal)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('60265e21-12f3-4380-9af3-0ede93a7442d', 'porto-francesinha-porto-portugal', 'Porto Francesinha', NULL, 'europe'::"Continent", 'Portugal', 'Porto', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ba640640-7b71-4128-8ca7-4fd7daf65bfb', '60265e21-12f3-4380-9af3-0ede93a7442d', 0, NULL, 'Bread') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a0e99d53-35c7-46a0-917d-f3d21f1fdffa', '60265e21-12f3-4380-9af3-0ede93a7442d', 1, NULL, 'Ham') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f3005209-391a-4838-a4b9-b274c2ff30c7', '60265e21-12f3-4380-9af3-0ede93a7442d', 2, NULL, 'Linguiça sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('6dfef3ce-bfa7-4b97-b191-9cfa689600dc', '60265e21-12f3-4380-9af3-0ede93a7442d', 3, NULL, 'Fresh sausage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8f876092-1925-4641-b063-fbe2a1060ca5', '60265e21-12f3-4380-9af3-0ede93a7442d', 4, NULL, 'Steak') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('920bd3df-56c6-4e5d-9dc9-58baae23e35b', '60265e21-12f3-4380-9af3-0ede93a7442d', 5, NULL, 'Cheese slices') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('57828d3d-c27e-475c-b859-84e83e92112e', '60265e21-12f3-4380-9af3-0ede93a7442d', 6, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2cdd3f47-19ab-440b-9cc5-ae4e46a049af', '60265e21-12f3-4380-9af3-0ede93a7442d', 7, NULL, 'Beer') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('faf28cb1-810e-40e8-8136-5dc09d24074f', '60265e21-12f3-4380-9af3-0ede93a7442d', 8, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2ae17c25-278e-4f9d-8028-38bfef4f9c12', '60265e21-12f3-4380-9af3-0ede93a7442d', 9, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ff74baee-9b6c-427e-bb9f-93fc2d3264ed', '60265e21-12f3-4380-9af3-0ede93a7442d', 10, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4b969f82-4900-4313-b79e-a75d1570585f', '60265e21-12f3-4380-9af3-0ede93a7442d', 11, NULL, 'Chili') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f08efa3a-cb2a-4ff4-83bf-1ecca17b1a71', '60265e21-12f3-4380-9af3-0ede93a7442d', 12, NULL, 'French fries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('749ca87d-763c-42b1-9ce9-02253c1f96e6', '60265e21-12f3-4380-9af3-0ede93a7442d', 1, 'Season a thin steak with salt and pepper and pan fry it in butter over medium high heat for about two minutes per side, until browned, then set it aside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('fd87417e-b154-4166-ab8c-76942f79996f', '60265e21-12f3-4380-9af3-0ede93a7442d', 2, 'In the same pan, quickly sear slices of linguiça sausage, fresh sausage, and ham for about two minutes total, just to warm them through and pick up a little color.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('58aa5fcc-bc54-4ac6-b86c-9fa77e175778', '60265e21-12f3-4380-9af3-0ede93a7442d', 3, 'Assemble a sandwich by layering the steak, sausages, and ham between two slices of bread.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('53463eaf-01c5-49ae-82e2-35d1fe9ddb76', '60265e21-12f3-4380-9af3-0ede93a7442d', 4, 'Cover the entire sandwich generously with sliced cheese, making sure the edges are fully enclosed.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f16a560a-49f4-49f5-89ea-ded525d091ab', '60265e21-12f3-4380-9af3-0ede93a7442d', 5, 'To make the sauce, melt butter in a saucepan and whisk in flour to form a paste, cooking for one minute over low heat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8e047123-500d-46a3-8e89-8855bda3d236', '60265e21-12f3-4380-9af3-0ede93a7442d', 6, 'Gradually whisk in beer, beef stock, and a spoonful of chopped tomato, then simmer the sauce for about ten minutes, until it thickens slightly and turns a deep amber color.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('3c95aa23-394c-4122-8885-094254b70dab', '60265e21-12f3-4380-9af3-0ede93a7442d', 7, 'Season the sauce with a little chili for heat and adjust the salt to taste.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b70bbd95-d707-40fa-a054-b11a1d0357da', '60265e21-12f3-4380-9af3-0ede93a7442d', 8, 'Place the cheese covered sandwich under a hot grill or broiler for about four minutes, until the cheese melts completely and turns bubbly and golden in spots.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2b59494f-b791-47a7-be03-57aee0b6f0db', '60265e21-12f3-4380-9af3-0ede93a7442d', 9, 'Set the sandwich on a plate, pour the hot beer sauce generously over the top, and serve immediately with a portion of French fries alongside.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '60265e21-12f3-4380-9af3-0ede93a7442d', "id" FROM "tags" WHERE "name" = 'region:Norte'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '60265e21-12f3-4380-9af3-0ede93a7442d', "id" FROM "tags" WHERE "name" = 'state:Porto'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '60265e21-12f3-4380-9af3-0ede93a7442d', "id" FROM "tags" WHERE "name" = 'country:Portugal'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('99b86110-c8f9-4fb0-8b1e-72925eb0ec6d', 'region:Eastern Jamaica', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('8a93d205-d0ec-48a7-bf42-0810e167b4a5', 'state:Portland', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c9201b06-792c-4de8-804c-52b1d84ee4b5', 'country:Jamaica', 'country') ON CONFLICT ("name") DO NOTHING;

-- Portland Jerk Chicken (Portland, Jamaica)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('ab26117e-c675-4f64-901e-f8bb4fa92f9f', 'portland-jerk-chicken-portland-jamaica', 'Portland Jerk Chicken', NULL, 'north_america'::"Continent", 'Jamaica', 'Portland', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('2632fc3c-7f5c-4d3c-af4a-a1194712b605', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 0, NULL, 'Chicken thighs') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c2731e9f-b57b-43cb-aa35-d743c70a3da3', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 1, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7cadc2c1-bcc0-4a85-8a1a-f9a859748067', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 2, NULL, 'Green onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('03f6fa75-be7e-409b-82ea-6aadf97a7f47', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 3, NULL, 'Allspice berries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4365f1af-9001-45c0-b84d-8fa40f20cce7', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 4, NULL, 'Thyme') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e4b7da7b-0f27-47db-89f9-757fb1b0566b', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 5, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('f64ca299-e829-4936-8d26-6d0987a03ca7', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 6, NULL, 'Ginger') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c7e97c9f-c40f-4283-864b-335580687568', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 7, NULL, 'Soy sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('b094c0aa-9403-4827-a217-83cb8ccad52d', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 8, NULL, 'Brown sugar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('55e89974-6aa0-449e-a10e-151929cbf685', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 9, NULL, 'Lime juice') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('e91ac6ec-7aff-490a-a9b1-e67b3430bd99', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 10, NULL, 'Cooking oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ff8129f3-2836-48cb-8aab-5b259afc4815', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 1, 'Blend scotch bonnet pepper, green onion, allspice berries, thyme, garlic, and ginger with soy sauce, brown sugar, lime juice, and a little oil into a thick, fragrant marinade.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('37a24963-d3ef-467c-a2ca-7029cfc0f3fa', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 2, 'Score the chicken thighs lightly with a few shallow cuts to help the marinade penetrate.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b130ab71-29f2-4528-9a16-ec06c2592ab8', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 3, 'Rub the marinade generously over the chicken, working it into every crevice, then cover and refrigerate for at least four hours, or overnight for the deepest flavor.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ffff8e52-f5ac-4396-bf8d-3ef98ff66add', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 4, 'Prepare a charcoal or wood fire and let it burn down until the coals are covered in gray ash and glow steadily.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('538c2f48-5385-4cbf-b76c-6fdeea6ecc55', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 5, 'Place the chicken skin side down over indirect heat, away from the direct flame, and close the grill lid.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c7494b0c-6065-41ff-82a7-ec948d469854', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 6, 'Cook for about twenty five minutes, then flip the chicken and cook for another twenty five minutes, until the internal temperature reaches a safe level and the juices run clear.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed3709bb-c4be-4b5a-9eff-9e59d9bc319d', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 7, 'During the last ten minutes, move the chicken briefly over direct heat to char the skin, turning frequently to avoid burning.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('881f92c1-21c4-4767-8c6a-ce379b955fd2', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 8, 'Let the chicken rest for about five minutes off the heat so the juices redistribute.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ab05841f-61e2-4f55-9e07-7bcb9e71d6cd', 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', 9, 'Chop the chicken into pieces with a cleaver, as street vendors traditionally do on a wooden board, and serve with festival bread or rice and peas.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', "id" FROM "tags" WHERE "name" = 'region:Eastern Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', "id" FROM "tags" WHERE "name" = 'state:Portland'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'ab26117e-c675-4f64-901e-f8bb4fa92f9f', "id" FROM "tags" WHERE "name" = 'country:Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('1e258f31-7107-4f0a-963f-bb830cd33145', 'region:Southeastern Jamaica', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('d1c4fb3a-d53e-4e26-a826-988bc6ad5881', 'state:Kingston and Saint Andrew', 'state') ON CONFLICT ("name") DO NOTHING;

-- Kingston Ackee and Saltfish (Kingston and Saint Andrew, Jamaica)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('db5b629c-3b0c-4a71-97ff-89cef802172a', 'kingston-ackee-and-saltfish-kingston-and-saint-andrew-jamaica', 'Kingston Ackee and Saltfish', NULL, 'north_america'::"Continent", 'Jamaica', 'Kingston and Saint Andrew', 'vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('14c47cd3-4428-4dec-bd44-0dcbe2e8a42a', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 0, NULL, 'Salted codfish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bbf57eec-091f-4805-9ae2-8dcb60a3afc0', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 1, NULL, 'Ackee') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('425e1a44-6d4b-41b2-b4dc-902045ec9d4d', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 2, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('95dfccea-3f8e-4d31-a4e4-87c29ca45a24', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 3, NULL, 'Tomato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('91fe5049-d2d4-46ff-a088-cc624d72b0c3', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 4, NULL, 'Bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('32523011-6ac2-4277-900b-35c8f374be01', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 5, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d904fb2f-65ea-4a9b-a4f5-c49dfdc3a4de', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 6, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('3fbae43f-6fb2-40af-9695-93f8d49bf9f7', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 7, NULL, 'Thyme') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a1cb8e46-65f1-40f5-85ea-b7745888bb3e', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 8, NULL, 'Cooking oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('dbdb788f-bf8d-4390-a38e-1bcbf0f7cd86', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 9, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('9e0d36de-664a-4518-8970-43d77b75e566', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 1, 'Soak the salted codfish in cold water for several hours, changing the water two or three times, until much of the excess salt has drawn out.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('28e3c9f4-449a-4bcb-9f44-ec77688c9f76', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 2, 'Drain the fish and simmer it in fresh water for about fifteen minutes, until tender, then drain again, let it cool, and flake it into small pieces, discarding any bones or skin.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('988835b7-f8ad-43ac-a1e6-c31de848db7a', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 3, 'If using fresh ackee, carefully remove the arils from the pods and boil them gently in salted water for about five minutes, then drain very gently, since the flesh is delicate and breaks apart easily.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('696a2fad-1b8f-4446-93ef-3976ef05038e', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 4, 'Heat oil in a large skillet over medium heat and sauté chopped onion, bell pepper, and garlic for about five minutes, until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('044f43a8-f2a9-45ff-bdcc-77369092c12f', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 5, 'Add chopped tomato, thyme, and a whole scotch bonnet pepper, being careful not to burst it, and cook for about four minutes, until the tomato softens.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('6ec0cd4a-4490-4e21-a410-cf8cee72b73d', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 6, 'Stir in the flaked saltfish and cook for three more minutes, allowing the flavors to combine.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7ac5d2a2-d1c2-4821-bdfe-9d07eae9bff2', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 7, 'Gently fold in the cooked ackee, taking care to stir minimally so the delicate pieces stay mostly intact.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('702aa632-adfc-476b-ad24-38d23b5fd7c4', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 8, 'Cook for another three minutes, just until everything is heated through, then remove the scotch bonnet pepper before serving.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ed2ba2e3-cd7c-46f4-ab55-c0cb8856358a', 'db5b629c-3b0c-4a71-97ff-89cef802172a', 9, 'Season with black pepper to taste and serve warm alongside fried dumplings or boiled green banana.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'db5b629c-3b0c-4a71-97ff-89cef802172a', "id" FROM "tags" WHERE "name" = 'region:Southeastern Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'db5b629c-3b0c-4a71-97ff-89cef802172a', "id" FROM "tags" WHERE "name" = 'state:Kingston and Saint Andrew'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'db5b629c-3b0c-4a71-97ff-89cef802172a', "id" FROM "tags" WHERE "name" = 'country:Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('30f690de-34f3-40f0-99bd-48bcd90b9b66', 'region:Southwestern Jamaica', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('c6308baf-8efb-4edb-8e0f-965d80f5078e', 'state:Saint Elizabeth', 'state') ON CONFLICT ("name") DO NOTHING;

-- Saint Elizabeth Escovitch Fish (Saint Elizabeth, Jamaica)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('a54ae204-0019-476f-a36b-516716d26a05', 'saint-elizabeth-escovitch-fish-saint-elizabeth-jamaica', 'Saint Elizabeth Escovitch Fish', NULL, 'north_america'::"Continent", 'Jamaica', 'Saint Elizabeth', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('606868a7-f0d5-41a6-aebd-2b2da081d382', 'a54ae204-0019-476f-a36b-516716d26a05', 0, NULL, 'Whole fish') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('aaedda5b-200f-48ac-92be-62852e1d7f80', 'a54ae204-0019-476f-a36b-516716d26a05', 1, NULL, 'Carrot') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bade15cf-c3f4-4103-97f0-ecf053ae0712', 'a54ae204-0019-476f-a36b-516716d26a05', 2, NULL, 'Bell pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5e61ebbd-dce7-4614-bce4-7d44057c4748', 'a54ae204-0019-476f-a36b-516716d26a05', 3, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a8e9f0a8-2672-457a-85b7-a770afdf0cd8', 'a54ae204-0019-476f-a36b-516716d26a05', 4, NULL, 'Scotch bonnet pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a7d2a0a-18ec-4373-9651-550716995de2', 'a54ae204-0019-476f-a36b-516716d26a05', 5, NULL, 'White vinegar') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8b2c138a-4a69-4d2b-95fb-de835e3ac349', 'a54ae204-0019-476f-a36b-516716d26a05', 6, NULL, 'Allspice berries') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('490afe09-0886-4a3b-a0db-a505971ec6a7', 'a54ae204-0019-476f-a36b-516716d26a05', 7, NULL, 'Garlic') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('7c192528-fd0e-477b-aeb7-f1826cb3c560', 'a54ae204-0019-476f-a36b-516716d26a05', 8, NULL, 'Cooking oil') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('761e1151-9241-4d4b-9504-5a55dc07b35e', 'a54ae204-0019-476f-a36b-516716d26a05', 9, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2030ecb0-8c48-4dbc-86ea-5ebe92d57719', 'a54ae204-0019-476f-a36b-516716d26a05', 1, 'Clean and score the whole fish with a few diagonal cuts on each side to help it cook evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('12549ce1-c819-4f8b-86ff-7a5d3f66f986', 'a54ae204-0019-476f-a36b-516716d26a05', 2, 'Season the fish generously with salt, pepper, and crushed garlic, then let it sit for about twenty minutes.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('776a388b-a604-4699-a655-537b47e3d70a', 'a54ae204-0019-476f-a36b-516716d26a05', 3, 'Dust the fish lightly with flour and fry it in hot oil for about six minutes per side, until the skin is crisp and deep golden brown and the flesh flakes easily.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('09c057f6-3310-4b83-945f-cafc3323d4ad', 'a54ae204-0019-476f-a36b-516716d26a05', 4, 'Drain the fried fish on paper towels and set it aside on a serving platter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('b1e94a18-be3e-40bb-81fa-06519d3f9e52', 'a54ae204-0019-476f-a36b-516716d26a05', 5, 'In a separate pan, combine white vinegar, sliced carrot, sliced bell pepper, sliced onion, sliced scotch bonnet pepper, and allspice berries.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('87d391b9-7b0a-4b96-a2fe-787ccd38922b', 'a54ae204-0019-476f-a36b-516716d26a05', 6, 'Bring the mixture to a brief boil, then reduce the heat and simmer for about five minutes, until the vegetables soften slightly but still keep some crunch.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0da98272-ab06-4f6e-b6e1-90485960a105', 'a54ae204-0019-476f-a36b-516716d26a05', 7, 'Season the pickling liquid with a little salt and sugar to balance the sharpness of the vinegar.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('be15134c-8bad-45a6-a3b6-1a992d30d95b', 'a54ae204-0019-476f-a36b-516716d26a05', 8, 'Pour the hot pickled vegetables and liquid generously over the fried fish while both are still warm.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('8073ad29-2305-47c4-a9f5-175aa6db20ef', 'a54ae204-0019-476f-a36b-516716d26a05', 9, 'Let the dish sit for at least fifteen minutes before serving so the flavors meld, as is traditional from roadside stalls along the coast.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a54ae204-0019-476f-a36b-516716d26a05', "id" FROM "tags" WHERE "name" = 'region:Southwestern Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a54ae204-0019-476f-a36b-516716d26a05', "id" FROM "tags" WHERE "name" = 'state:Saint Elizabeth'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'a54ae204-0019-476f-a36b-516716d26a05', "id" FROM "tags" WHERE "name" = 'country:Jamaica'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('67b221c7-e42e-4455-9f1f-8609f0fdf72d', 'region:North Island', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('0d601068-de6c-41f5-a30a-83d96f23ac21', 'state:Bay of Plenty', 'state') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('f34016a5-b5c5-4d95-a5cf-5aa1c6c7e2e8', 'country:New Zealand', 'country') ON CONFLICT ("name") DO NOTHING;

-- Rotorua Hangi (Bay of Plenty, New Zealand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('509b7c63-375f-46c0-b993-7326e688c6f0', 'rotorua-hangi-bay-of-plenty-new-zealand', 'Rotorua Hangi', NULL, 'oceania'::"Continent", 'New Zealand', 'Bay of Plenty', 'non_vegetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('09632b1c-93a1-44ac-9021-5c0715234d5e', '509b7c63-375f-46c0-b993-7326e688c6f0', 0, NULL, 'Pork') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('73b9dd5a-1a29-467a-83a1-4c066bd3033a', '509b7c63-375f-46c0-b993-7326e688c6f0', 1, NULL, 'Chicken') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('37a04114-fabe-491f-a1d8-e3689e0b5246', '509b7c63-375f-46c0-b993-7326e688c6f0', 2, NULL, 'Lamb') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('21b4ab86-03cd-425b-9a29-576f94cba301', '509b7c63-375f-46c0-b993-7326e688c6f0', 3, NULL, 'Potato') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('94dc0248-6b91-4c5a-a700-9152250c0231', '509b7c63-375f-46c0-b993-7326e688c6f0', 4, NULL, 'Kumara') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('72606f8a-a783-4dec-b142-2d6f7ad7b17e', '509b7c63-375f-46c0-b993-7326e688c6f0', 5, NULL, 'Pumpkin') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('cfa71439-17c9-4edf-b7f4-918e3c9f7467', '509b7c63-375f-46c0-b993-7326e688c6f0', 6, NULL, 'Cabbage') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ea8d5291-6828-4330-907e-4245f9e94b99', '509b7c63-375f-46c0-b993-7326e688c6f0', 7, NULL, 'Water') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('dbea6871-79fc-43e2-8497-6fad72042daf', '509b7c63-375f-46c0-b993-7326e688c6f0', 1, 'Dig a pit in the ground and build a large wood fire inside it, then place a layer of river stones on top and let the fire burn for about two hours, until the stones are extremely hot and the flames have died down to embers.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('7f45277b-8062-42bd-b4c1-e2a42dabc26f', '509b7c63-375f-46c0-b993-7326e688c6f0', 2, 'Carefully rake away the embers and lower a large wire basket or wrapped bundles of meat directly onto the hot stones.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ce322841-8917-4b09-9c96-07b3d6885073', '509b7c63-375f-46c0-b993-7326e688c6f0', 3, 'Layer the pork, chicken, and lamb in the basket, followed by whole potatoes, kumara, pumpkin, and cabbage arranged around and above the meat.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('487197f6-2cd4-41de-807b-f607aa449ba6', '509b7c63-375f-46c0-b993-7326e688c6f0', 4, 'Cover the food completely with wet cloths or leaves to trap steam and protect it from direct dirt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('de6822f2-82ef-47f2-a990-06b3c4a98b2e', '509b7c63-375f-46c0-b993-7326e688c6f0', 5, 'Shovel the excavated earth back over the covered basket, sealing the pit completely so no steam can escape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('00e496a6-046b-4b58-9d1e-eea5a1470b39', '509b7c63-375f-46c0-b993-7326e688c6f0', 6, 'Leave the hangi to cook undisturbed underground for about three to four hours, relying entirely on the trapped heat and steam from the hot stones.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('53996c82-f8d8-4a00-9a55-c9e1eb98c243', '509b7c63-375f-46c0-b993-7326e688c6f0', 7, 'Carefully dig away the earth and lift out the covering cloths once the cooking time has passed, taking care of the rising steam.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c88dba59-db88-401a-a5b2-e69b918cfcd8', '509b7c63-375f-46c0-b993-7326e688c6f0', 8, 'Lift the basket out and check that the meat is fully tender and the vegetables are soft all the way through.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e286cf6c-d76c-443f-9860-2eedc485f3ce', '509b7c63-375f-46c0-b993-7326e688c6f0', 9, 'Arrange the meat and vegetables on large platters and serve immediately while everything is still steaming hot, in the traditional communal style.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '509b7c63-375f-46c0-b993-7326e688c6f0', "id" FROM "tags" WHERE "name" = 'region:North Island'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '509b7c63-375f-46c0-b993-7326e688c6f0', "id" FROM "tags" WHERE "name" = 'state:Bay of Plenty'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '509b7c63-375f-46c0-b993-7326e688c6f0', "id" FROM "tags" WHERE "name" = 'country:New Zealand'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('440f6cf5-d75e-40c0-b125-45aafbddc508', 'region:South Island', 'region') ON CONFLICT ("name") DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('cb2f07fe-6b7d-428f-8be5-a6ea624c2814', 'state:Canterbury', 'state') ON CONFLICT ("name") DO NOTHING;

-- Canterbury Whitebait Fritters (Canterbury, New Zealand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 'canterbury-whitebait-fritters-canterbury-new-zealand', 'Canterbury Whitebait Fritters', NULL, 'oceania'::"Continent", 'New Zealand', 'Canterbury', 'eggetarian'::"Diet", false, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('8586b569-5407-4a05-829c-e642373a5e85', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 0, NULL, 'Whitebait') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('34b3098f-d62b-4d1a-b413-44009b64e44a', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 1, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fd91ea48-a9b9-467f-a8a2-1cc6e14a489c', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 2, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('bab60b8b-10fd-48ea-a084-1c6e0c3d2b70', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 3, NULL, 'Butter') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('fee75dc6-c732-4857-9f78-249cc2d6e190', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 4, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('4a9348d4-2a9e-4d6c-89e6-7e5ef90c7908', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 5, NULL, 'Lemon') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('5183f34e-cc78-4a03-bdb4-aca3031293cc', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 6, NULL, 'Parsley') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('0e022e71-b67b-4212-bb71-666420d4df23', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 1, 'Rinse the whitebait gently in cold water and drain them well in a colander, taking care not to break the delicate little fish apart.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('a9c2b0b5-b6fe-4a6b-b454-66f69727208e', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 2, 'Beat eggs in a large bowl until well combined, then season lightly with salt.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('5f4be1e1-764c-4905-8259-e1b64ac19f1f', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 3, 'Fold the whitebait directly into the beaten egg, along with a small amount of flour, just enough to lightly bind the mixture without turning it into a thick batter.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('62cd5866-8b19-4029-97bd-5c31985e89c5', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 4, 'Stir in a little chopped parsley for freshness.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('ad9add5d-05fb-4018-8e1d-d5b5e46dd8c5', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 5, 'Heat butter in a wide frying pan over medium heat until it foams and turns lightly golden.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2861124e-825c-47ec-8714-8ff457207f1b', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 6, 'Spoon portions of the whitebait mixture into the pan, flattening each into a small round patty.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('4cb4c749-cce8-4d3d-bcf2-c2ab9a141de8', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 7, 'Fry the fritters for about two minutes per side, until the edges turn golden and slightly crisp while the center stays tender.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('92476a03-08ee-4f29-9dc2-5102d12694fa', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 8, 'Transfer the cooked fritters to a plate lined with paper towel to drain briefly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('88d9785a-f80d-467b-9151-7c81e2468ca9', 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', 9, 'Serve the fritters warm with a generous squeeze of fresh lemon juice over the top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', "id" FROM "tags" WHERE "name" = 'region:South Island'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', "id" FROM "tags" WHERE "name" = 'state:Canterbury'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT 'e7c3ea05-fad0-4ea9-b766-ef85b7202a14', "id" FROM "tags" WHERE "name" = 'country:New Zealand'
ON CONFLICT DO NOTHING;
INSERT INTO "tags" ("id","name","kind") VALUES ('09e16195-5d32-4704-ba0a-dfde3a86b8ab', 'state:Wellington', 'state') ON CONFLICT ("name") DO NOTHING;

-- Wellington Mince and Cheese Pie (Wellington, New Zealand)
INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")
VALUES ('3de68466-def2-4006-8ec0-81214be4ddc7', 'wellington-mince-and-cheese-pie-wellington-new-zealand', 'Wellington Mince and Cheese Pie', NULL, 'oceania'::"Continent", 'New Zealand', 'Wellington', 'non_vegetarian'::"Diet", true, 'medium'::"Difficulty", '/images/placeholder-dish.svg', NULL, 'Internet', 0, 0, '2026-09-13T15:15:36.931Z', '2026-09-13T15:15:36.931Z')
ON CONFLICT ("slug") DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('d5788e01-2683-4c1e-8e5f-5c279afd51cb', '3de68466-def2-4006-8ec0-81214be4ddc7', 0, NULL, 'Ground beef') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c0ac47e6-da10-4c27-8c80-2804f89628ab', '3de68466-def2-4006-8ec0-81214be4ddc7', 1, NULL, 'Onion') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('60969c0a-239d-4f5f-8cb2-6e36230958ad', '3de68466-def2-4006-8ec0-81214be4ddc7', 2, NULL, 'Beef stock') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c3c9ac9a-00d0-4fac-a778-8ed87d3f427b', '3de68466-def2-4006-8ec0-81214be4ddc7', 3, NULL, 'Flour') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('90d49a45-6c2e-49ea-aa76-fb298235e6fb', '3de68466-def2-4006-8ec0-81214be4ddc7', 4, NULL, 'Tomato paste') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('1aa557f3-01cf-4e29-8ecf-5aa54b8bbef0', '3de68466-def2-4006-8ec0-81214be4ddc7', 5, NULL, 'Worcestershire sauce') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('9f3bc9be-56b7-41b2-b91f-fb5130a04c8d', '3de68466-def2-4006-8ec0-81214be4ddc7', 6, NULL, 'Puff pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('c8581858-3d40-4592-be2f-1146c90406fa', '3de68466-def2-4006-8ec0-81214be4ddc7', 7, NULL, 'Shortcrust pastry') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ad1f59df-bfac-4d28-80c4-f2e96fd82975', '3de68466-def2-4006-8ec0-81214be4ddc7', 8, NULL, 'Cheese') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('a819839c-f438-4e14-9014-d77fe4bf8a39', '3de68466-def2-4006-8ec0-81214be4ddc7', 9, NULL, 'Egg') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('ff158647-08e0-4208-b6d2-6f4a660a1aa7', '3de68466-def2-4006-8ec0-81214be4ddc7', 10, NULL, 'Salt') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES ('746a72ff-ac56-4e00-a9d4-ade0f640c7e1', '3de68466-def2-4006-8ec0-81214be4ddc7', 11, NULL, 'Black pepper') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('c64fd2d7-f690-4545-814a-1e5bff20554c', '3de68466-def2-4006-8ec0-81214be4ddc7', 1, 'Cook chopped onion in a large pan with a little oil over medium heat for about five minutes, until softened.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('2f5c5a18-f229-4bcc-b6a0-3d319f506ef0', '3de68466-def2-4006-8ec0-81214be4ddc7', 2, 'Add the ground beef and cook for about eight minutes, breaking it apart with a spoon, until browned all over.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('f8ad4393-139c-44cb-a0ea-a6b6746cebe5', '3de68466-def2-4006-8ec0-81214be4ddc7', 3, 'Stir in tomato paste and Worcestershire sauce and cook for one minute, until the paste darkens slightly and smells rich.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('43ff5614-982b-43c1-b574-affbcab99e29', '3de68466-def2-4006-8ec0-81214be4ddc7', 4, 'Sprinkle flour over the mixture and stir well to coat the meat evenly.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('e2157ec4-802f-45aa-a7aa-0306321b2ce9', '3de68466-def2-4006-8ec0-81214be4ddc7', 5, 'Pour in beef stock gradually, stirring constantly, and simmer the filling for about fifteen minutes, until it thickens into a thick, glossy gravy that holds its shape.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('22d75928-cd1c-4668-ad38-0e0f9f65f7e3', '3de68466-def2-4006-8ec0-81214be4ddc7', 6, 'Season with salt and pepper, then remove the filling from the heat and let it cool completely before assembling the pies.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('33fccf0b-3c70-4d22-bb22-418cc9926274', '3de68466-def2-4006-8ec0-81214be4ddc7', 7, 'Line individual pie tins with shortcrust pastry, pressing it firmly into the base and up the sides.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('56970818-8ca6-4d20-9b73-4d44e503878e', '3de68466-def2-4006-8ec0-81214be4ddc7', 8, 'Fill each pastry case generously with the cooled mince filling and scatter a layer of grated cheese over the top.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES ('374d7868-a5e8-4924-9799-97dd525e2220', '3de68466-def2-4006-8ec0-81214be4ddc7', 9, 'Cover each pie with a puff pastry lid, seal and trim the edges, brush the top with beaten egg, and bake in a hot oven at around two hundred degrees Celsius for about twenty five minutes, until the pastry is puffed and deep golden brown.') ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3de68466-def2-4006-8ec0-81214be4ddc7', "id" FROM "tags" WHERE "name" = 'region:North Island'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3de68466-def2-4006-8ec0-81214be4ddc7', "id" FROM "tags" WHERE "name" = 'state:Wellington'
ON CONFLICT DO NOTHING;
INSERT INTO "recipe_tags" ("recipeId","tagId")
SELECT '3de68466-def2-4006-8ec0-81214be4ddc7', "id" FROM "tags" WHERE "name" = 'country:New Zealand'
ON CONFLICT DO NOTHING;

COMMIT;
