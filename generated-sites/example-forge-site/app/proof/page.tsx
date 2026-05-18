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
      <section className="hero small"><h1>Proof</h1><p>Generated proof and evidence overview</p></section><section className="panel"><h2>Generation Proof</h2><p>This site was generated from blueprint, content pack and route pack inputs, then verified through Website Forge scripts.</p><p>Formula: Blueprint + Content Pack + Route Pack → Website Artifact → Verification → Evidence.</p></section>
    </main>
  );
}
