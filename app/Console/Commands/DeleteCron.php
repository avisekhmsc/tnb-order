<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use App\Models\new_order_detail; 
use App\Models\new_order_master;
use Exception;


class DeleteCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'delete:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $deletedDate = Carbon::now()->subDays(3)->format('Y-m-d');

        \Log::info("Record deleting start");

        try {

           new_order_detail::whereRaw('DATE_FORMAT(created_at, "%Y-%m-%d") <= ?', [$deletedDate])->delete();
            new_order_master::whereRaw('DATE_FORMAT(created_at, "%Y-%m-%d") <= ?', [$deletedDate])->delete();

        } catch(Exception $e)
        {
            \Log::info("Error in delete records: ".$e->getMessage());
        }

       
        \Log::info("Record deleting end");
    }
}
