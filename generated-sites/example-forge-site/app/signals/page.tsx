export default function Page() {
  return (
    <main>
      <nav className="nav">
        <strong>Example Forge Site</strong>
        <div><a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/projects">Projects</a>
        <a href="/signals">Signals</a>
        <a href="/presentation">Presentation</a>
        <a href="/proof">Proof</a>
        <a href="/contact">Contact</a></div>
      </nav>
      <section className="hero small"><h1>Signals</h1><p>Generated signal cards from content pack</p></section><section className="grid"><article className="card"><p className="eyebrow">signal</p><h3>Blueprint before pages</h3><p>A serious website should start from declared identity, story, route structure and proof requirements.</p><span>declared</span></article>
          <article className="card"><p className="eyebrow">signal</p><h3>Verifier before deployment</h3><p>A generated website is not ready until it passes local and artifact-level checks.</p><span>declared</span></article></section>
    </main>
  );
}
