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
      <section className="hero small"><h1>Presentation</h1><p>Generated presentation flow</p></section><section className="grid"><section className="panel"><h2>Story → Structure → Visuals → Proof</h2><p>Website Forge turns raw project intent into a structured public artifact with clear sections, route logic, visual slots and verification evidence.</p></section>
        <section className="panel"><h2>Controlled production, not random page making</h2><p>Every generated page should come from declared input packs, not from accidental copy-paste or invisible decisions.</p></section>
        <section className="panel"><h2>Human-approved website factory</h2><p>The system supports human judgment by packaging structure, consistency and QA into a repeatable flow.</p></section></section><section><h2>Presentation CTAs</h2><div className="grid"><article className="card"><h3>Generate next site</h3><p>Use the forge to turn a controlled content pack into a public artifact.</p></article>
          <article className="card"><h3>Review evidence</h3><p>Open the generated evidence file before committing or deploying.</p></article></div></section>
    </main>
  );
}
