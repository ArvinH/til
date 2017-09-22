### Q: How to disable pull-down-to-refresh feature in chrome mobile?
### A: Apply `touch-action: none` to touch-targeted elements, disabling default actions (including pull-to-refresh) of the touch sequence

### Preventing the pull-to-refresh effect
The default action of the pull-to-refresh effect can be effectively prevented by doing any of the following :
    * Applying “touch-action: none” to touch-targeted elements, where appropriate, disabling default actions (including pull-to-refresh) of the touch sequence.
    * Applying “overflow-y: hidden” to the body element, using a div for scrollable content if necessary.
    * preventDefault’ing some portion of the touch sequence, including any of the following (in order of most disruptive to least disruptive):
        1. The entire touch stream (not ideal).
        2. All top overscrolling touchmoves.
        3. The first top overscrolling touchmove.
        4. The first top overscrolling touchmove only when 1) the initial touchstart occurred when the page y scroll offset was zero and 2) the touchmove would induce top overscroll.
    * Disabling the effect locally via chrome://flags (disable-pull-to-refresh-effect).

src:
* https://stackoverflow.com/questions/29008194/disabling-androids-chrome-pull-down-to-refresh-feature
* https://docs.google.com/document/d/12Ay4s3NWake8Qd6xQeGiYimGJ_gCe0UMDZKwP9Ni4m8/edit


