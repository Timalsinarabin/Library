// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener("turbo:load", () => {
    const message = document.querySelector('.message');
    if (message) {
        setTimeout(() => {
            message.remove();
        }, 5000); // disappears after 5 seconds
    }
});