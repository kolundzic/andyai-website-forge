import "./globals.css";

export const metadata = {
  title: "Example Forge Site",
  description: "A generated public website scaffold produced by AndyAI Website Forge.",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
