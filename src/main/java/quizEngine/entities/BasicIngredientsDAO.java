package quizEngine.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface BasicIngredientsDAO extends CrudRepository<BasicIngredients, Long> {

}

//    // category!=ALL && questionType==ALL && difficulty==ALL
//    List<BasicIngredients> findByCategory(BasicIngredients.Category category);
//
//    // category!=ALL && questionType!=ALL && difficulty==ALL
//    List<BasicIngredients> findByCategoryAndQuestionType(BasicIngredients.Category category, BasicIngredients.QuestionType questionType);
//
//    // category!=ALL && questionType!=ALL && difficulty!=ALL
//    List<BasicIngredients> findByCategoryAndQuestionTypeAndDifficulty(BasicIngredients.Category category, BasicIngredients.QuestionType questionType, BasicIngredients.Difficulty difficulty);
//
//    // category==ALL && questionType!=ALL && difficulty==ALL
//    List<BasicIngredients> findByQuestionType(BasicIngredients.QuestionType questionType);
//
//    // category==ALL && questionType!=ALL && difficulty!=ALL
//    List<BasicIngredients> findByQuestionTypeAndDifficulty(BasicIngredients.QuestionType questionType, BasicIngredients.Difficulty difficulty);
//
//    // category==ALL && questionType==ALL && difficulty!=ALL
//    List<BasicIngredients> findByDifficulty(BasicIngredients.Difficulty difficulty);
//
//    // category!=ALL && questionType==ALL && difficulty!=ALL
//    List<BasicIngredients> findByCategoryAndDifficulty(BasicIngredients.Category category, BasicIngredients.Difficulty difficulty);
//
//}