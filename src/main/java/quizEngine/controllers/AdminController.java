package quizEngine.controllers;

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
import quizEngine.entities.BasicIngredients;
import quizEngine.entities.BasicIngredientsDAO;
import quizEngine.entities.StepByStep;
import quizEngine.entities.StepByStepDAO;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping(value="/admin/")
public class AdminController {

    private final BasicIngredientsDAO basicIngredientsDAO;
//    private final StepByStepDAO stepByStepDAO;

    @Autowired
    public AdminController(BasicIngredientsDAO basicIngredientsDAO, StepByStepDAO stepByStepDAO) {
        Assert.notNull(basicIngredientsDAO, "BasicIngredientsDAO must not be null!");
//        Assert.notNull(stepByStepDAO, "StepByStepDAO must not be null!");
        this.basicIngredientsDAO = basicIngredientsDAO;
//        this.stepByStepDAO = stepByStepDAO;
    }

    @RequestMapping(value = "/")
    public String allRecipes(ModelMap model) {
        Iterable<BasicIngredients> basicIngredientses = basicIngredientsDAO.findAll();
//        Iterable<StepByStep> stepByStep = stepByStepDAO.findAll();
        model.addAttribute("basicIngredients", basicIngredientses);
//        model.addAttribute("stepBystep", stepByStep);
        return "admin/viewAllRecipes";
    }

    @RequestMapping(value = "inputRecipe")
    public String addRecipe(ModelMap model) {
        model.addAttribute("basicIngredient", new BasicIngredients());
        model.addAttribute("stepByStep", new StepByStep());
        return "admin/inputRecipe";
    }

    @RequestMapping(value = "saveNewRecipe")
    public View saveNewRecipe(BasicIngredients basicIngredients, StepByStep stepByStep) {
        basicIngredientsDAO.save(basicIngredients);
//        stepByStepDAO.save(stepByStep);
        return new RedirectView("/admin/");
    }

    @RequestMapping(value = "viewRecipe")
    public String viewRecipe(long id, ModelMap model) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
//        StepByStep stepByStep = stepByStepDAO.findOne(id);
        model.addAttribute("basicIngredients", basicIngredients);
//        model.addAttribute("stepByStep", stepByStep);
        return "admin/editQuestion";
    }

    @RequestMapping(value = "deleteRecipe")
    public View deleteRecipe(long id) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
//        StepByStep stepByStep = stepByStepDAO.findOne(id);
        basicIngredientsDAO.delete(basicIngredients);
//        stepByStepDAO.delete(stepByStep);
        return new RedirectView("/admin/");
    }

    @RequestMapping(value = "saveEditedRecipe")
    public View saveEditedRecipe(BasicIngredients basicIngredients, StepByStep stepByStep) {
        basicIngredientsDAO.save(basicIngredients);
//        stepByStepDAO.save(stepByStep);
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
                basicIngredients.setVeggies(uploadedingredient.getVeggies());
                basicIngredients.setFruits(uploadedingredient.getFruits());
                basicIngredients.setFish(uploadedingredient.getFish());
                basicIngredients.setSeasonings(uploadedingredient.getSeasonings());
                basicIngredients.setGrains(uploadedingredient.getGrains());
                basicIngredients.setDairy(uploadedingredient.getDairy());

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
}