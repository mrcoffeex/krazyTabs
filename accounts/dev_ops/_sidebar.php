<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="./">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="judges">
                <i class="ti-user  menu-icon"></i>
                <span class="menu-title">Judges</span> 
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="candidates">
                <i class="ti-crown menu-icon"></i>
                <span class="menu-title">Candidates</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="events">
                <i class="ti-star menu-icon"></i>
                <span class="menu-title">Events</span>
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
            <a class="nav-link" href="about">
                <i class="ti-info-alt menu-icon"></i>
                <span class="menu-title">About <span class="text-e4ps-yellow">Tabulation</span></span>
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