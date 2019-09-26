@startuml

interface  Environment
interface  KeyDispatchListener
interface  Loadable

class KeyBindingsBridge

KeyBindingsBridge -up-> Environment
KeyBindingsBridge -up-> KeyDispatchListener
KeyBindingsBridge -up-> Loadable

@enduml

