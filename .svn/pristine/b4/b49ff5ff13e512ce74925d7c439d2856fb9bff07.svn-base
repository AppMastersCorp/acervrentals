$(document).ready(function()
{
    var isEditingEnabled,
            toggle = $('[id=toggle]');

    function enableEditing() {

        var elementid = $('div[id*=Widget2]');

        if (!CKEDITOR.instances.elementid) {
            CKEDITOR.inline(elementid, {
                extraAllowedContent: 'a(documentation);abbr[title];code',
                removePlugins: 'stylescombo',
                extraPlugins: 'sourcedialog',
                startupFocus: true
            });
        }
    }

    function disableEditing() {
        if (CKEDITOR.instances.elementid)
            CKEDITOR.instances.elementid.destroy();
    }

    function toggleEditor() {
        if (isEditingEnabled) {
            if (CKEDITOR.instances.elementid && CKEDITOR.instances.elementid.checkDirty()) {
               // reset.style.display = 'inline';
            }
            disableEditing();
            elementid.setAttribute('contenteditable', false);
            this.innerHTML = 'Start editing';
            isEditingEnabled = false;
        }
        else {
            introduction.setAttribute('contenteditable', true);
            enableEditing();
            this.innerHTML = 'Finish editing';
            isEditingEnabled = true;
        }
    }


    function onClick(element, callback) {
        
        if (window.addEventListener) {

            element.addEventListener('click', callback, false);
        }
        else if (window.attachEvent) {
            element.attachEvent('onclick', callback);
        }
    }

    onClick(toggle, toggleEditor);
   

});


CKEDITOR.on('instanceCreated', function (event) {
    var editor = event.editor,
            element = editor.element;


    if (element.is('h1', 'h2', 'h3') || element.getAttribute('id') == 'taglist') {

        editor.on('configLoaded', function () {


          
            editor.config.toolbarGroups = [
                { name: 'editing', groups: ['basicstyles', 'links'] },
                { name: 'undo' },
                { name: 'clipboard', groups: ['selection', 'clipboard'] },
                { name: 'about' }
            ];
        });
    }
});