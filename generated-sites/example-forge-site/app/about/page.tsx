export default function Page() {
  return (
    <main className="min-h-screen px-6 py-12 md:px-12">
      <section className="mx-auto max-w-5xl rounded-3xl border border-zinc-200 bg-white p-8 shadow-sm">
        <p className="text-sm font-semibold uppercase tracking-[0.25em] text-zinc-500">AndyAI Website Forge</p>
        <h1 className="mt-4 text-4xl font-bold tracking-tight text-zinc-950">About</h1>
        <p className="mt-4 text-lg leading-8 text-zinc-700">Project explanation and human-guided production method.</p>
        <div className="mt-8 rounded-2xl bg-zinc-950 p-6 text-white">
          <p className="text-sm uppercase tracking-[0.25em] text-zinc-400">Generated artifact formula</p>
          <p className="mt-3 text-xl font-semibold">Story → Structure → Visuals → Proof → Deployment → Trust</p>
        </div>
      </section>
    </main>
  );
}
