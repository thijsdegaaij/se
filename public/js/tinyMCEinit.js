tinymce.init({
          selector: ".texteditor",
          statusbar: false, 
          auto_focus : false,
          height : 275,
          plugins: [
              "advlist autolink lists link image charmap print preview anchor",
              "searchreplace visualblocks code fullscreen",
              "insertdatetime media table contextmenu paste imagetools"
          ],
          toolbar: "insertfile undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image", 
});