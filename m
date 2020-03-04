Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EED17976A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Mar 2020 19:02:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58AD385E5E;
	Wed,  4 Mar 2020 18:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGJ57wGZFiui; Wed,  4 Mar 2020 18:02:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AAE186FAD;
	Wed,  4 Mar 2020 18:02:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09F501BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 18:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0473A86DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 18:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jstG5UrsJ0Gk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2020 18:02:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6EF285E5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 18:02:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 10:02:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; 
 d="asc'?scan'208";a="258839716"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by orsmga002.jf.intel.com with ESMTP; 04 Mar 2020 10:02:08 -0800
Message-ID: <32fd09495d86bb2800def5b19e782a6a91a74ed9.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: David Laight <David.Laight@ACULAB.COM>, Network Development
 <netdev@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Date: Wed, 04 Mar 2020 10:02:08 -0800
In-Reply-To: <9e23756531794a5e8b3d7aa6e0a6e8b6@AcuMS.aculab.com>
References: <9e23756531794a5e8b3d7aa6e0a6e8b6@AcuMS.aculab.com>
Organization: Intel
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 0/1] e1000e: Stop tx/rx setup
 spinning for upwards of 300us.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Reply-To: jeffrey.t.kirsher@intel.com
Content-Type: multipart/mixed; boundary="===============4550667604080836369=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4550667604080836369==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-SOUGyleGvx1lDQS9nLQ8"


--=-SOUGyleGvx1lDQS9nLQ8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-03-03 at 17:05 +0000, David Laight wrote:
> commit bdc125f73f3c810754e858b942d54faf4ba6bffe
>=20
> > Author: Bruce Allan <bruce.w.allan@intel.com>
> > Date:   Tue Mar 20 03:47:52 2012 +0000
> >=20
> >     e1000e: 82579 potential system hang on stress when ME enabled
> >=20
> >     Previously, a workaround was added to address a hardware bug in
> > the
> >     PCIm2PCI arbiter where a write by the driver of the
> > Transmit/Receive
> >     Descriptor Tail register could happen concurrently with a write
> > of any
> >     MAC CSR register by the Manageability Engine (ME) which could
> > cause the
> >     Tail register to have an incorrect value.  The arbiter is
> > supposed to
> >     prevent the concurrent writes but there is a bug that can cause
> > the Host
> >     (driver) access to be acknowledged later than it should.
> >     After further investigation, it was discovered that a driver
> > write access
> >     of any MAC CSR register after being idle for some time can be
> > lost when
> >     ME is accessing a MAC CSR register.  When this happens, no
> > further target
> >     access is claimed by the MAC which could hang the system.
> >     The workaround to check bit 24 in the FWSM register (set only
> > when ME is
> >     accessing a MAC CSR register) and delay for a limited amount of
> > time until
> >     it is cleared is now done for all driver writes of MAC CSR
> > registers on
> >     82579 with ME enabled.  In the rare case when the driver is
> > writing the
> >     Tail register and ME is accessing any MAC CSR register for a
> > duration
> >     longer than the maximum delay, write the register and verify it
> > has the
> >     correct value before continuing, otherwise reset the device.
> >=20
> >     This patch also moves some pre-existing macros from the
> > hardware-specific
> >     header file to the more appropriate generic driver header file.
> >=20
> >     Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> >     Tested-by: Jeff Pieper <jeffrey.e.pieper@intel.com>
> >     Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
>=20

Adding the intel-wired-lan@lists.osuosl.org mailing list, so that the
developers you want feedback from will actually see your
patches/questions/comments.

