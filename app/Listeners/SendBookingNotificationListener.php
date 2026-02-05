<?php

namespace App\Listeners;

use App\Events\ApartmentBooked;
use App\Jobs\SendTenantBookingNotificationJob;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class SendBookingNotificationListener implements ShouldQueue
{
    use InteractsWithQueue;

    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(ApartmentBooked $event): void
    {
        $booking = $event->booking;
        $tenant = $booking->tenant;

        // Send queued job with delay
        SendTenantBookingNotificationJob::dispatch($booking, $tenant)
            ->delay(now()->addSeconds(10));

    }
}
