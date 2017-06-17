

		<form name="myForm" novalidate="" quote-dirty-flag=""
			class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom ng-valid-min ng-valid-max ng-valid-pattern ng-valid-minlength">
			<!-- ngIf: showExpireMsg -->
			<div class="col-sm-12">
				<div class="col-sm-8 side-border">
					<div class="form-group">
						<h2 class="re-section-header ng-binding">What types of
							insurance are you looking for?</h2>
						<!-- <br/>
		<div class="re-section-header">{{productPageLabels.BUSINESS_LOCATION_TITLE}}</div>
		<br/> -->
						<div ng-show="false"
							class="alert alert-danger slide-down scroll-at ng-hide" id="msg">
							<div>At least one product must be selected to continue.</div>
						</div>

						<div>
								<div class="row">
									<div class="col-lg-12 outer-div">
										<div>
											<div class="inner-div-left">
												<input type="checkbox" id="propertyProduct"
													
													class="ng-pristine ng-untouched ng-valid"> <label
													class="label-color ng-binding" for="propertyProduct">Property</label>
												<span class="product-st" ng-hide="hideStar"> <span
													class="product-stars rating-align-h3 star-rating-small">
														<span class="star-rating-filled-small"
														style="width: 96%;"></span>

												</span> <span class="review-font ng-binding">Rated 4.8/5 by
														Small Business Owners</span> <span class="product-review">
														<a href="#"
														target="_blank" class="ng-binding">(2725 Reviews)</a>
												</span>
												</span>

											</div>
										</div>
										<div class="desc-div ng-binding">
											Helps protect the place where you do business - whether you
											own it, lease it, or work out of your home. Also covers
											personal property (such as tools and equipment) used in your
											business. <a class="bold-font ng-binding" tealium-link=""
												data-dl="{&quot;id&quot;:&quot;property learn link&quot;,&quot;location&quot;: &quot;product page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
												id="propertyLearnLink">Learn More</a>
											
											<div>
												<div>Much like the property coverage you have for your
													home, business property insurance helps protect the place
													where you do business and its contents.</div>
												<div>
													<em><strong>Did you know? </strong>Most homeowner
														policies don't cover damage or accidents related to
														business done at your home.</em>
												</div>
											</div>
											<div>&nbsp;</div>
											</p>

										</div>

									</div>
								</div>
							</span>
						</div>
						<!---- Property product unavailable -->
						<div class="row product-unavailable ng-hide">
							<div class="borderdiv-margin"></div>
							<div class="col-lg-12 outer-div">
								<div class="inner-div-left">
									<label class="ng-binding">Property</label>
								</div>
							</div>
							<div class="desc-div re-field-description ng-binding">
								Property is not available for your business.</div>
						</div>

						<div>
								<div class="row">
									<div class="borderdiv-margin"></div>
									<div class="col-lg-12 outer-div">
										<div>
											<div class="inner-div-left">
												<input type="checkbox" id="liabilityProduct"
													
													class="ng-pristine ng-untouched ng-valid"> <label
													class="label-color ng-binding" for="liabilityProduct">General
													Liability</label> <span class="product-st" ng-hide="hideStar">
													<span class="product-stars rating-align star-rating-small">
														<span class="star-rating-filled-small"
														
														style="width: 96%;"></span>
												</span> <span class="review-font ng-binding">Rated 4.8/5 by
														Small Business Owners</span> <span class="product-review">
														<a
														href="#"
														target="_blank" class="ng-binding">(2725 Reviews)</a>
												</span>
												</span>
											</div>
										</div>
										<div class="desc-div ng-binding">
											Helps protect your business from claims or lawsuits involving
											your products or business operations. <a
												class="bold-font ng-binding" tealium-link=""
												data-dl="{&quot;id&quot;:&quot;general liability learn link&quot;,&quot;location&quot;: &quot;product page&quot;,&quot;type&quot;:&quot;link&quot;,&quot;da_track&quot;:&quot;true&quot;}"
												id="generalLiabilityLearnLink"
												href="https://smallbizquote.thehartford.com/app/index.html"
												>Learn More</a>
											<div>
												<div>Imagine the impact to your business if a customer
													is injured at your workplace or an employee causes damage
													to a customer's property. General liability can cover all
													that plus claims of false advertising and libel.&nbsp;</div>
												<div>
													<em><strong>Did you know?</strong></em> <em>General
														liability insurance does not cover lawsuits relating to
														your professional services.</em>
												</div>
											</div>
											<div>&nbsp;</div>
											</p>

										</div>
										<!-- ngRepeat: ruleResponse in ruleResponses -->

									</div>
								</div>
							</span>
						</div>
						<!-- General Liability Not available -->
						<div class="row product-unavailable ng-hide">
							<div class="borderdiv-margin"></div>
							<div class="col-lg-12 outer-div">
								<div class="inner-div-left">
									<label class="ng-binding">General Liability</label>
								</div>
							</div>
							<div class="desc-div re-field-description ng-binding">
								General Liability is not available for your business.</div>
						</div>

						<div>
							
									<div class="row">
										<div class="borderdiv-margin"></div>
										<div class="col-lg-12 outer-div">
											<div>
												<div class="inner-div-left">
													<input type="checkbox" id="workersCompProduct"
														class="ng-pristine ng-untouched ng-valid"> <label
														class="label-color ng-binding" for="workersCompProduct">Workers'
														Compensation </label> <span class="product-st" >
														<span
														class="product-stars rating-align-h1 star-rating-small">
															<span class="star-rating-filled-small"></span>
													</span> <span class="review-font ng-binding">Rated 4.8/5 by
															Small Business Owners</span> <span class="product-review"><a
															href="#"
															target="_blank" class="ng-binding">(3041 Reviews)</a></span>
													</span>
												</div>
											</div>
											<div class="desc-div ng-binding">
												Provides benefits to your employees for work-related
												injuries or illnesses including medical care, wages from
												lost work time and more. If the worker's family decides to
												sue you, coverage can help you with related legal fees. <a
													class="bold-font ng-binding" tealium-link=""
													id="workersCompensationLearnLink"
													href="https://smallbizquote.thehartford.com/app/index.html"
													>Learn More </a>
												
												<div>
													<div>Why do you need workers' compensation coverage?
														First, most states -- and many of your customers --
														require it. Plus, it’s the right thing to do for your
														employees. For a one-person operation, work-related
														injuries may not be covered by your health insurance.</div>
													<div>
														<em><strong>Did you know?</strong></em> <em>Businesses
															have been turning to The Hartford for workers' comp
															coverage for more than a century.</em>
													</div>
												</div>
												<div>&nbsp;</div>
												</p>

											</div>

										</div>
									</div>
							</span>
							</span>
						</div>
						<!-- workers comp not available -->
						<div
							 class="ng-hide">
							<div class="row product-unavailable">
								<div class="borderdiv-margin"></div>
								<div class="col-lg-12 outer-div">
									<div class="inner-div-left">
										<label class="ng-binding">Workers' Compensation</label>
									</div>
								</div>
								<div class="desc-div re-field-description ng-binding">
									Workers' Compensation is not available for your business.</div>
							</div>
						</div>
						<div class="border-div outer-div"></div>
					</div>
					<div class="form-group inline-input div-top">
						<div class="row">
							<div class="col-lg-5">
								<label for="effectiveDt" class="control-label ng-binding">When
									would you like your coverage to start? </label>
							</div>
							<div class="col-lg-7">
								<input type="date"
									class="form-control ng-pristine ng-untouched ng-valid ng-valid-min ng-valid-max ng-valid-required ng-valid-leap-day ng-valid-custom"
									id="effectiveDt" name="effectiveDt" placeholder="YYYY-MM-DD"
									tealium-blur=""
									
									validate-result="false" no-leap-day=""
									validate-message-leap-day="Coverage Start Date cannot be February 29th"
									validate-message-min="The Coverage Start Date cannot be in the past"
									validate-message-max="The Coverage Start Date must be within 6 months from today&#39;s date"
									validate-message="Please enter a valid date">
							</div>

						</div>
					</div>


					<div class="form-group inline-input">
						<div class="row">
							<div class="col-lg-5">
								<label for="currPolExpirationDt"
									class="control-label ng-binding">If you currently have
									business insurance, when does your current policy end?
									(optional) </label> <span class="re-field-description ng-binding"></span>
							</div>
							<div class="col-lg-7">
								<input type="date"
									class="form-control ng-pristine ng-untouched ng-valid ng-valid-max"
									id="currPolExpirationDt" name="currPolExpirationDt"
									max="9999-12-31" placeholder="YYYY-MM-DD"
									
									data-dl="{&quot;id&quot;:&quot;policy end date&quot;,&quot;location&quot;: &quot;product page&quot;,&quot;type&quot;:&quot;date picker&quot;,&quot;da_track&quot;:&quot;true&quot;}"
									tealium-blur="" ng-model="vm.CurrPolExpirationDt" validate=""
									>

							</div>
						</div>
					</div>

					

					<div class="form-group inline-input">
						<div class="row">
							<div class="col-lg-12 nav-buttons">
								<input type="button" class="btn btn-default" id="btnPrev"style="cursor: pointer"
									value="Back" ng-click="goHome()" tealium-link=""
									> <input type="button" style="cursor: pointer"
									class="btn btn-primary" id="btnNext" value="Continue"
									ng-click="goPersonal()" >
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	