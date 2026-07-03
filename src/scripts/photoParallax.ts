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
    const maxTilt = 12;
    const maxLift = 24;
    const state = { rotateX: 0, rotateY: 0, lift: 0 };
    const velocity = { rotateX: 0, rotateY: 0, lift: 0 };
    const target = { rotateX: 0, rotateY: 0, lift: 0 };
    let frame = 0;
    let lastTickTime = 0;

    const snap = (value: number, step: number) => Math.round(value / step) * step;
    const stepSpring = (
        current: number,
        targetValue: number,
        currentVelocity: number,
        stiffness: number,
        damping: number,
        deltaSeconds: number,
    ) => {
        const acceleration = (targetValue - current) * stiffness;
        const nextVelocity = (currentVelocity + acceleration * deltaSeconds) * Math.exp(-damping * deltaSeconds);
        const nextValue = current + nextVelocity * deltaSeconds;

        return [nextValue, nextVelocity] as const;
    };

    const applyTransform = (now: number) => {
        if (!lastTickTime) {
            lastTickTime = now;
        }

        const deltaSeconds = Math.min((now - lastTickTime) / 1000, 0.05);
        lastTickTime = now;

        [state.rotateX, velocity.rotateX] = stepSpring(
            state.rotateX,
            target.rotateX,
            velocity.rotateX,
            42,
            6.2,
            deltaSeconds,
        );
        [state.rotateY, velocity.rotateY] = stepSpring(
            state.rotateY,
            target.rotateY,
            velocity.rotateY,
            42,
            6.2,
            deltaSeconds,
        );
        [state.lift, velocity.lift] = stepSpring(
            state.lift,
            target.lift,
            velocity.lift,
            38,
            5.6,
            deltaSeconds,
        );

        const snappedRotateX = snap(state.rotateX, 0.18);
        const snappedRotateY = snap(state.rotateY, 0.18);
        const snappedLift = snap(state.lift, 0.25);

        photo.style.transform = `perspective(1400px) rotateX(${snappedRotateX}deg) rotateY(${snappedRotateY}deg) translateY(${snappedLift}px)`;

        const settled =
            Math.abs(target.rotateX - state.rotateX) < 0.01 &&
            Math.abs(target.rotateY - state.rotateY) < 0.01 &&
            Math.abs(target.lift - state.lift) < 0.01;

        if (settled) {
            frame = 0;
            lastTickTime = 0;
            return;
        }

        frame = window.requestAnimationFrame(applyTransform);
    };

    const startAnimation = () => {
        if (!frame) {
            lastTickTime = 0;
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