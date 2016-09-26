package kevsKitchen.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public  interface BasicIngredientsDAO extends CrudRepository<BasicIngredients, Long> {

      List<BasicIngredients> findByVeggies(BasicIngredients.Veggies veggies);


      List<BasicIngredients> findByMeat(BasicIngredients.Meat meat);


      List<BasicIngredients> findByFruits(BasicIngredients.Fruits fruits);


      List<BasicIngredients> findByFish(BasicIngredients.Fish fish);


      List<BasicIngredients> findBySeasonings(BasicIngredients.Seasonings seasonings);


      List<BasicIngredients> findByGrains(BasicIngredients.Grains grains);


      List<BasicIngredients> findByDairy(BasicIngredients.Dairy dairy);

}
