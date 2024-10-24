export interface Language {
	code: string;
	name: string;
}

export interface UI {
	name?: string;
	occupation?: string;
	greeting?: string;
	description?: string;
	location?: string;
	image?: string;
	github?: string;
	linkedin?: string;
	resume?: string;
}

export interface UIStrings {
	en: UI;
	pt: UI;
	jp: UI;
}
