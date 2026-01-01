package io.bootify.jte.config;

import org.springframework.boot.persistence.autoconfigure.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EntityScan("io.bootify.jte")
@EnableJpaRepositories("io.bootify.jte")
@EnableTransactionManagement
public class DomainConfig {
}
