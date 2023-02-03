Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3168A06D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 18:35:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1738060AE2;
	Fri,  3 Feb 2023 17:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1738060AE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675445748;
	bh=P+tv5am8xNg1catx3zNh+5VygHQJ/bbKVMMOtMkioy8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TaKjBuJpAnzXRTskZEAQbbaJHMN24rl0q7HwVfst69+SzXsA/HN/psY6gCAYpmfN+
	 4ZtkXM7W7wc1/4pAgw8kgfPwlYwM47/Vuiq8wQ6z3N0IgtckRB4uuN269HlSa53tfE
	 v+Zn7dgnMRHmdB9l83Fa45Z6+zGzMG4EOFQYx+WNEQTqAMvjXcGlvRzlRQn4M4swbU
	 ZhDfvtPabGAT0ldKQW1AN7aLyABBe2oISDLbuLp6zr0r5likgUVUx/oUfuosWoT3om
	 8mAY7GR2XREKKJYs4CWYGfU8v35alftiihTer0yizbz0MX+kECh+dIej3Ey6/kT0A3
	 EubInKC0PyJRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1L9VuJcgZXQ0; Fri,  3 Feb 2023 17:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A3F612F1;
	Fri,  3 Feb 2023 17:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03A3F612F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4531F1BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 17:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DEA94026F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 17:35:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DEA94026F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0D_k6CZYPFQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 17:35:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAC764169E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAC764169E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 17:35:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7DD0661F7F;
 Fri,  3 Feb 2023 17:35:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9B20C433D2;
 Fri,  3 Feb 2023 17:35:38 +0000 (UTC)
Date: Fri, 3 Feb 2023 18:36:44 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Message-ID: <Y91GLP4LCqsGE8kX@localhost.localdomain>
References: <cover.1675245257.git.lorenzo@kernel.org>
 <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
 <CAADnVQLTBSTCr4O2kGWSz3ihOZxpXHz-8TuwbwXe6=7-XhiDkA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAADnVQLTBSTCr4O2kGWSz3ihOZxpXHz-8TuwbwXe6=7-XhiDkA@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675445739;
 bh=ijwHAleeIaclM8f+Bu9zVC1Ch+njpvXpVWr4XsvMWeY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=joyc2iZeOziuFblivFSRgb0FVfrW4Zag8+TDk6F2dFU4XFWv2I9lTux4jLKa2b7uo
 lJh+HXddeot5EN7IQYbfxDUIX8jHaFs6e1S2FjNYzEOnxywY9l1hRgq15Lfyft0v5J
 KDQhZG3bHrFpCkGkm2eAOU1xFU8wR2iK2+0YZ7rC57BlS3YDSNVKIviYBVNbYcjOCF
 ttiwE7inssrWGSWexjCzgVq14l08OXTNGtCyxbYujwlAJJ5CBIdl7kQZcquSHj0d+x
 Xc/Lcru8A0iG9aJE6R8dlRDPPLOqN217LkrWpnG6jRuC//z52JWEMnV75CT2yWHTA8
 WGMjkpl/8rtDw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=joyc2iZe
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 8/8] selftests/bpf:
 introduce XDP compliance test tool
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, vladimir.oltean@nxp.com,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, Stanislav Fomichev <sdf@google.com>,
 gerhard@engleder-embedded.com, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, christophe.jaillet@wanadoo.fr,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, john@phrozen.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Leon Romanovsky <leon@kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, ecree.xilinx@gmail.com,
 Marek Majtyka <alardam@gmail.com>, Andy Gospodarek <gospo@broadcom.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============0394794198176027630=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0394794198176027630==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BGAE9fS73UeimlfR"
Content-Disposition: inline


--BGAE9fS73UeimlfR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Wed, Feb 1, 2023 at 2:25 AM Lorenzo Bianconi <lorenzo@kernel.org> wrot=
e:
> >
> > Introduce xdp_features tool in order to test XDP features supported by
> > the NIC and match them against advertised ones.
> > In order to test supported/advertised XDP features, xdp_features must
> > run on the Device Under Test (DUT) and on a Tester device.
> > xdp_features opens a control TCP channel between DUT and Tester devices
> > to send control commands from Tester to the DUT and a UDP data channel
> > where the Tester sends UDP 'echo' packets and the DUT is expected to
> > reply back with the same packet. DUT installs multiple XDP programs on =
the
> > NIC to test XDP capabilities and reports back to the Tester some XDP st=
ats.
>=20
>=20
> 'DUT installs...'? what? The device installs XDP programs ?

Hi Alexei,

DUT stands for Device Under Test, I was thinking it is quite a common term.
Sorry for that.

>=20
> > +
> > +       ctrl_sockfd =3D accept(*sockfd, (struct sockaddr *)&ctrl_addr, =
&addrlen);
> > +       if (ctrl_sockfd < 0) {
> > +               fprintf(stderr, "Failed to accept connection on DUT soc=
ket\n");
>=20
> Applied, but overuse of the word 'DUT' is incorrect and confusing.
>=20
> 'DUT socket' ? what is that?
> 'Invalid DUT address' ? what address?
> The UX in general is not user friendly.
>=20
> ./xdp_features
> Invalid ifindex
>=20
> This is not a helpful message.
>=20
> ./xdp_features eth0
> Starting DUT on device 3
> Failed to accept connection on DUT socket
>=20
> 'Starting DUT' ? What did it start?

I will post a follow-up patch to clarify them.

Regards,
Lorenzo

--BGAE9fS73UeimlfR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY91GKQAKCRA6cBh0uS2t
rFyeAQDjdxG2+NmNQt0HVAYJOIIXnYZMPQ9cnQgTOE1ivyToggD/TVESetmIn9aL
sGJ7s0tHO7M9dMMlQuiexvyDiUCGJw4=
=MZvV
-----END PGP SIGNATURE-----

--BGAE9fS73UeimlfR--

--===============0394794198176027630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0394794198176027630==--
