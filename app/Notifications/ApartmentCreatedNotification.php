<?php

namespace App\Notifications;

use App\Models\Apartment;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ApartmentCreatedNotification extends Notification implements ShouldQueue
{
    use Queueable;
    public $apartment;
    /**
     * Create a new notification instance.
     */
    public function __construct(Apartment $apartment)
    {
        $this->apartment = $apartment;
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
                    ->subject('New Apartment Created')
                    ->greeting('Hello '.$notifiable->name)
                    ->line('A new apartment has been created: '.$this->apartment->name)
                    ->action('View Apartment', url('/apartments/'.$this->apartment->id))
                    ->line('Thank you!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
         return [
            'apartment_id' => $this->apartment->id,
            'apartment_name' => $this->apartment->name,
            'message' => 'A new apartment has been added.'
        ];
    }
}
