<#macro generateReportForm showDropdown, showStartDate, showEndDate>
    <form action="/generateReport" method="post" class="form-group">
        <#if showDropdown>
            <div class="mb-3">
                <label for="reportType" class="form-label">Typ raportu</label>
                <select class="form-select" id="reportType" name="reportType">
                    <option value="type1">Typ 1</option>
                    <option value="type2">Typ 2</option>
                    <option value="type3">Typ 3</option>
                </select>
            </div>
        </#if>

        <#if showStartDate>
            <div class="mb-3">
                <label for="startDate" class="form-label">Data początkowa</label>
                <input type="date" class="form-control" id="startDate" name="startDate">
            </div>
        </#if>

        <#if showEndDate>
            <div class="mb-3">
                <label for="endDate" class="form-label">Data końcowa</label>
                <input type="date" class="form-control" id="endDate" name="endDate">
            </div>
        </#if>

        <button type="submit" class="btn btn-primary">Generuj raport</button>
    </form>
</#macro>
