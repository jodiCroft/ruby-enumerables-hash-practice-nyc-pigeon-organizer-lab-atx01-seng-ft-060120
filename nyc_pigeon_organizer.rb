require "pry"

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(color_gender_lives, inner_keys), final_array|
    inner_keys.each do |inner_key, names|
      binding.pry
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
      if !final_array[name][color_gender_lives]
        final_array[name][color_gender_lives] = []
      end
      final_array[name][color_gender_lives].push(inner_key.to_s)
    end
  end
end
end

