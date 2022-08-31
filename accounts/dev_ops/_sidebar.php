<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="./">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="map">
                <i class="ti-map-alt menu-icon"></i>
                <span class="menu-title">Map</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="icon-layout menu-icon"></i>
                <span class="menu-title">4ps Information</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <!-- <li class="nav-item"> <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#test">Test Input for Map</a></li> -->
                    <li class="nav-item"> <a class="nav-link" href="applicant_create.php">Add New Applicant</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Approved 4ps</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Schedule</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Reports</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="dataanalytics">
                <i class="ti-bar-chart-alt menu-icon"></i>
                <span class="menu-title">Data Analytics</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="announcements">
                <i class="ti-announcement menu-icon"></i>
                <span class="menu-title">Announcements</span>
            </a>
        </li>

        <div class="dropdown-divider mt-3 mb-3"></div>

        <li class="nav-item">
            <a class="nav-link" href="users">
                <i class="ti-user menu-icon"></i>
                <span class="menu-title">System Users</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="system-logs">
                <i class="ti-server menu-icon"></i>
                <span class="menu-title">System Logs</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="support">
                <i class="ti-support menu-icon"></i>
                <span class="menu-title">Support</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="about">
                <i class="ti-info-alt menu-icon"></i>
                <span class="menu-title">About <span class="text-e4ps-yellow">e4Ps Map</span></span>
            </a>
        </li>
    </ul>
</nav>

<!-- test modal -->
<div class="modal fade" id="test" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel"><i class="ti-plus"></i> Create Test Data</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" enctype="multipart/form-data" action="test_create" onsubmit="validateCreateTest(this)">
            <div class="modal-body">
                <div class="form-group">
                    <label>Barangay</label>
                    <select name="barangay" class="form-control" required>
                        <option>zone 1</option>
                        <option>zone 2</option>
                        <option>zone 3</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Household</label>
                    <input type="number" class="form-control" name="household" min="0" required>
                </div>
                <div class="form-group">
                    <label>Pregnant Total</label>
                    <input type="number" class="form-control" name="pregnant" min="0" required>
                </div>
                <div class="form-group">
                    <label>0-18 yrs old Total</label>
                    <input type="number" class="form-control" name="zero_18" min="0" required>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" id="submit_create_test" class="btn btn-success">Create</button>
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script>
    function validateCreateTest(formObj){
		formObj.submit_create_test.disabled = true;
		formObj.submit_create_test.innerHTML = "processing ...";
		return true;  
	}
</script>