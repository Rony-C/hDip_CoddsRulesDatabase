# hDip_CoddsRulesDatabase
A database project built adhering to Codds Rules.

I used mySQL and MySQLWorkbench for the project. This was to help me work efficiently with a GUI and also with SQL queries as I am more familiar with Workbench than XAMPP. The address of each owner and staff members needs to be added first. Both tables have address_id as a non-null field. Records cannot be reliably added without an existing address_id.
I created the views today and open_appointments_today. For the purposes of the assignment today and open_appointments_today is set to April 2023. In a production environment this can be changed to dynamically update by getting todays date and comparing that against the date_time value. The contents of the views can be updated which in turn updates the corresponding table. For example, you could update the isCancelled value of an appointment in the today view. This would then remove it from the open_appointments_today view.
