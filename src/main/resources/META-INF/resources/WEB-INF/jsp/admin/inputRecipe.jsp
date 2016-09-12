<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title> </title>
</head>
<body>


<%--<form action="/admin/saveNewRecipe.jsp">--%>





<form id="newRecipeForm"  method="POST" action="/admin/saveNewRecipe2">
    <h2>name of recipe here</h2>
    <textarea rows="1" cols="20"> </textarea>
    <p>Meats you would like to add to your recipe:</p>
        <input type="checkbox" name="TURKEY" value="TURKEY"> Turkey
        <input type="checkbox" name="BEEF" value="BEEF"> Beef
        <input type="checkbox" name="PORK" value="PORK"> Pork <br>
        <input type="checkbox" name="CHICKEN" value="CHICKEN"> Chicken
        <input type="checkbox" name="SAUSAGE" value="SAUSAGE"> Sausage
        <input type="checkbox" name="FRANKS" value="FRANKS"> Franks<br>
        <input type="checkbox" name="HAM" value="HAM"> Ham
    <br><br>
    <p>Vegatables that you would like to add to your recipe:</p>
    <input type="checkbox" name="ONIONS" value="ONIONS"> Onions
    <input type="checkbox" name="TOMATOES" value="TOMATOES"> Tomatoes
    <input type="checkbox" name="CHEERY_TOMATOES" value="CHERRY_TOMATOES"> Cherry Tomatoes<br>
    <input type="checkbox" name="POTATOES" value="POTATOES"> Potatoes
    <input type="checkbox" name="GARLIC" value="GARLIC"> Garlic
    <input type="checkbox" name="GREEN_PEPPERS" value="GREEN_PEPPERS"> Green Peppers<br>
    <input type="checkbox" name="BELL_PEPPERS" value="BELL_PEPPERS"> Bell Peppers
    <input type="checkbox" name="BANANA_PEPPERS" value="BANANA_PEPPERS"> Banana Peppers
    <input type="checkbox" name="SUMMER_SQUASH" value="SUMMER_SQUASH"> Spaghetti Squash<br>
    <input type="checkbox" name="BUTTERNUT_SQUASH" value="BUTTERNUT_SQUASH"> Butternut Squash
    <input type="checkbox" name="PUMPKIN" value="PUMPKIN"> Pumpkin
    <input type="checkbox" name="BROCCOLI" value="BROCCOLI"> Broccoli <br>
    <input type="checkbox" name="BEANS" value="BEANS"> Beans
    <input type="checkbox" name="GREEN_BEANS" value="GREEN_BEANS"> Green Beans
    <input type="checkbox" name="CARROTS" value="CARROTS"> Carrots <br>
    <input type="checkbox" name="ASPEARAGUS" value="ASPEARAGUS"> Aspearagus
    <input type="checkbox" name="BRUSSELL_SPROUTS" value="BRUSSELL_SPROUTS"> Brussel Sprouts
    <input type="checkbox" name="ZUCCINI" value="ZUCINNI"> Zucinni<br>
    <input type="checkbox" name="LETTUCE" value="LETTUCE"> Lettuce
    <input type="checkbox" name="BEETS" value="BEETS"> Beets
    <input type="checkbox" name="PEAS" value="PEAS"> Peas<br>
    <input type="checkbox" name="MUSHROOMS" value="MUSHROOMS"> Mushrooms
    <input type="checkbox" name="SPAGHETTI_SQUASH" value="SPAGHETTI_SQUASH"> Spaghetti Squash
    <input type="checkbox" name="CORN" value="CORN"> Corn<br>
    <input type="checkbox" name="SWEET_POTATOES" value="SWEET_POTATOES"> Sweet Potatoes
    <br><br>
    <p> Fruit that you would like to add to your Recipe:</p>
    <input type="checkbox" name="APPLES" value="APPLES"> Apples
    <input type="checkbox" name="ORANGES" value="ORANGES"> Oranges
    <input type="checkbox" name="STRAWBERRIES" value="STRAWBERRIES"> Strawberries<br>
    <input type="checkbox" name="RASPBERRIES" value="RASPBERRIES"> Raspberries
    <input type="checkbox" name="WATERMELON" value="WATERMELON"> Watermelon
    <input type="checkbox" name="BLUEBERRIES" value="BLACKBERRIES"> Blackberries<br>
    <input type="checkbox" name="GRAPES" value="GRAPES"> Grapes
    <input type="checkbox" name="CRANBERRIES" value="CRANBERRIES"> Cranberries
    <input type="checkbox" name="PINEAPPLE" value="PINEAPPLE"> Pineapple<br>
    <input type="checkbox" name="COCONUT" value="COCONUT"> Coconut
    <input type="checkbox" name="MANGO" value="MANGO"> Mango
    <input type="checkbox" name="PEARS" value="PEARS"> Pears<br>
    <input type="checkbox" name="PEACHES" value="PEACHES"> Peaches
    <input type="checkbox" name="CANTELOUPE" value="CANTELOUPE"> Canteloupe
    <input type="checkbox" name="GRAPEFRUIT" value="GRAPEFRUIT"> Grapefruit<br>
    <input type="checkbox" name="BANANA" value="BANANA"> Banana
    <input type="checkbox" name="AVACADOS" value="AVACADOS"> Avacados
    <input type="checkbox" name="KIWI" value="KIWI"> Kiwi<br>
    <br><br>
    <p>Fish that you would like to add to your recipe</p>
    <input type="checkbox" name="TUNA" value="TUNA"> Tuna
    <input type="checkbox" name="SALMON" value="SALMON"> Salmon
    <input type="checkbox" name="SQUID" value="SQUID"> Squid<br>
    <input type="checkbox" name="OCTOPUS" value="OCTOPUS"> Octopus
    <input type="checkbox" name="CRAB" value="CRAB"> Crab
    <input type="checkbox" name="COD" value="COD"> Cod<br>
    <input type="checkbox" name="TROUT" value="TROUT"> Trout

    <br><br>
    <p>Seasonings that you would like to add to your Recipe</p>
    <input type="checkbox" name="CINNAMON" value="CINNAMON"> Cinnamon
    <input type="checkbox" name="PAPRIKA" value="PAPRIKA"> Paprika
    <input type="checkbox" name="TURMERIC" value="TUMERIC"> Tumeric<br>
    <input type="checkbox" name="GINGER" value="GINGER"> Ginger
    <input type="checkbox" name="NUTMEG" value="NUTMEG"> Nutmeg
    <input type="checkbox" name="TARMORIND" value="TARMORIND"> Tarmorind<br>
    <input type="checkbox" name="CUMIN" value="CUMIN"> Cumin
    <input type="checkbox" name="OREGANO" value="OREGANO"> Oregano
    <input type="checkbox" name="CORDAMON" value="CORDAMON"> Cordamon<br>
    <input type="checkbox" name="SALT" value="SALT"> Salt
    <input type="checkbox" name="PEPPER" value="PEPPER"> Pepper
    <input type="checkbox" name="CLOVES" value="CLOVES"> Cloves<br>
    <input type="checkbox" name="CHILI_POWDER" value="CHILI_POWDER"> Chili Powder
    <br><br>
    <p>Grains that you would like to add to your recipe</p>
    <input type="checkbox" name="SPAGHETTI" value="SPAGHETTI"> Spaghetti
    <input type="checkbox" name="TORTELLINI" value="TORTELLINI"> Tortellini
    <input type="checkbox" name="SHELL" value="SHELL"> Shell<br>
    <input type="checkbox" name="MACARONI" value="MACARONI"> Macaroni
    <input type="checkbox" name="LASAGNA" value="LASAGNA"> Lasagna
    <input type="checkbox" name="PENNE" value="PENNE"> Penne<br>
    <input type="checkbox" name="LINGUINI" value="LINGUINI"> Linguini
    <input type="checkbox" name="FORFALLI" value="FORFALLI"> Forfalli
    <input type="checkbox" name="ANGEL_HAIR" value="ANGEL_HAIR"> Angel Hair<br>
    <input type="checkbox" name="WHITE_BREAD" value="WHITE_BREAD"> White Bread
    <input type="checkbox" name="RYE" value="RYE"> Rye
    <input type="checkbox" name="SOUR_DOUGH" value="SOUR_DOUGH"> Sour Dough<br>
    <input type="checkbox" name="CORN_BREAD" value="CORN_BREAD"> Corn Bread
    <input type="checkbox" name="WHITE_RICE" value="WHITE_RICE"> White Rice
    <input type="checkbox" name="BROWN_RICE" value="BROWN_RICE"> Brown Rice<br>
    <input type="checkbox" name="JASMINE" value="JASMINE"> Jasmine
    <input type="checkbox" name="WHITE_FLOUR" value="WHITE_FLOUR"> White Flour
    <input type="checkbox" name="COCONUT_FLOUR" value="COCONUT_FLOUR"> Coconut Flour<br>
    <input type="checkbox" name="WHITE_TORTILLA" value="WHITE_TORTILLA"> White Tortilla
    <input type="checkbox" name="WHEAT_TORTILLA" value="WHEAT_TORTILLA"> Wheat Tortilla
    <input type="checkbox" name="CORN_TORTILLA" value="CORN_TORTILLA"> Corn Tortilla<br>
    <input type="checkbox" name="OATS" value="OATS"> Oats
    <input type="checkbox" name="WHEAT_BREAD" value="WHEAT_BREAD"> Wheat Bread
    <input type="checkbox" name="WHEAT_FLOUR" value="WHEAT_FLOUR"> Wheat Flour
    <br><br>
    <p>Dairy products that you would like to add to your Recipe</p>
    <input type="checkbox" name="CHOCOLATE_MILK" value="CHOCOLATE_MILK"> Chocolate Milk
    <input type="checkbox" name="MILK" value="MILK"> Milk
    <input type="checkbox" name="BLOCK_CHEESE" value="BLOCK_CHEESE"> Block of Cheese<br>
    <input type="checkbox" name="SHREDDED_CHEESE" value="SHREDDED_CHEESE"> Shredded Cheese
    <input type="checkbox" name="YOGURT" value="YOGURT"> Yogurt
    <input type="checkbox" name="COTTAGE_CHEESE" value="COTTAGE_CHEESE"> Cottage Cheese<br>
    <input type="checkbox" name="CREAM_CHEESE" value="CREAM_CHEESE"> Cream Cheese
    <input type="checkbox" name="SOUR_CREAM" value="SOUR_CREAM"> Sour Cream
    <input type="checkbox" name="EGGS" value="EGGS"> Eggs
    <br>
    <br>







    <br>
<p>Directions for Recipe</p><br>
    <textarea rows="14" cols="40">
    Cooktime:
    Ingredients:

    Directions:


    </textarea>


    <br>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit">
    </form>





<%--</form>--%>

</body>
</html>