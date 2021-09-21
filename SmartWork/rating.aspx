<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rating.aspx.cs" EnableEventValidation="false" Inherits="starratingsystem" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        li {
            clear: both;
            margin-bottom: 1em;
            border-bottom: 1px solid #eee;
        }
        /* ****************** RatingStar ****************** */
        .ratingStar {
            white-space: nowrap;
            margin: 1em;
            height: 14px;
        }

            .ratingStar .ratingItem {
                font-size: 0pt;
                width: 13px;
                height: 12px;
                margin: 0px;
                padding: 0px;
                display: block;
                background-repeat: no-repeat;
                cursor: pointer;
            }

            .ratingStar .Filled {
                background-image: url(images/ratingStarFilled.png);
            }

            .ratingStar .Empty {
                background-image: url(images/ratingStarEmpty.png);
            }

            .ratingStar .Saved {
                background-image: url(images/ratingStarSaved.png);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"
                        EnablePageMethods="true">
                    </asp:ScriptManager>
                  <cc1:Rating ID="Rating1" runat="server"
             MaxRating="5"
                            CurrentRating="1"
                            CssClass="ratingStar"
                            StarCssClass="ratingItem"
                            WaitingStarCssClass="Saved"
                            FilledStarCssClass="Filled"
                            EmptyStarCssClass="Empty" AutoPostBack="True" OnChanged="Rating1_Changed">
                                   
            
            </cc1:Rating>
           <asp:Label ID="labelCaption1" runat="server" Text="Selected value: " />
                        <asp:Label ID="labelValue1" runat="server" Text=""></asp:Label>
          
        <asp:Button ID="submit" runat="server" Text="Post" OnClick="btnsubmit_Click" />
        <asp:Label ID="label" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
