require "hash_array_flatten/version"

module HashArrayFlatten
  def self.visit(data, current_key = nil, result = {})
    if data.is_a?(Hash)
      data.keys.map {|key| visit(data[key], [current_key,
                                             key].compact.join("."), result)}
    elsif data.is_a?(Array)
      # TODO refactor
      converted = data.map.with_index.inject({}){|hash, (v, i)| hash[i] = v; hash }
      converted.keys.map {|key| visit(converted[key], [current_key,
                                                       key].compact.join("."), result)}
    else
      result[current_key] = data
    end

    result
  end
end
