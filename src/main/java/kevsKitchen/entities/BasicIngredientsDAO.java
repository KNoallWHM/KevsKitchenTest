package kevsKitchen.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public  interface BasicIngredientsDAO extends CrudRepository<BasicIngredients, Long> {

      List<BasicIngredients> findByONIONS(BasicIngredients.Veggies ONIONS);
      List<BasicIngredients> findByTOMATOES(BasicIngredients.Veggies TOMATOES);
      List<BasicIngredients> findByCHERRY_TOMATOES(BasicIngredients.Veggies CHERRY_TOMATOES);
      List<BasicIngredients> findByGARLIC(BasicIngredients.Veggies POTATOES);
      List<BasicIngredients> findByGREEN_PEPPERS(BasicIngredients.Veggies GARLIC);
      List<BasicIngredients> findByBELL_PEPPERS(BasicIngredients.Veggies GREEN_PEPPERS);
      List<BasicIngredients> findByBANANA_PEPPERS(BasicIngredients.Veggies BELL_PEPPERS);
      List<BasicIngredients> findBySUMMER_SQUASH(BasicIngredients.Veggies BANANA_PEPPERS);
      List<BasicIngredients> findBySPAGHETTI_SQUASH(BasicIngredients.Veggies SUMMER_SQUASH);
      List<BasicIngredients> findByBUTTERNUT_SQUASH(BasicIngredients.Veggies SPAGHETTI_SQUASH);
      List<BasicIngredients> findByPOTATOES(BasicIngredients.Veggies BUTTERNUT_SQUASH);
      List<BasicIngredients> findByPUMPKIN(BasicIngredients.Veggies PUMPKIN );
      List<BasicIngredients> findByBROCCOLI(BasicIngredients.Veggies BROCCOLI);
      List<BasicIngredients> findByBEANS(BasicIngredients.Veggies BEANS );
      List<BasicIngredients> findByGREEN_BEANS(BasicIngredients.Veggies GREEN_BEANS);
      List<BasicIngredients> findByCARROTS(BasicIngredients.Veggies CARROTS);
      List<BasicIngredients> findByCORN(BasicIngredients.Veggies CORN);
      List<BasicIngredients> findByASPEARAGUS(BasicIngredients.Veggies ASPEARAGUS);
      List<BasicIngredients> findByBRUSSELL_SPROUTS(BasicIngredients.Veggies BRUSSEL_SPROUTS);
      List<BasicIngredients> findByZUCCINI(BasicIngredients.Veggies ZUCCINI);
      List<BasicIngredients> findByLETTUCE(BasicIngredients.Veggies LETTUCE );
      List<BasicIngredients> findByBEETS(BasicIngredients.Veggies BEETS);
      List<BasicIngredients> findByPEAS(BasicIngredients.Veggies PEAS );
      List<BasicIngredients> findByMUSHROOMS(BasicIngredients.Veggies MUSHROOMS);
      List<BasicIngredients> findBySWEET_POTATOES(BasicIngredients.Veggies SWEET_POTATOES);

      List<BasicIngredients> findByBEEF(BasicIngredients.Meat BEEF);
      List<BasicIngredients> findByPORK(BasicIngredients.Meat PORK);
      List<BasicIngredients> findByCHICKEN(BasicIngredients.Meat CHICKEN);
      List<BasicIngredients> findBySAUSAGE(BasicIngredients.Meat SAUSAGE);
      List<BasicIngredients> findByFRANKS(BasicIngredients.Meat FRANKS);
      List<BasicIngredients> findByHAM(BasicIngredients.Meat HAM);
      List<BasicIngredients> findByTURKEY(BasicIngredients.Meat TURKEY);

      List<BasicIngredients> findByAPPLES(BasicIngredients.Fruits APPLES);
      List<BasicIngredients> findByORANGES(BasicIngredients.Fruits ORANGES);
      List<BasicIngredients> findBySTRAWBERRIES(BasicIngredients.Fruits STRAWBERRIES);
      List<BasicIngredients> findByRASPBERRIES(BasicIngredients.Fruits RASPBERRIES);
      List<BasicIngredients> findByWATERMELON(BasicIngredients.Fruits WATERMELON);
      List<BasicIngredients> findByBLUEBERRIES(BasicIngredients.Fruits BLUEBERRIES);
      List<BasicIngredients> findByBLACKBERRIES(BasicIngredients.Fruits BLACKBERRIES);
      List<BasicIngredients> findByGRAPES(BasicIngredients.Fruits GRAPES);
      List<BasicIngredients> findByCRANBERRIES(BasicIngredients.Fruits CRANBERRIES);
      List<BasicIngredients> findByPINEAPPLE(BasicIngredients.Fruits PINEAPPLE);
      List<BasicIngredients> findByCOCONUT(BasicIngredients.Fruits COCONUT);
      List<BasicIngredients> findByMANGO(BasicIngredients.Fruits MANGO);
      List<BasicIngredients> findByPEARS(BasicIngredients.Fruits PEARS);
      List<BasicIngredients> findByPEACHES(BasicIngredients.Fruits PEACHES);
      List<BasicIngredients> findByCANTELOUPE(BasicIngredients.Fruits CANTELOUPE);
      List<BasicIngredients> findByGRAPEFRUIT(BasicIngredients.Fruits GRAPEFRUIT);
      List<BasicIngredients> findByBANANA(BasicIngredients.Fruits BANANA);
      List<BasicIngredients> findByAVACADOS(BasicIngredients.Fruits AVACADOS);
      List<BasicIngredients> findByKIWI(BasicIngredients.Fruits KIWI);

      List<BasicIngredients> findByTUNA(BasicIngredients.Fish TUNA);
      List<BasicIngredients> findBySALMON(BasicIngredients.Fish SALMON);
      List<BasicIngredients> findBySQUID(BasicIngredients.Fish SQUID);
      List<BasicIngredients> findByOCTOPUS(BasicIngredients.Fish OCTOPUS);
      List<BasicIngredients> findByCRAB(BasicIngredients.Fish CRAB);
      List<BasicIngredients> findByCOD(BasicIngredients.Fish COD);
      List<BasicIngredients> findByTROUT(BasicIngredients.Fish TROUT);

      List<BasicIngredients> findByCINNAMON(BasicIngredients.Seasonings CINNAMON);
      List<BasicIngredients> findByPAPRIKA(BasicIngredients.Seasonings PAPRIKA);
      List<BasicIngredients> findByTURMERIC(BasicIngredients.Seasonings TURMERIC);
      List<BasicIngredients> findByGINGER(BasicIngredients.Seasonings GINGER);
      List<BasicIngredients> findByNUTMEG(BasicIngredients.Seasonings NUTMEG);
      List<BasicIngredients> findByTARMORIND(BasicIngredients.Seasonings TARMORIND);
      List<BasicIngredients> findByCUMIN(BasicIngredients.Seasonings CUMIN);
      List<BasicIngredients> findByOREGANO(BasicIngredients.Seasonings OREGANO);
      List<BasicIngredients> findByCORDAMON(BasicIngredients.Seasonings CORDAMON);
      List<BasicIngredients> findBySALT(BasicIngredients.Seasonings SALT);
      List<BasicIngredients> findByPEPPER(BasicIngredients.Seasonings PEPPER);
      List<BasicIngredients> findByCLOVES(BasicIngredients.Seasonings CLOVES);
      List<BasicIngredients> findByCHILI_POWDER(BasicIngredients.Seasonings CHILI_POWDER);

      List<BasicIngredients> findBySPAGHETTI(BasicIngredients.Grains SPAGHETTI);
      List<BasicIngredients> findByTORTELLINI(BasicIngredients.Grains TORTELLINI);
      List<BasicIngredients> findBySHELL(BasicIngredients.Grains SHELL);
      List<BasicIngredients> findByMACARONI(BasicIngredients.Grains MACARONI);
      List<BasicIngredients> findByLASAGNA(BasicIngredients.Grains LASAGNA);
      List<BasicIngredients> findByPENNE(BasicIngredients.Grains PENNE);
      List<BasicIngredients> findByLINGUINI(BasicIngredients.Grains LINGUINI);
      List<BasicIngredients> findByFORFALLI(BasicIngredients.Grains FORFALLI);
      List<BasicIngredients> findByANGEL_HAIR(BasicIngredients.Grains ANGEL_HAIR);
      List<BasicIngredients> findByWHITE_BREAD(BasicIngredients.Grains WHITE_BREAD);
      List<BasicIngredients> findByWHEAT_BREAD(BasicIngredients.Grains WHEAT_BREAD);
      List<BasicIngredients> findByRYE(BasicIngredients.Grains RYE);
      List<BasicIngredients> findBySOUR_DOUGH(BasicIngredients.Grains SOUR_DOUGH);
      List<BasicIngredients> findByCORN_BREAD(BasicIngredients.Grains CORN_BREAD);
      List<BasicIngredients> findByWHITE_RICE(BasicIngredients.Grains WHITE_RICE);
      List<BasicIngredients> findByBROWN_RICE(BasicIngredients.Grains BROWN_RICE);
      List<BasicIngredients> findByJASMINE(BasicIngredients.Grains JASMINE);
      List<BasicIngredients> findByWHITE_FLOUR(BasicIngredients.Grains WHITE_FLOUR);
      List<BasicIngredients> findByWHEAT_FLOUR(BasicIngredients.Grains WHEAT_FLOUR);
      List<BasicIngredients> findByCOCONUT_FLOUR(BasicIngredients.Grains COCONUT_FLOUR);
      List<BasicIngredients> findByWHITE_TORTILLA(BasicIngredients.Grains WHITE_TORTILLA);
      List<BasicIngredients> findByWHEAT_TORTILLA(BasicIngredients.Grains WHEAT_TORTILLA);
      List<BasicIngredients> findByCORN_TORTILLA(BasicIngredients.Grains CORN_TORTILLA);
      List<BasicIngredients> findByOATS(BasicIngredients.Grains OATS);

      List<BasicIngredients> findByCHOCOLATE_MILK(BasicIngredients.Dairy CHOCOLATE_MILK);
      List<BasicIngredients> findByMILK(BasicIngredients.Dairy MILK);
      List<BasicIngredients> findByBLOCK_CHEESE(BasicIngredients.Dairy BLOCK_CHEESE);
      List<BasicIngredients> findBySHREDDED_CHEESE(BasicIngredients.Dairy SHREDDED_CHEESE);
      List<BasicIngredients> findByYOGURT(BasicIngredients.Dairy YOGURT);
      List<BasicIngredients> findByCOTTAGE_CHEESE(BasicIngredients.Dairy COTTAGE_CHEESE);
      List<BasicIngredients> findByCREAM_CHEESE(BasicIngredients.Dairy CREAM_CHEESE);
      List<BasicIngredients> findBySOUR_CREAM(BasicIngredients.Dairy SOUR_CREAM);
      List<BasicIngredients> findByEGGS(BasicIngredients.Dairy EGGS);

}
