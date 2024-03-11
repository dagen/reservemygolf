

<cfscript>
  minDate = dateFormat(Now(), "yyyy-mm-dd");
  maxDate = dateFormat(dateAdd("d", 14, now()), "yyyy-mm-dd");
</cfscript>
<cfoutput>

<div class="row">

  <div class="col col-md-2">
    <form>
      <div class="mb-2">
        <div class="card">
          <div class="card-body">
            <div class="card-title">Date</div>
            <div class="card=text">
              <input id="startDate" class="form-control" type="date" min="#minDate#" max="#maxDate#" value="#minDate#"/>
          </div>
          </div>
        </div>

      </div>

      <div class="mb-2">
        <div class="card">
          <div class="card-body">
            <div class="card-title">Time</div>
            <div class="card=text">
              time slider
            </div>
          </div>
        </div>

      </div>

      <div class="mb-2">
        <div class="card">
          <div class="card-body">
            <div class="card-title">Players</div>
            <div class="card=text">




              <input type="radio" id="1player" name="numPlayers" value="1"> <label for="1player">1</label>
              <input type="radio" id="2player" name="numPlayers" value="2" checked> <label for="2player">2</label>
              <input type="radio" id="3player" name="numPlayers" value="3"> <label for="3player">3</label>
              <input type="radio" id="4player" name="numPlayers" value="4"> <label for="4player">4</label>
              </select>
            </div>
          </div>
        </div>

      </div>

      <div class="mb-2">
        <div class="card">
          <div class="card-body">
            <div class="card-title">Holes</div>
            <div class="card=text">
              <input id="numHoles" type="checkbox" value="9" checked="true">9 holes</input> <br />
              <input id="numHoles" type="checkbox" value="18" checked="true">18 holes</input>
            </div>
          </div>
        </div>
      </div>

      <div class="mb-2">
        <div class="card">
          <div class="card-body">
            <div class="card-title">Course</div>
            <div class="card=text">
              <input id="course" type="checkbox" value="north" checked="true">North Course </input><br />
              <input id="course" type="checkbox" value="south" checked="true">Sourth Course</input>
            </div>
          </div>
        </div>
      </div>
    </form>


  </div>

  <div class="col col-md-10">
    <h2>Available Times:</h2>



    <cfloop from="1" to ="15" index="i">
      <div class="card">
        <div class="card-header">
          South Course
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">9:00am</li>
          <li class="list-group-item">1-3 players</li>
          <li class="list-group-item">$69</li>
          <li class="list-group-item"></li>
        </ul>

      </div>


    </cfloop>
  </div>
</div>

</cfoutput>
