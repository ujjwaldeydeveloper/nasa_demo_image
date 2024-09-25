# nasa_image_demo

A new Flutter project.

Develop a feature to fetch and display the Astronomy Picture of the Day from NASA’s API (https://
api.nasa.gov). The feature should adhere to the following specifications:
Use Cases:
1. Loading Indicator: Initially, display a loading indicator with a label saying “fetching latest pic of the day”, while
the API request is being processed.
2. Success Handling: Once the response is received, show a toast notification indicating success, remove the loading
indicator, and display the Astronomy Picture of the Day along with any accompanying message.
3. Error Handling: Handle errors gracefully:
API Request Errors: If an error occurs during the API request, display an alert to inform the user.
General Error Handling: Ensure that any other errors encountered during the process are also handled,
and appropriate alerts are displayed to the user as needed.
Expectations:
1. Clean Architecture: Implement a well-structured architecture ensuring separation of concerns and modularity.
2. State Management: Use Bloc (Cubit) for state management.
3. Clean BDD: Follow clean Behaviour-Driven Development (BDD) practices to ensure clear and maintainable code.
4. SOLID Principles: Apply SOLID principles to enhance the testability, readability, maintainability, and scalability of
the code.
Note: The focus is on the quality of the code rather than the output. We are particularly interested in testability, readability,
maintainability, and scalability.