
		<form name="myForm" novalidate="" quote-dirty-flag=""
			class="ng-pristine ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom ng-valid-min ng-valid-max ng-valid-pattern ng-valid-minlength">
			<!-- ngIf: showExpireMsg -->
			<div class="col-sm-12">
			<div class="col-sm-8 side-border">
				<div class="form-group">
					<h2 class="get-started ng-binding">Let's get started.</h2>
					<div class="form-group  inline-input">
						<div class="row">
							<div class="col-lg-12">
								<!-- ngIf: !isAARP -->
								<!-- end ngIf: !isAARP -->
								<!-- ngIf: isAARP -->

							</div>
						</div>
					</div>
					<div class="form-group  inline-input">
						<div class="row">
							<div class="col-lg-12">
								<span
									class="grey-48 control-label re-field-label-inline ng-binding">Have a website or Facebook Page?</span>&nbsp; 
									<input type="text" ng-model="crawlUrl" class="form-control" />
									<a href="#"
									 ng-click="retrieveInformation()">Retrieve
									Your Information </a>
							</div>

						</div>
					</div>
					<div class="form-group inline-keyword">
						<div class="row">
							<div class="col-lg-5">
								<label for="primaryBusinessTxt" class="control-label ng-binding">Keywords
									to describe your business</label>
							</div>

							<div class="col-lg-7 container-fluid dropdown-begin-ul ng-scope"
								>
								<input type="text" 
									name="SearchKeyword"
									id="primaryBusinessTxt" maxlength="50"
									placeholder="Enter Keywords"
									required="" validate="" ng-model="data.keywords"
									class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-maxlength ng-valid-custom">
									
									<span style="position:absolute; left:300;top:300">Description of fields</span>
								
							</div>
						</div>
					</div>
					<!--  div start for other Business description -->
					<!-- ngIf: formData.businessDesc -->
					<!--  div end for other Business description -->
					<!--  div start for Clarification Classification Question? -->
					
					<!-- ngIf: formData.FqueDiv -->
					<!--  div start for Do you offer additional services? -->
					<fieldset>
						<div class="form-group inline-input">
							<div class="row">
								<span
									class="grey-48 col-lg-5 control-label re-field-label-inline ng-binding">
									Do you offer additional services? </span>
								<div class="col-lg-7">
									<div class="Input">
										<div class="btn-group" for="options" data-toggle="buttons"
											id="options">
											<label class="btn btn-radio" > 
											<input
												type="radio" name="options" id="options1"
												value="1" required=""
												validate=""
												help-message="Answer &quot;yes&quot; if you offer services not included in your business description. Examples of businesses that offer additional services: a lawn maintenance firm that plows snow in the winter; a lawyer that sells real estate on the side; or a real estate agent that also manages properties."
												class="ng-pristine ng-untouched ng-invalid ng-invalid-required">Yes
											</label> <label class="btn btn-radio" > <input
												type="radio" name="options" id="options2"
												 value="0" required=""
												validate=""
												help-message="Answer &quot;yes&quot; if you offer services not included in your business description. Examples of businesses that offer additional services: a lawn maintenance firm that plows snow in the winter; a lawyer that sells real estate on the side; or a real estate agent that also manages properties."
												class="ng-pristine ng-untouched ng-invalid ng-invalid-required">No
											</label>
										</div>
										

									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<!--  div end for Do you offer additional services? -->
					<!--  div start for Number of Business Location -->
					<div class="form-group inline-input ng-scope"
						>
						<div class="row">
							<div class="col-lg-5">
								<label for="businessLocation" class="control-label ng-binding">Number
									of business locations</label> <br> <span
									class="font re-field-description ng-binding">Includes
									all places where you or your employees do work </span>
							</div>
							<div class="col-lg-7">
								<input type="number"
									class="form-control input-field-small ng-pristine ng-untouched ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern"
									pattern="[0-9]*" id="businessLocation" min="1" max="999"
									 name="businessLocation" ng-model="data.locations"
									> 
							</div>
						</div>
					</div>
					<!--  div end for Number of Business Location -->

					<!--  div start for Number of Employees -->
					<div >
						<div class="form-group inline-input">
							<div class="row">
								<div class="col-lg-5">
									<label for="noOfEmployee" class="control-label ng-binding">Number
										of employees</label> <br> <span
										class="font re-field-description  ng-binding">Include
										everyone on your payroll </span>
								</div>

								<div class="col-lg-7">
									<input id="noOfEmployee" type="number" pattern="[0-9]*" ng-model="data.employees"
										
										class="form-control input-field-small ng-pristine ng-untouched ng-valid-min ng-valid-max ng-valid-pattern ng-invalid ng-invalid-required"
										name="NoEmployee" min="1" max="9999" step="1"
										help-message="Don&#39;t forget to include the owner, officers, partners, members and employees who work from home - including yourself."
										>


								</div>
							</div>

						</div>
						<!--  div end for Number of Employees -->

						<!--  div start for year Established CL_68 -->
						<div class="form-group">
							<div class="row">
								<div class="col-lg-5">
									<label for="estdYearId" class="control-label ng-binding"
										ng-bind="::beginPageLabels.YEAR_BUSINESS_ESTABLISHED_LABEL">Year
										Business Established</label>
								</div>
								<div class="col-lg-7 inline-input">
									<input type="number" pattern="[0-9]*"
										class="form-control input-field-small ng-pristine ng-untouched ng-valid-min ng-valid-max ng-invalid ng-invalid-required ng-valid-pattern ng-valid-maxlength ng-valid-custom"
										required="" tealium-blur="">
								</div>
							</div>
						</div>
						<!-- ngIf: ((currentYear() - 3) > begin.BusinessStartDt) -->
						<!--  div end for year Established  CL_68 -->

						<!--  div start for Business ZIP Code -->
						<div >
							<div class="form-group inline-input">
								<div class="row">
									<div class="col-lg-5">
										<label for="businessZIPCode" class="control-label ng-binding">Business
											ZIP code</label>
									</div>
									<div class="col-lg-7">
										<input type="text" id="businessZIPCode" name="businessZIPCode"
											class="form-control input-field-small ng-pristine ng-untouched ng-valid-pattern ng-invalid ng-invalid-required ng-valid-minlength ng-valid-maxlength ng-valid-custom"
											 maxlength="5" numeric-only=""
											minlength="5">
									</div>
								</div>
							</div>
							<!--  div end for Business ZIP Code -->
							<!--  div start for zip code error msg -->
							<div ng-hide="errorMsg === undefined || errorMsg === &#39;&#39;"
								class="alert alert-warning ng-binding ng-hide"
								ng-bind="errorMsg"></div>
							<!--  div end for zip code error msg -->
							<!--  div start for State Abbreviation -->
							<div class="form-group inline-input ng-hide"
								ng-hide="formData.disableInput">
								<div class="row">
									<div class="col-lg-5">
										<label for="stateAbb" class="control-label ng-binding">State
											abbreviation</label>
									</div>
									<div class="col-lg-7">
										<input type="tel" id="stateAbb" name="stateAbb"
											class="form-control input-field-small ng-pristine ng-untouched ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-valid-custom ng-hide ng-valid ng-valid-required"
											 ng-hide="formData.disableInput"
											ng-required="!formData.disableInput" validate=""
											maxlength="2" ng-blur="chkValidState()" minlength="2"
											ng-pattern="/^[a-zA-Z]*$/" validate-result="false"
											validate-message-custom="Required to continue"
											validate-message-minlength="Please Enter 2 Chars State Abbreviation"
											validate-message-required="Please Enter State Abbreviation">

									</div>
								</div>
							</div>
							<!--  div end for State Abbreviation -->
							


						</div>
						<div class="form-group inline-input">
							<div class="row">
								<div class="col-lg-10"></div>
								<div class="col-lg-2 nav-buttons">
									<button class="btn btn-primary" ng-click="goBusiness()" style="cursor: pointer">
										Continue</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			</div>
			
		</form>
	