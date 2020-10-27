package com.noirix.repository;

import java.util.List;
import java.util.Optional;

/*Generic interface for CRUD operations
* @params K - primary key of object
*         V - object type*/
public interface CrudRepository<K, V> {

    V save(V object);

    List<V> findAll();

    V findById(K key);

    Optional<V> findOne(K key);

    V update(V object);

    K delete(V object);
}
