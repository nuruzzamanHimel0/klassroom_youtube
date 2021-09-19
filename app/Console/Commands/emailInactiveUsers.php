<?php

namespace App\Console\Commands;

use App\User;
use Carbon\Carbon;
use Illuminate\Console\Command;
use App\Notifications\reminderMail;

class emailInactiveUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'email:inactive-users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Email inactive users';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $limit = Carbon::now()->subDays(7);
        // $users = User::where('last_login','<',$limit)->orWhere('last_login',NULL)->get();
        $users = User::where('last_login','=',Carbon::today())->get();

        $ur = User::where('id',1)->update(['email_verified_at'=> Carbon::now()]);

        foreach($users as $user){
            $user->notify(new reminderMail());
            $this->info('Email send to'.$user->email);
        }
        $this->info(Carbon::today());
        // $this->info($users);
    }
}
