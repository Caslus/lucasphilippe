import type { Language, UIStrings } from "../interfaces/i18n";

export const languages: Language[] = [
	{
		code: "en",
		name: "English",
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
		description: "I enjoy solving my own problems with software. Most of my side projects start with \"there has to be a better way to do this,\" and occasionally end with me spending way too much time automating a 15-minute task.",
		location: "Curitiba, Brazil",
		image: "An image of me flying a black and red skydive canopy",
		github: "GitHub",
		linkedin: "LinkedIn",
		resume: "Resume",
		resumeFile: "resume.pdf",
	},
	jp: {
		name: "フィリップ・ルカス",
		occupation: "ソフトウェアエンジニア",
		greeting: "こんにちは！私は",
		description:
			"ソフトウェアで身の回りの問題を解決するのが好きです。個人プロジェクトのほとんどは「もっといい方法があるはず」と思うところから始まり、気づけば15分で終わる作業の自動化に何時間も費やしていたりします。",
		location: "クリチバ、ブラジル",
		image: "黒と赤のスカイダイビングキャノピーで乗って飛んでいる私の写真",
		github: "ギットハブ",
		linkedin: "リンケディン",
		resume: "履歴書（英語）",
	},
};

export const defaultLanguage = "en";
