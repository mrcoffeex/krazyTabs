<?php  
    require '../../config/includes.php';
    require 'session.php';

    $title = "Welcome ".$e4ps_user_fullname;
    $upp_description = '<span class="text-primary" id="live_system_logs_count"></span> system logs today.';
?>

<!DOCTYPE html>
<html lang="en">

<?php include '_head.php'; ?>

<body class="sidebar-dark">
    <div class="container-scroller">
        
        <?php include '_navbar.php'; ?>
        
        <div class="container-fluid page-body-wrapper">
        
        <?php include '_settings-panel.php'; ?>

        <?php include '_sidebar.php'; ?>

        <div class="main-panel">        
            <div class="content-wrapper">
                <div class="col-md-12 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Who are eligible to avail the Pantawid Pamilyang Pilipino Program?</h4>
                        <div class="media">
                            <i class="ti-book icon-md text-info d-flex align-self-start me-3"></i>
                            <div class="media-body">
                                <p class="card-text">The Department of Social Welfare and Development (DSWD) would no longer qualify almost a million beneficiaries of the Pantawid Pamilyang Pilipino Program (4Ps) for the allocated government assistance.</p>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>

              
                <div class="row">
                <div class="col-12 grid-margin">
                    
                    <div class="card">
                        <div class="card-body">
                        <h4 class="card-title">Add New 4Ps Applicant</h4>
                    
                        <form id="example-form" action="#">
                            <div>
                                    <h3>Qualification</h3>
                                    <section>
                                        <h3>Primary Questions</h3>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                 <label class="col-form-label">Type of Applicant</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="input-group-prepend">
                                                    <button class="btn btn-outline-primary dropdown-toggle form-control" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Select</button>
                                                    
                                                    <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Household Head - Father</a>
                                                    <a class="dropdown-item" href="#">Household Head - Mother</a>
                                                    <div role="separator" class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">Child of the Household Head</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">Monthly Income</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">Number of Family members within the Household</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">Does applicant have any pregnant family member?</label>
                                            </div>
                                            <div class="col-lg-6">
                                            
                                            <div class="form-group row">
                                            <div class="col-sm-3">
                                                <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked>
                                                    Yes
                                                </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2">
                                                    No
                                                </label>
                                                </div>
                                            </div>  
                                            </div>
                                        </div><!--end of radio-->
                                        </div> 

                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">If yes, number of Pregnant Family member/s</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">Does applicant have children aging 0-18?</label>
                                            </div>
                                            <div class="col-lg-6">
                                            
                                            <div class="form-group row">
                                            <div class="col-sm-3">
                                                <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="membershipRadios2" id="membershipRadios1" value="" checked>
                                                    Yes
                                                </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="membershipRadios2" id="membershipRadios2" value="option2">
                                                    No
                                                </label>
                                                </div>
                                            </div>  
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-lg-6">
                                                <label class="col-form-label">If yes, number of childeran aging 0-18 years old</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                                            </div>
                                        </div>
                                    </section>
                                    
                                    <h3>Profile</h3>
                                    <section>
                                       
                                            <div class="row">
                                                <div class="col-md-6 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                        <h4 class="card-title">Household Head Profile</h4>
                                                        <p class="card-description">
                                                            Note: Required Fields are indicated with *
                                                        </p>
                                                        <form class="forms-sample">
                                                            <div class="form-group">
                                                                <label for="exampleInputUsername1">Last Name *</label>
                                                                <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Last Name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">First Name *</label>
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="First Name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputPassword1">Middle Name</label>
                                                                <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Middle Name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputConfirmPassword1">Qualifier</label>
                                                                <select class="form-control reg">
                                                                    <option>Choose a qualifier</option>
                                                                    <option>Sr.</option>
                                                                    <option>Jr.</option>
                                                                    <option>II</option>
                                                                    <option>III</option>
                                                                    <option>IV</option>
                                                                    <option>V</option>
                                                                </select>
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label for="exampleInputPassword1">Gender *</label>
                                                                <select class="form-control reg">
                                                                    <option>Male</option>
                                                                    <option>Female</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="exampleInputConfirmPassword1">Civil Status *</label>
                                                                <select class="form-control reg">
                                                                    <option>Single</option>
                                                                    <option>Married</option>
                                                                    <option>Widowed</option>
                                                                    <option>Separated</option>
                                                                    <option>Annuled</option>
                                                                </select>
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-6 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                        <h4 class="card-title"></h4>
                                                        <p class="card-description">
                                                            
                                                        </p>
                                                        <form class="forms-sample">
                                                            <div class="form-group">
                                                                <label for="exampleInputUsername1">Birthdate *</label>
                                                                <input type="date" class="form-control" id="exampleInputUsername1" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Place of Birth *</label>
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Place of Birth">
                                                            </div>
                                                     
                                                            <div class="form-group">
                                                                <label for="Educational Attainment">Educational Attainment *</label>
                                                                <select class="form-control reg">
                                                                    <option>Elementary Undergraduate</option>
                                                                    <option>Elementary Graduate</option>
                                                                    <option>Junior High School Undergradute</option>
                                                                    <option>Junior High School Gradute</option>
                                                                    <option>Senior High School Undergradute</option>
                                                                    <option>Senior High School Gradute</option>
                                                                    <option>College Undergradute</option>
                                                                    <option>College Gradute</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="Occupation">Occupation *</label>
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Place of Birth">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="Occupation">Employer </label>
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Place of Birth">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="Occupation">Employer Address</label>
                                                                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Place of Birth">
                                                            </div>
                                                           
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                    </section>

                                    <h3>Contact Details</h3>
                                    <section>
                                        <div class="col-12 grid-margin stretch-card">
                                                    <div class="card">
                                                        <div class="card-body">
                                                        <h4 class="card-title">Contact Details</h4>
                                                        <p class="card-description">
                                                        
                                                        </p>
                                                        <form class="forms-sample">
                                                            <div class="form-group">
                                                                <label for="exampleInputName1">Contact Number</label>
                                                                <input type="text" class="form-control" id="exampleInputName1" placeholder="Contact Number">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail3">Email address</label>
                                                                <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputPassword4">House Number/ Building name/Block</label>
                                                                <input type="password" class="form-control" id="exampleInputPassword4" placeholder="House Number/ Building name/Block">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputPassword4">Street Name</label>
                                                                <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Street Name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleSelectGender">Purok</label>
                                                                <select class="form-control" id="exampleSelectGender">
                                                                    <option>Manga</option>
                                                                    <option>Sampaguita</option>
                                                                    <option>Palmera</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="exampleSelectGender">Barangay</label>
                                                                <select class="form-control">
                                                                    <option value="AP">Aplaya</option>
                                                                    <option value="BA">Balabag</option>
                                                                    <option value="BI">Binaton</option>
                                                                    <option value="COG">Cogon</option>
                                                                    <option value="COL">Colorado</option>
                                                                    <option value="DA">Dawis</option>
                                                                    <option value="DU">Dulangan</option>
                                                                    <option value="GO">Goma</option>
                                                                    <option value="IG">Igpit</option>
                                                                    <option value="KA">Kapatagan</option>
                                                                    <option value="KI">Kiagot</option>
                                                                    <option value="LU">Lungag</option>
                                                                    <option value="MA">Mahayahay</option>
                                                                    <option value="MA">Matti</option>
                                                                    <option value="RU">Ruparan</option>
                                                                    <option value="SA">San Agustin</option>
                                                                    <option value="SA">San Jose</option>
                                                                    <option value="SA">San Miguel</option>
                                                                    <option value="SA">San Roque</option>
                                                                    <option value="SI">Sinawilan</option>
                                                                    <option value="SO">Soong</option>
                                                                    <option value="TI">Tiguman</option>
                                                                    <option value="TR">Tres de Mayo</option>
                                                                    <option value="ZO">Zone 1</option>
                                                                    <option value="ZO">Zone 2</option>
                                                                    <option value="ZO">Zone 3</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleSelectGender">City</label>
                                                                <select class="form-control" id="exampleSelectGender">
                                                                    <option>Digos City</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleSelectGender">Province</label>
                                                                <select class="form-control" id="exampleSelectGender">
                                                                    <option>Davao del Sur</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputCity1">Zip Code</label>
                                                                <input type="text" class="form-control" id="exampleInputCity1" placeholder="Zip Code">
                                                            </div>

                                                        </form>
                                                        </div>
                                                    </div>
                                                    </div>
                                            
                                        </section>
                               
                                    <h3>Family Background</h3>
                                    <section>
                                        <h3>Family Background</h3>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Relationship to the Applicant *</label>
                                            <select class="form-control reg">
                                                <option>Father</option>
                                                <option>Mother</option>
                                                <option>Spouse</option>
                                                <option>Grandmother</option>
                                                <option>Grandfather</option>
                                                <option>Aunt</option>
                                                <option>Uncle</option>
                                                <option>Cousin</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Name *</label>
                                            <input type="text" class="form-control" id="exampleInputUsername1" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Birthdate *</label>
                                            <input type="date" class="form-control" id="exampleInputUsername1" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Birthplace *</label>
                                            <input type="text" class="form-control" id="exampleInputUsername1" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Gender *</label>
                                            <select class="form-control reg">
                                                <option>Male</option>
                                                <option>Female</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputConfirmPassword1">Civil Status *</label>
                                            <select class="form-control reg">
                                                <option>Single</option>
                                                <option>Married</option>
                                                <option>Widowed</option>
                                                <option>Separated</option>
                                                <option>Annuled</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Contact Number *</label>
                                            <input type="text" class="form-control" id="exampleInputUsername1" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputUsername1">Email *</label>
                                            <input type="text" class="form-control" id="exampleInputUsername1" placeholder="">
                                        </div>
                                        
                                        
                                        
                                        <button type="button" class="btn btn-info btn-icon-text">
                                            <i class="ti-plus btn-icon-prepend"></i>                                                    
                                        Add More
                                        </button>
                                    </section>
                                </div>
                            </form>
                            </div>
                        </div>
                        </div>
                        </div>
                    </div>


            </div> <!-- content-wrapper ends -->


            
        </div><!-- main-panel ends -->
      
        </div>
    </div>

    <?php include '_scripts.php'; ?>

</body>

</html>

