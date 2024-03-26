import headMessages from "../lib/messages/head";

export default function Home() {
	return (
		<main className="flex min-h-screen flex-col items-center justify-center p-24">
			<h1 className="text-5xl font-bold text-stone-800">{headMessages.title}</h1>
			<p className="text-xl font-normal text-stone-600">{headMessages.description}</p>
		</main>
	);
}
