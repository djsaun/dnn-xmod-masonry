<style type="text/css">
      .xmp-xmod_DUDE_mosaic { padding: 10px 5px 5px 5px; }
      .xmp-xmod_DUDE_mosaic .xmp-form-row { margin: 3px; padding: 3px; clear:left;}
      .xmp-xmod_DUDE_mosaic label.xmp-form-label, .xmp-xmod_DUDE_mosaic span.xmp-form-label{ display:block; float:left; width: 120px;text-align: left; margin-right: 5px; }
      .xmp-xmod_DUDE_mosaic .xmp-button { margin-right: 5px; }
      table label {margin-left:5px;}
  .mosaic-container .item {padding-top:15px; padding-bottom:15px;}
  		.mosaic-container .item.w1 {width:160px;height:160px;}
  .mosaic-container .item.w2 {width:320px;height:160px;}
  .mosaic-container .item.w3 {width:160px;height:320px;}
  .mosaic-container .item.w4 {width:320px;height:320px;}
  .mosaic-container .item h1 {font-size:28px; font-family: 'Montserrat', sans-serif; font-weight: 700; color:#fff}
  .mosaic-container .item h2 {font-size:24px; font-family: 'Source Sans Pro', sans-serif; color:#fff}
  .mosaic-container .item p {font-size:18px; font-family: 'Source Sans Pro', sans-serif; color:#fff}
  .mosaic-container .item a.ctaButton {text-transform:uppercase;font-size:16px;color:#fff;font-weight:700;border:2px solid #fff;padding:4px 10px;}
  .mosaic-container .item img {padding-bottom:15px;}
  
  .mosaic-container .item.w2 .col-md-4 {padding:0}
    </style>

<script type="text/javascript">
  $(window).load(function () {
    // Masonry Isotope
    $('.mosaic-container').isotope({
        itemSelector: '.item',
        layoutMode: 'packery',
      packery:{
        gutter: 10
      }
      
    });
    
    $('.filter-button-group').on( 'click', 'button', function() {
  var filterValue = $(this).attr('data-filter');
  $container.isotope({ filter: filterValue });
});

});
</script>

<xmod:Template UsePaging="True" Ajax="False">
  <ListDataSource CommandText="SELECT [Title], [Subtitle], [Size], [Category], [Color], [Link], [Description], [CallToAction], [Icon] FROM xmod_DUDE_mosaic"/>

  <HeaderTemplate>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
    <div class="button-group filter-button-group">
  <button data-filter="*">All</button>
  <button data-filter=".my-success-path">My Success Path</button>
  <button data-filter=".dude-data">Dude Data</button>
  <button data-filter=".resources">Resources</button>
  <button data-filter=".community">Community</button>
  <button data-filter=".connect">Connect</button>
  <button data-filter=".support">Support</button>
</div>
<div class="mosaic-container">
  </HeaderTemplate>
  <ItemTemplate>
        <xmod:select>
          <case value='[[Size]]' operator='=' expression="4" comparetype="text">
    			<div class="item w4 col-md-12 [[Category]]" style="background-color: #[[Color]]">
       </case>
            <case value='[[Size]]' operator='=' expression="3" comparetype="text">
    			<div class="item w3 col-md-12 [[Category]]" style="background-color: #[[Color]]">
            <div class="col-md-12"><img alt="[[Title]]" src="/Portals/0/Images/DUDE/Mosaic/[[Icon]]"></div>
            	<div class="col-md-12">
                <h1>[[Title]]</h1>
                <h2>[[Subtitle]]</h2>
                <p>[[Description]]</p>
            </div>
       </case>
       <case value='[[Size]]' operator='=' expression="2" comparetype="text">
    			<div class="item w2 col-md-12 [[Category]]" style="background-color: #[[Color]]">
              <div class="col-md-4 col-sm-4 col-xs-4"><img alt="[[Title]]" src="/Portals/0/Images/DUDE/Mosaic/[[Icon]]"></div>
            	<div class="col-md-8 col-sm-8 col-xs-8"><h1 class="col-md-12">[[Title]]</h1><h2 class="col-md-12">[[Subtitle]]</h2></div>
       </case>
       <else>
         <div class="item w1 col-md-12 [[Category]]" style="background-color: #[[Color]]">
           <h1>[[Title]]</h1>
         	<h2>[[Subtitle]]</h2>
       </else>
    </xmod:select>
			
				
         <div class="more-info">
				
				<p><a class="ctaButton" href="[[Link]]" target="_blank">[[CallToAction]]</a></p>
			</div>
			</div>
		
  </ItemTemplate>
  <FooterTemplate>
</div>
  </FooterTemplate>
</xmod:Template>
