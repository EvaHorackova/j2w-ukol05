[#ftl]

[#import "/spring.ftl" as spring]

<!DOCTYPE html>
<html lang="cs">

[#include "_common/head.ftlh"]

<body>
    <main>
        <form class = "registrace" action = "/" method = "post">
            <h1>Registrace na letní dětský tábor</h1>

            <label for = "jmeno" class = "form-label" > Jméno: </label>
            [@spring.formInput path = "form.jmeno" /]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <label for = "prijmeni" class = "form-label" > Příjmení: </label>
            [@spring.formInput path = "form.prijmeni" /]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <label for = "datumNarozeni" class = "form-label" > Datum narození: </label>
            [@spring.formInput path = "form.datumNarozeni" fieldType= "date" /]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <div class = pohlavi> Pohlaví:
                    <input id = pohlavi1 type = "radio" name = "pohlavi" value = "DIVKA" />
                    <label for = "pohlavi1" > Dívka </label>

                    <input id = pohlavi2 type = "radio" name = "pohlavi" value = "CHLAPEC"/>
                    <label for = "pohlavi2" > Chlapec </label>
            </div>
            [@spring.bind "form.pohlavi" /]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <label for = "turnus" class = "form-label"> Turnus: </label>
            [@spring.formSingleSelect path="form.turnus" options={
            "": "",
            "1": "5. - 11. července",
            "2": "12. - 18. července",
            "3": "19. - 25. července",
            "4": "5. - 11. srpna",
            "5": "12. - 18. srpna",
            "6": "19. - 25. srpna"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for = "email" class = "form-label" > E-mail: </label>
            [@spring.formInput path = "form.email" fieldType= "email"/]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <label for = "telefon" class = "form-label" > Telefon: </label>
            [@spring.formInput path = "form.telefon" /]
            <div class = "error"> [@spring.showErrors "<br>" /] </div>

            <div class="objednat">
                <button type="submit">Objednat</button>
            </div>
            </form>
    </main>
</body>
</html>