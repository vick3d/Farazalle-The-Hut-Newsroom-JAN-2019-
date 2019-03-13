When("I fill in the payment form with valid cc credentials") do

	stripe_frame = find("iframe[name='__privateStripeFrame4']")
	within_frame stripe_frame do
		card_field = find_field('cardnumber')
		exp_date_field = find_field('exp-date')
		cvc_field = find_field('cvc')

		4.times { sleep 0.1; card_field.send_keys(right: '4242'); sleep 0.1; }
		exp_date_field.send_keys('1221')
		cvc_field.send_keys('123')
	end
end