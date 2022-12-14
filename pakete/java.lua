-- Relativer Pfad:
-- graph/Knoten.java

-- Relativer Repo(sitory)-Pfad:
-- src/main/java/org/bschlangaul/graph/Knoten.java

-- Absoluter (Dateisystem)-Pfad:
-- /home/hermine/examens_aufgaben/.repos/java/src/main/java/org/bschlangaul/graph/Knoten.java

-- Github-URL:
-- https://github.com/bschlangaul-sammlung/java-fuer-examens-aufgaben/blob/main/src/main/java/org/bschlangaul/graph/Knoten.java

-- Github-Raw-URL:
-- https://raw.githubusercontent.com/bschlangaul-sammlung/java-fuer-examens-aufgaben/main/src/main/java/org/bschlangaul/graph/Knoten.java

if konfiguration == nil then
  konfiguration = require('bschlangaul-konfiguration')
end

local konfig = konfiguration.config

local luakeys = require('luakeys')

local function normalisiere_klasse(pfad)
  pfad = string.gsub(pfad, '.java', '')
  return pfad
end

local function monat_zu_jahreszeit(monat)
  local ausgabe = ''
  if monat == '03' or monat == 'fruehjahr' then
    ausgabe = 'fruehjahr'
  elseif monat == '09' or monat == 'herbst' then
    ausgabe = 'herbst'
  end
  return ausgabe
end

--- Gib den zum Git-Repository (hbschlang/Java-Didaktik-Beispiele)
--  relativen Pfad zurück.
--
-- @tparam str relativer_pfad Ein relativer Pfad zu einer Java-Datei
--   (relativ zu src/main/java/org/bschlangaul). Kann die Endung .java
--   enthalten. Die Endung kann aber auch weggelassen werden.
-- @tparam bool ist_test Ob die Datei in src/main/java/org/bschlangaul
--   oder src/test/java/org/bschlangaul liegt.

-- @return zum Beispiel src/main/java/org/bschlangaul/examen/Aufgabe1.java
local function gib_relativen_repo_pfad(relativer_pfad, ist_test)
  local main_oder_test = 'main'
  if ist_test == true then
    main_oder_test = 'test'
  end

  return
    'src/' ..
    main_oder_test ..
    '/java/org/bschlangaul/' ..
    normalisiere_klasse(relativer_pfad) ..
    '.java'
end

--- Gib den absoluten Pfad zu einer Java-Datei.
--
-- @tparam str relativer_pfad Ein relativer Pfad zu einer Java-Datei
--   (relativ zu src/main/java/org/bschlangaul). Kann die Endung .java
--   enthalten. Die Endung kann aber auch weggelassen werden.
-- @tparam bool ist_test Ob die Datei in src/main/java/org/bschlangaul
--   oder src/test/java/org/bschlangaul liegt.

-- @return Der absolute lokale Dateipfad
local function gib_absoluten_pfad(relativer_pfad, ist_test)
  return konfig.repos.examensAufgabenTex.lokalerPfad ..
    '/.repos/java/' ..
    gib_relativen_repo_pfad(relativer_pfad, ist_test)
end

-- Examen

local function gib_examens_pfad(nummer, jahr, monat, relativer_examens_pfad)
  return 'examen/examen_' .. nummer ..
    '/jahr_' .. jahr .. '/' ..
    monat_zu_jahreszeit(monat) .. '/' .. relativer_examens_pfad
end

-- Github URL

local function gib_github_url(relativer_repo_pfad)
  local url = konfig.github.url:gsub('<name>', konfig.repos.javaFuerExamensAufgaben.name)
  return url .. '/blob/' ..
    konfig.github.branch ..'/' .. relativer_repo_pfad
end

local function gib_github_examen_url(nummer, jahr, monat, pfad)
  return gib_github_url(
    gib_relativen_repo_pfad(
      gib_examens_pfad(nummer, jahr, monat, pfad), false
    )
  )
end

local export = {
  -- absoluten pfad

  drucke_absoluten_pfad = function(relativer_pfad, ist_test)
    tex.print(
      gib_absoluten_pfad(relativer_pfad, ist_test)
    )
  end,

  drucke_absoluten_examens_pfad = function(nummer, jahr, monat, pfad)
    tex.print(
      gib_absoluten_pfad(
        gib_examens_pfad(nummer, jahr, monat, pfad), false
      )
    )
  end,

  -- relativen

  drucke_relativen_repo_pfad = function(relativer_pfad, ist_test)
    tex.print(
      gib_relativen_repo_pfad(relativer_pfad, ist_test)
    )
  end,

  drucke_relativen_examens_repo_pfad = function(nummer, jahr, monat, pfad)
    tex.print(
      gib_relativen_repo_pfad(
        gib_examens_pfad(nummer, jahr, monat, pfad),
        false
      )
    )
  end,

  -- url

  drucke_github_url = function(relativer_pfad, ist_test)
    tex.print(
      gib_github_url(
        gib_relativen_repo_pfad(
          relativer_pfad,
          ist_test
        )
      )
    )
  end,

  drucke_github_examens_url = function(nummer, jahr, monat, pfad)
    tex.print(gib_github_examen_url(nummer, jahr, monat, pfad))
  end,

  -- Funktioniert nicht: Package xkeyval Error: `firstline=3,' undefined in families `minted@opt@cmd'
  normalisiere_optionen = function(optionen_str)
    local optionen = luakeys.parse(optionen_str)
    if optionen['firstline'] == nil then
      optionen['firstline'] = 3
    end
    tex.print(luakeys.render(optionen))
  end
}

return export
