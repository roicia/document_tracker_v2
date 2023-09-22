<!--  Header End -->

<?php
$title = "Home";
include '../templates/header.php'  ?>



<?php
$doneCount = 0;
$ongoingCount = 0;
foreach ($Document->All() as $row) {
  if ($row['status'] === 'Done') {
    $doneCount++;
  } else {
    $ongoingCount++;
  }
}
?>









<div class="container-fluid">
  <!--  Row 1 -->

  <div class="row">
    <div class="col-sm">
      <div class="card">
        <div class="card-body">
          <div class="row alig n-items-start">
            <div class="col-8">
              <h5 class="card-title mb-9 fw-semibold"> Total Ongoing Documents </h5>
              <h4 class="fw-semibold mb-3"><?= $ongoingCount ?></h4>
              <div class="d-flex align-items-center pb-1">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm">
      <div class="card">
        <div class="card-body">
          <div class="row alig n-items-start">
            <div class="col-8">
              <h5 class="card-title mb-9 fw-semibold"> Total Delivered Documents </h5>
              <h4 class="fw-semibold mb-3"><?= $doneCount ?></h4>
              <div class="d-flex align-items-center pb-1">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="">
      <div class="card w-100">
        <div class="card-body p-4">
          <h5 class="card-title fw-semibold mb-4">Ongoing Documents</h5>
          <div class="table-responsive">
            <table class="table text-nowrap mb-0 align-middle" id="dataTable">
              <thead class="text-dark fs-4">
                <tr>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">#</h6>
                  </th>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">Department</h6>
                  </th>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">Reference</h6>
                  </th>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">Document Name</h6>
                  </th>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">Type</h6>
                  </th>
                  <th class="border-bottom-0">
                    <h6 class="fw-semibold mb-0">Status</h6>
                  </th>
                </tr>
              </thead>
              <tbody>
                <?php
                $count = 0;
                foreach ($Document->All() as $row) {

                  if ($row['status'] === 'Done') {
                    continue;
                  }


                  $count++; ?>
                  <tr>
                    <td class="border-bottom-0">
                      <h6 class="fw-semibold mb-0"><?= $count ?></h6>
                    </td>
                    <td class="border-bottom-0">
                      <p class="mb-0 fw-normal"><?= $row['sender'] ?></p>
                    </td>
                    <td class="border-bottom-0">
                      <p class="mb-0 fw-normal"><?= $row['reference'] ?></p>
                    </td>
                    <td class="border-bottom-0">
                      <p class="mb-0 fw-normal"><?= $row['document'] ?></p>
                    </td>
                    <td class="border-bottom-0">
                      <p class="mb-0 fw-normal"><?= $row['type'] ?></p>
                    </td>
                    <td class="border-bottom-0">
                      <div class="d-flex align-items-center gap-2">
                        <span class="badge bg-primary rounded-3 fw-semibold"><?= $row['status'] ?></span>
                      </div>
                    </td>
                  </tr>
                <?php   } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="row">


  </div>











  <!-- 
  <div class="py-6 px-6 text-center">
    <p class="mb-0 fs-4">Developed by <a href="#" target="_blank" class="pe-1 text-primary text-decoration-underline">CITRMU
      </a></p>
  </div> -->
</div>


<?php include '../templates/footer.php'  ?>