[#ftl]

[#import "/spring.ftl" as spring]

<!DOCTYPE html>
<html lang="cs">

[#include "_common/head.ftlh"]

<body>
<div class="potvrzeni">
    <h1>Shrnutí registrace</h1>
    <div>Registrace s číslem ${kod} byla vytvořena.</div>
    <div>Jméno: <strong>${jmeno}</strong></div>
    <div>Příjmení: <strong>${prijmeni}</strong></div>
    <div>Datum narození: ${datumNarozeni}</div>
    <div>Pohlaví: ${pohlavi}</div>
    <div>Turnus:
        [#if form.turnus == "1"]
            5. - 11. července
        [#elseif form.turnus == "2"]
            12. - 18. července
        [#elseif form.turnus == "3"]
            19. - 25. července
        [#elseif form.turnus == "4"]
            5. - 11. srpna
        [#elseif form.turnus == "5"]
            12. - 18. srpna
        [#elseif form.turnus == "6"]
            19. - 25. srpna
        [#else]
        [/#if]
    </div>
    <div>
        [#if email??]
            E-mail: ${email}
        [/#if]
    </div>
    <div>
        [#if telefon??]
            Telefon: ${telefon}
        [/#if]
    </div>
</div>
</body>
</html>