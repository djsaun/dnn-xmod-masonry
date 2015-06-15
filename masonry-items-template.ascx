<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">
<script type="text/javascript" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
    $('.dataTable').DataTable();
});
</script>

<xmod:Template UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="">
  <ListDataSource CommandText="SELECT [Id], [Title], [Subtitle], [Size], [Category], [Color], [Link], [Description], [CallToAction], [Icon] FROM xmod_DUDE_mosaic"/>
  <DeleteCommand CommandText="DELETE FROM xmod_DUDE_mosaic WHERE [Id] = @Id">
    <Parameter Name="Id" />
  </DeleteCommand>
  
  
  
  <HeaderTemplate>
    <div>
  <xmod:AddLink Text="New" />
  </div>
    <table class="dataTable">
      <thead>
        <tr>
          <th>Title</th>
          <th>Size</th>
          <th>Category</th>
          <th>Color</th>
          <th>&nbsp;</th>
        </tr>
      </thead>
      <tbody>
  </HeaderTemplate>
  <ItemTemplate>
        <tr>
          <td>[[Title]]</td>
          <td>[[Size]]</td>
          <td>[[Category]]</td>
          <td style="background:#[[Color]]"></td>
          <td>
            <xmod:EditLink Text="Edit">
              <Parameter Name="Id" Value='[[Id]]' />
            </xmod:EditLink>
            <xmod:DeleteLink Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');">
              <Parameter Name="Id" Value='[[Id]]' />
            </xmod:DeleteLink>
            
          </td>
        </tr>
  </ItemTemplate>
  <FooterTemplate>
      </tbody>
    </table>
  </FooterTemplate>
</xmod:Template>
