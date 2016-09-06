package quizEngine.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import quizEngine.entities.BasicIngredients;
import quizEngine.entities.BasicIngredientsDAO;

/**
 * Created by Superduo on 8/22/16.
 */
@RestController
@RequestMapping("/restData/")
public class DataRestController {

    private final BasicIngredientsDAO basicIngredientsDAO;

    @Autowired
    public DataRestController(BasicIngredientsDAO basicIngredientsDAO) {
        Assert.notNull(basicIngredientsDAO, "BasicIngredientsDAO must not be null!");
        this.basicIngredientsDAO = basicIngredientsDAO;
    }

    @RequestMapping("getAllQuestions")
    public Iterable<BasicIngredients> getAllRecipes() {
        return basicIngredientsDAO.findAll();
    }
}
