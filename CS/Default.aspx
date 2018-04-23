<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .fixed_style { 
            position: fixed;
            top: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p style="height: 30px;" />
        <div id="menu_container">
            <dx:ASPxMenu ID="mMain" runat="server">
                <Items>
                    <dx:MenuItem Text="Home">
                        <Items>
                            <dx:MenuItem Text="News">
                                <Items>
                                    <dx:MenuItem Text="For Developers">
                                    </dx:MenuItem>
                                    <dx:MenuItem Text="Website news">
                                    </dx:MenuItem>
                                </Items>
                            </dx:MenuItem>
                            <dx:MenuItem Text="Our Mission">
                            </dx:MenuItem>
                            <dx:MenuItem Text="Our Customers">
                            </dx:MenuItem>
                        </Items>
                    </dx:MenuItem>
                    <dx:MenuItem Text="Products">
                        <Items>
                            <dx:MenuItem Text="Subscriptions / Packs">
                            </dx:MenuItem>
                            <dx:MenuItem Text=".NET Windows Forms Components">
                            </dx:MenuItem>
                            <dx:MenuItem Text="Reporting / Printing Suites">
                            </dx:MenuItem>
                            <dx:MenuItem Text="VCL Components and Tools">
                            </dx:MenuItem>
                            <dx:MenuItem Text="ASP.NET Components">
                            </dx:MenuItem>
                        </Items>
                    </dx:MenuItem>
                </Items>
            </dx:ASPxMenu>
        </div>
        <dx:ASPxCheckBox ID="chEnableRecalculate" ClientInstanceName="enableRecalculate" runat="server" Checked="true" Text="Enable recalculation"></dx:ASPxCheckBox> 
    </form>

    <p style="height: 2000px;" />
    
    <!--region #Recalculate-->
    <script type="text/javascript">
        const fixedStyleName = 'fixed_style';
        var menuBar = document.getElementById('menu_container'),
            menuBarOffsetTop = menuBar.offsetTop;
        function Recalculate() {
            if(enableRecalculate.GetChecked())
                ASPxClientMenuBase.GetMenuCollection().RecalculateAll();
        }    
        window.addEventListener('scroll', function() {
            if(window.scrollY > menuBarOffsetTop && !menuBar.classList.contains(fixedStyleName)) {
                menuBar.classList.add(fixedStyleName);
                Recalculate();
            }
            else if(window.scrollY <= menuBarOffsetTop && menuBar.classList.contains(fixedStyleName)) {
                menuBar.classList.remove(fixedStyleName);
                Recalculate();
            }
        });
    </script>
    <!--endregion #Recalculate-->
</body>
</html>


