$(document).ready(function() {
	onLogout();
});

function onLogout() {
	$('.logout').on('click', function(e){
		Intercom('shutdown');
	});
}