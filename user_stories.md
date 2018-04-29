**Sample Manager**<br>

The following is a basic summary of my cornerstone project for the Bloc Web Development Program:  A simple easy-to-use tool to help manage samples in the lab.  <add problem summary here><br>

**User Stories:**<br>
<ol>
    <li><strong>As a user I want to be able to add samples to a 'sampling schedule' as a sampling request. Each request will have one or more samples where each sample will be an object containing some basic properties:</strong><br> Difficulty Rating: 2<br><br>
    Requirements:
        <ul>
            <li>Requests can be added by using "add new request" form</li>
            <li>Each request contains one or more samples</li>
            <li>Each sample has parameters such as (id, tank, lot_id) </li>
        </ul>
    Tasks:
        <ul><li>Add Request model with <em>:due_date</em> and <em>:request_title</em> properties</li>
            <li>Add Sample model with descriptive properties<br> 
            {
                tank,
                lot_id,
                request_id (foreign key),
            } 
            </li>
            <li>Add a 'new request' form to the view</li>
        </ul>
    </li><br>
<li><strong>As a user I would like to select a sample type from a list of several different sample types</strong><br>Difficulty Rating: 2<br><br>
Requirements:
    <ul>
        <li>On Sample Request Form, a dropdown is available to select 'sample type' when adding new samples</li>
        <li>'sample type' is added to database as a parameter of the sample.</li>
        <li>'Sample type' is displayed when viewing samples on a request.</li>
    </ul>
Tasks:
    <ul>
        <li>Add column "sample_type" to Sample model </li>
        <li>Add dropdown to sample request form containing an array of all possible sample types<br>
        ["Stage 2", "Monthly-Lab", "Monthly-Taste", "Winemaker Request", "Cellar Work Order", "Re-check", "Pre-innoc", "Shipping", "Post-innoc", "Other"]
        </li>
    </ul>
</li><br>
<li> <strong>As a user I want to be able to add a sampling 'task' as a single one-off request or recurring over a particular interval (e.g. every tuesday and thursday, everyday, etc. )</strong><br>Difficulty Rating: 3<br><br>
    <not sure how to code this yet...will likely require generating a new sample associated with the same request>
    <cron job?>
    <rake task?>
    Requirements:
   <ul>
        <li>A new sample will be created on a set interval for a recurring request</li>
    </ul>
     Tasks:
    <ul>
        <li>add a 'recurring' checkbox to sample request form</li>
    </ul>
</li><br>
    
<li> <strong>As a user I want to be able to remove samples from the schedule as they are completed by selecting a "complete" checkbox</strong><br> Difficulty Rating: 1<br><br>
    Requirements:
    <ul>
        <li>A checkbox appears next to samples in a request</li>
        <li>When checked, the sample's status is changed to complete</li>
    </ul>
    Tasks:
    <ul>
        <li>Add column 'is_complete' to Sample Model with boolean value</li>
        <li>Add checkbox to sample view that when checked will set 
        is_complete to true</li>
    </ul>
     <checkbox to mark completed when checked, changes "is_Complete" to true and uses Date.now() to record "Date_completed"....not sure if the timestamp should be generated front-end or back-end>
</li><br>
<li><strong>As a user, I want to be able to delete requests and/or delete samples from a request</strong><br> Difficulty Rating: 2<br><br>
Requirements:
    <ul>
        <li>When clicking the "delete request" button, the request is deleted from the database after confirmation</li>
        <li>When clicking on the "delete sample" button the sample is deleted from the database after confirmation</li>
    </ul>
Tasks:
    <ul>
        <li>Add delete method to sample_controller.rb</li>
        <li>Add delete method to request_controller.rb</li>
    </ul>
</li><br>
<li> <strong>As a user, I want to be able to modify a request and or samples within a request</strong> <br> Difficulty Rating: 2<br><br>
Requirements:
    <ul>
        <li>After a request is created, it can have more samples added to it or sample parameters changed.</li>
    </ul>
    Tasks:
    <ul>
        <li>Add update method to sample_controller.rb</li>
        <li>Add update method to request_controller.rb</li>
    </ul>

