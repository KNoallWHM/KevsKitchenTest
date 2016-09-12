package quizEngine.entities;

import javafx.scene.control.TextArea;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.util.ArrayList;
import java.util.HashMap;

@Entity
@Table(name = "basic_ingredients")
public class BasicIngredients {
    public static enum Meat { TURKEY, BEEF, PORK, CHICKEN, SAUSAGE, FRANKS, HAM };
    public static enum Veggies { ONIONS, TOMATOES, CHEERY_TOMATOES, POTATOES, GARLIC, GREEN_PEPPERS, BELL_PEPPERS, BANANA_PEPPERS, SUMMER_SQUASH, SPAGHETTI_SQUASH, BUTTERNUT_SQUASH, PUMPKIN, BROCCOLI, BEANS, GREEN_BEANS, CARROTS, CORN, ASPEARAGUS, BRUSSEL_SPROUTS, ZUCCINI, LETTUCE, BEETS, PEAS, MUSHROOMS, SWEET_POTATOES };
    public static enum Fruits { APPLES, ORANGES, STRAWBERRIES, RASPBERRIES, WATERMELON, BLUEBERRIES, BLACKBERRIES, GRAPES, CRANBERRIES, PINEAPPLE, COCONUT, MANGO, PEARS, PEACHES, CANTELOUPE, GRAPEFRUIT, BANANA, AVACADOS, KIWI };
    public static enum Fish { TUNA, SALMON, SQUID, OCTOPUS, CRAB, COD, TROUT };
    public static enum Seasonings { CINNAMON, PAPRIKA, TURMERIC, GINGER, NUTMEG, TARMORIND, CUMIN, OREGANO, CORDAMON, SALT, PEPPER, CLOVES, CHILI_POWDER };
    public static enum Grains { SPAGHETTI, TORTELLINI, SHELL, MACARONI, LASAGNA, PENNE, LINGUINI, FORFALLI, ANGEL_HAIR, WHITE_BREAD, WHEAT_BREAD, RYE, SOUR_DOUGH, CORN_BREAD, WHITE_RICE, BROWN_RICE, JASMINE, WHITE_FLOUR, WHEAT_FLOUR, COCONUT_FLOUR, WHITE_TORTILLA, WHEAT_TORTILLA, CORN_TORTILLA, OATS };
    public static enum Dairy { CHOCOLATE_MILK, MILK, BLOCK_CHEESE, SHREDDED_CHEESE, YOGURT, COTTAGE_CHEESE, CREAM_CHEESE, SOUR_CREAM, EGGS };
    public static enum Toppings { KATSUP, MUSTARD, MAYONIAISE, MIRACLEWHIP, RANCH, STRAWBERRIES_N_CREAM, SYRUP, HONEY_MUSTARD, PEANUT_BUTTER, RASPBERRY_JAM, STRAWBERRY_JAM, HONEY_BUTTER };

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotNull
    private Meat meat;

    @NotNull
    private Veggies veggies;

    @NotNull
    private Fruits fruits;

    @NotNull
    private Fish fish;

    @NotNull
    private Seasonings seasonings;

    @NotNull
    private Grains grains;

    @NotNull
    private Dairy dairy;

    @NotNull
    private Toppings toppings;





    public Toppings getToppings() {
        return toppings;
    }

    public void setToppings(Toppings toppings) {
        this.toppings = toppings;
    }

    public Meat getMeat() {
        return meat;
    }

    public void setMeat(Meat meat) {
        this.meat = meat;
    }

    public Veggies getVeggies() {
        return veggies;
    }

    public void setVeggies(Veggies veggies) {
        this.veggies = veggies;
    }

    public Fruits getFruits() {
        return fruits;
    }

    public void setFruits(Fruits fruits) {
        this.fruits = fruits;
    }

    public Fish getFish() {
        return fish;
    }

    public void setFish(Fish fish) {
        this.fish = fish;
    }

    public Seasonings getSeasonings() {
        return seasonings;
    }

    public void setSeasonings(Seasonings seasonings) {
        this.seasonings = seasonings;
    }

    public Grains getGrains() {
        return grains;
    }

    public void setGrains(Grains grains) {
        this.grains = grains;
    }

    public Dairy getDairy() {
        return dairy;
    }

    public void setDairy(Dairy dairy) {
        this.dairy = dairy;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    //    public ArrayList<Integer> getTotalQuestions)
}
