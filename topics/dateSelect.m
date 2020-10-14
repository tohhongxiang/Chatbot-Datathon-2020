: dateSelector ( -- "s" )
    q{
        <input type="date" id="startDate">
        <button onclick="submitDate()">Submit</button>

        <script>
            submitDate = () => {
                document.getElementById('question').value = document.getElementById('startDate').value;
                this.form.submit();
            }
        </script>
    }q
;