# Conference Track Manager

## What does it do?

It takes a text file which contains talks list and track count(optional) as arguments and generates a conference plan with talks divided into different tracks.

## Getting Started

  $ git clone https://github.com/sriharshakappala/ctm.git

  $ cd ctm

  $ bundle

## Usage

  $ ruby lib/conference_track_manager.rb file_name track_count

  file_name is a mandatory parameter. You can place your file in the inputs directory of the repository and specify that file name as argument.

  track_count is an optional argument. If provided, this utility will generate the conference plan into those many tracks. If not, a default value of 2 is taken

## How to test?

  $ cd ctm

  $ rspec

## Sample Interaction

`ruby conference_track_manager.rb input1.txt`

`ruby conference_track_manager.rb input2.txt 3`
