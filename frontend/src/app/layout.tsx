/**
 * @since 2023/07/16
 * @author ThinhHV <thinh@thinhhv.com>
 * @description description
 * @copyright (c) 2023 Company Platform
 */

import './globals.css'
import { Analytics } from '@vercel/analytics/react'
import cx from 'classnames'
import { sfPro, urbanist } from './fonts'
import Nav from '@/components/layout/nav'
import Footer from '@/components/layout/footer'
import { Suspense } from 'react'
import { NextAuthProvider } from './providers'
import { getServerSession } from 'next-auth'
import { authOptions } from '@/lib/auth'
import { Toaster } from 'react-hot-toast'

export const metadata = {
  title: 'Travel Voting',
  description: 'A electoral system based blockchain.',
  twitter: {
    card: 'summary_large_image',
    title: 'Travel Voting',
    description: 'A electoral system based blockchain.',
    creator: '@steventey',
  },
  metadataBase: new URL('http://localhost:3000'),
  themeColor: '#FFF',
}

export default async function RootLayout({ children }: { children: React.ReactNode }) {
  const session = await getServerSession(authOptions)

  return (
    <html lang="en">
      <body className={cx(sfPro.variable, urbanist.variable)}>
        <Suspense fallback="...">
          <NextAuthProvider>
            <Toaster />
            <div className="fixed h-screen w-full bg-gradient-to-br from-purple-100 via-white to-blue-100" />
            {/* @ts-expect-error Server Component */}
            <Nav session={session} />
            <main className="flex min-h-screen w-full flex-col items-center justify-center">
              {children}
            </main>
            <Footer />
            <Analytics />
          </NextAuthProvider>
        </Suspense>
        {/* <script src="../path/to/flowbite/dist/flowbite.min.js"></script> */}
      </body>
    </html>
  )
}
