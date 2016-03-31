# Conference Track Manager

## What does it do?

It takes a text file which contains talks list and track count(optional) as arguments and generates a conference plan with talks divided into different tracks.

## Getting Started

  $ `git clone https://github.com/sriharshakappala/ctm.git`

  $ cd ctm

  $ bundle
  
## How to test?

  $ cd ctm

  $ rspec

## Usage

  $ ruby lib/conference_track_manager.rb file_name track_count

  `file_name` is a mandatory parameter. You can place your file in the inputs directory of the repository and specify that file name as argument.

  `track_count` is an optional argument. If provided, this utility will generate the conference plan into those many tracks. If not, a default value of 2 is taken


### Sample Interaction

`ruby conference_track_manager.rb input1.txt`

```
Track 1
*************
09:00AM Writing Fast Tests Against Enterprise Rails
09:45AM Overdoing it in Python
10:15AM Lua for the Masses
11:00AM Ruby Errors from Mismatched Gem Versions
12:00PM Lunch
01:00PM Common Ruby Errors
01:05PM Rails for Python Developers
02:05PM Communicating Over Distance
02:50PM Accounting-Driven Development
03:20PM Woah
03:50PM Sit Down and Write
05:00PM Networking Event
Track 2
*************
09:00AM Pair Programming vs Noise
10:00AM Rails Magic
11:00AM Ruby on Rails: Why We Should Move On
12:00PM Lunch
01:00PM Clojure Ate Scala (on my project)
01:30PM Programming in the Boondocks of Seattle
02:00PM Ruby vs. Clojure for Back-End Development
03:00PM Ruby on Rails Legacy App Maintenance
03:30PM A World Without HackerNews
04:00PM User Interface CSS in Rails Apps
05:00PM Networking Event
```

## Suggestor

This is an optinal setting which you can use if you want this utility to provide you some suggestions on track count or talk lengths if the tracks are not appropriately filled.

To use this just change the `suggestions` propert in `env.yml` file to `true` (Default: `false`)

### Sample Interaction with Suggestor mode

`ruby conference_track_manager.rb input2.txt 3`

```
Track 1
*************
09:00AM Example Talk 1
09:30AM Example Talk 2
10:10AM Example Talk 3
10:40AM Example Talk 4
10:45AM Example Talk 6
11:15AM Example Talk 8
11:20AM Example Talk 14
12:00PM Lunch
01:00PM Example Talk 5
01:40PM Example Talk 7
02:00PM Example Talk 9
02:40PM Example Talk 10
03:00PM Example Talk 11
03:45PM Example Talk 12
04:00PM Example Talk 13
04:05PM Example Talk 16
04:10PM Example Talk 23
04:15PM Example Talk 30
05:00PM Networking Event
Track 2
*************
09:00AM Example Talk 15
09:40AM Example Talk 17
10:20AM Example Talk 18
11:05AM Example Talk 19
11:25AM Example Talk 22
12:00PM Lunch
01:00PM Example Talk 20
02:00PM Example Talk 21
02:40PM Example Talk 24
03:40PM Example Talk 25
04:00PM Example Talk 28
05:00PM Networking Event
Track 3
*************
09:00AM Example Talk 26
09:40AM Example Talk 27
10:40AM Example Talk 29
12:00PM Lunch
05:00PM Networking Event
Track 1
Morning
No Suggestions
Afternoon
No Suggestions
Track 2
Morning
Add a new talk with 5 minutes or increase the length of any talk by 5 minutes
Afternoon
Add a new talk with 15 minutes or increase the length of any talk by 15 minutes
Track 3
Morning
Add a new talk with 40 minutes or increase the length of any talk by 40 minutes
Afternoon
Pchhh! No talks in this track. You can consider reducing the number of total tracks

```

## Advanced

If you have a readily available input data set on your computer you can use that input set with minimal changes to the application. Just change the `inputs_directory` property in the `env.yml` to the local path.
