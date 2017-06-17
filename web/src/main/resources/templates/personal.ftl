
<form name="myForm" novalidate="" quote-dirty-flag=""
	class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom ng-valid-min ng-valid-max ng-valid-pattern ng-valid-minlength">
	<!-- ngIf: showExpireMsg -->
	<div class="col-sm-12">
		<div class="col-sm-8 side-border">
			<input type="hidden"
				ng-model="contact.BusinessAddress.CleansedAddress.NameAddressCleanseRs.CleansedStreet"
				autocomplete="off" class="ng-pristine ng-untouched ng-valid">
			<input type="hidden" name="PredominantLocation"
				ng-init="contact.BusinessAddress.PredominantLocation = &#39;YES&#39;"
				ng-model="contact.BusinessAddress.PredominantLocation"
				autocomplete="off" class="ng-pristine ng-untouched ng-valid">
			<input type="hidden" name="Building"
				ng-init="contact.BusinessAddress.Building = &#39;1&#39;"
				ng-model="contact.BusinessAddress.Building" maxlength="2"
				minlength="1" dynamic-field="" autocomplete="off"
				class="ng-pristine ng-untouched ng-valid ng-valid-minlength ng-valid-maxlength">

			<input type="hidden" name="Location"
				ng-init="contact.BusinessAddress.Location = &#39;1&#39;"
				ng-model="contact.BusinessAddress.Location" maxlength="2"
				minlength="1" dynamic-field="" autocomplete="off"
				class="ng-pristine ng-untouched ng-valid ng-valid-minlength ng-valid-maxlength">
			<div class="form-group">
				<h2 class="re-section-header ng-binding">Business Location</h2>
			</div>
			<!-- Registered Business Name -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="regBizNameId" class="control-label ng-binding">Registered
							Business Name</label>
					</div>

					<div class="col-lg-7">
						<div class="re-full-width-input">
							<input type="text" ng-model="contact.CommercialName" name-type=""
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-name-format ng-valid-maxlength"
								name="regBizName" id="regBizNameId"
								help-message="Your registered business name is the one that you use for legal or tax purposes. Example: Joe&#39;s Italian Pizza, LLP (registered business name) vs. Joe&#39;s Pizza (name the company does business as everyday)."
								tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;registered business name&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								maxlength="255" required="" validate=""
								validate-message-maxlength="Max Length allowed is 255">
							<span class="fa fa-question-circle field-help-button ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								help-icon=""
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover="Your registered business name is the one that you use for legal or tax purposes. Example: Joe&#39;s Italian Pizza, LLP (registered business name) vs. Joe&#39;s Pizza (name the company does business as everyday)."
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- DBA (if applicable) -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="dbaNameId"
							class="control-label contactDBA-Applicable ng-binding">DBA</label>
						<span class="re-field-description ng-binding"> if
							applicable</span>
					</div>
					<div class="col-lg-7">
						<div class="re-full-width-input">
							<input type="text" ng-model="contact.SupplementaryName"
								name-type="" tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;dba&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								class="form-control ng-pristine ng-untouched ng-valid ng-valid-name-format ng-valid-maxlength"
								name="dbaName" id="dbaNameId" validate=""
								help-message="What is the name that you do business as every day?This could be the name over your door, on your website, or printed on your business cards."
								maxlength="255"
								validate-message-maxlength="Max Length allowed is 255">
							<span class="fa fa-question-circle field-help-button ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								help-icon=""
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover="What is the name that you do business as every day?This could be the name over your door, on your website, or printed on your business cards."
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- Business Street Address -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="bizStrtAddId" class="control-label ng-binding">Business
							Street Address</label>
					</div>
					<div class="col-lg-7">
						<div class="re-full-width-input">
							<input type="text" ng-model="contact.BusinessAddress.Addr1"
								class="form-control ng-pristine ng-untouched ng-valid-street-format ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom"
								help-message="Enter your primary business address葉he place where you do most of your work容ven if it is your home. This will help us calculate an accurate cost.

