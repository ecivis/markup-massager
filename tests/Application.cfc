component {

    this.name = "Tests" & hash(getCurrentTemplatePath());
    this.sessionManagement = false;
    this.setClientCookies = false;

    rootPath = reReplaceNoCase(getDirectoryFromPath(getCurrentTemplatePath()), "tests(\\|/)", "");
    this.mappings["/tests"] = rootPath & "tests";

}