</li>
   <br>
<li><strong>As a user I want unfinished samples to be moved to the next day if not yet completed</strong><br>Difficulty Rating: 2<br><br>
Requirements:<br>
    <ul>
        <li>On the schedule, incomplete samples from previous days will be shown on the current day's sample list. </li>
    </ul>

</li><br>
    <not sure if this should be done on the backend or the frontend>

<li><strong>As a user I want to be able to view the sampling schedule showing me the samples due for each day of the week</strong><br>Difficulty Rating: 2<br><br>
Requirements:
    <ul>
        <li>When clicking on the sample schedule, the samples will be sorted based on due date and will appear in the section associated with the day it is due.</li>
    </ul>
Tasks:
    <ul>
        <li>Create a view called 'Weekly view' with 5 sections, one for each day of the work week.</li>
        <li>Add logic to populate each day according to sample request due dates</li>
    </ul>
</li><br>
<li><strong>As a user I want to be able to toggle view  completed and/or incomplete samples or filter by date completed or due date </strong><br>Difficulty Rating: 2<br><br>
Requirements:
    <ul>
        <li>Completed and incomplete samples shown when "show completed" and "show incomplete" boxes are checked</li>
        <li>Only completed samples are shown when "show completed" box is checked.</li>
        <li>Only incomplete samples are shown when "show incomplete" box is checked.</li>
    </ul>
Tasks:
    <ul>
        <li>Add User selection buttons to show only incomplete samples or only completed samples. Use .map() or .filter() to only show completed, incomplete, etc.</li>
    </ul>
</li><br>
<li><strong>As a user I want to be able to request samples in large blocks by uploading an .xls or csv file</strong><br>Difficulty Rating: 3<br><br>
Requirements:
    <ul>
        <li>Samples added to request when csv file uploaded</li>
        <li>New sample parameters match sample parameters listed in csv file </li>
    </ul>
<making sure the files are formatted correctly might be a pain in the ass>
</li><br>
    
<li><strong>As a user I would like to be able to mark urgent samples as high priority</strong><br>Difficulty Rating: 1<br><br>
Requirements:
    <ul>
        <li>High priority samples stand out from regular samples</li>
    </ul>
Tasks:
    <ul><li>Add 'is_high_priority' column to Sample Model</li>
        <li>Add something to view to mark samples as high priority and differentiate normal priority samples from regular samples in the view</li>
    </ul>
</li><br>
<li><strong>As a user I want this app to be mobile friendly and be usable from a tablet or cellphone as well as from a desktop</strong><br>Difficulty Rating: 3<br><br>
Requirements:
    <ul>
        <li>Samples can be marked off as complete from a tablet or cellphone.</li>
    </ul>
Tasks:
    <ul>
        <li>Add Media Queries for mobile devices</li>
    </ul>
</li><br>
<li><strong>As a <em>developer </em>want to be able to connect to the apps database through an api to allow for connectivity to other applications (Slackbot, Amazon Alexa, Native Mobile app, etc)</strong><br>Difficulty Rating: 3<br><br>
Requirements:
    <ul>
        <li>Build a RESTful JSON API that can be accessed via HTTP requests</li>
    </ul>
Tasks:
    <ul>
        <li>Add API namespace. </li>
        <li>Add API controllers for CRUD operations</li>
    </ul>
</li><br>
<li>
<strong>As a user I would like this app integrated into Sharepoint or Slack.</strong>
<br>Difficulty Rating: 4<br><br>
    <Will using Rails make this easier or harder?>
</li><br>
<li>
<strong>As a user I would like to be able to print individual sample labels for each sample with all the relevant sample properties listed.</strong><br>Difficulty Rating: 3<br><br>
</li><br>
<li><strong>As a user I would like to be able to create a testing record with all analytical testing and associate it to a sample set</strong><br>Difficulty Rating: 4<br><br>
</li><br>
<li>
<strong>As a user I would like this app to have connectivity to the cellar work-order database to allow for auto-generated sample requests when work orders are created that require lab testing.</strong><br>Difficulty Rating: 4<br><br>
</li><br>

<ol/>