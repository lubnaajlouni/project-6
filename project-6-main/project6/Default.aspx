<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
 
     <style>
         .donation-cat {
             border-radius: 50%;
             width: 400px;
             /*height:400px;*/
             box-shadow: 10px 10px 5px #aaaaaa;
         }

         #BodyContent {
             padding-left: 0px;
             padding-right: 0px;
         }

         .carousel-caption {
             top: 245px;
         }

         .box1 {
             color: #1A4D2E;
         }
         /*.box:hover{
    transition:ease 5s;
    opacity:0.7;
}*/
         .box:hover img,
         .box.hover img {
             -webkit-transform: scale(1) rotate(7deg);
             transform: scale(1) rotate(7deg);
             transition: ease 1s;
             opacity: 0.7;
         }

         .iconn {
             font-size: 50px;
         }

         .collect {
             color: #FF9F29;
         }

         .cont2 {
             display: flex;
             flex-direction: row;
             margin-top: 8%;
             width: 100%;
             background-color: #FF9F29;
         }

         .textplace1 {
             width: 50%;
             font-size: 18px;
             font-family: 'Times New Roman', Times, serif;
             margin-left: 5%;
         }

         .aboutphoto2 {
             width: 45%;
             height: auto;
             background-image: url(/imgs/rama.png);
             background-size: cover;
             background-repeat: no-repeat;
         }

         .single-cat {
             color: #FF9F29;
         }
         /*  a {
  background: linear-gradient(0deg, #FF9F29, #FF9F29) no-repeat right bottom / 0 var(--bg-h);
  transition: background-size 350ms;
  --bg-h: 100%;
}
a:where(:hover, :focus-visible) {
  background-size: 100% var(--bg-h);
  background-position-x: left;
}

.underline {
  padding-bottom: 2px;
  --bg-h: 2px;
}



a {
  text-decoration: none;
  color: inherit;
  line-height: 1;
}*/

         .head-btn {
             position: relative;
             height: 50px;
             width: 150px;
             color: #FFF;
             font-size: 15px;
             font-weight: 600;
             letter-spacing: 2px;
             background-color: #0F3721;
             transition: all 0.5s;
             border: none;
         }

             .head-btn::before {
                 position: absolute;
                 content: '';
                 top: 0;
                 left: 0;
                 width: 100%;
                 height: 100%;
                 background-color: rgba(29, 255, 86, 0.281);
                 border-radius: 5px;
                 transition: all 0.3s;
                 z-index: 1;
             }

             .head-btn:hover::before {
                 opacity: 0;
                 transform: scale(0.7,0.7);
             }

             .head-btn::after {
                 content: '';
                 position: absolute;
                 top: 0;
                 left: 0;
                 width: 100%;
                 height: 100%;
                 transition: all 0.4s;
                 border: 1px solid rgba(29, 255, 86, 0.281);
                 border-radius: 5px;
                 transform: scale(1.5,1.5);
                 opacity: 0;
                 z-index: 1;
             }

             .head-btn:hover::after {
                 opacity: 1;
                 transform: scale(1,1);
             }

         /*///////////////////////////////////////////////////////////////////////////
*/
         h1 {
             text-align: center;
         }

         h2 {
             margin: 0;
         }

         #multi-step-form-container {
             margin-top: 5rem;
         }

         .text-center {
             text-align: center;
         }

         .mx-auto {
             margin-left: auto;
             margin-right: auto;
         }

         .pl-0 {
             padding-left: 0;
         }

         .buttontt {
             padding: 0.7rem 1.5rem;
             border: 1px solid #4361ee;
             background-color: #1A4D2E;
             color: #fff;
             border-radius: 5px;
             cursor: pointer;
         }

         .submitbtn {
             border: 1px solid #FF9F29;
             background-color: #FF9F29;
         }

         .mtt {
             margin-top: 2rem;
         }

         .d-none {
             display: none;
         }

         .form-step {
             border: 1px solid #FF9F29;
             border-radius: 20px;
             padding: 3rem;
             text-align: center;
         }

         .font-normal {
             font-weight: normal;
         }

         ul.form-stepper {
             counter-reset: section;
             margin-bottom: 3rem;
         }

             ul.form-stepper .form-stepper-circle {
                 position: relative;
             }

                 ul.form-stepper .form-stepper-circle span {
                     position: absolute;
                     top: 50%;
                     left: 50%;
                     transform: translateY(-50%) translateX(-50%);
                 }

         .form-stepper-horizontal {
             position: relative;
             display: -webkit-box;
             display: -ms-flexbox;
             display: flex;
             -webkit-box-pack: justify;
             -ms-flex-pack: justify;
             justify-content: space-between;
         }

         ul.form-stepper > li:not(:last-of-type) {
             margin-bottom: 0.625rem;
             -webkit-transition: margin-bottom 0.4s;
             -o-transition: margin-bottom 0.4s;
             transition: margin-bottom 0.4s;
         }

         .form-stepper-horizontal > li:not(:last-of-type) {
             margin-bottom: 0 !important;
         }

         .form-stepper-horizontal li {
             position: relative;
             display: -webkit-box;
             display: -ms-flexbox;
             display: flex;
             -webkit-box-flex: 1;
             -ms-flex: 1;
             flex: 1;
             -webkit-box-align: start;
             -ms-flex-align: start;
             align-items: start;
             -webkit-transition: 0.5s;
             transition: 0.5s;
         }

             .form-stepper-horizontal li:not(:last-child):after {
                 position: relative;
                 -webkit-box-flex: 1;
                 -ms-flex: 1;
                 flex: 1;
                 height: 1px;
                 content: "";
                 top: 32%;
             }

             .form-stepper-horizontal li:after {
                 background-color: #dee2e6;
             }

             .form-stepper-horizontal li.form-stepper-completed:after {
                 background-color: #4da3ff;
             }

             .form-stepper-horizontal li:last-child {
                 flex: unset;
             }

         ul.form-stepper li a .form-stepper-circle {
             display: inline-block;
             width: 40px;
             height: 40px;
             margin-right: 0;
             line-height: 1.7rem;
             text-align: center;
             background: rgba(0, 0, 0, 0.38);
             border-radius: 50%;
         }

         .form-stepper .form-stepper-active .form-stepper-circle {
             background-color: #FF9F29 !important;
             color: #fff;
         }

         .form-stepper .form-stepper-active .labeltt {
             color: #FF9F29 !important;
         }

         .form-stepper .form-stepper-active .form-stepper-circle:hover {
             background-color: #4361ee !important;
             color: #fff !important;
         }

         .form-stepper .form-stepper-unfinished .form-stepper-circle {
             background-color: #f8f7ff;
         }

         .form-stepper .form-stepper-completed .form-stepper-circle {
             background-color: #1A4D2E !important;
             color: #fff;
         }

         .form-stepper .form-stepper-completed .labeltt {
             color: #0e9594 !important;
         }

         .form-stepper .form-stepper-completed .form-stepper-circle:hover {
             background-color: #0e9594 !important;
             color: #fff !important;
         }

         .form-stepper .form-stepper-active span.text-muted {
             color: #fff !important;
         }

         .form-stepper .form-stepper-completed span.text-muted {
             color: #fff !important;
         }

         .form-stepper .labeltt {
             font-size: 1rem;
             margin-top: 0.5rem;
         }

         .form-stepper a {
             cursor: default;
         }

         /*    .backk {
             background-image: url(/imgs/BACK.png);
             background-size: 500px;
         }*/
         .animate-charcter {
             background-image: linear-gradient( -225deg, rgba(0, 0, 0, 0.1) 0%, #1A4D2E 29%, #FAC710 67%, #1A4D2E 100% );
             background-size: auto auto;
             background-clip: border-box;
             background-size: 200% auto;
             color: #fff;
             background-clip: text;
             text-fill-color: transparent;
             -webkit-background-clip: text;
             -webkit-text-fill-color: transparent;
             animation: textclip 5s linear infinite;
             display: inline-block;
             font-weight: 900;
             font-size: 33px;
         }

         @keyframes textclip {
             to {
                 background-position: 200% center;
             }
         }

         @media only screen and (min-device-width: 0px) and (max-device-width: 480px) {
             .donation-cat {
                 width: 200px;
             }

             .carousel-caption {
                 top: 25px;
             }

             h2 {
                 font-size: 10px;
             }

             .head-btn {
                 height: 30px;
                 width: 60px;
                 font-size: 10px;
             }

             body {
                 padding-top: 0px;
                 padding-bottom: 0px;
             }

             .body-content {
                 padding-left: 0px;
                 padding-right: 0px;
                 padding-top: 51px;
             }

             .animate-charcter {
                 font-size: 22px;
             }

             .iconn {
                 font-size: 26px;
             }
         }

         @media only screen and (min-device-width: 481px) and (max-device-width: 768px) {
             .donation-cat {
                 width: 300px;
             }

             .carousel-caption {
                 top: 95px;
             }

             h2 {
                 font-size: 20px;
             }
         }
         /*------------------------------------------------------------
*/
     </style>
<div>
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="/imgs/1.png">
              <div class="carousel-caption">
     <h2>“We are helping to make the world better, greener, healthier, and livable place again; by providing a platform that contributes to helping those interested in agriculture.”</h2> <br />
                 <asp:Button ID="btn1" class="head-btn" OnClick="btn1_Click" runat="server" Text="Donate Now" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" class="head-btn" OnClick="btn1_Click" runat="server" Text="Benefit Now" /></div>


      </div>

  



      <div class="item">
        <img src="/imgs/2.png">
        <div class="carousel-caption">
        <h2>“We are helping to make the world better, greener, healthier, and livable place again; by providing a platform that contributes to helping those interested in agriculture.”</h2><br />
            <asp:Button ID="Button3" class="head-btn" OnClick="btn1_Click" runat="server" Text="Donate Now" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" class="head-btn" OnClick="btn1_Click" runat="server" Text="Benefit Now" /></div>

        
      </div>

      <div class="item">
        <img src="/imgs/3.png">
     <div class="carousel-caption">
         <div>
        <h2>“We are helping to make the world better, greener, healthier, and livable place again; by providing a platform that contributes to helping those interested in agriculture.”</h2> <br />
     <asp:Button ID="Button5" class="head-btn" OnClick="btn1_Click" runat="server" Text="Donate Now" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" class="head-btn" OnClick="btn1_Click" runat="server" Text="Benefit Now" /></div>
         </div>
      </div>
    </div>


    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>

    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
</div>
 
  
    <h1><b class="box1">          <div class="container">
  <div class="row">
    <div class="col-md-12 text-center">
      <h3 class="animate-charcter">What We Collect</h3>
    </div>
  </div>
</div></b></h1>   
    <hr />
    <br />
    <br />
       <div style="display:flex; flex-wrap:wrap; justify-content:space-around; text-align:center;  ">

      <div class="box1">
                <div class="iconn"><i class="fa fa-pagelines" aria-hidden="true"><br /><b class="collect">Seeds</b></i>
</div>
                <div ><p style="text-align:center;"> Seeds are everywhere in the world.</p><p> They allow trees to grow,  plants to</p> <p> produce fruit, and even give much needed</p><p> shade when it is too hot outside,</p><p> and it is easy to Plant and growing</p><p> and They are diverse and can be grown in </p><p>various environments and terrains.</p>

                    <p></p>
                </div>
            </div>
               <div class="box1">
                <div class="iconn"><i class="fa fa-tree" aria-hidden="true"><br /><b class="collect">Trees</b></i>
</div>
                <div ><p style="text-align:center;">      Tree, woody plant that regularly </p><p> renews its growth (perennial).</p><p> Most plants classified as trees have a single </p><p>self-supporting trunk containing woody tissues,</p><p> and in most species the trunk</p><p> produces secondary limbs, called branches, </p><p>The best time to plant trees is now</p>

                    <p></p>
                </div>
            </div>
      <div class="box1">
                <div class="iconn"><i class="fa fa-leaf" aria-hidden="true"><br /><b class="collect">Seedlings</b></i></div>
                <div ><p style="text-align:center;"> A seedling is a young sporophyte </p><p>especially one that develops from</p><p> an embryo from a seed. Seedlings emerge</p><p> from seed that germinates. </p><p>Germination is the process that leads</p><p> to the sprouting of a seedling</p><p> from a seed of a spermatophyte,</p>

                    <p></p>
                </div>
            </div>
         </div>
    <hr />
    <br />
    <br />

 
      
    <h1><b class="box1">          <div class="container">
  <div class="row">
    <div class="col-md-12 text-center">
    <h3 class="animate-charcter" id="beeee">Benefit Now</h3>
    </div>
  </div>
</div></b></h1>   
   <br />
    <br />
     <div style="display:flex; flex-wrap:wrap; justify-content:space-around; text-align:center;  ">
    <div class="box">
             <a href="Donation-tree.aspx?category_id=3" class="underline">    <div><img class="donation-cat"" alt="" src="/imgs/cat3.jpg"/></div>
                <div ><br /><h2 class="single-cat"><b>Seeds</b></h2>
                    <p></p>
                </div></a>
            </div>
      <div class="box">
             <a href="Donation-tree.aspx?category_id=1" class="underline">    <div><img class="donation-cat"" alt="" src="/imgs/cat1.jpg"/></div>
                <div ><br /><h2 class="single-cat"><b>Trees</b></h2>
                    <p></p>
                </div></a>
            </div>
      <div class="box">
               <a href="Donation-tree.aspx?category_id=2" class="underline"> <div><img class="donation-cat"" alt="" src="/imgs/cat2.jpg"/></div>
                <div ><br /><h2 class="single-cat"><b>Seedlings</b></h2>
                    <p></p>
                </div></a>
            </div>
         </div>
      

<%--      <div class="cont2">
        <div class="aboutphoto2"></div>
        <div class="textplace1">
        <h2><b>Our aims</b></h2>
           <p>-To champion trees in everything we do.</p>
           <p>-To be the trusted voice of the tree sector.</p>
           <p>-To drive practical science and research into our treescape.</p>
           <p>-To enable dialogue and action in the sector, nationally and locally.</p>
           <p>-To encourage, inspire and persuade people of all ages and backgrounds to value and love trees.</p>
     
        </div>
       </div>--%>
    <br />
    <br />
    <span></span>
    <br />
       <div class="container" style="align-items:center;">
            <h1><b class="box1">          <div class="container">
  <div class="row">
    <div class="col-md-12 text-center">
      <h3 class="animate-charcter">Process of donation step By step</h3>
    </div>
  </div>
</div></b></h1>  



    <div id="multi-step-form-container">
        <!-- Form Steps / Progress Bar -->
        <ul class="form-stepper form-stepper-horizontal text-center mx-auto pl-0">
            <!-- Step 1 -->
            <li class="form-stepper-active text-center form-stepper-list" step="1">
                <a class="mx2">
                    <span class="form-stepper-circle">
                        <span>1</span>
                    </span>
                    <div class="labeltt">Login</div>
                </a>
            </li>
            <!-- Step 2 -->
            <li class="form-stepper-unfinished text-center form-stepper-list" step="2">
                <a class="mx2">
                    <span class="form-stepper-circle text-muted">
                        <span>2</span>
                    </span>
                    <div class="labeltt text-muted">Donation Form</div>
                </a>
            </li>
            <!-- Step 3 -->
            <li class="form-stepper-unfinished text-center form-stepper-list" step="3">
                <a class="mx2">
                    <span class="form-stepper-circle text-muted">
                        <span>3</span>
                    </span>
                    <div class="labeltt text-muted">Thank You</div>
                </a>
            </li>
        </ul>
        <!-- Step Wise Form Content -->
        <form id="userAccountSetupForm" name="userAccountSetupForm" enctype="multipart/form-data" method="POST">
            <!-- Step 1 Content -->
            <section id="step-1" class="form-step">
                <h2 class="font-normal">Login</h2>
                <!-- Step 1 input fields -->
                <div class="mtt">
                       Login If You Have An Account, If you Don't Have One <a runat="server" href="~/Account/Register">Register Now</a>
                </div>
                <div class="mtt">
                    <button class="buttontt btn-navigate-form-step" type="button" step_number="2">Next</button>
                </div>
            </section>
            <!-- Step 2 Content, default hidden on page load. -->
            <section id="step-2" class="form-step d-none">
                <h2 class="font-normal">Donation Form</h2>
                <!-- Step 2 input fields -->
                <div class="mtt">
                      Fill This Form To Describe Your Donation Detials <a runat="server" href="~/Account/Register">Our Form</a>
                </div>
                <div class="mtt">
                    <button class="buttontt btn-navigate-form-step" type="button" step_number="1">Prev</button>
                    <button class="buttontt btn-navigate-form-step" type="button" step_number="3">Next</button>
                </div>
            </section>
            <!-- Step 3 Content, default hidden on page load. -->
            <section id="step-3" class="form-step d-none">
                <h2 class="font-normal">Thank You</h2>
                <!-- Step 3 input fields -->
                <div class="mtt">
                   Thank You for donation We Appreciate That!
                </div>
                <div class="mtt">
                    <button class="buttontt btn-navigate-form-step" type="button" step_number="2">Prev</button>

                    <asp:Button class="buttontt submitbtn" OnClick="btn4_Click" ID="Button1" runat="server" Text="Donate Now"/>
                </div>
            </section>
        </form>
    </div>
</div>
    <br />

    
  
  


    <script> 
        const navigateToFormStep = (stepNumber) => {
            /**
             * Hide all form steps.
             */
            document.querySelectorAll(".form-step").forEach((formStepElement) => {
                formStepElement.classList.add("d-none");
            });
            /**
             * Mark all form steps as unfinished.
             */
            document.querySelectorAll(".form-stepper-list").forEach((formStepHeader) => {
                formStepHeader.classList.add("form-stepper-unfinished");
                formStepHeader.classList.remove("form-stepper-active", "form-stepper-completed");
            });
            /**
             * Show the current form step (as passed to the function).
             */
            document.querySelector("#step-" + stepNumber).classList.remove("d-none");
            /**
             * Select the form step circle (progress bar).
             */
            const formStepCircle = document.querySelector('li[step="' + stepNumber + '"]');
            /**
             * Mark the current form step as active.
             */
            formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-completed");
            formStepCircle.classList.add("form-stepper-active");
            /**
             * Loop through each form step circles.
             * This loop will continue up to the current step number.
             * Example: If the current step is 3,
             * then the loop will perform operations for step 1 and 2.
             */
            for (let index = 0; index < stepNumber; index++) {
                /**
                 * Select the form step circle (progress bar).
                 */
                const formStepCircle = document.querySelector('li[step="' + index + '"]');
                /**
                 * Check if the element exist. If yes, then proceed.
                 */
                if (formStepCircle) {
                    /**
                     * Mark the form step as completed.
                     */
                    formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-active");
                    formStepCircle.classList.add("form-stepper-completed");
                }
            }
        };
        /**
         * Select all form navigation buttons, and loop through them.
         */
        document.querySelectorAll(".btn-navigate-form-step").forEach((formNavigationBtn) => {
            /**
             * Add a click event listener to the button.
             */
            formNavigationBtn.addEventListener("click", () => {
                /**
                 * Get the value of the step.
                 */
                const stepNumber = parseInt(formNavigationBtn.getAttribute("step_number"));
                /**
                 * Call the function to navigate to the target form step.
                 */
                navigateToFormStep(stepNumber);
            });
        });


        /*-----------------*/


    </script>




</asp:Content>
