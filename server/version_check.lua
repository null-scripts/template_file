CreateThread(function()
    Wait(10000)
    local resourceName = GetCurrentResourceName()
    local currentVersion = GetResourceMetadata(resourceName, 'version', 0)

    if not currentVersion then return end
    local apiUrl = 'https://raw.githubusercontent.com/null-scripts/null-scripts-version/refs/heads/main/version.json'
    PerformHttpRequest(apiUrl, function(err, responseText, headers)
        local locale = Locales[Config.Lang] or Locales['ja']
        if err ~= 200 then
            print(('^0[%s] ^1%s^7'):format(resourceName, locale.version_fail))
            return
        end

        local versionInfo = json.decode(responseText)
        if not versionInfo or not versionInfo[resourceName] or not versionInfo[resourceName].version then 
            return
        end

        local latestVersion = versionInfo[resourceName].version
        if latestVersion ~= currentVersion then
            print('^0-------------------------------------------------^7')
            print(('^3%s^7'):format(locale.version_new_available))
            print(('^2%s: v%s^7'):format(locale.version_current, currentVersion))
            print(('^2%s: v%s^7'):format(locale.version_latest, latestVersion))
            print(('^3%s^7'):format(locale.version_download))
            print('^0-------------------------------------------------^7')
        else
            print(('^0[%s] ^2%s (v%s)^7'):format(resourceName, locale.version_is_latest, currentVersion))
        end
    end, 'GET', '', { ['User-Agent'] = resourceName })

end)