: dateSelector ( -- "s" )
    q{
        <input type="date" id="startDate">
        <div onclick="submitDate()" style="padding: 0.75em 2em;border-radius: 8px;background-color: #4fc08d;width: fit-content;">Submit</div>

        <script>
            var startDate = document.getElementById('startDate');
            startDate.min = new Date().toISOString().split("T")[0];
            submitDate = () => {
                document.getElementById('question').value = startDate.value;
                startDate.parentElement.form.submit();
            }
        </script>
    }q
;

: @date ( "s" -- f )
  [regex] ^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$
; \@