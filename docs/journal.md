# Approach
I decided to tackle the API first so I knew the required shape of the request when I submitted data from the frontend.

# The API
I took a mostly tests-first BDD apporoach to make the tests as easily relatable to this project as possible.

The commit statements - especially in the API - show a reasonably good timeline of events.

I created the tests - as per the requirements - for the model first and then got those to pass.

I repeated this with the controller.

The code I have written in the API is coded in a style specifically for this project. In a more enterprise situation I would have DRYed it up a lot more. I tend to be a bit of a stickler for generalised, reusable code and class structures.

To make it as close to the project specification as possible I created a separate front-end app. I'm afraid I don't have any experience with React at this point, though I have worked with Javascript in many places including vanilla JS with Rails and PHP projects Stimulus with RoR projects, node.js projects and Salesforce front-end. I have bought [this course]: https://www.udemy.com/course/react-the-complete-guide-incl-redux/ because, basically I've been meaning to to get up to speed with React for some time and I'm tired of telling people I don't have any experience with it. I don't see learning React as a big step for me to take.

# The Frontend
The first thing I have to say about the frontend is the HTML code looks awful - sorry. It looks like I tripped over with a bucketful of code and spilled it into an editor.

The validator and input mask basically works but it is very hacky. I also wanted to show some workings out rather than finding something to use that would disguise the work, hence far too many _if_ statements.

Two known bugs are:
1.  If you mash the keyboard the input mask doesn't kick in.
2. You can type as many '+'s you want anywhere in the field.

It's just time that is my enemy here, ideally I would have sorted these out before submission.

The frontend is hard coded to use the API on localhost, port 8082. This can be changed in the PhoneNumber Controller if required.

I have purposefully not made the provision to render any errors from the API at the frontend as there was nothing about that in the requirements (and I've been accused of over-engineering before so thought I'd have a go at not doing that this time!)

There are few _important!_ modifiers in the CSS too, so I haven't got the CSS selector and inheritance quite right. The CSS is something I would pay more attention to and make slicker and prettier is an enterprise situation.

# Conclusion
I'm not a massive fan of standard Rails views because they easily allow for the type of work to be produced like I have here. I prefer to use ViewComponents tied in with Stimulus to create full, encapsulated components (with the HTML, CSS and Javascript all in the same directory - if it helps my case in terms of JavaScript and frontend ability I can share this on a screen share).

I believe I have completed the majority of the task - albeit fairly hacky in places on the frontend. Again, I realise I'm not a React developer but hopfully I've done enough to show I can create Rails apps and style them, and use Javascript at the frontend.

