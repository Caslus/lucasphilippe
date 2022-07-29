import { useEffect } from "react";
import { atom, useAtom } from "jotai";

const sectionAtom = atom<string>("about");
const sections = ["about", "projects", "socials"];

interface Props {
	section: string;
	key: string;
}

const NavbarElement = (props: Props) => {
	const [section, setSection] = useAtom(sectionAtom);

	function goToViolation(id) {
		const element = document.getElementById(id);
		if (element) {
			element.scrollIntoView({ behavior: "smooth" });
		}
	}

	return (
		<div className="relative group flex flew-row justify-center items-center select-none">
			<a
				onClick={() => {
					goToViolation(props.section);
				}}
				className={`group-hover:text-foreground group-focus-within:text-foreground ${
					props.section == section ? "text-foreground" : ""
				}`}
			>
				{props.section}
			</a>
			<div
				className={`absolute w-0 h-0.5 -mb-[1.5rem] bg-foreground
		group-hover:w-8 group-focus-within:w-8 transition-all ${
			props.section == section ? "w-8" : ""
		}`}
			></div>
		</div>
	);
};

const Navbar = () => {
	const [section, setSection] = useAtom(sectionAtom);
	const handleScroll = () => {
		const position = document.documentElement.scrollTop;
		const sectionSize = document.documentElement.scrollHeight / sections.length;
		const currentSection = Math.round(position / sectionSize);
		setSection(sections[currentSection]);
	};

	useEffect(() => {
		window.addEventListener("scroll", handleScroll);
		return () => {
			window.removeEventListener("scroll", handleScroll);
		};
	});

	return (
		<>
			<div className="fixed w-full h-14 z-20 flex justify-center md:justify-end px-6">
				<div className="h-full flex items-center gap-8 text-foreground-darker">
					{sections.map((section) => (
						<NavbarElement key={section} section={section} />
					))}
				</div>
			</div>
		</>
	);
};

export default Navbar;
