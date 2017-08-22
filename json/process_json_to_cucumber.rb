require 'json'
require 'ostruct'
file = File.read ('DirectoryChangeReport_MtCarmelHP_01032017_02485606.json')
data_hash = JSON.parse(file, object_class: OpenStruct)

def open_json
  @logfile = File.open("processed_json_log.txt", "w")
  @badlogfile = File.open("processed_bad_json_log.txt", "w")
  @cucumber = File.open("cucumber_parsed.txt", "w")
  @logfile.write "\n" + "Opened JSON file" + "\n"
  @badlogfile.write "\n" + "Opened JSON file" + "\n"
  @cucumber.write "\n" + "Opened JSON file" + "\n"
end

def initialize_variables
  $caqh_provider_id = ""
  $first_name = ""
  $middle_name = ""
  $last_name = ""
  $npi_type_1 = ""
  $npi_type_2 = ""
  $tax_id = ""
  $currently_practicing_flag = ""
  $address1 = ""
  $address2 = ""
  $city = ""
  $state = ""
  $zip_code = ""
  $accept_new_medicare_patients_flag = ""
  $phone_number = ""
  $fax_number = ""
  $email_address = ""
  $do_i_care = "NO"
  $count = 0
  $group_name = ""
end

def do_i_care_about_this_info (info)
  case info
  when "caqh_provider_id"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $caqh_provider_id = $holding_value
    end
  when "first_name"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $first_name = $holding_value
    end
  when "middle_name"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $middle_name = $holding_value
    end
  when "last_name"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $last_name = $holding_value
    end
  when "npi_type_1"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $npi_type_1 = $holding_value
    end
  when "npi_type_2"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $npi_type_2 = $holding_value
    end
  when "tax_id"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $tax_id = $holding_value
    end
  when "currently_practicing_flag"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $currently_practicing_flag = $holding_value
    end
  when "address1"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $address1 = $holding_value
    end
  when "address2"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $address2 = $holding_value
    end
  when "city"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $city = $holding_value
    end
  when "state"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $state = $holding_value
    end
  when "zip_code"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $zip_code = $holding_value
    end
  when "accept_new_medicare_patients_flag"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $accept_new_medicare_patients_flag = $holding_value
    end
  when "phone_number"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $phone_number = $holding_value
    end
  when "fax_number"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $fax_number = $holding_value
    end
  when "email_address"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
	    $email_address = $holding_value
    end
  when "group_name"
    $do_i_care = "YES"
    if $old_holding_value != $holding_value
      $group_name = $holding_value
    end
  end
end

open_json
@cucumber.write "\n" + "| practice_name | caqh_provider_id | first_name | middle_name | last_name| npi_type_1 | npi_type_2 | tax_id | currently_practicing_flag | address1           |  address2                      | city     | state | zip_code | accept_new_medicare_patients_flag | phone_number | fax_number | email_address               | group_name |"
data_hash.each do |provider|
  initialize_variables
  if provider.directory_change_status == "changed"
    @logfile.write "\n" + "Starting a new provider entry"
    @logfile.write "\n" + provider.to_s
    @logfile.write "\n" + provider.caqh_provider_id + " " + provider.first_name + " " + " " + provider.middle_name + " " + " " + provider.last_name + " " + " " + provider.npi_type_1
    @logfile.write "\n" "Change status: " + provider.directory_change_status
	  if provider.practice_locations[0] != nil
	    @logfile.write "\n" + provider.practice_locations[0].practice_name
      $practice_name = provider.practice_locations[0].practice_name
	    i = 0
	    loop do
	      break if provider.practice_locations[0].fields[i] == nil
		    holding_field_name = provider.practice_locations[0].fields[i].field_name
        $old_holding_value = provider.practice_locations[0].fields[i].old_value
		    $holding_value = provider.practice_locations[0].fields[i].new_value
		    do_i_care_about_this_info (holding_field_name)
		    if $do_i_care == "YES"
		      @logfile.write "\n" + provider.practice_locations[0].practice_name + " " + provider.practice_locations[0].fields[i].field_name + " " + provider.practice_locations[0].fields[i].change_type + " Old value: " + provider.practice_locations[0].fields[i].old_value + " New value: " + provider.practice_locations[0].fields[i].new_value
          #@cucumber.write "\n" + "| " + $practice_name + " | " + provider.caqh_provider_id + " | " + provider.first_name + " | " + provider.middle_name + " | " + provider.last_name + " | " + $npi_type_1 + " | " + $npi_type_2 + " | " + $tax_id + " | " + $currently_practicing_flag + " | " + $address1 + " | " + $address2 + " | " + $city + " | " + $state + " | " + $zip_code + " | " + $accept_new_medicare_patients_flag + " | " + $phone_number + " | " + $fax_number + " | " + $email_address + " | " + $group_name + " | "
        end
		    i += 1
		    $do_i_care = "NO"
      end
	  end
	end
	#@logfile.write "\n" + "NPI type 1: " + $npi_type_1 + " NPI type 2: " + $npi_type_2 + " Tax ID: " +  $tax_id  + " Currently practicing flag: " + $currently_practicing_flag  + " address 1: " + $address1  + " address 2: " + $address2 + " city: " + $city  + " state:  " + $state + " zip code: " +  $zip_code + " accept new medicare: " +  $accept_new_medicare_patients_flag + " phone: " +  $phone_number + " fax: " +  $fax_number + " email: " +  $email_address
  #@logfile.write "\n" + "Writing to Cucumber file..."
  @cucumber.write "\n" + "| " + $practice_name + " | " + provider.caqh_provider_id + " | " + provider.first_name + " | " + provider.middle_name + " | " + provider.last_name + " | " + $npi_type_1 + " | " + $npi_type_2 + " | " + $tax_id + " | " + $currently_practicing_flag + " | " + $address1 + " | " + $address2 + " | " + $city + " | " + $state + " | " + $zip_code + " | " + $accept_new_medicare_patients_flag + " | " + $phone_number + " | " + $fax_number + " | " + $email_address + " | " + $group_name + " | "
  #@logfile.write "\n" + "Closing out provider entry" + "\n"
  $count += 1
  #@logfile.write $count.to_s
  end
#end
