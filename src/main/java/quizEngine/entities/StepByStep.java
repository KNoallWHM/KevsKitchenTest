//package quizEngine.entities;
//
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.validation.constraints.NotNull;
//
///**
// * Created by Superduo on 9/6/16.
// */
//public class StepByStep {
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private long id;
//
//    @NotNull
//    private String cooktime;
//
//    @NotNull
//    private String ingredients;
//
//    @NotNull
//    private String difficulty;
//
//    public String getCooktime() {
//        return cooktime;
//    }
//
//    public void setCooktime(String cooktime) {
//        this.cooktime = cooktime;
//    }
//
//
//    public String getIngredients() {
//        return ingredients;
//    }
//
//    public void setIngredients(String ingredients) {
//        this.ingredients = ingredients;
//    }
//
//    public String getDifficulty() {
//        return difficulty;
//    }
//
//    public void setDifficulty(String difficulty) {
//        this.difficulty = difficulty;
//    }
//
//    public long getId() {
//        return id;
//    }
//
//    public void setId(long id) {
//        this.id = id;
//    }
//}
