### How to Add and Manage Project Dependencies

In Maven, dependencies are specified in your project's `pom.xml` file. Here's how you can add and manage them:

1. **Specify Dependencies in `pom.xml`**:
   - Each dependency is defined within the `<dependencies>` section of the `pom.xml`.
   - You need to specify the `groupId`, `artifactId`, and `version` for each dependency.

   Example:
   ```xml
   <dependencies>
       <dependency>
           <groupId>org.apache.commons</groupId>
           <artifactId>commons-lang3</artifactId>
           <version>3.12.0</version>
       </dependency>
   </dependencies>
   ```
