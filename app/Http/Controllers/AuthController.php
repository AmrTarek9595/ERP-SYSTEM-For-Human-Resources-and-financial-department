<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;
class AuthController extends Controller
{
   /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','create_user','updatepassword']]);
    }
   public function updatepassword(Request $request)
    {
        $password=$request->password;
        $email=$request->email;
        
        User::where("email",$email)->update(['password'=>bcrypt($password)]);
        return "success";
    }

    /**
         *Create new user
         *
         * 
    */
    public function create_user(Request $request){
        $v = Validator::make($request->all(),[

            'password'  => 'required|min:5',
            'name'      => 'required|min:3|regex:/^[a-z A-Z]+$/u',
       
            'email'     => 'required|email',
            'type'      => 'required|min:1|max:1'

            //'password' => 'required|min:7|confirmed'
        ]);
      
        if ($v->fails() )
        {
             //   return response()->json(["message"=>"Failed to Add "]);
             return response()->json(["message"=>"Choose a Valid Data","status"=>"false"],200);
            //  $v->errors()
          
        }
     

        $uniqueuser=user::where('email',$request->email)->count();
      
           if($uniqueuser >0)
       {
                return response()->json(["message"=>"This Email Already Created","status"=>"false"],200);
       } 
       
        else{

            if(($request->type) >3){
                return response()->json(["message"=>"Choose valid number"]);
            } 
            else{
                
            $data=User::create(
                ['name'=>$request->name,
                'email'=>$request->email,
                'password'=>bcrypt($request->password),
                'type'=>$request->type]
            );
            return response()->json(["message"=>"Successful Added","status"=>'true'],200);
            }
           }
             
    
       
    
}
    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login()
    {
        $credentials = request(['email', 'password']);

        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['message' => 'Unauthorized',"status"=>"false"], 401);
        }

        return response()->json(['message'=>$this->respondWithToken($token),"status"=>"true"],200);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(["message"=>auth()->user(),"status"=>"true"],200);
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out','status'=>'true'],200);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }

}
