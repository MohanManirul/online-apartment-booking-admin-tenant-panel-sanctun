<?php

namespace App\Notifications;

use App\Models\Booking;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class BookingCreatedNotification extends Notification implements ShouldQueue
{
    use Queueable;
    public $booking;
    /**
     * Create a new notification instance.
     */
    public function __construct(Booking $booking)
    {
         $this->booking = $booking;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail','database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
            ->subject('Apartment Booked Successfully')
            ->greeting('Hello '.$notifiable->name)
            ->line('You have successfully booked: '.$this->booking->apartment->name)
            ->action('View Booking', url('/dashboard/bookings/'.$this->booking->id));
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            'booking_id' => $this->booking->id,
            'apartment_name' => $this->booking->apartment->name,
            'message' => 'You booked an apartment successfully!'
        ];
    }
}
