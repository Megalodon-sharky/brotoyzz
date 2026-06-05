---
version: "alpha"
name: "Crimson Orbit — Hero"
description: "Crimson Orbit Login Section is designed for authenticating users through a focused access flow. Key features include reusable structure, responsive behavior, and production-ready presentation. It is suitable for authentication screens in web products."
colors:
  primary: "#F87171"
  secondary: "#EF4444"
  tertiary: "#FCA5A5"
  neutral: "#000000"
  background: "#000000"
  surface: "#FFFFFF"
  text-primary: "#FFFFFF"
  text-secondary: "#F87171"
  border: "#FFFFFF"
  accent: "#F87171"
typography:
  display-lg:
    fontFamily: "Inter"
    fontSize: "60px"
    fontWeight: 600
    lineHeight: "60px"
    letterSpacing: "-0.025em"
  body-md:
    fontFamily: "Inter"
    fontSize: "16px"
    fontWeight: 400
    lineHeight: "24px"
  label-md:
    fontFamily: "Inter"
    fontSize: "14px"
    fontWeight: 500
    lineHeight: "20px"
rounded:
  sm: "12px"
  md: "16px"
  lg: "32px"
  full: "9999px"
spacing:
  base: "4px"
  sm: "4px"
  md: "8px"
  lg: "12px"
  xl: "16px"
  gap: "8px"
  card-padding: "10px"
  section-padding: "48px"
components:
  button-primary:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.surface}"
    typography: "{typography.label-md}"
    rounded: "{rounded.full}"
    padding: "8px"
  button-link:
    textColor: "{colors.surface}"
    rounded: "0px"
    padding: "0px"
---

## Overview

- **Composition cues:**
  - Layout: Grid
  - Content Width: Bounded
  - Framing: Glassy
  - Grid: Strong

## Colors

The color system uses dark mode with #F87171 as the main accent and #000000 as the neutral foundation.

