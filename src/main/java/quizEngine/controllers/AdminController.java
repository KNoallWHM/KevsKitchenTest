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

    @RequestMapping(value="/")
    public String allRecipes(ModelMap model) {
        Iterable<BasicIngredients> basicIngredientses = basicIngredientsDAO.findAll();
        model.addAttribute("basicIngredients",basicIngredientses);
        return "admin/viewAllRecipes";
    }

    @RequestMapping(value="inputRecipe")
    public String addRecipe(ModelMap model) {
        model.addAttribute("basicIngredient", new BasicIngredients());
        return "admin/inputRecipe";
    }

    @RequestMapping(value="saveNewRecipe")
    public View saveNewRecipe(BasicIngredients basicIngredients) {
        basicIngredientsDAO.save(basicIngredients);
        return new RedirectView("/admin/");
    }

    @RequestMapping(value="viewRecipe")
    public String viewRecipe(long id,ModelMap model) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
        model.addAttribute("basicIngredients", basicIngredients);
        return "admin/editQuestion";
    }

    @RequestMapping(value="deleteRecipe")
    public View deleteRecipe(long id) {
        BasicIngredients basicIngredients = basicIngredientsDAO.findOne(id);
        basicIngredientsDAO.delete(basicIngredients);
        return new RedirectView("/admin/");
    }
    @RequestMapping(value="saveEditedRecipe")
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
                Files.write(Paths.get(RecipesFile.getOriginalFilename()),RecipesFile.getBytes());
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
            Path RecipesUploadedFilePath = Paths.get(filePath);
            ObjectMapper mapper = new ObjectMapper();
            List<BasicIngredients> uploadedRecipes = mapper.readValue(Files.newInputStream(RecipesUploadedFilePath), new TypeReference<List<BasicIngredients>>(){});
            for(BasicIngredients uploadedRecipe : uploadedRecipes) {
                BasicIngredients basicIngredients = new BasicIngredients();
                basicIngredients.setMeat(uploadedRecipe.getMeat());
                basicIngredients.setVeggies(uploadedRecipe.getVeggies());
                basicIngredients.setFruits(uploadedRecipe.getFruits());
                basicIngredients.setFish(uploadedRecipe.getFish());
                basicIngredients.setSeasonings(uploadedRecipe.getSeasonings());
                basicIngredients.setGrains(uploadedRecipe.getGrains());
                basicIngredients.setDairy(uploadedRecipe.getDairy());

                basicIngredients.setCodeLines(uploadedRecipe.getCodeLines());
                basicIngredientsDAO.save(basicIngredients);
            }
        } catch (IOException ioe) {
            System.out.println("Issue reading List from JSON file");
            ioe.printStackTrace();
        }
    }


}
