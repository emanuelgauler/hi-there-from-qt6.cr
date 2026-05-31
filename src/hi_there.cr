require "qt6"
app = Qt6.application

window = Qt6.window "Crystal Qt6 Hi!", 480, 120 do |w|
  w.vbox do |c|
    c << Qt6::Label.new "Qt6 from Crystal, with a small and explicit API."
    close_button = Qt6::PushButton.new "Close"
    close_button.on_clicked { app.quit }
    c << close_button
  end
end

window.show
app.run
