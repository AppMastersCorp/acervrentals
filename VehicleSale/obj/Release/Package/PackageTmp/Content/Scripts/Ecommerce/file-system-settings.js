$(function() {
    $('#StorageType').change(function() {
        if ($(this).val() == 'Ecommerce.Services.AzureFileSystem') {
            $('#azure-settings').show();
        } else {
            $('#azure-settings').hide();
        }
    });
    $('#StorageType').change();
})