public with sharing class challengeVariables {
    public static void challengeVariables() {

    // My solution
    map<String,List<String>> categoryPosts = new Map<String,List<String>>();

    List<String> apexPosts = new List<String>{'Demystifing Apex Colletions','Datatypes and variables in Apex'};
    List<String> lightiningPosts = new List<String>{'Events in Aura Framework', 'Developing reusable components'};
    
    categoryPosts.put('Apex',apexPosts);
    categoryPosts.put('Lightning', lightiningPosts);

    System.debug(categoryPosts);

        
    }
}
