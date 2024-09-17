##############
<!-- # Emergency Dragon Care Services (EDCS), for the protection of your dragon, and the community farms and pets.
# EDCS is available as a 24/7 service and screens callers to gauge severity and urgency of the dragon care situation at hand.
# EDCS has hired you to programmatically categorize incoming calls into three risk levels based on dragon caregiver's responses to the intake survey.
# These categories are "low risk", "high risk", and "immediate risk".

# Acceptance Criteria
# Define a class that will be used inside of a controller. Write some logic
# which parses the caller's responses and indicates severity
# ("low risk", "high risk", or "immediate risk"). Write some test cases to demonstrate each of these severities.

# Business Rules
# A dragon care situation is considered to be "high risk" if their answer to question #1 is positive
# A dragon care situation is considered to be "immediate risk" if their answer to question #2 and #4 is positive
# Otherwise, a dragon care situation is considered to be "low risk"

# Questions
# 1. Has your dragon been asking questions about cookbooks, animal flavors, or where your spices are kept? - Input: Yes/No
# 2. In the past week, has your dragon visited the local petting zoo more than three times? - Input: Yes/No
# 3. In the past week, have you seen evidence of your dragon plotting a visit to the countryside or other uncharacteristic location? - Input: Yes/No
# 4. Is your dragon looking at the neighbors goat, or other animal of unknown origin, while salivating? - Input: Yes/No
# 5. Where is your dragon currently located? - Input: Freeform Text (edited)

# we want a Dragon class, with a severity method --!>

pt.2
<!-- Emergency Dragon Care Services (EDCS), allows owners of dragons to schedule 1-on-1 sessions with Dragon Care Specialists over the phone and in person. Dragon Care Specialists log the events and results of these sessions within notes. Dragon Care Specialists use the EDCS EHR (Electronic Health Record) system to record their notes.

A stub of a Notes service used by the EDCS EHR is provided. Complete the service according to the acceptance criteria below.

Acceptance Criteria:

- A note is associated with an appointment
- Only one note can exist for an appointment
- A note's contents should support different sections of content. For example, one section could be called "Session Focus" and include text on what the focus of the session is.
- A note can be in states "Draft" and "Signed"
- When a note is signed, it can no longer be updated -->