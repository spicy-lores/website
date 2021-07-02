import Link from 'next/link'
export default function Home() {
  return (
    <div>
      <h1>
        Spicy Lores
      </h1>
      <br />
      <Link href="/about" as={process.env.BACKEND_URL + '/about'}>
        <a>About</a>
      </Link>
    </div>
  )
}
