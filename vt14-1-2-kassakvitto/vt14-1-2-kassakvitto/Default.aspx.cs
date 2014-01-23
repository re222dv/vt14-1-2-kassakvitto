using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vt14_1_2_kassakvitto {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Calc_Click(object sender, EventArgs e) {
            if (IsValid) {
                var receipt = new Model.Receipt(Double.Parse(EditTotal.Text));

                ReceiptPanel.Visible = true;
                SubTotal.Text = String.Format("{0:c}", receipt.Subtotal);
                DiscountRate.Text = String.Format("{0:p0}", receipt.DiscountRate);
                Discount.Text = String.Format("{0:c}", receipt.MoneyOff);
                Total.Text = String.Format("{0:c}", receipt.Total);
            }
        }
    }
}