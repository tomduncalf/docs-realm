.. code-block:: kotlin

   val tasksQuery = realm.where(ProjectTask::class.java)
   Log.i("EXAMPLE", "High priority tasks: " + tasksQuery.greaterThan("priority", 5).count())
   Log.i("EXAMPLE", "Just-started or short tasks: " + tasksQuery.between("progressMinutes", 1, 10).count())
   Log.i("EXAMPLE", "Unassigned tasks: " + tasksQuery.isNull("assignee").count())
   Log.i("EXAMPLE", "Ali or Jamie's tasks: " + tasksQuery.`in`("assignee", arrayOf("Ali", "Jamie")).count())
