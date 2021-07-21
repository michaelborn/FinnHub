/**
 * I wrap all company-related FinnHub API calls
 */
component{
    property name="FinnHubClient" inject="FinnHubClient";

    public component function init(){
        return this;
    }

    public function getBasicFinancials(){
        // TODO: implement queryParams ?symbol=AAPL&metric=all
        return FinnHubClient.get( "/stock/metric" );
    }
}