using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;


namespace payment_history_import
{
    public partial class _Default : System.Web.UI.Page
    {

        public Stream inputstream;
        public DataTable table1;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /*-------------------------------*/
        protected void Button1_Click(object sender, EventArgs e)
        {

            table1 = new DataTable();
            inputstream = FileUpload1.PostedFile.InputStream;
            Label1.Text = "Receiving data...<br /> " + Environment.NewLine;


            switch (DropDownList1.SelectedValue)
            {
                case "real-transactionhistory":
                    realtransactionshistory( true );
                    return;
                case "real-transactionhistory-lastyear":
                    realtransactionshistory( false );
                    return;
                case "real-paymentshistory":
                    realpaymentshistory( true );
                    return;
                case "real-paymentshistory-lastyear":
                    realpaymentshistory( false );
                    return;
                case "motor-taxdue":
                    motortaxdue( );
                    return;
                case "personal-taxdue":
                    personaltaxdue();
                    return;
            }

            if (table1.Rows.Count == 0) return;

            using (SqlConnection sqlConn = new SqlConnection("Data Source=VSQL01.WEB.COB;Initial Catalog=Treasury;Integrated Security=SSPI"))
            {

                sqlConn.Open();

                SqlCommand cmd = new SqlCommand("SELECT COUNT (*) FROM " + table1.TableName, sqlConn);
                Label1.Text = Label1.Text + "Old Table size: " + cmd.ExecuteScalar() + " rows<br />" + Environment.NewLine;

                cmd.CommandText = "TRUNCATE TABLE " + table1.TableName;
                cmd.ExecuteNonQuery();
                
                using (SqlBulkCopy s = new SqlBulkCopy(sqlConn))
                {
                    s.DestinationTableName = table1.TableName;
                    foreach (var column in table1.Columns)
                        s.ColumnMappings.Add(column.ToString(), column.ToString());
                    try
                    {
                        s.WriteToServer(table1);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                }

                cmd.CommandText = "SELECT COUNT (*) FROM " + table1.TableName;
                Label1.Text = Label1.Text + "New Table size: " + cmd.ExecuteScalar() + " rows<br />" + Environment.NewLine;

                sqlConn.Close();

            }

            table1.Reset();

        }

        /*-------------------------------*/
        public void personaltaxdue()
        {
        }


        /*-------------------------------*/
        public void motortaxdue()
        {

            var reader = new StreamReader(inputstream, Encoding.UTF8);
            string readline = reader.ReadLine();

            int i = 0;
            int rownum = 0;

            table1.TableName = "motor-taxdue";

            // table1.Columns.Add("ID", typeof(int));  // 0 autonumber
            table1.Columns.Add("TaxYear", typeof(String)); // 4
            table1.Columns.Add("BillNo", typeof(int)); // 6
            table1.Columns.Add("UnitNo", typeof(int)); // 2
            table1.Columns.Add("Name", typeof(String)); // 34
            table1.Columns.Add("RegNo", typeof(String)); // 7
            table1.Columns.Add("PlateType", typeof(String)); // 3
            table1.Columns.Add("ExpYear", typeof(String)); // 4
            table1.Columns.Add("ModelYear", typeof(String)); // 4
            table1.Columns.Add("Make", typeof(String)); // 5
            table1.Columns.Add("VehicleId", typeof(String)); // 17
            table1.Columns.Add("InsCD", typeof(String)); // 3
            table1.Columns.Add("TaxDate", typeof(String)); // 5
            table1.Columns.Add("Value", typeof(int)); // 8
            table1.Columns.Add("Tax", typeof(decimal)); // 9
            table1.Columns.Add("TaxPaid", typeof(decimal)); // 9
            table1.Columns.Add("IssueDate", typeof(String)); // 10
            table1.Columns.Add("DemandFlag", typeof(String)); // 1
            table1.Columns.Add("WarrantFlag", typeof(String)); // 1
            table1.Columns.Add("DemandDate", typeof(String)); // 10
            table1.Columns.Add("WarrantDate", typeof(String)); // 10
            table1.Columns.Add("TaxDue", typeof(decimal)); // 9
            table1.Columns.Add("FeeDue", typeof(decimal));  // 9
            table1.Columns.Add("IntDue", typeof(decimal)); // 9
            table1.Columns.Add("TotalDue", typeof(decimal)); // 9
            // and 1 garbage column containing 'X'


            while (readline != null)
            {

                // datarow is 188 characters wide
                DataRow workRow = table1.NewRow();

                // TaxYear = 1 to 4
                workRow["TaxYear"] = readline.Substring(0, 4);

                // BillNo = 5 to 10
                workRow["BillNo"] = Convert.ToInt32(readline.Substring(4, 6));
                // UnitNo = 11 to 12
                workRow["UnitNo"] = Convert.ToInt32(readline.Substring(10, 2));

                // Name = 13 to 46
                workRow["Name"] = readline.Substring(12, 34);
                // RegNo = 47 to 53
                workRow["RegNo"] = readline.Substring(46, 7);
                // PlateType = 54 to 56
                workRow["PlateType"] = readline.Substring(53, 3);
                // ExpYear = 57 to 59
                workRow["ExpYear"] = readline.Substring(56, 4);
                // ModelYear = 61 to 64
                workRow["ModelYear"] = readline.Substring(60, 4);
                // Make = 65 to 69
                workRow["Make"] = readline.Substring(64, 5);
                // VehicleId = 70 to 86
                workRow["VehicleId"] = readline.Substring(69, 17);
                // InsCD = 87 to 89
                workRow["InsCD"] = readline.Substring(86, 3);
                // TaxDate = 90 to 94
                workRow["TaxDate"] = readline.Substring(89, 5);

                // Value = 95 to 102
                workRow["Value"] = Convert.ToInt32(readline.Substring(94, 8));


                // Tax = 103 to 111
                workRow["Tax"] = Convert.ToDecimal(readline.Substring(102, 9));
                // TaxPaid = 112 to 120
                workRow["TaxPaid"] = Convert.ToDecimal(readline.Substring(111, 9));

                // IssueDate = 121 to 130
                workRow["IssueDate"] = readline.Substring(120, 10);
                // DemandFlag = 131
                workRow["DemandFlag"] = readline.Substring(130, 1);
                // WarrantFlag = 132
                workRow["WarrantFlag"] = readline.Substring(131, 1);
                // DemandDate = 133 to 142
                workRow["DemandDate"] = readline.Substring(132, 10);
                // WarrantDate = 143 to 152
                workRow["WarrantDate"] = readline.Substring(142, 10);

                // TaxDue = 153 to 161
                workRow["TaxDue"] = Convert.ToDecimal(readline.Substring(152, 9));
                // FeeDue = 162 to 170
                workRow["FeeDue"] = Convert.ToDecimal(readline.Substring(161, 9));
                // IntDue = 171 to 179
                workRow["IntDue"] = Convert.ToDecimal(readline.Substring(170, 9));
                // TotalDue = 180 to 188
                workRow["TotalDue"] = Convert.ToDecimal(readline.Substring(179, 9));


                /*if (rownum == 0)
                {
                    Label1.Text = Label1.Text + "First row: ";
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + " title " + workRow["title"];
                    Label1.Text = Label1.Text + " retax1 " + Convert.ToString(workRow["retax1"]);
                    Label1.Text = Label1.Text + "<br />" + Environment.NewLine;
                }*/

                i += readline.Length;

                readline = reader.ReadLine();
                rownum++;
                /*if (readline == null)
                {
                    Label1.Text = Label1.Text + "Last row: ";
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + " title " + workRow["title"];
                    Label1.Text = Label1.Text + " retax1 " + Convert.ToString(workRow["retax1"]);
                    Label1.Text = Label1.Text + "<br />" + Environment.NewLine;
                }*/

                table1.Rows.Add(workRow);

            }

            reader.Close();

            if (rownum == 0)
            {
                Label1.Text = "Not enough data: " + String.Format("{0:n0}", i) + " bytes<br />" + Environment.NewLine;
            }
            else
            {
                Label1.Text = Label1.Text + "Received " + Convert.ToString(rownum) + " records, " + String.Format("{0:n0}", i) + " bytes.<br />" + Environment.NewLine;
            }

        }


        /*-------------------------------*/
        protected void realpaymentshistory(Boolean currentyear)
        {

            // 52 characters per line + LF
            var reader = new StreamReader(inputstream, Encoding.UTF8);
            string readline = reader.ReadLine();

            int i = 0;
            int rownum = 0;

            table1.TableName = currentyear ? "real-paymentshistory" : "real-paymentshistory-lastyear";

            table1.Columns.Add("parcelid", typeof(String));  // 10
            table1.Columns.Add("billno", typeof(int)); // 6
            table1.Columns.Add("title", typeof(String)); // 28
            table1.Columns.Add("retax1", typeof(decimal)); // 12
            table1.Columns.Add("retax2", typeof(decimal)); // 12
            table1.Columns.Add("retax3", typeof(decimal)); // 12
            table1.Columns.Add("retax4", typeof(decimal)); // 12
            table1.Columns.Add("taxadded", typeof(decimal)); // 12
            table1.Columns.Add("taxtotal", typeof(decimal)); // 12
            table1.Columns.Add("abates", typeof(decimal)); // 12
            table1.Columns.Add("payments", typeof(decimal)); // 12
            table1.Columns.Add("nettax", typeof(decimal)); // 12
            table1.Columns.Add("taxdue", typeof(decimal)); // 12
            table1.Columns.Add("fees", typeof(decimal)); // 12
            table1.Columns.Add("interest", typeof(decimal)); // 12
            table1.Columns.Add("totaldue", typeof(decimal)); // 12
            table1.Columns.Add("nopayments", typeof(int)); // 4
            table1.Columns.Add("duedate1", typeof(DateTime)); // 8
            table1.Columns.Add("duedate2", typeof(DateTime)); // 8
            table1.Columns.Add("duedate3", typeof(DateTime)); // 8
            table1.Columns.Add("duedate4", typeof(DateTime)); // 8
            table1.Columns.Add("title_taking", typeof(String));  // 8
            table1.Columns.Add("redue1", typeof(decimal)); // 12
            table1.Columns.Add("redue2", typeof(decimal)); // 12
            table1.Columns.Add("redue3", typeof(decimal)); // 12
            table1.Columns.Add("redue4", typeof(decimal)); // 12



            while (readline != null)
            {

                // datarow is 292 characters wide
                DataRow workRow = table1.NewRow();

                // parcel = 1 to 10
                workRow["parcelid"] = readline.Substring(0, 10);

                // billno = 11 to 16
                workRow["billno"] = Convert.ToInt32(readline.Substring(10, 6));

                // title = 17 to 44
                workRow["title"] = readline.Substring(16, 2);

                // retax1 = 45 to 56
                workRow["retax1"] = Convert.ToDecimal(readline.Substring(44, 12));
                // retax2 = 57 to 68
                workRow["retax2"] = Convert.ToDecimal(readline.Substring(56, 12));
                // retax3 = 69 to 80
                workRow["retax3"] = Convert.ToDecimal(readline.Substring(68, 12));
                // retax4 = 81 to 92
                workRow["retax4"] = Convert.ToDecimal(readline.Substring(80, 12));
                // taxadded = 93 to 104
                workRow["taxadded"] = Convert.ToDecimal(readline.Substring(92, 12));
                // taxtotal = 105 to 116
                workRow["taxtotal"] = Convert.ToDecimal(readline.Substring(104, 12));
                // abates = 117 to 128
                workRow["abates"] = Convert.ToDecimal(readline.Substring(116, 12));
                // payments = 129 to 140
                workRow["payments"] = Convert.ToDecimal(readline.Substring(128, 12));
                // nettax = 141 to 152
                workRow["nettax"] = Convert.ToDecimal(readline.Substring(140, 12));
                // taxdue = 153 to 164
                workRow["taxdue"] = Convert.ToDecimal(readline.Substring(152, 12));
                // fees = 165 to 176
                workRow["fees"] = Convert.ToDecimal(readline.Substring(164, 12));
                // interest = 177 to 188
                workRow["interest"] = Convert.ToDecimal(readline.Substring(176, 12));
                // totaldue = 189 to 200
                workRow["totaldue"] = Convert.ToDecimal(readline.Substring(188, 12));

                // nopayment = 201 to 204
                workRow["nopayment"] = Convert.ToInt32(readline.Substring(200, 4));

                // month = 205 to 206; day = 207 to 208; year = 209 to 212
                workRow["duedate1"] = Convert.ToDateTime(readline.Substring(208, 4) + "-" + readline.Substring(204, 2) + "-" + readline.Substring(206, 2));
                // month = 213 to 214; day = 215 to 216; year = 217 to 220
                workRow["duedate2"] = Convert.ToDateTime(readline.Substring(216, 4) + "-" + readline.Substring(212, 2) + "-" + readline.Substring(214, 2));
                // month = 221 to 222; day = 223 to 224; year = 225 to 228
                workRow["duedate3"] = Convert.ToDateTime(readline.Substring(224, 4) + "-" + readline.Substring(220, 2) + "-" + readline.Substring(222, 2));
                // month = 229 to 230; day = 231 to 232; year = 233 to 236
                workRow["duedate4"] = Convert.ToDateTime(readline.Substring(232, 4) + "-" + readline.Substring(228, 2) + "-" + readline.Substring(230, 2));

                // titletaking = 237 to 244
                workRow["titletaking"] = readline.Substring(236, 8);

                // redue1 = 245 to 256
                workRow["redue1"] = Convert.ToDecimal(readline.Substring(244, 12));
                // redue2 = 257 to 268
                workRow["redue2"] = Convert.ToDecimal(readline.Substring(256, 12));
                // redue3 = 269 to 280
                workRow["redue3"] = Convert.ToDecimal(readline.Substring(268, 12));
                // redue4 = 281 to 292
                workRow["redue4"] = Convert.ToDecimal(readline.Substring(280, 12));


                if (rownum == 0)
                {
                    Label1.Text = Label1.Text + "<table><tr><td>First row:</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " title " + workRow["title"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " retax1 " + Convert.ToString(workRow["retax1"]);
                    Label1.Text = Label1.Text + Environment.NewLine + "</td></tr>" + Environment.NewLine;
                }

                i += readline.Length;

                readline = reader.ReadLine();
                rownum++;
                if (readline == null)
                {
                    Label1.Text = Label1.Text + "<tr><td>Last row:</td><td> " + Environment.NewLine;
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " title " + workRow["title"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " retax1 " + Convert.ToString(workRow["retax1"]);
                    Label1.Text = Label1.Text + Environment.NewLine + "</td></tr></table>" + Environment.NewLine;
                }

                table1.Rows.Add(workRow);

            }

            reader.Close();

            if (rownum == 0)
            {
                Label1.Text = "Not enough data: " + String.Format("{0:n0}", i) + " bytes<br />" + Environment.NewLine;
            }
            else
            {
                Label1.Text = Label1.Text + "Received " + Convert.ToString(rownum) + " records, " + String.Format("{0:n0}", i) + " bytes.<br />" + Environment.NewLine;
            }

        }



        /*-------------------------------*/
        protected void realtransactionshistory(Boolean currentyear)
        {

            var reader = new StreamReader(inputstream, Encoding.UTF8);
            string readline = reader.ReadLine();

            int i = 0;
            int rownum = 0;

            table1.TableName = currentyear ? "real-transactionhistory" : "real-transactionhistory-lastyear";
  
            table1.Columns.Add("parcelid", typeof(String));  // 10
            table1.Columns.Add("billno", typeof(int)); // 6
            table1.Columns.Add("trntype", typeof(String)); // 2
            table1.Columns.Add("trncode", typeof(String)); // 2
            table1.Columns.Add("trnamount", typeof(decimal)); // 12
            table1.Columns.Add("trninterest", typeof(decimal)); // 12
            table1.Columns.Add("trndate_collect", typeof(DateTime)); // 8

            while ( readline != null ) 
            {

                // datarow is 52 characters wide
                DataRow workRow = table1.NewRow();

                // parcel = 1 to 10
                workRow["parcelid"] = readline.Substring(0, 10);

                // billno = 11 to 16
                workRow["billno"] = Convert.ToInt32(readline.Substring(10, 6));

                // trntype = 17 to 18
                workRow["trntype"] = readline.Substring(16, 2); 

                // trncode = 19 to 20
                workRow["trncode"] = readline.Substring(18, 2); 

                // trnamount = 21 to 32
                workRow["trnamount"] = Convert.ToDecimal(readline.Substring(20, 12)); 

                //trninterest = 33 to 44
                workRow["trninterest"] = Convert.ToDecimal(readline.Substring(32, 12)); 

                // month = 45 to 46; day = 47 to 48; year = 49 to 52
                workRow["trndate_collect"] = Convert.ToDateTime(readline.Substring(48, 4) + "-" + readline.Substring(44, 2) + "-" + readline.Substring(46, 2));

                if (rownum == 0)
                {
                    Label1.Text = Label1.Text + "<table><tr><td>First row:</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trntype " + workRow["trntype"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trnamount " + Convert.ToString(workRow["trnamount"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trninterest " + Convert.ToString(workRow["trninterest"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trndate_collect " + ((DateTime)workRow["trndate_collect"]).ToString("yyyy-MM-dd");
                    Label1.Text = Label1.Text + Environment.NewLine + "</td></tr>" + Environment.NewLine;
                }

                i += readline.Length;

                readline = reader.ReadLine();
                rownum++;
                if (readline == null)
                {
                    Label1.Text = Label1.Text + "<tr><td>Last row:</td><td> " + Environment.NewLine;
                    Label1.Text = Label1.Text + " parcelid " + workRow["parcelid"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " billno " + Convert.ToString(workRow["billno"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trntype " + workRow["trntype"];
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trnamount " + Convert.ToString(workRow["trnamount"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trninterest " + Convert.ToString(workRow["trninterest"]);
                    Label1.Text = Label1.Text + "</td><td>" + Environment.NewLine;
                    Label1.Text = Label1.Text + " trndate_collect " + ((DateTime)workRow["trndate_collect"]).ToString("yyyy-MM-dd");
                    Label1.Text = Label1.Text + Environment.NewLine + "</td></tr></table>" + Environment.NewLine;
                }

                table1.Rows.Add(workRow);

            }

            reader.Close();

            if (rownum == 0)
            {
                Label1.Text = "Not enough data: " + String.Format("{0:n0}", i) + " bytes<br />" + Environment.NewLine;
            }
            else
            {
                Label1.Text = Label1.Text + "Received " + Convert.ToString(rownum) + " records, " + String.Format("{0:n0}", i) + " bytes.<br />" + Environment.NewLine;
            }

        }


    }
}