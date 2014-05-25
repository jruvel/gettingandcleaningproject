## Data Dictionary - Getting and Cleaning Data Project - Human Activity Recognition 

"subject"

    identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

"activity"                          

    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

    Values built by using raw data activity id from y_test.txt and y_train.txt 
    and looking up the value from the activity_labels.txt
    
All observed variables that used mean() or std() 

    "time.bodyacc.mean.x"                "time.bodyacc.mean.y"               
    "time.bodyacc.mean.z"                "time.bodyacc.std.x"                
    "time.bodyacc.std.y"                 "time.bodyacc.std.z"                
    "time.gravityacc.mean.x"             "time.gravityacc.mean.y"            
    "time.gravityacc.mean.z"             "time.gravityacc.std.x"             
    "time.gravityacc.std.y"              "time.gravityacc.std.z"             
    "time.bodyaccjerk.mean.x"            "time.bodyaccjerk.mean.y"           
    "time.bodyaccjerk.mean.z"            "time.bodyaccjerk.std.x"            
    "time.bodyaccjerk.std.y"             "time.bodyaccjerk.std.z"            
    "time.bodygyro.mean.x"               "time.bodygyro.mean.y"              
    "time.bodygyro.mean.z"               "time.bodygyro.std.x"               
    "time.bodygyro.std.y"                "time.bodygyro.std.z"               
    "time.bodygyrojerk.mean.x"           "time.bodygyrojerk.mean.y"          
    "time.bodygyrojerk.mean.z"           "time.bodygyrojerk.std.x"           
    "time.bodygyrojerk.std.y"            "time.bodygyrojerk.std.z"           
    "time.bodyaccmag.mean"               "time.bodyaccmag.std"               
    "time.gravityaccmag.mean"            "time.gravityaccmag.std"            
    "time.bodyaccjerkmag.mean"           "time.bodyaccjerkmag.std"           
    "time.bodygyromag.mean"              "time.bodygyromag.std"              
    "time.bodygyrojerkmag.mean"          "time.bodygyrojerkmag.std"          
    "frequency.bodyacc.mean.x"           "frequency.bodyacc.mean.y"          
    "frequency.bodyacc.mean.z"           "frequency.bodyacc.std.x"           
    "frequency.bodyacc.std.y"            "frequency.bodyacc.std.z"           
    "frequency.bodyaccjerk.mean.x"       "frequency.bodyaccjerk.mean.y"      
    "frequency.bodyaccjerk.mean.z"       "frequency.bodyaccjerk.std.x"       
    "frequency.bodyaccjerk.std.y"        "frequency.bodyaccjerk.std.z"       
    "frequency.bodygyro.mean.x"          "frequency.bodygyro.mean.y"         
    "frequency.bodygyro.mean.z"          "frequency.bodygyro.std.x"          
    "frequency.bodygyro.std.y"           "frequency.bodygyro.std.z"          
    "frequency.bodyaccmag.mean"          "frequency.bodyaccmag.std"          
    "frequency.bodybodyaccjerkmag.mean"  "frequency.bodybodyaccjerkmag.std"  
    "frequency.bodybodygyromag.mean"     "frequency.bodybodygyromag.std"     
    "frequency.bodybodygyrojerkmag.mean" "frequency.bodybodygyrojerkmag.std"
    
    values are an average across all subject and activity combination 
    names transformed by adding back in time and frequency identifiers for t and f respectivly. 
    names were also transformed by being cleaned up - text was put to lower case, 
    special characters were removed or replaced with a "."
    
