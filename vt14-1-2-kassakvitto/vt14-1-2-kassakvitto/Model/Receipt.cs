using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vt14_1_2_kassakvitto.Model {
    public class Receipt {
        private double _subtotal;

        public double DiscountRate {
            get;
            private set;
        }

        public double MoneyOff {
            get;
            private set;
        }

        public double Subtotal {
            get {
                return _subtotal;
            }
            private set {
                if (value <= 0) {
                    throw new ArgumentOutOfRangeException("Subtotal can't be less or equal to zero");
                }
                _subtotal = value;
            }
        }

        public double Total {
            get;
            private set;
        }

        public Receipt(double subtotal) {
            Calculate(subtotal);
        }

        public void Calculate(double subtotal) {
            Subtotal = subtotal;

            if (subtotal < 500) {
                DiscountRate = 0;
            } else if (subtotal <= 999) {
                DiscountRate = 0.05;
            } else if (subtotal <= 4999) {
                DiscountRate = 0.10;
            } else {
                DiscountRate = 0.15;
            }

            MoneyOff = Subtotal * DiscountRate;

            Total = Subtotal - MoneyOff;
        }
    }
}