dial_book = {
    "01" => "Adrar" ,
    "02" => "chlef" ,
    "03" => "laghouat" ,
    "04" => "oum el bouaghi" ,
    "05" => "batna" ,
    "06" => "bejaia" ,
    "07" => "biskra" ,
    "08" => "bechar" ,
    "09" => "blida" ,
    "10" => "bouira" ,
    "11" => "tamanrasset" ,
    "12" => "tebessa" ,
    "13" => "tlemcen" ,
    "14" => "tiaret" ,
    "15" => "tizi ouzou" ,
    "16" => "alger" ,
    "17" => "djelfa" ,
    "18" => "jijel" ,
    "19" => "setif" ,
    "20" => "saida" ,
    "21" => "skikda" ,
    "22" => "sidi bel abbes" ,
    "23" => "annaba" ,
    "24" => "guelma" ,
    "25" => "constantine" ,
    "26" => "medea" ,
    "27" => "mostaganem" ,
    "28" => "m'sila" ,
    "29" => "mascara" ,
    "30" => "ouargla" ,
    "31" => "oran" ,
    "32" => "el bayadh" ,
    "33" => "d'illizi" ,
    "34" => "bordj bou arreridj" ,
    "35" => "boumerdes" ,
    "36" => "el tarf" ,
    "37" => "tindouf" ,
    "38" => "tissemsilt" ,
    "39" => "el oued" ,
    "40" => "khenchela" ,
    "41" => "souk ahras" ,
    "42" => "tipaza" ,
    "43" => "mila" ,
    "44" => "ain defla" ,
    "45" => "naama" ,
    "46" => "ain temouchent" ,
    "47" => "ghardaia" ,
    "48" => "relizane" ,
}

def get_city_names(somehash)

  somehash.each { |k, v| puts v }

end

def get_area_code(somehash, key)

  somehash[key]

end

loop do

  puts "Do you want to lookup an information based on a city name?(Y/N)"

  answer = gets.chomp

  if answer != "Y" 

    break

  end

  #puts "Which key of the wilaya you want ?"

  get_city_names(dial_book)

  puts "Enter your key selection"

  prompt = gets.chomp

  if dial_book.include?(prompt)

    puts "The wilaya of #{prompt} is #{get_area_code(dial_book, prompt)}"

  else

    puts "You entered a wrong key please be sur that the key value between 1 to 48 "

  end

end
