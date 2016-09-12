package quizEngine.entities;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Superduo on 9/6/16.
 */
@Entity
@Table (name="Step_By_Step")
public class StepByStep {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotNull
    private String cookTime;

    @NotNull
    private String ingredients;

    @NotNull
    private String directions;


    public String getCookTime() {
        return cookTime;
    }

    public void setCookTime(String cookTime) {
        this.cookTime = cookTime;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getDirections() {
        return directions;
    }

    public void setDirections(String directions) {
        this.directions = directions;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
