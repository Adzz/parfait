# Parfait

This is an exploration of what parfait / layered / hexagonal / onion architecture might look like in an umbrella app if each app were a layer in the architecture.

I have replaces the overloaded term Application with Actions. So instead of Infrastructure -> Application -> Domain, we have Infrastructure -> Actions -> Domain.

Actions better encapsulates what that layer is, which is orchestration for things we want to do or see.

Problems:

1. Calling into infrastructure when we really want to call an action?
2. Actions does now about infrastructure, it calls for data from it, it's just about whether we want to decouple that from the specifics of the implementations (spoiler we do). Actions not knowing about
