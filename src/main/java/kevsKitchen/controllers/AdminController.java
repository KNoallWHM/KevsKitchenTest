package kevsKitchen.controllers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import kevsKitchen.entities.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping(value="/admin/")
public class AdminController {

    private final BasicIngredientsDAO basicIngredientsDAO;

    @Autowired
    public AdminController(BasicIngredientsDAO basicIngredientsDAO) {
        Assert.notNull(basicIngredientsDAO, "BasicIngredientsDAO must not be null!");
        this.basicIngredientsDAO = basicIngredientsDAO;
    }

    @RequestMapping(value = "/")
    public String allRecipes(ModelMap model) {
        Iterable<BasicIngredients> basicIngredientses = basicIngredientsDAO.findAll();
        model.addAttribute("basicIngredients", basicIngredientses);
        return "admin/viewAllRecipes";
    }

    @RequestMapping(value = "inputRecipe")
    public String addRecipe(ModelMap model) {
        model.addAttribute("basicIngredient", new BasicIngredients());
        return "admin/inputRecipe";
    }

    @RequestMapping(value = "saveNewRecipe")
    public View saveNewRecipe(ModelMap modelMap, BasicIngredients basicIngredients) {
        modelMap.addAttribute("basicIngredients", basicIngredients);
        basicIngredientsDAO.save(basicIngredients);
        return new RedirectView("/admin/viewAllRecipes");
    }

