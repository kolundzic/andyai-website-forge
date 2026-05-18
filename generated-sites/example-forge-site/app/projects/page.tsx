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
      <section className="hero small"><h1>Projects</h1><p>Generated project cards from content pack</p></section><section className="grid"><article className="card"><p className="eyebrow">project</p><h3>Website Forge Generator</h3><p>A controlled generator for creating public website scaffolds from verified packs.</p><span>PACK3 expansion</span></article>
          <article className="card"><p className="eyebrow">project</p><h3>AndyAI Main Site Pattern</h3><p>The proven public website pattern that inspired the forge methodology.</p><span>reference pattern</span></article></section>
    </main>
  );
}
