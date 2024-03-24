/** First we created schema ecommerce by right click in schema naigator and adding it and then importing the csv file by right click on ecommerce schema and clicking table wizard option and browsing the file path and importing it.**/
Use ecommerce;
/**3**/ Desc users_data;
/**4**/ Select * From users_data LIMIT 100;
/**5**/ SELECT COUNT(DISTINCT COUNTRY), COUNT(DISTINCT LANGUAGE) FROM users_data;
/**6**/ 
Select SUM(gender='M') MaleFollowers , SUM(gender='F') FemaleFollowers From users_data ;
/**7**/ SELECT  COUNT(hasProfilePicture) AS 'Use Profile Picture in their profile',  COUNT(hasAnyApp) AS 'Use any application of Ecommerce', COUNT(hasAndroidApp) AS ' Uses Android app', COUNT(hasIosApp) AS 'Uses IOS App'From users_data;
/**8**/ Select productsBought  From users_data WHERE productsBought!=0 Order BY 1 DESC ;
/**Q9**/Select productsSold From users_data Where productsSold!=0 ORDER BY 1 ASC;
/**10**/ SELECT country, productsPassRate From users_data ORDER BY productsPassRate DESC LIMIT 10;
/**11**/SELECT SUM(language='es'), SUM(language='fr'), SUM(language ='en'), SUM(language='it'), SUM(language='de')FROM users_data;
/**12**/SELECT 'DESCRIPTION', 'No. of units' UNION SELECT 'PRODUCTS SOCIAL LIKED', SUM(socialProductsLiked) FROM users_data WHERE gender='F' UNION SELECT 'PRODUCTS WISHLISTED', SUM(productsWished) wishlisted From users_data WHERE gender='F';
/**13**/SELECT 'Description', 'No. of people' UNION SELECT 'Sellers(Male)', COUNT(productsListed) FROM users_data WHERE gender='M' AND productsListed>0 UNION SELECT 'Buyers(Male)', COUNT(productsBought) FROM users_data Where gender='M' AND productsBought>0;
/**14**/SELECT country, COUNT(productsBought) Buyers FROM users_data WHERE productsBought>0 Group By country Order By Buyers Desc Limit 1; 
/**15**/SELECT country, COUNT(productsListed) Zerosellers From users_data Group By country Order By Zerosellers LIMIT 10;
/**16**/SELECT identifierHash, daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin LIMIT 110;
/**17**/SELECT COUNT(identifierHash) FEMALEUSERS FROM users_data Where gender='F' AND daysSinceLastLogin>100;
/**18**/ SELECT country, COUNT(identifierHash) FEMALEUSERS From users_data WHERE gender='F' GROUP By  country;
/**19**/SELECT country, COUNT(identifierHash) MALEUSERS From users_data WHERE gender='M' GROUP By  country;
/**20**/SELECT country, AVG(productsSold), AVG(productsBought) FROM users_data WHERE gender='M' Group By country;