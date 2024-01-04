class AppLink {


 static const  String server =  "https://expresscommerce.000webhostapp.com";
 static const String test = "$server/test.php";

//================================== Auth ===================================//

static const String signUp = "$server/auth/signup.php";
static const String login = "$server/auth/login.php";

static const String verifycodessignup = "$server/auth/verifycode.php";

//================================== Forget Password ===================================//

static const String  checkEmail = "$server/forgetpassword/checkemail.php";
static const String resetPassword = "$server/forgetpassword/resetpassword.php";
static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";


//============================== Image ===============================================//

static const String  imageststatic = "https://expresscommerce.000webhostapp.com/upload";

//================================== Image ===================================//

static const String  imagestCategories = "$imageststatic/categories";

static const String  imagestItems = "$imageststatic/items";


//================================== Home Page ===================================//

static const String  homepage = "$server/home.php";

//--items--//

static const String  items = "$server/items/items.php";
static const String  searchitems = "$server/items/search.php";


//--Cart--//

static const String  cartview = "$server/cart/view.php";
static const String  cartadd = "$server/cart/add.php";
static const String  cartdelete = "$server/cart/delete.php";
static const String  cartgetcountitems = "$server/cart/getcountitems.php";




//  static const  String localhost =  "http://192.168.43.27/eshop_api";
//  static const String test = "$localhost/test.php";

// //================================== Auth ===================================//

// static const String signUp = "$localhost/auth/signup.php";
// static const String login = "$localhost/auth/login.php";

// static const String verifycodessignup = "$localhost/auth/verifycode.php";

// //================================== Forget Password ===================================//

// static const String  checkEmail = "$localhost/forgetpassword/checkemail.php";
// static const String resetPassword = "$localhost/forgetpassword/resetpassword.php";
// static const String verifycodeforgetpassword = "$localhost/forgetpassword/verifycode.php";



// // //============================== Image from local ===============================================//

// static const String  imageststatic = "http://192.168.43.27/eshop_api/upload";

// //================================== Image ===================================//

// static const String  imagestCategories = "$imageststatic/categories";

// static const String  imagestItems = "$imageststatic/items";


// //================================== Home Page from  local ===================================//


// //--home--//

// static const String  homepage = "$localhost/home.php";

// //--items--//

// static const String  items = "$localhost/items/items.php";
// static const String  searchitems = "$localhost/items/search.php";


// //--Cart--//

// static const String  cartview = "$localhost/cart/view.php";
// static const String  cartadd = "$localhost/cart/add.php";
// static const String  cartdelete = "$localhost/cart/delete.php";
// static const String  cartgetcountitems = "$localhost/cart/getcountitems.php";



}