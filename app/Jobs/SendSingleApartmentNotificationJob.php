<?php

namespace App\Jobs;

use App\Models\Apartment;
use App\Models\Tenant;
use App\Models\User;
use App\Notifications\ApartmentCreatedNotification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Bus\Batchable;

class SendSingleApartmentNotificationJob implements ShouldQueue
{
    use Queueable;
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels, Batchable;

    public $apartment;
    public $tenant;
    /**
     * Create a new job instance.
     */
    public function __construct(Apartment $apartment, Tenant $tenant)
    {
        $this->apartment = $apartment;
        $this->tenant = $tenant;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $this->tenant->notify(new ApartmentCreatedNotification($this->apartment));
    }
}
