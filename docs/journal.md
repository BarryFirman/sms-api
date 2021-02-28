# Approach
I decided to tackle the API first so I knew the required shape of the request when I submitted data from the frontend.

# The API
I took a mostly tests-first BDD apporoach to make the tests as easily relatable to this project as possible.

The commit statements - especially in the API - show a reasonably good timeline of events.

I created the tests - as per the requirements - for the model first and then got those to pass.

I repeated this with the controller.


To make it as close to the project specification as possible I created a spereate front-end app. I'm afraid I don't have any experience with React at this point, though I have worked with Javascript in many places including vanilla JS with Rails and PHP projects Stimulus with RoR projects, node.js projects and Salesforce front-end. I have bought [this course]: https://www.udemy.com/course/react-the-complete-guide-incl-redux/ because, basically I've been meaning to to get up to speed with React for some time and I'm tired of telling people I don't have any experience with it. I don't see learning React as a big step for me to take.

# The Frontend
First thing I will say about the front end is, I have not completed the Input Mask for the Phone Number field. Basically I ran out of time.

The styling is just about there and validating the phone number on submission works.

The second thing I have to say about the frontend is the HTML code looks awful - sorry. It looks like I tripped over with a bucketful of code and spilled it into an editor.

I'm not a massive fan of standard Rails views for this reason. I prefer to use ViewComponents tied in with Stimulus to create full, encapsulated components (with the HTML, CSS and Javascript all in the same directory).

# Conclusion
I believe I have completed the majority of the task - albeit fairly hacky in places on the frontend. Again, I realise I'm not a React developer but hopfully I've done enough to show I can create Rails apps and style and use Javascript at the frontend.