- **Primary (#F87171):** Main accent and emphasis color.
- **Secondary (#EF4444):** Supporting accent for secondary emphasis.
- **Tertiary (#FCA5A5):** Reserved accent for supporting contrast moments.
- **Neutral (#000000):** Neutral foundation for backgrounds, surfaces, and supporting chrome.

- **Usage:** Background: #000000; Surface: #FFFFFF; Text Primary: #FFFFFF; Text Secondary: #F87171; Border: #FFFFFF; Accent: #F87171

## Typography

Typography relies on Inter across display, body, and utility text.

- **Display (`display-lg`):** Inter, 60px, weight 600, line-height 60px, letter-spacing -0.025em.
- **Body (`body-md`):** Inter, 16px, weight 400, line-height 24px.
- **Labels (`label-md`):** Inter, 14px, weight 500, line-height 20px.

## Layout

Layout follows a grid composition with reusable spacing tokens. Preserve the grid, bounded structural frame before changing ornament or component styling. Use 4px as the base rhythm and let larger gaps step up from that cadence instead of introducing unrelated spacing values.

Treat the page as a grid / bounded composition, and keep that framing stable when adding or remixing sections.

- **Layout type:** Grid
- **Content width:** Bounded
- **Base unit:** 4px
- **Scale:** 4px, 8px, 12px, 16px, 20px, 24px, 32px, 40px
- **Section padding:** 48px, 64px
- **Card padding:** 10px, 12px, 16px
- **Gaps:** 8px, 12px, 16px, 20px

## Elevation & Depth

Depth is communicated through glass, border contrast, and reusable shadow or blur treatments. Keep those recipes consistent across hero panels, cards, and controls so the page reads as one material system.

Surfaces should read as glass first, with borders, shadows, and blur only reinforcing that material choice.

- **Surface style:** Glass
- **Borders:** 1px #FFFFFF; 1px #F87171
- **Shadows:** rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0.1) 0px 2px 3px -1px, rgba(25, 28, 33, 0.02) 0px 1px 0px 0px, rgba(25, 28, 33, 0.08) 0px 0px 0px 1px; rgba(255, 255, 255, 0.08) 0px 1px 0px 0px inset, rgba(255, 255, 255, 0.03) 0px 0px 0px 1px; rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px, rgba(0, 0, 0, 0.06) 0px 1px 1px -0.5px, rgba(0, 0, 0, 0.06) 0px 3px 3px -1.5px, rgba(0, 0, 0, 0.06) 0px 6px 6px -3px, rgba(0, 0, 0, 0.06) 0px 12px 12px -6px, rgba(0, 0, 0, 0.06) 0px 24px 24px -12px
- **Blur:** 24px, 0.5px, 1px

### Techniques
- **Gradient border shell:** Use a thin gradient border shell around the main card. Wrap the surface in an outer shell with 0px padding and a 32px radius. Drive the shell with linear-gradient(rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.02)), linear-gradient(135deg, rgba(255, 255, 255, 0.06) 0%, rgba(255, 255, 255, 0.01) 30%, rgba(239, 68, 68, 0.05) 100%) so the edge reads like premium depth instead of a flat stroke. Keep the actual stroke understated so the gradient shell remains the hero edge treatment. Inset the real content surface inside the wrapper with a slightly smaller radius so the gradient only appears as a hairline frame.

## Shapes

Shapes rely on a tight radius system anchored by 12px and scaled across cards, buttons, and supporting surfaces. Icon geometry should stay compatible with that soft-to-controlled silhouette.

Use the radius family intentionally: larger surfaces can open up, but controls and badges should stay within the same rounded DNA instead of inventing sharper or pill-only exceptions.

- **Corner radii:** 12px, 16px, 32px, 9999px
- **Icon treatment:** Linear
- **Icon sets:** Simple Icons, Solar

## Components

Component styling should inherit the shared button, icon, spacing, and surface rules instead of inventing one-off treatments. Favor a small family of repeatable patterns for actions, content containers, and fields.

### Buttons
- **Primary:** background #FFFFFF, text #FFFFFF, radius 9999px, padding 8px, border 1px solid rgba(255, 255, 255, 0.1).
- **Links:** text #FFFFFF, radius 0px, padding 0px, border 0px solid rgb(229, 231, 235).

### Iconography
- **Treatment:** Linear.
- **Sets:** Simple Icons, Solar.

## Do's and Don'ts

Use these constraints to keep future generations aligned with the current system instead of drifting into adjacent styles.

### Do
- Do use the primary palette as the main accent for emphasis and action states.
- Do keep spacing aligned to the detected 4px rhythm.
- Do reuse the Glass surface treatment consistently across cards and controls.
- Do keep corner radii within the detected 12px, 16px, 32px, 9999px family.

### Don't
- Don't introduce extra accent colors outside the core palette roles unless the page needs a new semantic state.
- Don't mix unrelated shadow or blur recipes that break the current depth system.
- Don't exceed the detected moderate motion intensity without a deliberate reason.

## Motion

Motion feels controlled and interface-led across text, layout, and section transitions. Timing clusters around 150ms and 26000ms. Easing favors ease and cubic-bezier(0.4. Hover behavior focuses on text and color changes. Scroll choreography uses GSAP ScrollTrigger for section reveals and pacing.

**Motion Level:** moderate

**Durations:** 150ms, 26000ms, 18000ms

**Easings:** ease, cubic-bezier(0.4, 0, 0.2, 1), linear

**Hover Patterns:** text, color

**Scroll Patterns:** gsap-scrolltrigger

## WebGL

Reconstruct the graphics as a full-bleed background field using webgl, renderer, alpha, antialias, dpr clamp. The effect should read as retro-futurist, technical, and meditative: dot-matrix particle field with charcoal monochrome and moderate spacing. Build it from dot particles + soft depth fade so the effect reads clearly. Animate it as slow breathing pulse. Interaction can react to the pointer, but only as a subtle drift. Preserve dom fallback.

**Id:** webgl

**Label:** WebGL

**Stack:** ThreeJS, WebGL

**Insights:**
  - **Scene:**
    - **Value:** Full-bleed background field
  - **Effect:**
    - **Value:** Dot-matrix particle field
  - **Primitives:**
    - **Value:** Dot particles + soft depth fade
  - **Motion:**
    - **Value:** Slow breathing pulse
  - **Interaction:**
    - **Value:** Pointer-reactive drift
  - **Render:**
    - **Value:** WebGL, Renderer, alpha, antialias, DPR clamp

**Techniques:** Dot matrix, Breathing pulse, Pointer parallax, Noise fields, DOM fallback

**Code Evidence:**
  - **HTML reference:**
    - **Language:** html
    - **Snippet:**
      ```html
      <body class="bg-black text-white antialiased selection:bg-red-500/30 selection:text-white overflow-x-hidden" style="font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;">
        <div class="fixed inset-0 -z-30 overflow-hidden">
          <canvas id="ditherBg" class="absolute inset-0 h-full w-full"></canvas>
          <div class="absolute inset-0" style="background:
            radial-gra…
      ```
  - **JS reference:**
    - **Language:** js
    - **Snippet:**
      ```
      (function () {
        const canvas = document.getElementById('ditherBg');
        const ctx = canvas.getContext('2d', { alpha: false });
        const bayer4 = [
          [0, 8, 2, 10],
          [12, 4, 14, 6],
          [3, 11, 1, 9],
          [15, 7, 13, 5]
      …
      ```

## ThreeJS

Reconstruct the Three.js layer as a full-bleed background field that feels retro-futurist, volumetric, and technical. Use alpha, antialias, dpr clamp renderer settings, perspective, ~42deg fov, icosahedron + sphere geometry, meshphysicalmaterial + pointsmaterial materials, and ambient + directional lighting. Motion should read as slow orbital drift, with poster frame + dom fallback.

**Id:** threejs

**Label:** ThreeJS

**Stack:** ThreeJS, WebGL

**Insights:**
  - **Scene:**
    - **Value:** Full-bleed background field
  - **Render:**
    - **Value:** alpha, antialias, DPR clamp
  - **Camera:**
    - **Value:** Perspective, ~42deg FOV
  - **Lighting:**
    - **Value:** ambient + directional
  - **Materials:**
    - **Value:** MeshPhysicalMaterial + PointsMaterial
  - **Geometry:**
    - **Value:** icosahedron + sphere
  - **Motion:**
    - **Value:** Slow orbital drift

**Techniques:** PBR shading, Particle depth, Timeline beats, alpha, antialias, DPR clamp, Poster frame + DOM fallback

**Code Evidence:**
  - **HTML reference:**
    - **Language:** html
    - **Snippet:**
      ```html
      <body class="bg-black text-white antialiased selection:bg-red-500/30 selection:text-white overflow-x-hidden" style="font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;">
        <div class="fixed inset-0 -z-30 overflow-hidden">
          <canvas id="ditherBg" class="absolute inset-0 h-full w-full"></canvas>
          <div class="absolute inset-0" style="background:
            radial-gra…
      ```
  - **JS reference:**
    - **Language:** js
    - **Snippet:**
      ```
      (function () {
        const canvas = document.getElementById('ditherBg');
        const ctx = canvas.getContext('2d', { alpha: false });
        const bayer4 = [
          [0, 8, 2, 10],
          [12, 4, 14, 6],
          [3, 11, 1, 9],
          [15, 7, 13, 5]
      …
      ```
