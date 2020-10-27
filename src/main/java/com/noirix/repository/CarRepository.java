package com.noirix.repository;

import com.noirix.domain.Car;
import java.util.List;

public interface CarRepository extends CrudRepository<Long, Car> {

    List<Car> search(String query);

}
