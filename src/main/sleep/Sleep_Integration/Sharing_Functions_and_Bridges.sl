@startuml
interface Script
note top of Script #aqua
    Every time a script is loaded the environment
    is populated with the default bridges
    and any bridges that you elect to install
    through a Loadable interface
end note
interface ScriptEnvironment
interface Hashtable
interface Bridge

interface  ScriptVariables

interface Operator

interface Function

interface Predicate

interface Environment

interface FilterEnvironment

interface PredicateEnvironment

Operator -up-|> Bridge
Function -up-|> Bridge
Predicate -up-|> Bridge
Environment -up-|> Bridge

FilterEnvironment -up-|> Environment
note top of FilterEnvironment
    keyword identifier "string"
    { commands; }
end note
PredicateEnvironment -up-|> Environment

note top of PredicateEnvironment
    keyword (predicate)
    { commands; }
end note

Script --> ScriptEnvironment
Script --> ScriptVariables
ScriptEnvironment --> Hashtable
Hashtable --> Bridge
@enduml