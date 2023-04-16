import { Dropdown } from "bootstrap";

document.addEventListener("DOMContentLoaded", () => {
  const dropdownElements = [].slice.call(document.querySelectorAll('[data-bs-toggle="dropdown"]'));
  dropdownElements.map((dropdownToggleEl) => new Dropdown(dropdownToggleEl));
});
