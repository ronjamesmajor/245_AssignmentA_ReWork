<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="_245_AssignmentA_ReWork.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #252c2b; padding:10px; ">
    <form id="form1" runat="server" style="width:53%; display:inline-block; vertical-align:middle; align-content:center">
        <div style="position:relative center;" title="Assignment A - Calculator">
            <asp:Panel ID="Panel1" runat="server" Height="779px" Width="544px" BackColor="#1C2022" HorizontalAlign="Center">
                <asp:TextBox ID="txtDisplay" runat="server" BackColor="#94C595" Font-Names="Lucida Console" Font-Size="96pt" Style="z-index: 1; left: 25px; top: 33px; position: absolute; text-align: center; height: 150px" Width="518px"></asp:TextBox>

                <asp:Button ID="btnAC" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 200px; position: absolute; display: flex; height: 100px; width: 220px" Text="AC" BackColor="#383F43" />
                <asp:Button ID="btnC" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 200px; position: absolute; height: 100px; width: 100px" Text="C" BackColor="#383F43" OnClick="btnC_Click" />

                <asp:Button ID="btn7" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 320px; position: absolute; height: 100px; width: 100px" Text="7" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn8" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 320px; position: absolute; height: 100px; width: 100px" Text="8" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn9" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 320px; position: absolute; height: 100px; width: 100px" Text="9" BackColor="#383F43" OnClick="btn0_Click" />


                <asp:Button ID="btn4" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 440px; position: absolute; height: 100px; width: 100px" Text="4" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn5" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 440px; position: absolute; height: 100px; width: 100px" Text="5" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn6" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 440px; position: absolute; height: 100px; width: 100px" Text="6" BackColor="#383F43" OnClick="btn0_Click" />


                <asp:Button ID="btn1" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 560px; position: absolute; height: 100px; width: 100px" Text="1" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn2" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 146px; top: 560px; position: absolute; height: 100px; width: 100px" Text="2" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btn3" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 560px; position: absolute; height: 100px; width: 100px" Text="3" BackColor="#383F43" OnClick="btn0_Click" />

                <asp:Button ID="btnCalc" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 678px; position: absolute; height: 100px; width: 100px" Text="=" BackColor="#FFC53A" ForeColor="#FFFFCC" OnClick="btnAdd_Click" />
                <asp:Button ID="btnDivide" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 560px; position: absolute; height: 100px; width: 100px" Text="/" BackColor="#FFC53A" ForeColor="#FFFFCC" OnClick="btnAdd_Click" />
                <asp:Button ID="btnMult" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 440px; position: absolute; height: 100px; width: 100px" Text="*" BackColor="#FFC53A" ForeColor="#FFFFCC" OnClick="btnAdd_Click" />
                <asp:Button ID="btnMin" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 320px; position: absolute; height: 100px; width: 100px" Text="-" BackColor="#FFC53A" ForeColor="#FFFFCC" OnClick="btnAdd_Click" />
                <asp:Button ID="btnAdd" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 415px; top: 200px; position: absolute; height: 100px; width: 100px" Text="+" BackColor="#FFC53A" ForeColor="#FFFFCC" OnClick="btnAdd_Click" />

                <asp:Button ID="btn0" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 25px; top: 678px; position: absolute; height: 100px; width: 220px" Text="0" BackColor="#383F43" OnClick="btn0_Click" />
                <asp:Button ID="btnPoint" runat="server" Font-Names="Lucida Console" Font-Size="XX-Large" Style="z-index: 1; left: 266px; top: 678px; position: absolute; height: 100px; width: 100px" Text="." BackColor="#383F43" />


            </asp:Panel>
        </div>
    </form>
</body>
</html>
