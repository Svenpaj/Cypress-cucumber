import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

/*Given('that I am on the start page', () => {
  cy.visit('/');
});*/
let searchedFor;
Given('that I have searched for {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('I click the buy button {string} time', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
  cy.get('.product h2')
    .contains(searchedFor)
    .parents('.product')
    .find('button').contains('Köp')
    .click();
    }
});

Then('{string} {string} should be added to the cart', (quantity, productName) => {
  cy.get('#cart li')
    .contains(productName)
    .contains(quantity + 'st')
    .should('have.length', 1);
});