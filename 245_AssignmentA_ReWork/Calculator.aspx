<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="_245_AssignmentA_ReWork.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment B - Calculator Themes</title>
</head>
<body style="background-color: #252c2b; padding: 10px;">
    <div>
        <h1>PROG 245 - Calculator Theme Selector</h1>
    </div>
    <form id="form1" runat="server" style="width: 53%; display: block; vertical-align: middle; align-content: center">
        <asp:Label ID="Label1" runat="server" Text="Select a Calculator Theme: " CssClass="desc"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
        <br />
        <div title="Assignment B - Calculator Themes">
            <asp:Panel ID="Panel1" runat="server" Height="779px" Width="544px" HorizontalAlign="Center">
                <asp:TextBox ID="txtDisplay" runat="server" Font-Size="96pt" Style="z-index: 1; left: 25px; top: 133px; position: absolute; text-align: center; height: 150px" Width="518px" CssClass="Screen"></asp:TextBox>

                <asp:Button ID="btnC" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 300px; position: absolute; height: 100px; width: 342px" Text="C" OnClick="btnC_Click" CssClass="ButtonOp" />
                <asp:Button ID="btnAdd" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 300px; position: absolute; height: 100px; width: 135px" Text="+" OnClick="btnAdd_Click" CssClass="ButtonOp" />

                <asp:Button ID="btn7" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 420px; position: absolute; height: 100px; width: 100px" Text="7" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn8" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 420px; position: absolute; height: 100px; width: 100px" Text="8" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn9" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 420px; position: absolute; height: 100px; width: 100px" Text="9" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btnMin" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 420px; position: absolute; height: 100px; width: 135px" Text="-" OnClick="btnAdd_Click" CssClass="ButtonOp" />


                <asp:Button ID="btn4" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 540px; position: absolute; height: 100px; width: 100px" Text="4" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn5" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 540px; position: absolute; height: 100px; width: 100px" Text="5" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn6" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 540px; position: absolute; height: 100px; width: 100px" Text="6" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btnMult" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 540px; position: absolute; height: 100px; width: 135px" Text="*" OnClick="btnAdd_Click" CssClass="ButtonOp" />


                <asp:Button ID="btn1" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 660px; position: absolute; height: 100px; width: 100px" Text="1" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn2" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 660px; position: absolute; height: 100px; width: 100px" Text="2" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btn3" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 660px; position: absolute; height: 100px; width: 100px" Text="3" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btnDivide" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 660px; position: absolute; height: 100px; width: 135px" Text="/" OnClick="btnAdd_Click" CssClass="ButtonOp" />


                <asp:Button ID="btnCalc" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 778px; position: absolute; height: 100px; width: 135px" Text="=" OnClick="btnAdd_Click" CssClass="ButtonOp" />
                <asp:Button ID="btn0" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 778px; position: absolute; height: 100px; width: 220px" Text="0" OnClick="btn0_Click" CssClass="ButtonNum" />
                <asp:Button ID="btnPoint" runat="server" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 778px; position: absolute; height: 100px; width: 100px" Text="." OnClick="btnPoint_Click" CssClass="ButtonNum" />


            </asp:Panel>
            <asp:Image ID="picFG" runat="server" Style="z-index: 1; left: 573px; top: 116px; position: absolute" />
        </div>

        <footer>
            <p>
                All themes based on Unix/Linux Terminal Color Schemes or ZSH Themes<br>
                <a href="https://draculatheme.com/">'Dracula Color Scheme'</a> &#x2022 
                <a href="https://github.com/morhetz/gruvbox">'GruvBox Color Scheme'</a> &#x2022
                <a href="https://github.com/romkatv/powerlevel10k">'Power Level 10k'</a>
                <p>This site best viewed at a resolution of around 776x1040</p>

            </p>
        </footer>
    </form>
</body>
</html>
