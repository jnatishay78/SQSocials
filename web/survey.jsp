<%-- 
    Document   : survey
    Created on : Aug 8, 2022, 2:56:02 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SchbangQ Survey Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />

</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap');
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    html {
        font-size: 10px;
    }
    
    body {
        
        background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("../images/bg1.png");
        background-repeat: no-repeat;
        background-size: cover;
        background-position: bottom center;
        background-attachment: fixed;
        font-family: 'Montserrat', sans-serif;
        font-size: 1.6rem;
        line-height: 1.5;
        color: #fff;
    }
    
    #form-container {
        max-width: 800px;
        margin: 32px auto;
        padding: 32px 5%;
        background-color: rgba(0, 0, 0, 0.8);
        border: 2px solid #000;
        border-radius: 8px;
    }
    
    @media (max-width: 800px) {
        #form-container {
            margin: 0 auto;
        }
    }
    
    header {
        width: 100%;
        display: flex;
        flex-direction: column;
        margin-bottom: 40px;
    }
    
    #logo {
        margin: 0 auto 32px auto;
    }
    
    #survey-form {
        width: 100%;
        margin: 0 auto;
    }
    
    #title {
        font-weight: 500;
        text-align: center;
        margin-bottom: 16px;
    }
    
    #description {
        font-size: 1.8rem;
    }
    
    .input-group {
        display: flex;
        flex-direction: column;
        margin-bottom: 40px;
    }
    
    .question {
        margin-bottom: 8px;
        font-size: 1.8rem;
        letter-spacing: 1px;
        font-weight: 500;
    }
    
    .question sup {
        font-size: 1.2rem;
        margin-left: 4px;
    }
    
    .input-box {
        color: black;
        height: 48px;
        max-width: 50%;
        padding-left: 12px;
        font-family: inherit;
        font-size: 1.6rem;
        font-weight: 600;
        border: 1px solid #000;
        border-radius: 8px;
        background-color: #f5f5f5;
        transition: 0.3s ease;
    }
    
    .input-box1 {
        color: #000;
        height: 48px;
        max-width: 40%;
        padding-left: 12px;
        font-family: inherit;
        font-size: 1.6rem;
        font-weight: 600;
        border: 1px solid #000;
        border-radius: 8px;
        background-color: #f5f5f5;
        transition: 0.3s ease;
    }
    
    .input-box2 {
        height: 48px;
        max-width: 10%;
        padding-left: 12px;
        font-family: inherit;
        font-size: 1.6rem;
        font-weight: 600;
        border: 1px solid #000;
        border-radius: 8px;
        background-color: #f5f5f5;
        transition: 0.3s ease;
    }
    
    .input-box:focus {
        outline: none;
        box-shadow: 0 -4px 0 #00c969 inset;
        background-color: #fff;
    }
    
    input[type="number"] {
        padding-right: 12px;
    }
    
    .checkbox-group input,
    .radio-group input {
        width: 18px;
        height: 18px;
    }
    
    .checkbox-group label,
    .radio-group label {
        display: flex;
        align-items: center;
        font-size: 1.6rem;
        color: #fff;
        line-height: 2;
        gap: 8px;
        font-weight: 400;
        margin-left: 8px;
    }
    
    .textarea {
        height: 120px;
        padding: 12px;
    }
    
    #submit {
        cursor: pointer;
        width: 50%;
        display: flex;
        text-align: center;
        align-items: center;
        justify-content: center;
        font-size: 1.6rem;
        font-weight: 600;
        font-family: inherit;
        padding: 12px 16px;
        text-transform: uppercase;
        letter-spacing: 1px;
        background-color: #00df75;
        border: 1px solid #009c52;
        border-radius: 8px;
        box-shadow: 0 5px 0 #009c52;
        filter: sepia(40%);
        transition: all 0.3s ease;
        margin: auto;
        display: grid;
    }
    
    #submit:hover {
        filter: sepia(0);
    }
    
    #submit:focus {
        transform: translateY(4px);
        box-shadow: none;
    }
    /* clickable tabs*/
    
    .tabs {
        position: relative;
        margin: 25px 0;
        clear: both;
        min-height: 13px;
        padding: 0.5em;
    }
    
    .tab {
        float: left;
    }
    
    .tab label {
        background-color: #fff;
        color: #0f0c29;
        padding: 10px 35px;
        border: 2px solid #fff;
        border-radius: 4px;
        margin-left: -1px;
        position: relative;
        left: 1px;
    }
    
    .tab [type=radio] {
        display: none;
    }
    
    [type=radio]:checked~label {
        background-color: #E5E4E2;
        border: 2px solid #E5E4E2;
    }
    
    .inner {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-evenly;
        padding: 2em;
        margin: 0 auto;
        width: 80%;
        max-width: 900px;
        padding: 10px;
        padding-top: 20px;
    }
</style>

