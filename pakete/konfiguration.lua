require('lualibs-extended')

local function trim(key)
  return (key:gsub('^%s*(.-)%s*$', '%1'))
end

local function split_string_by_dot(inputstr)
  local t = {}
  for str in string.gmatch(inputstr, '([^.]+)') do
    table.insert(t, str)
  end
  return t
end

local function parse_json_string(content)
  return utilities.json.tolua(content)
end

local function parse_json_file(path)
  local f = io.open(path, 'rb')
  local content = f:read('*all')
  f:close()
  return parse_json_string(content)
end

local function get(config, key_specifier)
  for _, segment in pairs(split_string_by_dot(trim(key_specifier))) do
    config = config[segment]
    if config == nil then
      tex.error(
        'No JSON value found for key: ' .. key_specifier .. ' and key segment: ' ..
          segment)
    end
  end
  return config
end

local config = parse_json_file('/etc/bschlangaul.json')

local function get_config(key_specifier)
  return get(config, key_specifier)
end

return {
  config = config,
  get_config = get_config,
}
