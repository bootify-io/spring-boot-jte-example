# Spring Boot Jte Example

This example shows the usage of jte as a template engine for Spring Boot. It includes a table `products` that can be managed via the frontend (CRUD functions).

All jte templates are in `src/main/jte`, using `layout.jte` as a layout and `components/inputRow.jte` for forms. The `error.jte` template is rendered for errors including not found pages. During development with the `local` profile, `gg.jte.developmentMode=true` is active, so that changes are immediately visible in the browser. In addition the Maven plugin `jte-maven-plugin` is configured - this precompiles all templates for the final jar and uses them by setting `gg.jte.usePrecompiledTemplates=true`.

**Create your own personalized application with jte frontend** on [Bootify.io](https://bootify.io). Choose between Bootstrap and Tailwind CSS, add webpack, activate htmx, use Maven or Gradle and much more.

## Development

Update your local database connection in `application.properties` or create your own `application-local.properties` file to override settings for development.

During development it is recommended to use the profile `local`. In IntelliJ `-Dspring.profiles.active=local` can be added in the VM options of the Run Configuration after enabling this property in "Modify options".

After starting the application it is accessible under `localhost:8080`.

## Build

The application can be built using the following command:

```
mvnw clean package
```

Start your application with the following command - here with the profile `production`:

```
java -Dspring.profiles.active=production -jar ./target/jte-0.0.1-SNAPSHOT.jar
```

If required, a Docker image can be created with the Spring Boot plugin. Add `SPRING_PROFILES_ACTIVE=production` as environment variable when running the container.

```
mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=io.bootify/jte
```

## Further readings

* [Maven docs](https://maven.apache.org/guides/index.html)  
* [Spring Boot reference](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/)  
* [Spring Data JPA reference](https://docs.spring.io/spring-data/jpa/reference/jpa.html)
* [Learn jte](https://jte.gg/)
* [Bootstrap docs](https://getbootstrap.com/docs/5.3/getting-started/introduction/)  