If you need to edit your zip code, please return to the first screen to update it."
								name="bizStrtAdd" id="bizStrtAddId" maxlength="255"
								ng-blur="callCleanseAddress()" tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;business address&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								required="" validate="" validate-result="false"
								validate-message-custom=""
								validate-message-maxlength="Max Length allowed is 255"
								street-type=""> <span
								class="fa fa-question-circle field-help-button ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								help-icon=""
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover="Enter your primary business address葉he place where you do most of your work容ven if it is your home. This will help us calculate an accurate cost.

If you need to edit your zip code, please return to the first screen to update it."
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- City -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="cityName" class="control-label ng-binding">City</label>
					</div>

					<div class="col-lg-7">
						<input type="text" street-type="" required="" validate=""
							id="cityName" ng-model="contact.BusinessAddress.City"
							class="form-control input-field-medium ng-pristine ng-untouched ng-valid-street-format ng-valid-maxlength ng-valid ng-valid-required"
							name="cityName" maxlength="40" ng-disabled="!cityEditable"
							disabled="disabled" style="">
					</div>
				</div>
			</div>
			<!-- State Abbreviation -->
			<div class="form-group inline-input">
				<div class="row">
					<div class="col-lg-5">
						<label for="stateAbbvId" class="control-label ng-binding">State
							Abbreviation</label>
					</div>
					<div class="col-lg-7">
						<input type="text" ng-model="contact.BusinessAddress.StateProvCd"
							class="form-control input-field-medium ng-pristine ng-untouched ng-valid ng-valid-maxlength"
							name="stateAbbv" id="stateAbbvId" maxlength="2"
							ng-disabled="true" disabled="disabled">
					</div>
				</div>
			</div>
			<!-- ZIP Code -->
			<div class="form-group inline-input">
				<div class="row">
					<div class="col-lg-5">
						<label for="zipCodeId" class="control-label ng-binding">Zip
							code</label>
					</div>
					<div class="col-lg-7">
						<input ng-model="contact.BusinessAddress.PostalCode"
							autocomplete="off"
							class="form-control input-field-medium ng-pristine ng-untouched ng-valid ng-valid-maxlength"
							name="zipCode" id="zipCodeId" type="text" maxlength="5"
							ng-disabled="true" disabled="disabled">
					</div>
				</div>
			</div>

			<div class="form-group inline-input">
				<div class="row">
					<div class="col-lg-12">
						<input type="checkbox" ng-model="contact.MailingSameAsBusinessInd"
							id="mailingAsBusiness" tealium-link=""
							data-dl="{&quot;id&quot;:&quot;mailing address&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;checkbox&quot;,&quot;da_track&quot;:&quot;true&quot;}"
							ng-init="contact.MailingSameAsBusinessInd=(contact.MailingSameAsBusinessInd==undefined)||contact.MailingSameAsBusinessInd"
							class="ng-pristine ng-untouched ng-valid"> <label
							for="mailingAsBusiness" class="re-field-Label-inline ng-binding"
							style="display: inline; margin-left: 5px;">My mailing
							address is the same as my business address.</label>
					</div>
				</div>
			</div>
			<!-- ngIf: !contact.MailingSameAsBusinessInd -->
			<div class="re-section-header form-group ng-binding">Contact
				Information</div>
			<!-- First name -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="firstNameId" class="control-label ng-binding">First
							name</label>
					</div>
					<div class="col-lg-7">
						<div class="re-full-width-input">
							<input type="text" ng-model="contact.ContactFirstName"
								name-type="" tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;first name&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-name-format ng-valid-maxlength"
								name="firstName" id="firstNameId" maxlength="40"
								ng-required="!contact.ContactFirstName || contact.ContactFirstName.length === 0"
								validate=""
								validate-message-maxlength="Max Length allowed is 255"
								required="required"> <span
								class="fa fa-question-circle field-help-button re-icon-invisible ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- Last name -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="lastNameId" class="control-label ng-binding">Last
							name</label>
					</div>
					<div class="col-lg-7">
						<div class="re-full-width-input">
							<input type="text" ng-model="contact.ContactLastName"
								name-type="" tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;last name&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-name-format ng-valid-maxlength"
								name="lastName" id="lastNameId" maxlength="80"
								ng-required="!contact.ContactLastName || contact.ContactLastName.length === 0"
								validate=""
								validate-message-maxlength="Max Length allowed is 255"
								required="required"> <span
								class="fa fa-question-circle field-help-button re-icon-invisible ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- Phone -->
			<div class="form-group inline-input">
				<div class="row">
					<div class="col-lg-5">
						<label for="phoneId" class="control-label ng-binding">Phone</label>
					</div>
					<div class="col-lg-7">
						<span id="phone-one">1</span> <input type="tel"
							ng-model="contact.PhoneNumber"
							class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-phone-check ng-valid-phone-length ng-valid-custom ng-valid-mask"
							name="phone" id="phoneId" tealium-blur=""
							data-dl="{&quot;id&quot;:&quot;phone number&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
							ui-mask="(?9?9?9) ?9?9?9-?9?9?9?9 ext.?9?9?9?9?9?9?9"
							help-message="What&#39;s the best number to reach you at if we have questions regarding your quote? Please enter a valid U.S. phone number."
							required="" validate="" phone-validate=""
							phone-length-validate="" validate-result="false"
							placeholder="(___) ___-____ ext._______"><span
							class="fa fa-question-circle field-help-button ng-scope"
							tealium-link=""
							data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
							help-icon=""
							ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
							popover="What&#39;s the best number to reach you at if we have questions regarding your quote? Please enter a valid U.S. phone number."
							popover-toggle="isVisible" popover-placement="top"> </span>
					</div>
				</div>
			</div>
			<!-- Email Address -->
			<div class="form-group">
				<div class="row">
					<div class="col-lg-5">
						<label for="emailAddressId" class="control-label ng-binding">Email
							address</label>
					</div>
					<div class="col-lg-7">
						<div class="re-field-description  ng-binding">We'll email
							you a link to reaccess your quote.</div>
						<div class="re-full-width-input">
							<input type="email" ng-model="contact.EmailAddr" email-type=""
								tealium-blur=""
								data-dl="{&quot;id&quot;:&quot;email address&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;input field&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom-email"
								name="emailAddress" id="emailAddressId"
								help-message="We respect your privacy and won&#39;t share your email address with anyone else."
								maxlength="80" required="" validate=""
								validate-message-maxlength="Max Length allowed is 80"> <span
								class="fa fa-question-circle field-help-button ng-scope"
								tealium-link=""
								data-dl="{&quot;id&quot;:&quot;help icon&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
								help-icon=""
								ng-click="isVisible = !isVisible &amp;&amp; showPopover() "
								popover="We respect your privacy and won&#39;t share your email address with anyone else."
								popover-toggle="isVisible" popover-placement="top"> </span>
						</div>
					</div>
				</div>
			</div>
			<!-- Member Alliance Number -->
			<!-- ngIf: usaaMember -->
			<div class="form-group inline-input">
				<div class="row">
					<div class="col-lg-12 nav-buttons">
						<input type="button" class="btn btn-default" id="btnPrevId"
							value="Back" ng-click="cfv.gotoPreviousPage()" tealium-link=""
							data-dl="{&quot;id&quot;:&quot;back button&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;button&quot;,&quot;da_track&quot;:&quot;true&quot;}"
							waitindicatordirective=""> <input type="button"
							class="btn btn-primary" id="btnNext" value="Continue"
							data-dl="{&quot;id&quot;:&quot;continue button&quot;,&quot;location&quot;: &quot;contact page&quot;,&quot;type&quot;:&quot;button&quot;,&quot;da_track&quot;:&quot;true&quot;}"
							ng-click="setTriggerInsScorInd();  postTlmService();"
							tealium-link="" wait-indicator-directive="">
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
