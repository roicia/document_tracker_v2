  <?php
    $title = "Track Document";
    include '../templates/header.php' ?>

  <link rel="stylesheet" href="track.css">


  <style>

  </style>

  <div class="container-fluid">
      <div class="container">
          <div class="row height d-flex justify-content-center align-items-center">
              <div class="search">
                  <form action="track.php" method="get">
                      <input type="text" class="form-control" name="reference"
                          value="<?= $_GET['reference'] ?? null; ?>" placeholder="Enter document reference number">
                      <button style="display:none" type="submit"></button>
                  </form>
              </div>
          </div>
      </div>


      <?php if (isset($_GET['reference'])) {

            if ($document = $Document->One($_GET['reference'])) {

                $reference = $_GET['reference'];
                $created = date('d F Y', strtotime($document['created']));
                $time = date('h:i A', strtotime($document['created']));
                $sender = $Department->Info($document['sender'], 'code')['department'];
                $status = $document['status'];
                $type = $document['type'];





        ?>


      <div class="container-fluid-lg" id="targetDiv">
          <div style="overflow-y:scroll; height:700px;" class="mt-4">
              <div class="row">

                  <div class="col-md-12 col-lg-12">
                      <div id="tracking-pre"></div>
                      <div id="tracking">
                          <div class="text-center card tracking-status-intransit sticky-top">
                              <details class="m-3" align="left">
                                  <summary>Reference: <?= $_GET['reference']  ?></summary> <br />
                                  <span>From: <?= $sender ?></span> <br>
                                  <span>Status: <?= $status ?></span> <br>
                                  <span>Type: <?= $type ?></span> <br>
                                  <span>Date Created: <?= $created ?> / <?= $time ?></span> <br><br>
                                  <button class="btn btn-primary printButton btn-sm" id="printButton">Print</button>
                              </details>

                          </div>

                          <div class="tracking-list">

                              <div class="tracking-item">
                                  <div class="tracking-icon status-intransit bg-success">
                                      <!-- <img src="../../../assets/images/logos/favicon.png" alt="" width="30"> -->
                                      <i class="ti ti-check fs-4"></i>
                                  </div>
                                  <div class="tracking-date"><?= $created ?><span><?= $time ?></span></div>
                                  <div class="tracking-content"><?= $sender ?><span>FROM</span> <br> </div>

                              </div>


                              <?php
                                        error_reporting(0);
                                        $has_warning_document_time = null;
                                        $late_days_count = null;
                                        $alert_days_of_delay = null;
                                        $category_max_time = null;
                                        foreach ($Document->track($reference) as $key => $row) {

                                            $category_max_time = $Category->One($row['type'], 'category')['max_time'];

                                            $department = $row['department'];
                                            $date_in = 'IN: ' . date('d F Y', strtotime($row['created']));
                                            $in = date('F d Y / h:i A', strtotime($row['created']));
                                            $out = !empty($row['updated']) ? date('F d Y / h:i A', strtotime($row['updated'])) : 'Pending';
                                            $time = 'IN: ' . $in . ' <br> ' . 'OUT: ' .  $out;

                                            $status_class = $row['status'] === 'Done' ? 'bg-success' : null;
                                            $status_icon = $row['status'] === 'Done' ? 'ti ti-check fs-4' : 'ti ti-clock fs-4';

                                            $current_document_time  = dayInterval($row['created']);
                                            $check_if_has_delay = createdUpdatedIterval($row['created'], $row['updated']);


                                            if ($row['status'] === 'Pending') {
                                                if ($current_document_time > $category_max_time) {
                                                    $has_warning_document_time = 'bg-warning';
                                                    $late_days_count = $current_document_time - $category_max_time;
                                                    $day = $late_days_count > 1 ? 'days delay.' : 'day delay.';
                                                    $alert_days_of_delay = $late_days_count . ' ' . $day;
                                                }
                                            }
                                            if ($row['status'] === 'Done') {
                                                if ($check_if_has_delay > $category_max_time) {
                                                    $has_warning_document_time = 'bg-warning';
                                                    $late_days_count = $check_if_has_delay - $category_max_time;
                                                    $day = $late_days_count > 1 ? 'days delay.' : 'day delay.';
                                                    $alert_days_of_delay = $late_days_count . ' ' . $day;
                                                }
                                            }


                                        ?>
                              <div class="tracking-item">
                                  <div
                                      class="tracking-icon status-intransit  <?= $has_warning_document_time . ' ' . $status_class  ?>">
                                      <!-- <img src="../../../assets/images/logos/favicon.png" alt="" width="30"> -->
                                      <i class="<?= $status_icon ?>"></i>
                                  </div>
                                  <div class="tracking-date">
                                      <?= getTimeAgoString($row['created']) ?><span><?= $alert_days_of_delay ?></span>
                                  </div>
                                  <div class="tracking-content"><?= $sender ?><span><?= $time ?></span></div>
                                  <?php if ($row['status'] == 'Done') {  ?>
                                  <button class="btn btn-primary btn-sm mt-1"
                                      onclick="remarks('<?= $row['note'] ?>', '<?= $row['department'] ?>')">Remarks</button>
                                  <?php  } ?>
                              </div>

                              <?php   } ?>

                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>

      <?php } else {
                echo "<div class='container text-center mt-4'><span>No document found. <br> <a href='add.php' title='Add a document'>Add Document?</a></span></div>";
            }
        } ?>
  </div>


  <!-- Modal -->
  <div class="modal fade" id="remarks" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Remarks</h5>
                  <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <div class="modal-body">
                  <p>Reciever: <span id="from"></span></p>
                  <p>Note: <span id="note"></span></p>
                  </p>
              </div>
          </div>
      </div>
  </div>


  <script>
function remarks(note, department) {
    $('#remarks').modal('show');
    document.getElementById('from').textContent = department;
    document.getElementById('note').textContent = note;

}
  </script>


  <script>
document.getElementById('printButton').addEventListener('click', function() {
    // Get the target div element
    var targetElement = document.getElementById('targetDiv');

    // Create a new window for printing
    var printWindow = window.open('', '_blank');

    // Write the content of the target div to the new window
    printWindow.document.write(
        '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tabler-icons/1.35.0/iconfont/tabler-icons.min.css" />'
    );
    printWindow.document.write('<link rel="stylesheet" href="track.css">');
    printWindow.document.write(targetElement.innerHTML);

    // Close the document writing to ensure all content is added
    printWindow.document.close();

    // Print the new window
    printWindow.print();

    // Close the new window
    printWindow.close();
});
  </script>

  <?php include '../templates/footer.php'  ?>