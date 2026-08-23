import { test, expect } from "@playwright/test";

test("invalid email shows a bound error and keeps the value", async ({ page }) => {
  await page.goto("/settings");
  await page.getByTestId("settings.email").fill("not-an-email");
  await page.getByTestId("settings.save").click();
  await expect(page.getByTestId("settings.error")).toBeVisible();
  await expect(page.getByTestId("settings.email")).toHaveValue("not-an-email");
});
