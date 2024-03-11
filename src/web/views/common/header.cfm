<header class="d-flex align-items-center pb-3 mb-5 border-bottom">
  <a href="/" class="d-flex align-items-center text-body-emphasis text-decoration-none">
    <span class="fs-4"><i class="bi bi-flag-fill" style="color:#1d8348;"></i>My Reserve Golf</span>
  </a>
</header>


<cfscript>
  lSections = "main,contact,schedule,weather";
  stSectionClass = structNew();
  for ( i = 1; i lte listLen(lSections); i = i+1) {
    stSectionClass[listGetAt(lSections, i)]= "";
  }
  stSectionClass[getSection()] = "active";
</cfscript>


<cfoutput>
<ul class="nav nav-pills d-flex align-items-center pb-3 mb-5 border-bottom">

  <li class="nav-item">
    <a class="nav-link #stSectionClass['main']#" href="#buildURL('main')#">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link #stSectionClass['schedule']#" href="#buildURL('schedule')#">Tee Times</a>
  </li>
  <li class="nav-item">
    <a class="nav-link #stSectionClass['weather']#" href="#buildURL('weather')#">Weather</a>
  </li>
  <li class="nav-item">
    <a class="nav-link #stSectionClass['contact']#" href="#buildURL('contact')#">Contact Us</a>
  </li>

</ul>
</cfoutput>
