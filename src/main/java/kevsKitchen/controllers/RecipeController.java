package kevsKitchen.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import kevsKitchen.entities.BasicIngredients;
import kevsKitchen.entities.BasicIngredientsDAO;
import kevsKitchen.entities.Tracker;
import kevsKitchen.entities.TrackerDAO;

import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping(value="/recipes/")
public class RecipeController {

    private final BasicIngredientsDAO basicIngredientsDAO;


    @Autowired
    public RecipeController(BasicIngredientsDAO basicIngredientsDAO, TrackerDAO trackerDAO) {
        Assert.notNull(basicIngredientsDAO, "BasicIngredientsDAO must not be null!");
        this.basicIngredientsDAO = basicIngredientsDAO;
    }


    @RequestMapping(value = "/")
    public String dashboard(ModelMap model) {
        model.addAttribute("meats", BasicIngredients.Meat.values());
        model.addAttribute("vegetables", BasicIngredients.Veggies.values());
        model.addAttribute("fruits", BasicIngredients.Fruits.values());
        model.addAttribute("fishies", BasicIngredients.Fish.values());
        model.addAttribute("seasonings", BasicIngredients.Seasonings.values());
        model.addAttribute("grain", BasicIngredients.Grains.values());
        model.addAttribute("dairy", BasicIngredients.Dairy.values());
        return "recipes/index";
    }




@RequestMapping(value = "findByVeg")
    public  String findByVeg(String veggie, ModelMap modelMap,  String ONIONS, String TOMATOES, String CHERRY_TOMATOES,
                             String GARLIC, String GREEN_PEPPERS, String BELL_PEPPERS, String BANANA_PEPPERS, String
                                     SUMMER_SQUASH, String SPAGHETTI_SQUASH, String BUTTERNUT_SQUASH, String POTATOES,
                             String PUMPKIN, String BROCCOLI, String BEANS, String GREEN_BEANS, String CARROTS, String CORN, String
                                     ASPEARAGUS, String BRUSSELL_SPROUTS, String ZUCCINI, String LETTUCE,
                             String BEETS, String PEAS, String MUSHROOMS, String SWEET_POTATOES){

    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(ONIONS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(TOMATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(CHERRY_TOMATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(GARLIC)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(GREEN_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BELL_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BANANA_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(SUMMER_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(SPAGHETTI_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BUTTERNUT_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(POTATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(PUMPKIN)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BROCCOLI)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BEANS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(GREEN_BEANS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(CARROTS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(CORN)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(ASPEARAGUS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BRUSSELL_SPROUTS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(ZUCCINI)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(LETTUCE)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(BEETS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(PEAS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(MUSHROOMS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByVeggies(BasicIngredients.Veggies.valueOf(SWEET_POTATOES)));

    return "recipes/findByVeg";
}

@RequestMapping(value = "findByMeat")
    public String findByMeat(String meat, ModelMap modelMap, String TURKEY, String BEEF, String PORK, String CHICKEN, String SAUSAGE, String
        FRANKS, String HAM) {

    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(BEEF)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(PORK)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(CHICKEN)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(SAUSAGE)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(FRANKS)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(HAM)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByMeat(BasicIngredients.Meat.valueOf(TURKEY)));

    return "recipes/findByMeat";
}

@RequestMapping(value = "findByFruit")
    public String findByFruit(String fruit, ModelMap modelMap, String APPLES, String
        ORANGES, String STRAWBERRIES, String RASPBERRIES, String WATERMELON,
                              String BLUEBERRIES, String BLACKBERRIES, String GRAPES, String CRANBERRIES, String PINEAPPLE, String
                                      COCONUT, String MANGO, String PEARS, String PEACHES, String CANTELOUPE,
                              String GRAPEFRUIT, String BANANA, String AVACADOS, String KIWI) {

    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(APPLES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(ORANGES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(STRAWBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(RASPBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(WATERMELON)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(BLUEBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(BLACKBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(GRAPES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(CRANBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(PINEAPPLE)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(COCONUT)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(MANGO)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(PEARS)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(PEACHES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(CANTELOUPE)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(GRAPEFRUIT)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(BANANA)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(AVACADOS)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByFruits(BasicIngredients.Fruits.valueOf(KIWI)));

            return "recipes/findByFruit";
}

@RequestMapping(value = "findByFish")
    public String findByFish(String fish, ModelMap modelMap, String TUNA, String SALMON, String
        SQUID, String OCTOPUS, String CRAB, String COD, String TROUT) {

    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(TUNA)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(SALMON)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(SQUID)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(OCTOPUS)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(CRAB)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(COD)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByFish(BasicIngredients.Fish.valueOf(TROUT)));

    return "recipes/findByFish";
}

@RequestMapping(value = "findBySeasoning")
    public String findBySeasons(String seasons, ModelMap modelMap, String CINNAMON, String PAPRIKA,
                                String TURMERIC, String GINGER, String NUTMEG, String TARMORIND, String
                                CUMIN, String OREGANO, String CORDAMON, String SALT, String PEPPER,
                                String CLOVES, String CHILI_POWDER){

    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(CINNAMON)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(PAPRIKA)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(TURMERIC)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(GINGER)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(NUTMEG)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(TARMORIND)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(CUMIN)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(OREGANO)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(CORDAMON)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(SALT)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(PEPPER)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(CLOVES)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySeasonings(BasicIngredients.Seasonings.valueOf(CHILI_POWDER)));

    return "recipes/findBySeasoning";
}

@RequestMapping(value = "findByGrain")
    public String findByGrains(String grains, ModelMap modelMap, String SPAGHETTI, String TORTELLINI, String SHELL, String
                                MACARONI, String LASAGNA, String PENNE, String LINGUINI, String FORFALLI, String ANGEL_HAIR,
                               String WHITE_BREAD, String WHEAT_BREAD, String RYE, String SOUR_DOUGH, String CORN_BREAD, String
                                       WHITE_RICE, String BROWN_RICE, String JASMINE, String WHITE_FLOUR, String WHEAT_FLOUR,
                               String COCONUT_FLOUR, String WHITE_TORTILLA, String WHEAT_TORTILLA, String CORN_TORTILLA, String
                                       OATS) {

    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(SPAGHETTI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(TORTELLINI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(SHELL)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(MACARONI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(LASAGNA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(PENNE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(LINGUINI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(FORFALLI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(ANGEL_HAIR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHITE_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHEAT_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(RYE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(SOUR_DOUGH)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(CORN_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHITE_RICE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(BROWN_RICE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(JASMINE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHITE_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHEAT_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(COCONUT_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHITE_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(WHEAT_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(CORN_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByGrains(BasicIngredients.Grains.valueOf(OATS)));

    return "recipes/findByGrain";
}


@RequestMapping(value = "findByDairy")
    public String findByDairy(String dairy, ModelMap modelMap, String CHOCOLATE_MILK, String MILK, String BLOCK_CHEESE, String SHREDDED_CHEESE,
                              String YOGURT, String COTTAGE_CHEESE, String CREAM_CHEESE, String SOUR_CREAM, String EGGS) {

    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(CHOCOLATE_MILK)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(MILK)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(BLOCK_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(SHREDDED_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(YOGURT)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(COTTAGE_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(CREAM_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(SOUR_CREAM)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByDairy(BasicIngredients.Dairy.valueOf(EGGS)));

    return "recipes/findByDairy";
}


}
