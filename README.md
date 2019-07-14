# Parfait

This is an exploration of what parfait / layered / hexagonal / onion architecture might look like in an umbrella app if each app were a layer in the architecture.

I have replaces the overloaded term Application with Actions. So instead of Infrastructure -> Application -> Domain, we have Infrastructure -> Actions -> Domain.

Actions better encapsulates what that layer is, which is orchestration for things we want to do or see.

Problems:

1. Calling into infrastructure when we really want to call an action? I.e. bit weird that we call infrastructure to just call an action which calls infrastructure again. Could we get rid of actions? Does infrastructure orchestrate many actions, or does it just interface with the rest of the world, sanitize params etc, then send the correct data to application.
2. Actions does know about infrastructure, it calls for data from it, it's just about whether we want to decouple that from the specifics of the implementations (spoiler we do). Actions not knowing about infrastructure makes no sense if it needs to get data from the db. All you can do is decouple the specifics of how / which db behind a wrapper of some sort.
