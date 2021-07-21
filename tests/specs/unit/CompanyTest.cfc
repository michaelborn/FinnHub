component extends="testbox.system.BaseSpec" {
    function beforeAll(){
        variables.model = createMock( "models.Company" );

        variables.FinnHubClient = new hyper.models.HyperBuilder(
            baseURL = server.system.environment[ "FINNHUB_API_URL" ],
            headers = {
                "X-FINNHUB-TOKEN" : server.system.environment[ "FINNHUB_API_KEY" ]
            }
        );

        variables.model.$property( propertyName = "FinnHubClient", mock = variables.FinnHubClient );
    }
    function run() {
        describe( "Company suite", function() {
            it( "+getBasicFinancials()", function() {
                var result = variables.model.getBasicFinancials();

                expect( isInstanceOf( result, "hyper.models.HyperResponse" ) ).toBeTrue( "should return hyperResponse object" );
            } );
        } );
    }
}