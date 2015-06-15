<EditForm>

  <ScriptBlock BlockType="HeadScript" RegisterOnce="True" ScriptId="KBXM_Style_xmod_DUDE_mosaic">
    <style type="text/css">
      .xmp-xmod_DUDE_mosaic { padding: 10px 5px 5px 5px; }
      .xmp-xmod_DUDE_mosaic .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-xmod_DUDE_mosaic label.xmp-form-label, .xmp-xmod_DUDE_mosaic span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-xmod_DUDE_mosaic .xmp-button { margin-right: 5px; }
      table label {margin-left:5px;}
    </style>
  </ScriptBlock>

  <SelectCommand CommandText="SELECT 
                              [Id], 
                              [Title], 
                              [Subtitle],
                              [Size], 
                              [Category], 
                              [Color], 
                              [Link], 
                              [Description], 
                              [CallToAction], 
                              [Icon],
                              [LastModified]
                              FROM xmod_DUDE_mosaic 
                              WHERE [Id]=@Id" />
  
  <SubmitCommand CommandText="UPDATE [xmod_DUDE_mosaic] SET 
                              [Title]=@Title, 
                              [Subtitle]=@Subtitle,
                              [Size]=@Size, 
                              [Category]=@Category, 
                              [Color]=@Color, 
                              [Link]=@Link, 
                              [Description]=@Description, 
                              [CallToAction]=@CallToAction, 
                              [Icon]=@Icon,
                              [LastModified]=getDate()
                              WHERE [Id]=@Id"/>
  
  <script> 
    $(function() { 
      $('.picker').colpick({
    layout:'hex',
    submit:0,
    colorScheme:'dark',
    onChange:function(hsb,hex,rgb,el,bySetColor) {
        $(el).css('border-color','#'+hex);
        // Fill the text box just if the color was set using the picker, and not the colpickSetColor function.
        if(!bySetColor) $(el).val(hex);
    }
    }).keyup(function(){
        $(this).colpickSetColor(this.value);
    }); 
    }); 
  </script>

 <div class="xmp-xmod_DUDE_mosaic xmp-form">
  <div class="xmp-form-row">
    <Label For="Title" Text="Title" CssClass="NormalBold xmp-form-label" />
    <TextBox id="Title" DataField="Title" DataType="string" Width="400" Nullable="True" />
  </div>
   <div class="xmp-form-row">
    <Label For="Subtitle" Text="Subtitle" CssClass="NormalBold xmp-form-label" />
    <TextBox id="Subtitle" DataField="Subtitle" DataType="string" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="Size" Text="Size" CssClass="NormalBold xmp-form-label" />
    <RadioButtonList Id="Size" DataField="Size" SelectedItemsSeparator="|">
        <ListItem Value="1">1 x 1</ListItem>
        <ListItem Value="2">1 x 2</ListItem>
        <ListItem Value="3">2 x 1</ListItem>
        <ListItem Value="4">2 x 2</ListItem>
		</RadioButtonList>
  </div>
  <div class="xmp-form-row">
    <Label For="Category" Text="Category" CssClass="NormalBold xmp-form-label" />
    <TextBox id="Category" DataField="Category" DataType="string" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="Color" Text="Color" CssClass="NormalBold xmp-form-label" />
    <TextBox id="Color" DataField="Color" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="Link" Text="Link" CssClass="NormalBold xmp-form-label" />
    <TextBox id="Link" DataField="Link" DataType="string" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="Description" Text="Description (not shown on 1x1)" CssClass="NormalBold xmp-form-label" />
    <TextArea id="Description" DataField="Description" DataType="string" Height="200" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="CallToAction" Text="CTA" CssClass="NormalBold xmp-form-label" />
    <TextBox id="CallToAction" DataField="CallToAction" DataType="string" Width="400" Nullable="True" />
  </div>
  <div class="xmp-form-row">
    <Label For="Icon" Text="Icon (not shown on 1x1)" CssClass="NormalBold xmp-form-label" />
    <FileUpload Id="Icon" DataField="Icon" DataType="String" DisplayMode="FilePicker" extensions="jpg,gif,png" uploaddirectory="/Portals/0/Images/DUDE/Mosaic/" uploadonce="True"></FileUpload>
  </div>
  <div class="kbxmFormRow">
    <span class="xmp-form-label">&nbsp;</span>
    <UpdateButton Text="Update" CssClass="CommandButton xmp-button" /> <CancelButton Text="Cancel" CssClass="CommandButton xmp-button" />
  </div>
  <TextBox id="Id" DataField="Id" DataType="int32" Visible="False" />

    <ValidationSummary DisplayMode="BulletList"  CssClass="NormalRed xmp-validation-summary" />
 </div>
</EditForm>

