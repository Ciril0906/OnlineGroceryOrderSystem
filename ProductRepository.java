// src/main/java/com/groceryordering/api/repository/ProductRepository.java
package com.groceryordering.api.repository;

import com.groceryordering.api.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Optional<Product> findByName(String name);
    // You might add more custom queries later, e.g., findByCategory
}
