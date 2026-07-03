const photoFrame = document.querySelector<HTMLElement>("[data-photo-parallax]");
const photo = photoFrame?.querySelector<HTMLImageElement>("img");

const prefersReducedMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
const hasTouchOnlyInput =
    window.matchMedia("(pointer: coarse)").matches ||
    window.matchMedia("(hover: none)").matches;

if (
    photoFrame instanceof HTMLElement &&
    photo instanceof HTMLImageElement &&
    !prefersReducedMotion &&
    !hasTouchOnlyInput
) {
    const maxTilt = 10;
    const maxLift = 18;
    const state = { rotateX: 0, rotateY: 0, lift: 0 };
    const target = { rotateX: 0, rotateY: 0, lift: 0 };
    let frame = 0;

    const applyTransform = () => {
        state.rotateX += (target.rotateX - state.rotateX) * 0.08;
        state.rotateY += (target.rotateY - state.rotateY) * 0.08;
        state.lift += (target.lift - state.lift) * 0.08;

        photo.style.transform = `perspective(1400px) rotateX(${state.rotateX}deg) rotateY(${state.rotateY}deg) translateY(${state.lift}px)`;

        const settled =
            Math.abs(target.rotateX - state.rotateX) < 0.01 &&
            Math.abs(target.rotateY - state.rotateY) < 0.01 &&
            Math.abs(target.lift - state.lift) < 0.01;

        if (!settled) {
            frame = window.requestAnimationFrame(applyTransform);
        } else {
            frame = 0;
        }
    };

    const startAnimation = () => {
        if (!frame) {
            frame = window.requestAnimationFrame(applyTransform);
        }
    };

    const handlePointerMove = (event: PointerEvent) => {
        const bounds = photoFrame.getBoundingClientRect();
        const centerX = bounds.left + bounds.width / 2;
        const centerY = bounds.top + bounds.height / 2;
        const offsetX = (event.clientX - centerX) / window.innerWidth;
        const offsetY = (event.clientY - centerY) / window.innerHeight;

        target.rotateY = offsetX * maxTilt * 2;
        target.rotateX = -offsetY * maxTilt * 2;
        target.lift = Math.hypot(offsetX, offsetY) * maxLift;
        startAnimation();
    };

    const resetTilt = () => {
        target.rotateX = 0;
        target.rotateY = 0;
        target.lift = 0;
        startAnimation();
    };

    window.addEventListener("pointermove", handlePointerMove, {
        passive: true,
    });
    window.addEventListener("blur", resetTilt);
    window.addEventListener("pointerleave", resetTilt);
    photoFrame.addEventListener("pointercancel", resetTilt);
}