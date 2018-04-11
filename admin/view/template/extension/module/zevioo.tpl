<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-zevioo" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
		  	<div class="form-group required">
              <label class="col-sm-2 control-label" for="entry-username"><?php echo $text_username; ?></label>
              <div class="col-sm-10">
                <input type="text" name="module_zevioo_username" value="<?php echo $zevioo_username; ?>" placeholder="<?php echo $text_username; ?>" id="entry-username" class="form-control"/>
                <?php if ($error_username) { ?>
                  <div class="text-danger"><?php echo $error_username; ?></div>
                 <?php } ?>
              </div>
            </div>
			<div class="form-group required">
              <label class="col-sm-2 control-label" for="entry-password"><?php echo $text_password; ?></label>
              <div class="col-sm-10">
                <input type="text" name="module_zevioo_password" value="<?php echo $zevioo_password; ?>" placeholder="<?php echo $text_password; ?>" id="entry-password" class="form-control"/>
                <?php if ($error_password) { ?>
                  <div class="text-danger"><?php echo $error_password; ?></div>
                 <?php } ?>
              </div>
            </div>
			<div class="form-group">
                <label class="col-sm-2 control-label" for="input-canceled-status"><?php echo $text_canceled_status; ?></label>
                <div class="col-sm-10">
                  <select name="module_zevioo_canceled_status_id" id="input-canceled-status" class="form-control">
					<?php foreach($order_statuses as $order_status) { ?>
                    <?php if($order_status['order_status_id'] == $module_zevioo_canceled_status_id){?>
                    <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                    <?php }
					}
					?>
                  </select>
                </div>
            </div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
				<div class="col-sm-10">
				  <select name="module_zevioo_status" id="input-status" class="form-control">
					<?php if ($module_zevioo_status) { ?>
					<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
					<option value="0"><?php echo $text_disabled; ?></option>
					<?php } else { ?>
					<option value="1"><?php echo $text_enabled; ?></option>
					<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
					<?php } ?>
				  </select>
				</div>
			</div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>