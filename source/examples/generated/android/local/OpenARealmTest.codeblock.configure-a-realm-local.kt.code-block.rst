.. code-block:: kotlin

   val config = RealmConfiguration.Builder()
       .name("alternate-realm")
       .allowQueriesOnUiThread(true)
       .allowWritesOnUiThread(true)
       .compactOnLaunch()
       .build()
   val realm = Realm.getInstance(config)
   Log.v("EXAMPLE", "Successfully opened a realm at: ${realm.path}")
