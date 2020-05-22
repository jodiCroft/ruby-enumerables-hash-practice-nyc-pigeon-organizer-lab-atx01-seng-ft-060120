require "pry"

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(color_gender_lives, inner_keys), final_hash|
    inner_keys.each do |inner_key, names|
      names.each do |name|
        binding.pry
        if !final_hash[name]
          final_hash[name] = {}
        end
      if !final_hash[name][color_gender_lives]
        final_hash[name][color_gender_lives] = []
      end
      final_hash[name][color_gender_lives].push(inner_key.to_s)
    end
  end
end
end
