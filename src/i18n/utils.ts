import { defaultLanguage, languages } from "./ui";

export function getLangFromUrl(url: URL) {
	const [, lang] = url.pathname.split("/");
	if (languages.some((l) => l.code === lang)) {
		return lang;
	}
	return defaultLanguage;
}
