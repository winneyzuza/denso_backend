<div id="id_here" class="frm_part dynamic_content">
	<table>
		<tr>
			<td><?php echo lang('create_dtc_code'); ?></td>
			<td><input type="text" name="dtc_code" placeholder="<?php echo lang('create_dtc_code'); ?>" /></td>
		</tr>
		<tr class="empty_row"></tr>
		<tr>
			<td><?php echo lang('create_car_condition'); ?></td>
			 <td colspan="5">
			     <label><input type="radio" name="car_condition" value="original" checked/> <?php echo lang('create_condition_original'); ?></label>
			     <label><input type="radio" name="car_condition" value="modified" /> <?php echo lang('create_condition_modify'); ?></label>
			     <label><input type="radio" name="car_condition" value="others" /><?php echo lang('create_others'); ?></label>
			     <input style="width: auto;" type="text" name="car_condition_other" disabled />
			     <?php echo lang('create_car_condition_ex'); ?>
			 </td>
		</tr>
		<tr class="empty_row"></tr>
		<tr>
			<td><?php echo lang('create_fuel_condition'); ?></td>
            <td colspan="5">
                <label><input type="radio" name="fuel_condition" value="normal" checked/> <?php echo lang('create_condition_normal'); ?></label>
                <label><input type="radio" name="fuel_condition" value="abnormal" /> <?php echo lang('create_condition_abnormal'); ?></label>
                <input style="width: auto;" type="text" name="fuel_condition_other" disabled />
                <?php echo lang('create_fuel_condition_ex'); ?>
            </td>
		</tr>
		<tr class="empty_row"></tr>
		<tr>
			<td><?php echo lang('create_parts_condition'); ?></td>
		    <td colspan="5">
		        <label><input type="radio" name="parts_condition" value="normal" checked/> <?php echo lang('create_condition_normal'); ?></label>
		        <label><input type="radio" name="parts_condition" value="broken" /> <?php echo lang('create_condition_broken'); ?></label>
		        <label><input type="radio" name="parts_condition" value="color changed" /> <?php echo lang('create_condition_color_changed'); ?></label>
		        <label><input type="radio" name="parts_condition" value="others" /> <?php echo lang('create_others'); ?></label>
		        <input style="width: auto;" type="text" name="parts_condition_other" disabled />
		        <?php echo lang('create_parts_condition_ex'); ?>
		    </td>
		</tr>
		<tr class="empty_row"></tr>
		<tr class="empty_row"></tr>
		<tr>
			<td><button type="button" class="blue_back button prev_tab"><?php echo lang('create_back'); ?></button></td>
			<td colspan="3"></td>
			<td><button type="button" class="blue_back button next_tab" ><?php echo lang('create_next'); ?></button></td>
		</tr>
	</table>
</div>



<div id="id_here" class="frm_part dynamic_content">
	<table>
		<!-- <tr>
			<td><?php echo lang('create_exchange_part'); ?></td>
			<td colspan="3"></td>
			<td class="blue_back"><?php echo lang('create_status_of_ros'); ?></td>
		</tr> -->
		<tr class="empty_row"></tr>
        <tr class="injector parttype"><td colspan="4"><?php echo lang('create_injector_exchange'); ?></td></tr>
        <tr class="empty_row"></tr>
		<!-- <tr>
			<td colspan="2"><label><input type="checkbox" /> <?php echo lang('create_supply_pump'); ?>
				<input type="hidden" name="supply_pump" value="false" />
			</label></td>
			<td class="right"><?php echo lang('create_quantity'); ?></td>
			<td><input type="text" name="quantity" placeholder="<?php echo lang('create_quantity'); ?>" />&nbsp;&nbsp;<?php echo lang('create_quantity_unit'); ?></td>
		</tr>
		<tr class="empty_row"></tr> -->
    	<tr class="empty_row"></tr>
		<tr class="injector parttype">
			<!-- <td colspan="2"><label><input type="checkbox" /><?php echo lang('create_injector'); ?>
				<input type="hidden" name="injector" value="false" />
			</label></td> -->
			<td class="right"><?php echo lang('create_quantity'); ?></td>
			<td><input type="text" name="part_quantity" placeholder="Quantity" />&nbsp;&nbsp;<?php echo lang('create_quantity_unit'); ?></td>
		</tr>
		<tr class="empty_row"></tr>
		<tr class="injector parttype">
			<td></td>
			<td><?php echo lang('create_failure'); ?></td>
			<td></td>
			<td><?php echo lang('create_exchange'); ?></td>
		</tr>
		<tr class="injector parttype">
			<td class="right"><?php echo lang('create_pn'); ?></td>
			<td>
				<select name="part_failure_pn">
					<option value=""><?php echo lang('create_general_select'); ?></option>
				</select>
			</td>
			<td class="right"><?php echo lang('create_pn'); ?></td>
			<td colspan="2"><input type="text" readonly name="part_exchange_pn"></td>
		</tr>
		<tr class="empty_row"></tr>
		<tr class="injector parttype">
			<td></td>
			<!-- <td class="right"><?php echo lang('create_failure')." ".lang('create_sn')." "; ?></td> -->
			<td>#1</td>
			<td>#2</td>
			<td>#3</td>
			<td>#4</td>
			<td>#5</td>
			<td>#6</td>
		</tr>
		<tr class="injector parttype">
			<td class="right"><?php echo lang('create_failure')." ".lang('create_sn')." "; ?></td>
            <td><textarea name="failure_sn_1"></textarea></td>
            <td><textarea name="failure_sn_2"></textarea></td>
            <td><textarea name="failure_sn_3"></textarea></td>
            <td><textarea name="failure_sn_4"></textarea></td>
            <td><textarea name="failure_sn_5"></textarea></td>
            <td><textarea name="failure_sn_6"></textarea></td>
		</tr>
		<tr class="empty_row"></tr>
		<tr class="injector parttype">
			<td class="right"><?php echo lang('create_new_sn')." "; ?></td>
            <td><textarea name="new_sn_1"></textarea></td>
            <td><textarea name="new_sn_2"></textarea></td>
            <td><textarea name="new_sn_3"></textarea></td>
            <td><textarea name="new_sn_4"></textarea></td>
            <td><textarea name="new_sn_5"></textarea></td>
            <td><textarea name="new_sn_6"></textarea></td>
		</tr>
		<tr class="empty_row"></tr>
        <tr>
            <td><?PHP echo lang('create_remark'); ?></td>
            <td colspan="6"><textarea name="remark"></textarea></td>
        </tr>
		<tr class="empty_row"></tr>
		<tr>
			<td>
				<?php echo lang('create_status'); ?>
			</td>
			<td>
				<select name="status" id="status"></select>
			</td>
		</tr>
		<tr class="empty_row"></tr>
		<tr class="empty_row"></tr>
		<tr class="empty_row" id="part_code"></tr>
		<tr>
			<td colspan="2"><button type="button" class="blue_back button prev_tab"><?php echo lang('create_back'); ?></button></td>
			<td colspan="2"></td>
			<td><button type="button" id="frm_submit" class="blue_back button" data-action="<?php echo (isset($ros_info['ros_no']) AND $ros_info['status']!='Draft')?('update'):('add'); ?>"><?php echo lang('create_update'); ?></button></td>
		</tr>
	</table>
</div>