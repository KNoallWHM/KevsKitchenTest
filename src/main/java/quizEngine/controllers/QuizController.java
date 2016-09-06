package quizEngine.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import quizEngine.entities.BasicIngredients;
import quizEngine.entities.BasicIngredientsDAO;
import quizEngine.entities.Tracker;
import quizEngine.entities.TrackerDAO;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping(value="/quiz/")
public class QuizController {

    private final BasicIngredientsDAO basicIngredientsDAO;
    private final TrackerDAO trackerDAO;


    @Autowired
    public QuizController(BasicIngredientsDAO basicIngredientsDAO, TrackerDAO trackerDAO) {
        Assert.notNull(basicIngredientsDAO, "BasicIngredientsDAO must not be null!");
        Assert.notNull(trackerDAO, "TrackerDAO must not be null");
        this.trackerDAO = trackerDAO;
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
        return "quiz/index";
    }





    @RequestMapping(value = "results")
    public View quizResults(ModelMap model) {
        Tracker tracker = new Tracker();
        model.addAttribute("correct", tracker.getCorrect());
        model.addAttribute("incorrect", tracker.getIncorrect());
        model.addAttribute("totalQuestions", tracker.getTotalQuestions());
        model.addAttribute("name", tracker.getName());
        model.addAttribute("email", tracker.getEmail());
        return new RedirectView("quiz/dashboard");
    }






    @RequestMapping(value = "searchRecipies")
    public View startQuiz(String meat, String veggies, String fruits, String fish, String seasonings, String grains, String dairy, HttpServletRequest request) {
        request.getSession().setAttribute("meat", meat);
        request.getSession().setAttribute("veggies", veggies);
        request.getSession().setAttribute("fruits", fruits);
        request.getSession().setAttribute("fish", fish);
        request.getSession().setAttribute("seasonings", seasonings);
        request.getSession().setAttribute("grains", grains);
        request.getSession().setAttribute("dairy", dairy);
        Tracker tracker = new Tracker();


        Iterable<BasicIngredients> quizQuestions = null;
        int numberOfQuestions = 0;

        // category!=ALL && questionType==ALL && difficulty==ALL
//        if (!category.equals(BasicIngredients.Category.ALL) && questionType.equals(BasicIngredients.QuestionType.ALL) && difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByCategory(BasicIngredients.Category.valueOf(category));
//        }
//        // category!=ALL && questionType!=ALL && difficulty==ALL
//        else if (!category.equals(BasicIngredients.Category.ALL) && !questionType.equals(BasicIngredients.QuestionType.ALL) && difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByCategoryAndQuestionType(BasicIngredients.Category.valueOf(category), BasicIngredients.QuestionType.valueOf(questionType));
//        }
//        // category!=ALL && questionType!=ALL && difficulty!=ALL
//        else if (!category.equals(BasicIngredients.Category.ALL) && !questionType.equals(BasicIngredients.QuestionType.ALL) && !difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByCategoryAndQuestionTypeAndDifficulty(BasicIngredients.Category.valueOf(category), BasicIngredients.QuestionType.valueOf(questionType), BasicIngredients.Difficulty.valueOf(difficulty));
//        }
//        // category==ALL && questionType!=ALL && difficulty==ALL
//        else if (category.equals(BasicIngredients.Category.ALL) && !questionType.equals(BasicIngredients.QuestionType.ALL) && difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByQuestionType(BasicIngredients.QuestionType.valueOf(questionType));
//        }
//        // category==ALL && questionType!=ALL && difficulty!=ALL
//        else if (category.equals(BasicIngredients.Category.ALL) && !questionType.equals(BasicIngredients.QuestionType.ALL) && !difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByQuestionTypeAndDifficulty(BasicIngredients.QuestionType.valueOf(questionType), BasicIngredients.Difficulty.valueOf(difficulty));
//        }
//        // category==ALL && questionType==ALL && difficulty!=ALL
//        else if (category.equals(BasicIngredients.Category.ALL) && questionType.equals(BasicIngredients.QuestionType.ALL) && !difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByDifficulty(BasicIngredients.Difficulty.valueOf(difficulty));
//        }
//        // category!=ALL && questionType==ALL && difficulty!=ALL
//        else if (!category.equals(BasicIngredients.Category.ALL) && questionType.equals(BasicIngredients.QuestionType.ALL) && !difficulty.equals(BasicIngredients.Difficulty.ALL)) {
//            quizQuestions = basicIngredientsDAO.findByCategoryAndDifficulty(BasicIngredients.Category.valueOf(category), BasicIngredients.Difficulty.valueOf(difficulty));
//        }
        if (quizQuestions != null) {
            numberOfQuestions = countIterable(quizQuestions);
        }
        // category==ALL && questionType==ALL && difficulty==ALL || no results
        if (quizQuestions == null || numberOfQuestions < 1) {
            quizQuestions = basicIngredientsDAO.findAll();
            numberOfQuestions = countIterable(quizQuestions);
        }
        int i = 0;
        HashMap<Integer, BasicIngredients> quizQuestionsHashMap = new HashMap<>();
        for (BasicIngredients basicIngredients : quizQuestions) {
            quizQuestionsHashMap.put(i, basicIngredients);
            i++;
        }
        trackerDAO.save(tracker);
        tracker.setTotalQuestions(countIterable(quizQuestions));

        request.getSession().setAttribute("kevin", tracker);

        request.getSession().setAttribute("quizQuestionsHashMap", quizQuestionsHashMap);
        ArrayList<Integer> usedQuestions = new ArrayList<>();
        request.getSession().setAttribute("usedQuestions", usedQuestions);

        return new RedirectView("nextQuestion");
    }

    @RequestMapping(value = "nextQuestion")
    public String nextQuestion(ModelMap model, HttpServletRequest request) {


        ArrayList<Integer> usedQuestions = (ArrayList<Integer>) request.getSession().getAttribute("usedQuestions");
        HashMap<Integer, BasicIngredients> quizQuestionsHashMap = (HashMap<Integer, BasicIngredients>) request.getSession().getAttribute("quizQuestionsHashMap");
        int numberOfQuestions = quizQuestionsHashMap.size();
        if (usedQuestions.size() >= numberOfQuestions) {
            return "quiz/quizResults";
        }
        boolean isNewQuestion = false;
        int questionNumber = -1;
        while (!isNewQuestion) {
            questionNumber = randomInt(0, numberOfQuestions - 1);
            if (!usedQuestions.contains(new Integer(questionNumber))) {
                isNewQuestion = true;
            }
        }
        request.getSession().setAttribute("questionNumber", questionNumber);
        model.addAttribute("quizQuestion", quizQuestionsHashMap.get(questionNumber));
        usedQuestions.add(questionNumber);
        request.getSession().setAttribute("usedQuestions", usedQuestions);

        return "quiz/question";
    }




    private int countIterable(Iterable<?> it) {
        if (it instanceof Collection)
            return ((Collection<?>) it).size();

        // else iterate
        int i = 0;
        for (Object obj : it) i++;
        return i;
    }




    private static int randomInt(int min, int max) {
        Random random = new Random();
        int randomNumber = random.nextInt((max - min) +1) +min;
        return randomNumber;
    }




}