    @RequestMapping(value = "viewRecipe")
    public String viewRecipe(long id, ModelMap model) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
        model.addAttribute("basicIngredients", basicIngredients);
        return "admin/viewRecipe";
    }

    @RequestMapping(value = "deleteBasicIngredient")
    public View deleteBasicIngredient(long id) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
        basicIngredientsDAO.delete(basicIngredients);
        return new RedirectView("/admin/");
    }

    @RequestMapping(value = "saveEditedRecipe")
    public View saveEditedRecipe(BasicIngredients basicIngredients) {
        basicIngredientsDAO.save(basicIngredients);
        return new RedirectView("/admin/");
    }

    @RequestMapping("uploadRecipes")
    public String uploadRecipes() {
        return "admin/uploadQuestions";
    }

    @RequestMapping("saveUploadedRecipes")
    public View saveUploadedRecipes(MultipartFile RecipesFile) {

        String returnView = "";
        if (!RecipesFile.isEmpty()) {
            try {
                Files.write(Paths.get(RecipesFile.getOriginalFilename()), RecipesFile.getBytes());
                System.out.println("-------- File Upload Successful");
                addUploadToDatabase(RecipesFile.getOriginalFilename());
            } catch (IOException | RuntimeException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("-------- File Is EMPTY!");
        }
        return new RedirectView("/admin/");
    }


    private void addUploadToDatabase(String filePath) {
        try {
            Path IngredientsUploadedFilePath = Paths.get(filePath);
            ObjectMapper mapper = new ObjectMapper();
            List<BasicIngredients> uploadedIngredients = mapper.readValue(Files.newInputStream(IngredientsUploadedFilePath), new TypeReference<List<BasicIngredients>>() {
            });
            for (BasicIngredients uploadedingredient : uploadedIngredients) {
                BasicIngredients basicIngredients = new BasicIngredients();
                basicIngredients.setMeat(uploadedingredient.getMeat());
//                basicIngredients.setVeggies(uploadedingredient.getVeggies());
//                basicIngredients.setFruits(uploadedingredient.getFruits());
//                basicIngredients.setFish(uploadedingredient.getFish());
//                basicIngredients.setSeasonings(uploadedingredient.getSeasonings());
//                basicIngredients.setGrains(uploadedingredient.getGrains());
//                basicIngredients.setDairy(uploadedingredient.getDairy());
//                basicIngredients.setToppings(uploadedingredient.getToppings());
                basicIngredientsDAO.save(basicIngredients);

            }
        } catch (IOException ioe) {
            System.out.println("Issue reading List from JSON file");
            ioe.printStackTrace();
        }
//        try {
//            Path RecipesUploadedFilePath = Paths.get(filePath);
//            ObjectMapper mapper = new ObjectMapper();
//            List<StepByStep> uploadedRecipeDirections = mapper.readValue(Files.newInputStream(RecipesUploadedFilePath), new TypeReference<List<StepByStep>>() {
//            });
//            for (StepByStep uploadedRecipe : uploadedRecipeDirections) {
//                StepByStep stepByStep = new StepByStep();
//                stepByStep.setCookTime(uploadedRecipe.getCookTime());
//                stepByStep.setIngredients(uploadedRecipe.getIngredients());
//                stepByStep.setDirections(uploadedRecipe.getDirections());
//
//
//                stepByStepDAO.save(stepByStep);
//            }
//        } catch (IOException ioe) {
//            System.out.println("Issue reading List from JSON file");
//            ioe.printStackTrace();
//        }
    }
    // do not freakn delete!!!!!! this is how you submit your forms to the db table string meat maps to the input name meat
        @RequestMapping(value = "saveRecipe3")
        public View saveRecipe3(ModelMap model, String meat, String directions, String veggies,String fruits, String fish, String seasonings, String grains, String dairy, String nameOfRecipe ) {
          System.out.println("meat:" +meat);

            BasicIngredients test = new BasicIngredients();
            test.setMeat(BasicIngredients.Meat.valueOf(meat));
            test.setVeggies(BasicIngredients.Veggies.valueOf(veggies));
            test.setFruits(BasicIngredients.Fruits.valueOf(fruits));
            test.setFish(BasicIngredients.Fish.valueOf(fish));
            test.setSeasonings(BasicIngredients.Seasonings.valueOf(seasonings));
            test.setGrains(BasicIngredients.Grains.valueOf(grains));
            test.setDairy(BasicIngredients.Dairy.valueOf(dairy));
            test.setNameOfRecipe(nameOfRecipe);
            basicIngredientsDAO.save(test);
            return new RedirectView("/admin/");
        }

        //how you access enums
        @RequestMapping(value = "saveNewRecipe2")
        public View saveNewRecipe2 (String TURKEY, String BEEF, String PORK, String CHICKEN, String SAUSAGE, String
        FRANKS, String HAM, String ONIONS, String TOMATOES, String CHERRY_TOMATOES,
                String GARLIC, String GREEN_PEPPERS, String BELL_PEPPERS, String BANANA_PEPPERS, String
        SUMMER_SQUASH, String SPAGHETTI_SQUASH, String BUTTERNUT_SQUASH, String POTATOES,
                String PUMPKIN, String BROCCOLI, String BEANS, String GREEN_BEANS, String CARROTS, String CORN, String
        ASPEARAGUS, String BRUSSELL_SPROUTS, String ZUCCINI, String LETTUCE,
                String BEETS, String PEAS, String MUSHROOMS, String SWEET_POTATOES, String APPLES, String
        ORANGES, String STRAWBERRIES, String RASPBERRIES, String WATERMELON,
                String BLUEBERRIES, String BLACKBERRIES, String GRAPES, String CRANBERRIES, String PINEAPPLE, String
        COCONUT, String MANGO, String PEARS, String PEACHES, String CANTELOUPE,
                String GRAPEFRUIT, String BANANA, String AVACADOS, String KIWI, String TUNA, String SALMON, String
        SQUID, String OCTOPUS, String CRAB, String COD, String TROUT,
                String CINNAMON, String PAPRIKA, String TURMERIC, String GINGER, String NUTMEG, String TARMORIND, String
        CUMIN, String OREGANO, String CORDAMON, String SALT, String PEPPER,
                String CLOVES, String CHILI_POWDER, String SPAGHETTI, String TORTELLINI, String SHELL, String
        MACARONI, String LASAGNA, String PENNE, String LINGUINI, String FORFALLI, String ANGEL_HAIR,
                String WHITE_BREAD, String WHEAT_BREAD, String RYE, String SOUR_DOUGH, String CORN_BREAD, String
        WHITE_RICE, String BROWN_RICE, String JASMINE, String WHITE_FLOUR, String WHEAT_FLOUR,
                String COCONUT_FLOUR, String WHITE_TORTILLA, String WHEAT_TORTILLA, String CORN_TORTILLA, String
        OATS, String CHOCOLATE_MILK, String MILK, String BLOCK_CHEESE, String SHREDDED_CHEESE,
                String YOGURT, String COTTAGE_CHEESE, String CREAM_CHEESE, String SOUR_CREAM, String EGGS, String
        toppings, ModelMap modelMap){
            BasicIngredients basicIngredients = new BasicIngredients();
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(TURKEY));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(BEEF));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(PORK));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(CHICKEN));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(SAUSAGE));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(FRANKS));
            basicIngredients.setMeat(BasicIngredients.Meat.valueOf(HAM));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(ONIONS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(TOMATOES));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(CHERRY_TOMATOES));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(POTATOES));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(GARLIC));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(GREEN_PEPPERS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BELL_PEPPERS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BANANA_PEPPERS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(SUMMER_SQUASH));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(SPAGHETTI_SQUASH));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BUTTERNUT_SQUASH));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(PUMPKIN));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BROCCOLI));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BEANS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(GREEN_BEANS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(CARROTS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(CORN));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(ASPEARAGUS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BRUSSELL_SPROUTS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(ZUCCINI));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(LETTUCE));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(BEETS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(PEAS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(MUSHROOMS));
//        basicIngredients.setVeggies(BasicIngredients.Veggies.valueOf(SWEET_POTATOES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(APPLES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(ORANGES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(STRAWBERRIES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(RASPBERRIES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(WATERMELON));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(BLUEBERRIES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(BLACKBERRIES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(GRAPES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(CRANBERRIES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(PINEAPPLE));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(COCONUT));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(MANGO));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(PEARS));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(PEACHES));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(CANTELOUPE));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(GRAPEFRUIT));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(BANANA));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(AVACADOS));
//        basicIngredients.setFruits(BasicIngredients.Fruits.valueOf(KIWI));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(TUNA));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(SALMON));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(SQUID));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(OCTOPUS));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(CRAB));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(COD));
//        basicIngredients.setFish(BasicIngredients.Fish.valueOf(TROUT));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(CINNAMON));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(PAPRIKA));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(TURMERIC));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(GINGER));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(NUTMEG));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(TARMORIND));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(CUMIN));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(OREGANO));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(CORDAMON));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(SALT));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(PEPPER));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(CLOVES));
//        basicIngredients.setSeasonings(BasicIngredients.Seasonings.valueOf(CHILI_POWDER));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(SPAGHETTI));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(TORTELLINI));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(SHELL));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(MACARONI));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(LASAGNA));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(PENNE));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(LINGUINI));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(FORFALLI));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(ANGEL_HAIR));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHITE_BREAD));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHEAT_BREAD));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(RYE));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(SOUR_DOUGH));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(CORN_BREAD));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHITE_RICE));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(BROWN_RICE));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(JASMINE));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHITE_FLOUR));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHEAT_FLOUR));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(COCONUT_FLOUR));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHITE_TORTILLA));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(WHEAT_TORTILLA));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(CORN_TORTILLA));
//        basicIngredients.setGrains(BasicIngredients.Grains.valueOf(OATS));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(CHOCOLATE_MILK));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(MILK));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(BLOCK_CHEESE));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(SHREDDED_CHEESE));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(YOGURT));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(COTTAGE_CHEESE));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(CREAM_CHEESE));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(SOUR_CREAM));
//        basicIngredients.setDairy(BasicIngredients.Dairy.valueOf(EGGS));
//        basicIngredients.setToppings(BasicIngredients.Toppings.valueOf(toppings));


            basicIngredientsDAO.save(basicIngredients);

            return new RedirectView("/admin/");
        }

//    @RequestMapping(value = "saveNewRecipe3")
//    public View saveNewRecipe3 (String cookTime, String Directions, String Ingredients){
//        Recipe recipe = new Recipe();
//        recipe(cookTime);
//        recipe.Directions.equalsIgnoreCase(Directions);
//        recipe.Ingredients.equalsIgnoreCase(Ingredients);
//
//     return new  RedirectView("/admin/");
//    }


    }
