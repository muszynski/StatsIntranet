<#import "makro/formControl.ftl" as forms>

<#include "elements/headerScript.ftl" />
<#include "elements/navbar.ftl" />

<h1>Panel sterowania raportami</h1>

<@forms.generateReportForm showDropdown=true showStartDate=true showEndDate=false/>

<#include "elements/footer.ftl" />
<#include "elements/footerScript.ftl" />
