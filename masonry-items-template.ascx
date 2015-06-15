<xmod:Template UsePaging="True" Ajax="False" AddRoles="" EditRoles="" DeleteRoles="">
  <ListDataSource CommandText="SELECT [Id], [Title], [Size], [Category], [Color], [Link], [Description], [CallToAction], [Icon] FROM xmod_DUDE_mosaic"/>
  <DeleteCommand CommandText="DELETE FROM xmod_DUDE_mosaic WHERE [Id] = @Id">
    <Parameter Name="Id" />
  </DeleteCommand>
  
  
  
  <HeaderTemplate>
    <div>
  <xmod:AddLink Text="New" />
  </div>
    <table>
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
          <td>[[Color]]</td>
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
