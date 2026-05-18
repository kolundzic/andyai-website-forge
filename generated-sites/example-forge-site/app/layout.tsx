import './globals.css';

export const metadata = {
  title: `Example Forge Site`,
  description: `A public website generated through AndyAI Website Forge.`
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
