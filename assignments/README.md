# Assignment Instructions

: 
### [Download the dataset](advanced_excel_assignment_data.xlsx)

**Submission Requirements:**
- **Excel File:** Submit the cleaned and processed Excel file with all your transformations, feature engineering, and visualizations.
- **Report:** A written report summarizing your analysis, findings, and recommendations.
- **File Upload Instructions:** Upload your Excel file and report to a cloud storage service (e.g., Google Drive, Dropbox) and provide the shared links in the assessment Google Form provided.

**Deadline:**
Submit your Excel file and report by 26th June 2024 at Midnight.

## Objective
The objective of this assignment is to analyze the supermarket sales dataset to derive actionable insights related to consumer behavior, sales performance per supermarket chain, category, and location, peak selling hours and days, product placement, and targeted promotions.

## Dataset
You have been provided with a dataset containing the following columns:
- **Supermarket:** Name of the supermarket chain
- **No_of_Items:** Number of items purchased in each transaction
- **Variation:** Number of item variations purchased
- **Total_Paid:** Total amount paid for the transaction
- **Type:** Payment type (e.g., cash, card, mpesa)
- **Food, Snack, Beverage, Consumables, High_End, Asset, Fixed_Asset:** Boolean indicators for purchased item types
- **Date:** Date of the transaction
- **Time:** Time of the transaction
- **Type_Market:** Type of market (e.g., chain, small)
- **Mall:** Whether it’s located in a mall or not
- **Location:** Specific location of the supermarket
- **Location_Category:** Location category (e.g., high, mid, low)
- **Day:** Day of the week

## Steps to Perform Data Analysis
1. **Define the Questions**
   - Formulate specific questions to guide your analysis (referencing the objectives above).
   - Example: "How do sales vary across different supermarket chains?"

2. **Data Preparation**
   - Ensure the data is appropriate for gaining insights as per your formulated questions from step 1.
   - **Convert Data to Table:** Select your data range and press Ctrl + T to convert it into an Excel Table format. Ensure to check the box for headers.
   - **Handle Missing Values:** Identify and handle missing values in critical columns.
   - **Format Headers:** Make headers visually appealing by changing them to uppercase and bold. Select the header row, go to the Home tab, click on the Bold button (B), and change the text to uppercase using the Change Case option in Excel.
   - **Format Data Types:** Correct formatting issues, especially for the Date and Time columns.
   - **Remove Duplicate Rows:** Check for and remove duplicate transactions to ensure each transaction is unique. Go to Data tab > Remove Duplicates, and select columns based on which duplicates should be checked.

3. **Feature Engineering**
   - Create additional columns (features) from existing ones that could aid in the analysis.
   - **Example features:** Day Type (weekend or weekday), Time of Day (morning, afternoon, evening), Year, etc. Use appropriate formulas (e.g., IF, AND, OR) as found in the Useful Formulas Worksheet within the assignment workbook.

4. **Data Analysis and Insights**
   - Use pivot tables to perform the analysis based on your questions from step 1.
   
   **Consumer Behavior Analysis:**
   - Analyze purchasing patterns based on day of the week, time of day, and product categories (Food, Snack, Beverage).
   - Identify popular product categories during specific times (morning vs. evening) and days (weekday vs. weekend).
   
   **Sales Performance:**
   - Evaluate sales performance per supermarket chain, category (e.g., food, snack), and location.
   - Compare average transaction amounts, number of items sold, and payment methods used across different segments.
   
   **Peak Selling Hours and Days:**
   - Determine peak selling hours (morning, afternoon) and days (weekday vs. weekend) based on transaction volume and total sales.
   - Use Time_Type and Day features to segment and analyze sales trends during specific times and days.
   
   **Product Placement and Promotions:**
   - Use insights to optimize product placement in supermarkets based on sales data.
   - Identify opportunities for targeted promotions (e.g., offering discounts on snacks during evening hours).

5. **Visualization and Reporting**
   - Create charts (bar charts, line graphs) or pivot charts to visualize key findings (sales trends, product preferences).
   
6. **Write a Report**
   - Summarize your findings in a report that includes:
     - Introduction: Purpose of the analysis.
     - Methodology: Steps taken during the analysis.
     - Results: Key findings from the analysis.
     - Recommendations: Actionable insights based on your findings.



**Evaluation Criteria:**
- Accuracy and Completeness: Correctness of data cleaning and transformation, completeness of the analysis.
- Insightfulness: Quality and relevance of the insights derived from the analysis.
- Clarity and Presentation: Clarity of the report and effectiveness of visualizations.
- Adherence to Instructions: Following the steps outlined in the instructions.


**Notes:**
- Document any assumptions made during the analysis.
- Include any challenges faced and how you overcame them in your report.
- Ensure visualizations are clear and properly labeled.

Good luck, and I look forward to seeing your insightful analyses!
