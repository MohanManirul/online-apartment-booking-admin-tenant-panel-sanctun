<?php

namespace App\Jobs;

use App\Mail\ApartmentCreatedMail;
use App\Models\Apartment;
use App\Models\Tenant;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendApartmentCreatedEmailJob implements ShouldQueue
{
    use Queueable, InteractsWithQueue , Dispatchable , SerializesModels;
    public Apartment $apartment;
    /**
     * Create a new job instance.
     */
    public function __construct(Apartment $apartment)
    {
        $this->apartment = $apartment ;
    }
 
    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $tenants = Tenant::all();
        foreach ($tenants as $index => $tenant){
            try{
                Mail::to($tenant->email)->queue(new ApartmentCreatedMail($this->apartment));
            }catch(\Exception $e){
                \Log::error("Failed to send mail to {$tenant->email}:".$e->getMessage()) ;
            }
        }
    }
}