<body>

    <a href="superadmin.jsp" target="_blank" style="margin: 20px;">

        <button class="btn btn-dark"> <i class="fa fa-arrow-left" aria-hidden="true"></i>  Back</button>
    </a>
    </div>
    <div id="form-container">
        <header>
            <div id="logo">
                <img id="logo-img" src="assets/images/favicon.png" style="border: 1px solid white;">
            </div>

            <h1 id="title">SchbangQ Survey/Feedback Form</h1>
            <p id="description">We would love to hear from you! Please take a moment to let us know about your experience at SchbangQ.</p>
            <h4><i>All answers will be kept strictly confidential.</i></h4>
        </header>

        <form id="survey-form" action="surveydata.jsp">

            <div class="input-group text-group">
                <label for="name" id="name-label" class="question">Name*</label>

                <input type="text" id="name" class="input-box" name="N" placeholder="Enter your name" required></input>
            </div>

            <div class="input-group email-group">
                <label for="email" id="email-label" class="question">E-mail*</label>

                <input type="email" id="email" class="input-box" name="E" placeholder="Enter your email" required></input>
            </div>

            <div class="input-group number-grop">
                <label for="number" id="number-label" class="question">Your age<span style="font-size: 20px;">(optional)</span></label>

                <input type="number" id="number" class="input-box" min="12" max="99" name="A" placeholder="Enter your Age"></input>
            </div>

            <div class=" input-group checkbox-group">
                <p class="question">What is your gender?</p>

                <label>
              <input type="checkbox" value="male" name="G">
              Male
            </label>

                <label>
              <input type="checkbox" value="female" name="G">
              Female
            </label>

                <label>
              <input type="checkbox" value="non-binary" name="G">
              Other
            </label>

                <label>
              <input type="checkbox" value="transgender" name="G">
              I prefer not to say
            </label>
            </div>

            <div class="input-group select-group">
                <label for="dropdown" class="question">Job Level</label>
                <select id="dropdown" class="input-box1" name="J">
              <option disabled value selected>Select an option</option>
              <option value="junior">Junior</option>
              <option value="senior">Senior</option>
              <option value="lead">Lead</option>
              <option value="manager">Manager</option>
              <option value="executive">Executive</option>
            </select>
            </div>

            <div class="input-group number-grop">
                <label for="number" id="number-label" class="question">How long have you been working for the company*</label>

                <input type="number" id="number" class="input-box1" min="1" max="25" name="D" placeholder="Enter the duration"></input>
            </div>

            <div class="leftTab">
                <div class="labels">
                    <label for="assessment1" id="tab1-label" class="question"> How meaningful is your work*</label>
                </div>
                <div class="rightTab">
                    <div class="tabs">
                        <div class="tab">
                            <input class="assessment" id="tab-1" value='0' type="radio" name="M" />
                            <label for="tab-1">0</label>

                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-2" value='1' type="radio" name="M" />
                            <label for="tab-2">1</label>
                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-3" value='2' type="radio" name="M" />
                            <label for="tab-3">2</label>
                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-4" value='3' type="radio" name="M" />
                            <label for="tab-4">3</label>
                        </div>

                    </div>
                </div>
            </div>
            <br>

            <div class="leftTab">
                <div class="labels">
                    <label for="assessment2" id="tab2-label" class="question">How much does your job give you a sense of personal satisfaction*</label>
                </div>
                <div class="rightTab">

                    <div class="tabs">
                        <div class="tab">
                            <input class="assessment" id="tab-5" value='0' type="radio" name="S" />
                            <label for="tab-5">0</label>
                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-6" value='1' type="radio" name="S" />
                            <label for="tab-6">1</label>
                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-7" value='2' type="radio" name="S" />
                            <label for="tab-7">2</label>
                        </div>

                        <div class="tab">
                            <input class="assessment" id="tab-8" value='3' type="radio" name="S" />
                            <label for="tab-8">3</label>
                        </div>

                    </div>
                </div>
            </div>
            <br>

            <div class="input-group radio-group">
                <p class="question">How likely are you to look within the company for your next position*</p>

                <label>
              <input type="radio" value="very-satisfied" name="NE">Not likely
            </label>

                <label>
              <input type="radio" value="satisfied" name="NE">
              Maybe
            </label>

                <label>
              <input type="radio" value="neutral" name="NE">
              Extremely likely
            </label>

                <label>
              <input type="radio" value="dissatisfied" name="NE">
              I prefer not to say
            </label>
            </div>

            <div class="input-group checkbox-group">
                <p class="question">Things that should be improved in the future</br> (Check all that apply)</p>

                <label>
              <input type="checkbox" value="very-satisfied" name="F">
              Opportunites for Growth
            </label>

                <label>
              <input type="checkbox" value="satisfied" name="F">
              Compensation and Benefits
            </label>

                <label>
              <input type="checkbox" value="neutral" name="F">
              Career Development
            </label>

                <label>
              <input type="checkbox" value="dissatisfied" name="F">
              Relationship with Management
            </label>

                <label>
              <input type="checkbox" value="very-dissatisfied" name="F">
              Work Environment
            </label>

                <label>
              <input type="checkbox" value="very-dissatisfied" name="F">
              Diversity and Inclusion
            </label>

                <label>
              <input type="checkbox" value="very-dissatisfied" name="F">
              Food and Snacks(Canteen)
            </label>

            </div>

            <div class=" input-group checkbox-group">
                <p class="question">Want gym in the office</p>

                <label>
            <input type="radio" value="yes" name="GY">
            Yes
          </label>

                <label>
            <input type="radio" value="no" name="GY">
            No
          </label>
            </div>

            <div class="input-group">
                <p class="question">Any Comments, Concerns or Suggestions?<br><small>Remember that answers will be treated with the strictest confidence.</small></p>
                <textarea class="input-box textarea" name="C" placeholder="Type here..."></textarea>
            </div>

            <button type="submit" id="submit">
            Submit Form
          </button>

        </form>
    </div>
</body>

</html>