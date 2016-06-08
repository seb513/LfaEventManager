
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<!-- Main Footer -->
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.2.0 -->
<script src="${SITE_URL}/assets/dist/js/jquery-2.2.4.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${SITE_URL}/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${SITE_URL}/assets/bootstrap/js/bootstrap-select.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="${SITE_URL}/assets/dist/js/app.min.js"></script>
<!--Data Table-->
<!--<script src="assets/dist/js/"></script>-->
<script src="${SITE_URL}/assets/dist/js/dataTables.bootstrap.min.js"></script>
<script src="${SITE_URL}/assets/dist/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" class="init">
    $(function () {
        $('#tableDemo').DataTable({
            "paging": false,
            "lengthChange": true,
            "searching": true,
            "ordering": false,
            "info": true,
            "autoWidth": true
        });
    });
</script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. Slimscroll is required when using the
     fixed layout. -->
</body>
</html>

