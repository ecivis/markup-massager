component extends="testbox.system.BaseSpec" {

    function run() {
        describe("The MarkupMassager", function () {
            it("should extract text from markup", function () {
                var mm = getMockBox().createMock("models.MarkupMassager").init();
                var content = "";
                var result = "";

                // Simple chunk
                content = "<strong>Strong Men Also Cry</strong>#chr(10)#<p>And other thoughts.</p>#chr(10)#<cite>&mdash; Jeffrey Lebowski</cite>";
                result = mm.stripMarkup(content);

                expect(result).toBe("Strong Men Also Cry And other thoughts. — Jeffrey Lebowski");
            })

        });
    }

}