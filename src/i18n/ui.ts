import type { Language, UIStrings } from "../interfaces/i18n";

export const languages: Language[] = [
	{
		code: "en",
		name: "English",
	},
	{
		code: "pt",
		name: "Português",
	},
	{
		code: "jp",
		name: "日本語",
	},
];

export const ui: UIStrings = {
	en: {
		name: "Lucas Philippe",
		occupation: "Software Engineer",
		greeting: "Hi, my name is",
		description:
			"I’m a software engineer who loves building full-stack applications. I enjoy tinkering with servers and exploring new technologies in my free time.",
		location: "Curitiba, Brazil",
		image: "An image of me flying a black and red skydive canopy",
		github: "GitHub",
		linkedin: "LinkedIn",
		resume: "Resume",
		resumeFile: "resume.pdf",
	},
	pt: {
		name: "Lucas Philippe",
		occupation: "Engenheiro de Software",
		greeting: "Oi, meu nome é",
		description:
			"Sou um engenheiro de software que adora construir aplicações full-stack. Em minhas horas vagas, adoro explorar novas tecnologias e brincar com servidores.",
		location: "Curitiba, Paraná",
		image: "Uma foto minha voando com um paraquedas preto e vermelho",
		resume: "Currículo",
		resumeFile: "resume-pt.pdf",
	},
	jp: {
		name: "フィリップ・ルカス",
		occupation: "ソフトウェアエンジニア",
		greeting: "こんにちは！僕は",
		description:
			"フルスタックアプリケーションの構築が好きなソフトウェアエンジニアです。空き時間にはサーバをいじったり、新しいテクノロジーを探求したりするのが好きです。",
		location: "クリチバ、ブラジル",
		image: "黒と赤のスカイダイビングキャノピーで乗って飛んでいる私の写真",
		github: "ギットハブ",
		linkedin: "リンケディン",
		resume: "履歴書（英語）",
	},
};

export const defaultLanguage = "en";
