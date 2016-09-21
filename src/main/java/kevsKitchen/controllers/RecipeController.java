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

    modelMap.put("recipesByVeg",basicIngredientsDAO.findByONIONS(BasicIngredients.Veggies.valueOf(ONIONS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByTOMATOES(BasicIngredients.Veggies.valueOf(TOMATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByCHERRY_TOMATOES(BasicIngredients.Veggies.valueOf(CHERRY_TOMATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByGARLIC(BasicIngredients.Veggies.valueOf(GARLIC)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByGREEN_PEPPERS(BasicIngredients.Veggies.valueOf(GREEN_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBELL_PEPPERS(BasicIngredients.Veggies.valueOf(BELL_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBANANA_PEPPERS(BasicIngredients.Veggies.valueOf(BANANA_PEPPERS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findBySUMMER_SQUASH(BasicIngredients.Veggies.valueOf(SUMMER_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findBySPAGHETTI_SQUASH(BasicIngredients.Veggies.valueOf(SPAGHETTI_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBUTTERNUT_SQUASH(BasicIngredients.Veggies.valueOf(BUTTERNUT_SQUASH)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByPOTATOES(BasicIngredients.Veggies.valueOf(POTATOES)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByPUMPKIN(BasicIngredients.Veggies.valueOf(PUMPKIN)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBROCCOLI(BasicIngredients.Veggies.valueOf(BROCCOLI)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBEANS(BasicIngredients.Veggies.valueOf(BEANS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByGREEN_BEANS(BasicIngredients.Veggies.valueOf(GREEN_BEANS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByCARROTS(BasicIngredients.Veggies.valueOf(CARROTS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByCORN(BasicIngredients.Veggies.valueOf(CORN)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByASPEARAGUS(BasicIngredients.Veggies.valueOf(ASPEARAGUS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBRUSSELL_SPROUTS(BasicIngredients.Veggies.valueOf(BRUSSELL_SPROUTS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByZUCCINI(BasicIngredients.Veggies.valueOf(ZUCCINI)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByLETTUCE(BasicIngredients.Veggies.valueOf(LETTUCE)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByBEETS(BasicIngredients.Veggies.valueOf(BEETS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByPEAS(BasicIngredients.Veggies.valueOf(PEAS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findByMUSHROOMS(BasicIngredients.Veggies.valueOf(MUSHROOMS)));
    modelMap.put("recipesByVeg",basicIngredientsDAO.findBySWEET_POTATOES(BasicIngredients.Veggies.valueOf(SWEET_POTATOES)));

    return "recipes/findByVeg";
}

@RequestMapping(value = "findByMeat")
    public String findByMeat(String meat, ModelMap modelMap, String TURKEY, String BEEF, String PORK, String CHICKEN, String SAUSAGE, String
        FRANKS, String HAM) {

    modelMap.put("recipesByMeat", basicIngredientsDAO.findByBEEF(BasicIngredients.Meat.valueOf(BEEF)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByPORK(BasicIngredients.Meat.valueOf(PORK)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByCHICKEN(BasicIngredients.Meat.valueOf(CHICKEN)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findBySAUSAGE(BasicIngredients.Meat.valueOf(SAUSAGE)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByFRANKS(BasicIngredients.Meat.valueOf(FRANKS)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByHAM(BasicIngredients.Meat.valueOf(HAM)));
    modelMap.put("recipesByMeat", basicIngredientsDAO.findByTURKEY(BasicIngredients.Meat.valueOf(TURKEY)));

    return "recipes/findByMeat";
}

@RequestMapping(value = "findByFruit")
    public String findByFruit(String fruit, ModelMap modelMap, String APPLES, String
        ORANGES, String STRAWBERRIES, String RASPBERRIES, String WATERMELON,
                              String BLUEBERRIES, String BLACKBERRIES, String GRAPES, String CRANBERRIES, String PINEAPPLE, String
                                      COCONUT, String MANGO, String PEARS, String PEACHES, String CANTELOUPE,
                              String GRAPEFRUIT, String BANANA, String AVACADOS, String KIWI) {

    modelMap.put("recipesByFruit", basicIngredientsDAO.findByAPPLES(BasicIngredients.Fruits.valueOf(APPLES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByORANGES(BasicIngredients.Fruits.valueOf(ORANGES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findBySTRAWBERRIES(BasicIngredients.Fruits.valueOf(STRAWBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByRASPBERRIES(BasicIngredients.Fruits.valueOf(RASPBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByWATERMELON(BasicIngredients.Fruits.valueOf(WATERMELON)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByBLUEBERRIES(BasicIngredients.Fruits.valueOf(BLUEBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByBLACKBERRIES(BasicIngredients.Fruits.valueOf(BLACKBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByGRAPES(BasicIngredients.Fruits.valueOf(GRAPES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByCRANBERRIES(BasicIngredients.Fruits.valueOf(CRANBERRIES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByPINEAPPLE(BasicIngredients.Fruits.valueOf(PINEAPPLE)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByCOCONUT(BasicIngredients.Fruits.valueOf(COCONUT)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByMANGO(BasicIngredients.Fruits.valueOf(MANGO)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByPEARS(BasicIngredients.Fruits.valueOf(PEARS)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByPEACHES(BasicIngredients.Fruits.valueOf(PEACHES)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByCANTELOUPE(BasicIngredients.Fruits.valueOf(CANTELOUPE)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByGRAPEFRUIT(BasicIngredients.Fruits.valueOf(GRAPEFRUIT)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByBANANA(BasicIngredients.Fruits.valueOf(BANANA)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByAVACADOS(BasicIngredients.Fruits.valueOf(AVACADOS)));
    modelMap.put("recipesByFruit", basicIngredientsDAO.findByKIWI(BasicIngredients.Fruits.valueOf(KIWI)));

            return "recipes/findByFruit";
}

@RequestMapping(value = "findByFish")
    public String findByFish(String fish, ModelMap modelMap, String TUNA, String SALMON, String
        SQUID, String OCTOPUS, String CRAB, String COD, String TROUT) {

    modelMap.put("recipesByFish", basicIngredientsDAO.findByTUNA(BasicIngredients.Fish.valueOf(TUNA)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findBySALMON(BasicIngredients.Fish.valueOf(SALMON)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findBySQUID(BasicIngredients.Fish.valueOf(SQUID)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByOCTOPUS(BasicIngredients.Fish.valueOf(OCTOPUS)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByCRAB(BasicIngredients.Fish.valueOf(CRAB)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByCOD(BasicIngredients.Fish.valueOf(COD)));
    modelMap.put("recipesByFish", basicIngredientsDAO.findByTROUT(BasicIngredients.Fish.valueOf(TROUT)));

    return "recipes/findByFish";
}

@RequestMapping(value = "findBySeasoning")
    public String findBySeasons(String seasons, ModelMap modelMap, String CINNAMON, String PAPRIKA,
                                String TURMERIC, String GINGER, String NUTMEG, String TARMORIND, String
                                CUMIN, String OREGANO, String CORDAMON, String SALT, String PEPPER,
                                String CLOVES, String CHILI_POWDER){

    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByCINNAMON(BasicIngredients.Seasonings.valueOf(CINNAMON)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByPAPRIKA(BasicIngredients.Seasonings.valueOf(PAPRIKA)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByTURMERIC(BasicIngredients.Seasonings.valueOf(TURMERIC)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByGINGER(BasicIngredients.Seasonings.valueOf(GINGER)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByNUTMEG(BasicIngredients.Seasonings.valueOf(NUTMEG)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByTARMORIND(BasicIngredients.Seasonings.valueOf(TARMORIND)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByCUMIN(BasicIngredients.Seasonings.valueOf(CUMIN)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByOREGANO(BasicIngredients.Seasonings.valueOf(OREGANO)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByCORDAMON(BasicIngredients.Seasonings.valueOf(CORDAMON)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findBySALT(BasicIngredients.Seasonings.valueOf(SALT)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByPEPPER(BasicIngredients.Seasonings.valueOf(PEPPER)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByCLOVES(BasicIngredients.Seasonings.valueOf(CLOVES)));
    modelMap.put("recipesBySeasoning", basicIngredientsDAO.findByCHILI_POWDER(BasicIngredients.Seasonings.valueOf(CHILI_POWDER)));

    return "recipes/findBySeasoning";
}

@RequestMapping(value = "findByGrain")
    public String findByGrains(String grains, ModelMap modelMap, String SPAGHETTI, String TORTELLINI, String SHELL, String
                                MACARONI, String LASAGNA, String PENNE, String LINGUINI, String FORFALLI, String ANGEL_HAIR,
                               String WHITE_BREAD, String WHEAT_BREAD, String RYE, String SOUR_DOUGH, String CORN_BREAD, String
                                       WHITE_RICE, String BROWN_RICE, String JASMINE, String WHITE_FLOUR, String WHEAT_FLOUR,
                               String COCONUT_FLOUR, String WHITE_TORTILLA, String WHEAT_TORTILLA, String CORN_TORTILLA, String
                                       OATS) {

    modelMap.put("recipesByGrain", basicIngredientsDAO.findBySPAGHETTI(BasicIngredients.Grains.valueOf(SPAGHETTI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByTORTELLINI(BasicIngredients.Grains.valueOf(TORTELLINI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findBySHELL(BasicIngredients.Grains.valueOf(SHELL)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByMACARONI(BasicIngredients.Grains.valueOf(MACARONI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByLASAGNA(BasicIngredients.Grains.valueOf(LASAGNA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByPENNE(BasicIngredients.Grains.valueOf(PENNE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByLINGUINI(BasicIngredients.Grains.valueOf(LINGUINI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByFORFALLI(BasicIngredients.Grains.valueOf(FORFALLI)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByANGEL_HAIR(BasicIngredients.Grains.valueOf(ANGEL_HAIR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHITE_BREAD(BasicIngredients.Grains.valueOf(WHITE_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHEAT_BREAD(BasicIngredients.Grains.valueOf(WHEAT_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByRYE(BasicIngredients.Grains.valueOf(RYE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findBySOUR_DOUGH(BasicIngredients.Grains.valueOf(SOUR_DOUGH)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByCORN_BREAD(BasicIngredients.Grains.valueOf(CORN_BREAD)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHITE_RICE(BasicIngredients.Grains.valueOf(WHITE_RICE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByBROWN_RICE(BasicIngredients.Grains.valueOf(BROWN_RICE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByJASMINE(BasicIngredients.Grains.valueOf(JASMINE)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHITE_FLOUR(BasicIngredients.Grains.valueOf(WHITE_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHEAT_FLOUR(BasicIngredients.Grains.valueOf(WHEAT_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByCOCONUT_FLOUR(BasicIngredients.Grains.valueOf(COCONUT_FLOUR)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHITE_TORTILLA(BasicIngredients.Grains.valueOf(WHITE_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByWHEAT_TORTILLA(BasicIngredients.Grains.valueOf(WHEAT_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByCORN_TORTILLA(BasicIngredients.Grains.valueOf(CORN_TORTILLA)));
    modelMap.put("recipesByGrain", basicIngredientsDAO.findByOATS(BasicIngredients.Grains.valueOf(OATS)));

    return "recipes/findByGrain";
}


@RequestMapping(value = "findByDairy")
    public String findByDairy(String dairy, ModelMap modelMap, String CHOCOLATE_MILK, String MILK, String BLOCK_CHEESE, String SHREDDED_CHEESE,
                              String YOGURT, String COTTAGE_CHEESE, String CREAM_CHEESE, String SOUR_CREAM, String EGGS) {

    modelMap.put("recipesByDairy", basicIngredientsDAO.findByCHOCOLATE_MILK(BasicIngredients.Dairy.valueOf(CHOCOLATE_MILK)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByMILK(BasicIngredients.Dairy.valueOf(MILK)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByBLOCK_CHEESE(BasicIngredients.Dairy.valueOf(BLOCK_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findBySHREDDED_CHEESE(BasicIngredients.Dairy.valueOf(SHREDDED_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByYOGURT(BasicIngredients.Dairy.valueOf(YOGURT)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByCOTTAGE_CHEESE(BasicIngredients.Dairy.valueOf(COTTAGE_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByCREAM_CHEESE(BasicIngredients.Dairy.valueOf(CREAM_CHEESE)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findBySOUR_CREAM(BasicIngredients.Dairy.valueOf(SOUR_CREAM)));
    modelMap.put("recipesByDairy", basicIngredientsDAO.findByEGGS(BasicIngredients.Dairy.valueOf(EGGS)));

    return "recipes/findByDairy";
}


}
