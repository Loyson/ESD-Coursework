<%-- 
    Document   : Registration
    Created on : 14-Nov-2016, 14:15:11
    Author     : Sundas Choudry
--%>

<div class="main">
    <div class="content-screen">
        <div class="title">
            <h1>Registration</h1>
        </div>
        <form class="form" name="login" action="${pageContext.request.contextPath}/Registration" method="post">
            <input class="control-group" type="text" name="firstName"  value="" placeholder="Full Name" required>
            <input class="control-group" type="text" name="lastName"  value="" placeholder="Full Name" required>
            DOB:<br>
            <input class="control-group" type="date" name="DOB"  value="" placeholder="Date of Birth" required>
            <input id="autocomplete" placeholder="Enter your address" onFocus="geolocate()" type="text">
            <input class="control-group" name="streetNumber" id="street_number" disabled="true" placeholder="Street Number" required>
            <input class="control-group" name="streetName" id="route" disabled="true" placeholder="Street Name" required>
            <input class="control-group" name="city" id="locality" disabled="true" placeholder="City" required>
            <input class="control-group" name="postcode" id="postal_code" disabled="true" placeholder="Postcode" required>
            <input class="control-group" name="country" id="country" disabled="true" placeholder="Country" required>
            <input class="btn" type="submit" value="Submit">
            <input class="btn" type="reset" value="Reset">
            <!--Dispaly the error message-->
            <c:if test="${not empty post}">
                ${ErrorMessage}
            </c:if>
        </form>
    </div>
</div>

<script>
    // This example displays an address form, using the autocomplete feature
    // of the Google Places API to help users fill in the information.

    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    var placeSearch, autocomplete;
    var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        country: 'long_name',
        postal_code: 'short_name'
    };

    function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
                /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
                {types: ['address']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
    }

    function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
            document.getElementById(component).value = '';
            document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
            var addressType = place.address_components[i].types[0];
            if (componentForm[addressType]) {
                var val = place.address_components[i][componentForm[addressType]];
                document.getElementById(addressType).value = val;
            }
        }
    }

    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
    function geolocate() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var geolocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                var circle = new google.maps.Circle({
                    center: geolocation,
                    radius: position.coords.accuracy
                });
                autocomplete.setBounds(circle.getBounds());
            });
        }
    }


</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCG-RSpM-f6kamg7UDvtvJ_UeemNhcunVk&libraries=places&callback=initAutocomplete"
async defer></script>

