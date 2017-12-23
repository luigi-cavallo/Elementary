/*
*   Primo programma in vala per sviluppo su elementary OS
*   da un umile inizio vedremo dove saremo in grado di arrivare...
*/

int main (string[] args){
    // inizializzo l'interfaccia
    Gtk.init(ref args);
    // creo la finestra
    var window = new Gtk.Window();
    window.title = "Hello world";
    window.set_border_width(12);
    window.set_position(Gtk.WindowPosition.CENTER);
    window.set_default_size(350,70);
    window.destroy.connect(Gtk.main_quit);
    // creo un bottone
    var button_hello = new Gtk.Button.with_label("Click me");
    button_hello.clicked.connect(() => {
        button_hello.label = "Hello world";
        button_hello.set_sensitive(false);    
    });
    window.add(button_hello);
    window.show_all();
    // visualizza la finestra
    Gtk.main();

return 0;
}
