module IncidentsHelper
  def us_states
    [
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY']
    ]
  end

  def months
    [
      ["January", "01"],
      ["February", "02"],
      ["March", "03"],
      ["April", "04"],
      ["May", "05"],
      ["June", "06"],
      ["July", "07"],
      ["August", "08"],
      ["September", "09"],
      ["October", "10"],
      ["November", "11"],
      ["December", "12"]
    ]
  end

  def context_values
    [
      ["911 Call","911"],
      ["Traffic Stop","traffic-stop"],
      ["Serving Search Warrant","search-warrant"],
      ["Protest","protest"],
      ["Border Crossing","border-crossing"],
      ["Checkpoint","checkpoint"],
      ["Recording Police","recording"],
      ["Chance Encounter","chance"],
      ["In Custody","custody"],
      ["Unknown","unknown"],
      ["Other","other"]
    ]
  end

  def force_variety
    [
      ["Firearm","firearm"],
      ["Taser","taser"],
      ["Chemical","chemical"],
      ["Impact Weapon","impact-weapon"],
      ["Hands/Feet","unarmed"],
      ["Destruction of Property","destruction-property"],
      ["Confiscation of Property","confiscation"],
      ["Use of Dog","dog"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def intimidation_variety
    [
      ["Show of force","show-of-force"],
      ["Threats","threats"],
      ["Verbal Abuse","verbal-abuse"],
      ["Harassing/Stalking","harass-stalk"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def search_variety
    [
      ["Vehicle","vehicle"],
      ["Home","home"],
      ["Person","person"],
      ["Strip","strip"],
      ["Cavity","cavity"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def sexual_variety
    [
      ["Harassment","harassment"],
      ["Abuse of a minor","abuse-minor"],
      ["Abuse of adult","abuse-adult"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def misconduct_variety
    [
      ["Testilying","testilying"],
      ["False report (not in court)","false-report"],
      ["Bribery (Make or accept)","bribe"],
      ["Falsifying /Tampering with Evidence","falsifying-evidence"],
      ["Misuse Data","misuse-data"],
      ["Theft","theft"],
      ["Civil Forfeiture","civil-forfeit"],
      ["False arrest","false-arrest"],
      ["False detainment (no arrest)","false-detainment"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def escalation_variety
    [
      ["Impossible/Conflicting orders","conflicting"],
      ["Invade personal space","invade-space"],
      ["Pain escalation","pain"],
      ["Fail to identify/plain clothes/jumpout","hide-identity"],
      ["False justification","false-justification"]
    ]
  end

  def race_variety
    [
      ["White (European)", "white"],
      ['African-American','black'],
      ['Asian','asian'],
      ['Hispanic/Latino','latino'],
      ['Native American','native-american'],
      ['Other','other'],
      ['Unknown','unknown']
    ]
  end

  def victim_age
    [
      ["Newborn to five years","0-5"],
      ["Six to 12","6-12"],
      ["13 to 17","13-17"],
      ["18 to 24","18-24"],
      ["25 to 34","25-34"],
      ["35 to 44","35-44"],
      ["45 to 54","45-54"],
      ["55 to 64","55-64"],
      ["65 and over","65+"],
      ["Unknown","unknown"]
    ]
  end

  def gender_variety
    [
      ["Male","male"],
      ["Female","female"],
      ["Transgendered","transgendered"],
      ["Unknown","unknown"]
    ]
  end

  def officer_tenure
    [
      ["0 to 4","0-4"],
      ["5 to 9","5-9"],
      ["10 to 14","10-14"],
      ["15 to 19","15-19"],
      ["20 or more","20+"],
      ["Unknown","unknown"]
    ]
  end

  def physical_outcomes
    [
      ["Someone killed (including officer)","killed"],
      ["Someone injured (including officer)", "injured"],
      ["Unknown","unknown"]
    ]
  end

  def legal_outcomes
    [
      ["External Investigation","external-investigation"],
      ["Lawsuit filed","lawsuit"],
      ["Fines/Awards","fines"],
      ["Settlement","settlement"],
      ["Criminal charges","criminal-charges"],
      ["Unrelated Convictions vacated/","vacated"],
      ["Unknown","unknown"]
    ]
  end

  def hr_outcomes
    [
      ["Paid Suspension","paid-suspension"],
      ["Unpaid Suspension","unpaid-suspension"],
      ["Demoted/Reassigned","demoted"],
      ["Fired","fired"],
      ["Quit/Resigned","quit"],
      ["Unknown","unknown"]
    ]
  end

  def internal_outcomes
    [
      ["Cleared","cleared"],
      ["Sanctioned","sanctioned"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]
  end

  def statements
    [
      ["Acted appropriately","acted-appropriately"],
      ["Acted inappropriately","acted-inappropriately"],
      ["Wait and see/benefit of doubt","wait"],
      ["Victim was a criminal","criminal"],
      ["Feared for safety","fear"],
      ["Other","other"],
      ["Unknown","unknown"]
    ]

  end

end
