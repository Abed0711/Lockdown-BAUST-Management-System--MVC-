using Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BaustManagementSys.Controllers
{
    public class HomeController : Controller
    {
        private BAUSTDBEntities db = new BAUSTDBEntities();

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginUser(String email , string password)
        {
            try
            {
                if(email!=null && password!=null)
                {
                    var finduser = db.UserTables.Where(u=> u.EmailAddress== email && u.Password == password).ToList();
                    if (finduser.Count() == 1)
                    {

                        Session["UserID"] = finduser[0].UserID;
                        Session["UserTypeID"] = finduser[0].UserTypeID;
                        Session["FullName"]= finduser[0].FullName;
                        Session["UserName"]=finduser[0].UserName;
                        Session["Password"]= finduser[0].Password;
                        Session["ContactNo"]=finduser[0].ContactNo;
                        Session["EmailAddress"]= finduser[0].EmailAddress;
                        Session["Address"]= finduser[0].Address;

                        string url = string.Empty;

                        if (finduser[0].UserTypeID == 2)
                        {
                            return RedirectToAction("About");
                        }
                        else if (finduser[0].UserTypeID == 3)
                        {
                            return RedirectToAction("About");
                        }
                        else if (finduser[0].UserTypeID == 4)
                        {
                            return RedirectToAction("About");
                        }

                        else if (finduser[0].UserTypeID == 1)
                        {
                            url = "About";
                        }
                        else
                        {
                            url = "About";
                        }
                        return RedirectToAction(url);


                    }
                    else
                    {
                        Session["UserID"] = string.Empty;
                        Session["UserTypeID"] = string.Empty;
                        Session["FullName"] = string.Empty;
                        Session["UserName"] = string.Empty;
                        Session["Password"] = string.Empty;
                        Session["ContactNo"] = string.Empty;
                        Session["EmailAddress"] = string.Empty;
                        Session["Address"] = string.Empty;
                        ViewBag.message = "Username Password incrt";
                    }
                }
                else
                {
                    Session["UserID"] = string.Empty;
                    Session["UserTypeID"] = string.Empty;
                    Session["FullName"] = string.Empty;
                    Session["UserName"] = string.Empty;
                    Session["Password"] = string.Empty;
                    Session["ContactNo"] = string.Empty;
                    Session["EmailAddress"] = string.Empty;
                    Session["Address"] = string.Empty;
                    ViewBag.message = "Some unexpected Issue is occure please try again";
                }
            }
            catch(Exception ex)
            {
                Session["UserID"] = string.Empty;
                Session["UserTypeID"] = string.Empty;
                Session["FullName"] = string.Empty;
                Session["UserName"] = string.Empty;
                Session["Password"] = string.Empty;
                Session["ContactNo"] = string.Empty;
                Session["EmailAddress"] = string.Empty;
                Session["Address"] = string.Empty;
                ViewBag.message = "Some Unexpected issue is occure please try again";
            }
            return View("Login");
           
        }  

        public ActionResult About()
        {
            ViewBag.Message = "WellCome To Bangladesh Army University of Science and Technology";

            return View();
        }

       

        public ActionResult Logout()
        {
            Session["UserID"] = string.Empty;
            Session["UserTypeID"] = string.Empty;
            Session["FullName"] = string.Empty;
            Session["UserName"] = string.Empty;
            Session["Password"] = string.Empty;
            Session["ContactNo"] = string.Empty;
            Session["EmailAddress"] = string.Empty;
            Session["Address"] = string.Empty;
            return RedirectToAction("Login");

        }
    }
}