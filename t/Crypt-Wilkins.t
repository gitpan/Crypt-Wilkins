

use Test::More tests => 1;
BEGIN { use_ok('Crypt::Wilkins') };

#########################

my $cw = Crypt::Wilkins->new( start_zero => '<em>',
                              end_zero => '</em>',
							  start_one => '',
							  end_one => '', );

my $substrate = 
'Her lover one day takes O for a walk in a section of the city where they never go - the Montsouris Park. After they have taken a stroll in the park, and have sat together side by side on the edge of a lawn, they notice, at one corner of the park, at an intersection where there are never any taxis, a car which, because of its meter, resembles a taxi.';

my $plaintext = "The Ambassador's life is in danger. Meet me at Roissy";

my $ciphertext = $wc->embed($plaintext,$substrate);

ok($ciphertext eq 'Her lover one day takes O for a walk in a section of the city where they never go - the Montsouris Park. After they have taken a stroll in the park, and have sat together side by side on the edge of a lawn, they notice, at one corner of the park, at an intersection where there are never any taxis, a car which, because of its meter, resembles a taxi.', 'embed succeeded');



