import { defaultLanguage, languages, ui } from "./ui";

export function getLangFromUrl(url: URL): string {
	const [, lang] = url.pathname.split("/");
	if (languages.some((l) => l.code === lang)) {
		return lang;
	}
	return defaultLanguage;
}

export function useTranslation(lang: keyof typeof ui) {
	return function t(key: keyof (typeof ui)[typeof lang]) {
		return ui[lang][key] || ui[defaultLanguage][key];
	};
}
