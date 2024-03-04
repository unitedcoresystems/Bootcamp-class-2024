## Exercise: Create a Banking Welcome Script in Bash

**Objective:** Write a Bash script that simulates a basic interaction with a bank customer. Your script should greet the customer, request their name, welcome them to the bank, ask for their card and PIN, authenticate them, and thank them for banking with you.

### Requirements:

1. **Greet the Customer**
   - Your script should start by greeting the customer with "Good morning".

2. **Ask for the Customer's Name**
   - Prompt the customer to enter their name with "Please enter your name".

3. **Capture the Customer's Name**
   - Use the `read` command to allow the customer to input their name. Store this input in a variable for later use.

4. **Welcome the Customer**
   - After capturing the name, the script should welcome the customer to the bank using their name. For example, if the customer enters "John", the script should respond with "John, Welcome to Bank of America".

5. **Request for the Customer's Card**
   - Prompt the customer with "Please insert your card". Since this is a simulation, you can simulate the card insertion by using `sleep` for a few seconds.

6. **Request for the Customer's PIN**
   - After the simulated card insertion, ask the customer to enter their PIN with "Please enter your pin".

7. **Capture the PIN**
   - Use the `read` command to allow the customer to input their PIN. You don't need to authenticate the PIN for this exercise.

8. **Authenticate the User**
   - Simulate user authentication by displaying "You are authenticated."

9. **Appreciate the Customer**
   - End the script by thanking the customer with "Thanks for banking with Bank of America".

### Guidelines:

- Ensure your script includes comments explaining each step.
- Test your script to make sure it runs as expected.
- Bonus: Add error checking to ensure the name and PIN are not left blank.

### Submission:

Submit your script file named `bank_welcome.sh`. Make sure your script is executable and includes comments for clarity.

---

This exercise should provide a practical opportunity to practice scripting with user interaction, variables, and control flow in Bash.