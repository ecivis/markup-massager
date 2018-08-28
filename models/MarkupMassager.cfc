component singleton {

    property name="log" inject="logbox:logger:{this}";

    public MarkupMassager function init() {
        variables.jsoup = createObject("java", "org.jsoup.Jsoup");
        return this;
    }

    /**
    * Removes HTML tags from the content provided.
    * @htmlFragment A chunk of HTML content or a whole document
    */
    public string function stripMarkup(required string htmlFragment) {
        if (len(arguments.htmlFragment) == 0) {
            return "";
        }

        try {
            var doc = variables.jsoup.parse(arguments.htmlFragment);
            return doc.body().text();
        } catch (any e) {
            return "";
        }
    }

}