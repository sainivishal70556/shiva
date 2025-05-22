sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'shiva/myapplication/test/integration/FirstJourney',
		'shiva/myapplication/test/integration/pages/BusinessPartnersList',
		'shiva/myapplication/test/integration/pages/BusinessPartnersObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnersList, BusinessPartnersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('shiva/myapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnersList: BusinessPartnersList,
					onTheBusinessPartnersObjectPage: BusinessPartnersObjectPage
                }
            },
            opaJourney.run
        );
    }
);