# Influitive Work Sample Test

## Overview of Models

- Contact - A contact is a user within the system
- Referral - A referral is someone that another contact has referred to the
  community as a potential customer.
- Event - An event is a write-once log of events that happen in the system.

# Exercise Overview

1. Output the logged in contact's points in the header bar of the application.
   You can retrieve the current contact by calling `current_contact` on the
   ApplicationController.
2. Implement referring someone into the system (by implementing new and create
   on the referrals controller). The following should happen when someone is
   referred:

   a. A referral object is created, with the name and e-mail supplied.
   b. A event is logged to the system, associated to the contact and the referral.
   c. The contact is awarded 100 points for a successful referral.
   d. A call to SlackNotifier.notify is made, with the status of "Referral submitted",
      and the contact that made the referral.

   Referrals are always made by the contact who is currently logged in.

3. Fill in the missing information on the Dashboard page (the root of the application)

Acceptance tests for all three of these are provided in spec/features.
