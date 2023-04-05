rand_hat_color=$(( (RANDOM % 7 ) + 31))
rand_cat_color=$(( (RANDOM % 7 ) + 30))

cd Ascii/hats 
hatfiles=(*.txt)
num_hat_files=${#hatfiles[@]}
rand_hat_index=$((RANDOM%num_hat_files))
rand_hat=${hatfiles[$rand_hat_index]}

echo "\033[${rand_hat_color}m$(cat $rand_hat)\033[0m"

cd ../cats
catfiles=(*.txt)
num_cat_files=${#catfiles[@]}
rand_cat_index=$((RANDOM%num_cat_files))
rand_cat=${catfiles[$rand_cat_index]}


echo "\033[${rand_cat_color}m$(cat $rand_cat)\033[0m"

nouns=(Tweedledum Upsy-daisy Whatchamacallit Whirligig Wiggle Wobble Yahoo Yowza Zany Zoinks Doohickey Hootenanny Jiggly Jitterbug Klutz Lollygag Monkeyshines Natter Noggin Noodle Pipsqueak Quibble Sassafras Schlep Scuff Skosh Snafu Snickerdoodle Sploosh Squeegee Stinky Tootsie Twerp Wackadoo Whimsy Whoopie Wigwam Wimpy Wobbly Wonky Yapper Zeppelin)
adjectives=(Featherbrained Airheaded Spacey Dizzy Fuzzy-headed Muddle-headed Absentminded Forgetful Lacking-in-common-sense Impractical Unreasonable Illogical Irrational Fictitious Imaginary Unreal Fanciful Romantic Visionary Dreamy Illusory Hallucinatory Delusional Paranoiac Psychotic Schizoid Maniacal Berserk Lunatic Deranged Crazed Nuts Mad Insane Bonkers Loopy Barmy Crackbrained Meshuga Non-compos-mentis Inane)

# Generate a random name
noun_index=$(($RANDOM % ${#nouns[@]}))
adjective_index=$(($RANDOM % ${#adjectives[@]}))
name=${adjectives[$adjective_index]}-${nouns[$noun_index]}

echo ""
echo " " $name
