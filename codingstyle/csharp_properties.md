# Remarks on C# Properties
Properties should, in general, behave just like fields, which means they should represent data (not actions) and have no visible side effects or performance overhead. Additionally, pairs of getters and setters should be consistent, meaning they should not have different effects when called in succession and the getter should return the exact same value that was provided to the setter just before.

## Performance
Properties should not perform significantly worse than a simple field access. If a property has some sort of asymptotic complexity or needs to access data outside of the process memory (files, network), it should be a method instead.

## Side Effects
Property setters should not have no side effects other than the manipulation of some state internal to the object. Effects on other properties of the object can be fine as long as suitable events are provided to inform consumers about the change.

Property getters should never have side effects.

## Exceptions
Property getters should not throw exceptions. If a property setter throws, the state of the object should remain unchanged.

## Further Reasons to Use a Method
- a property getter returns a copy of some internal state (only applies to reference type members)
- some kind of conversion operation is performed
- the order of operations is important
- the property is set-only