> added some excessive spinning delays to the e1000e driver code.
> Loosely the changed code does:
>         while (readl(...) & E1000_ICH_FWSM_PCIM2PCI)
>                 udelay(50);
>         writel(...);
> when updating a lot of hardware registers including:
> - The transmit ring tail index on every transmit.
> - The receive ring tail index when adding rx buffers.
> - The interrupt mask at the end of the netdev 'poll' callback.
> Even with udelay(1) it typically takes 200us for the bit to clear.
> The longest I've seen is just over 300us.
>=20
> The situation for the transmit ring is even worse.
> If multiple processes are sending frames concurrently (on different
> sockets)
> then one of the processes can loop sending all the packets.
> This can mean there are multple 200us spins in one process.
> (netdev_xmit_more() doesn't help much - it is only set in the inner
> loop).
>=20
> The whole thing can add 1ms (or more) to the time spent sending a
> message.
>=20
> Rather than spin until E1000_ICH_FWSM_PCIM2PCI is clear, this patch
> remembers that a ring tail pointer write is needed and writes it
> at a later point, either:
> - On the next update to the relevant ring.
> - In the netdev 'poll' callback (typicall packet receive)
> - On the next clock tick.
>=20
> This removes most of the long delays, however there is still a
> potential delay
> when interrupts are enabled at the end of the 'poll' callback.
> A big problem with the existing code (and my patch) is that
> E1000_ICH_FWSM_PCIM2PCI
> could be set between the test and the writel().
> This could even happen if interrupts are disabled - which they are
> not.
> I'm fairly sure the NETRX softint code can run in the middle of the
> transmit setup.
>=20
> I actually wonder if this is anything like the correct fix to the
> original
> problem.
>=20
> The commit message says:
> >     After further investigation, it was discovered that a driver
> > write access
> >     of any MAC CSR register after being idle for some time can be
> > lost when
> >     ME is accessing a MAC CSR register.
>=20
> If the write is 'lost' (rather than corrupted) then it would be much
> better
> to do a readback test and rewrite if incorrect.
> If writes are only 'sometimes lost' this would almost never trigger
> and
> never take very long to recover from.
>=20
> But I'm not at all sure what this means:
> >     When this happens, no further target access is claimed by the
> > MAC which
> >     could hang the system.
> If it just means that they found that interrupts weren't always re-
> enabled
> causing both receive and transmit to stop.
> Not what I'd call 'hang the system'.
>=20
> Now a readback of the ring tail pointers isn't an issue.
> But the interrupt mask is self-clearing so may get bits cleared
> between
> the write and any readback.
> The extra interrupts may not matter.
> OTOH if there is an extra bit (an interrupt that can't happen) that
> can be
> inverted each write it could be used to detect whether the write was
> lost.
>=20
> 	David
>=20
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
> MK1 1PT, UK
> Registration No: 1397386 (Wales)
>=20


--=-SOUGyleGvx1lDQS9nLQ8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5f7SAACgkQ5W/vlVpL
7c6B8A//X8XO7gbl7SfiaRrBOHAA28BknQxZ9+wVmjLUK2crpIdHcutb6VPYmHVP
9pCjaocirkrPYstpDMws8VUC2XcBP7dje1zqGQWUAasuJcjjE7FGcGsbmyUiyUb1
xcvUPBAdg533mOo7eBiEkpEOn9BwMRd0J6t2WM5j1TSIQppwYNIwMjtm5TxB9W72
oNMt4wz1r3uZMW8q6xdxPcIDLMG2iGvwLCnVnmwUPSLhShlcvLwxXk8L1IVF4Uzf
8MenaejV+OxMCqHYnywRGq1q9xknpWuFxC4ZwcYCoeXpOQ1LusfVYEclfASJUUA+
C7Lc22YE6xE/NxpvlkECnl9J89abnXbhiB8RLPq3OpsJkjIHoRFJnWTD4pZ0pvr+
3WV3+ufapnedVu8oWOz/XLvWT340ERozfRC8wXFUHi7nYJf33HoHaj8wrK6WOUzP
xagm4LLDKZBWHzXleTTqiVklKUdoMo3IKRTm6s7bTzdTlFDLIe9qPABhXWKaB8r2
sEjwwgVHZ5XZ3tAmckeNgZjfjMGfvJ9KR4UZLYLLLWstqJdVeJNwUKZO8EilaBtw
K9Z4g/ybUKOHsnYlA9QQyTuSpr+pL9RTt+noHeqC9ynsRAhCsddSgkUbWKWCTGLo
QjgQtp9npSnt5wjZOOLsujeD+TGaVH9WhnKKJ8drOE1NByHDa5M=
=OIL0
-----END PGP SIGNATURE-----

--=-SOUGyleGvx1lDQS9nLQ8--


--===============4550667604080836369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4550667604080836369==--

