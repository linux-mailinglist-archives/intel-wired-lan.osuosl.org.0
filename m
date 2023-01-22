Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55C967731F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 00:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D61F40545;
	Sun, 22 Jan 2023 23:00:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D61F40545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674428436;
	bh=mVLvnzX2MCa5IeMQbXZqULCqSthBxz0ePEES8NfoMBY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s8X8gwirO12zAAAzLHJTAVJef1hdVdnilOy5bI8XJER0pt/tHiMUR5AI6SkyFIKeh
	 +rAm8DMJe4mwDpJyQ7rNSnOuZwQ3VuyngfadUyhthOU6sVSvIiblgrS42OxhecURSh
	 kIzlgbvi/N3CqeJfvy3lgBMHa2yUc2+cCbnq+VBZzXYL+ngwNX8e5je9qDZsymEg4H
	 cAb+v2deyqxWKjhFUNTlfXO72J7XfM0D3HRAO63ucude3o4YWxik48GqKK3olfCQV8
	 cFEJBuCxQROfcwbNWj8GrJH1VdfWRdA+xMmRrfH5WKWrf3g8IEDJzsCcByOREf6UHF
	 +GUIGYhhd3GdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-c6OIJB7D88; Sun, 22 Jan 2023 23:00:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E2F7404AB;
	Sun, 22 Jan 2023 23:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E2F7404AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6BB1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 23:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 395CF60BB2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 23:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 395CF60BB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9A-6fTz0jOuk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Jan 2023 23:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B67F660A99
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B67F660A99
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Jan 2023 23:00:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5409960C92;
 Sun, 22 Jan 2023 23:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D740C433D2;
 Sun, 22 Jan 2023 23:00:23 +0000 (UTC)
Date: Sun, 22 Jan 2023 18:45:56 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Message-ID: <Y812VL/IJ5fjrDqI@lore-desk>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
 <CAADnVQLHsV2Y-UiDkEnhwnfvgRxGN4OY8mwi_p-a01WUTdDBNw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAADnVQLHsV2Y-UiDkEnhwnfvgRxGN4OY8mwi_p-a01WUTdDBNw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674428423;
 bh=uUTTKSl1nNDXWYdwLpdwmCAKDhgMF5jWMT+kNzvGmBU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J9n6ZPcCE7LMUifswqqagkI5taZpNjcsdxbFCMsbw4XO8ML5XDkrJ+DDueR4fidEN
 m76zqLzFvYY0QYLgkM8LM57myy66VkbdzZID7/fUEflBjEE8+E6so6dElqvIA//aHB
 QWPmVPsgLZ02+v5+2hi/wDYXeztv8vtHCr1t6/en8G/ZaZZImWaD+4Za4W7TGhxqlp
 qOSe99EL6/COC7JyoSXyjPfMRm+n43t3lo+TsOIOJQhNy3CDISGPXqUwot9ufQnFtV
 BNFAP4cwrs9xcjNRUWQrn2/QVSKgzfsJQNTLD9MNb0LavDCkwUhy4z9vaO7YVljat0
 rDkjhzseHAIFQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=J9n6ZPcC
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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
 anthony.l.nguyen@intel.com, Daniel Borkmann <daniel@iogearbox.net>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@corigine.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@corigine.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, christophe.jaillet@wanadoo.fr,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, john@phrozen.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>, leon@kernel.org,
 Network Development <netdev@vger.kernel.org>,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 ecree.xilinx@gmail.com, Marek Majtyka <alardam@gmail.com>,
 Andy Gospodarek <gospo@broadcom.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============2521447876997128438=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2521447876997128438==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JG/nnC/faKMKtE/K"
Content-Disposition: inline


--JG/nnC/faKMKtE/K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 20, Alexei Starovoitov wrote:
> On Fri, Jan 20, 2023 at 9:17 AM Lorenzo Bianconi <lorenzo@kernel.org> wro=
te:
> > +
> > +#define NETDEV_XDP_ACT_BASIC           (NETDEV_XDP_ACT_DROP |  \
> > +                                        NETDEV_XDP_ACT_PASS |  \
> > +                                        NETDEV_XDP_ACT_TX |    \
> > +                                        NETDEV_XDP_ACT_ABORTED)
>=20
> Why split it into 4?
> Is there a driver that does a subset?

nope, at least all drivers support NETDEV_XDP_ACT_BASIC. I guess we can squ=
ash
them and just add  NETDEV_XDP_ACT_BASIC.

Regards,
Lorenzo

--JG/nnC/faKMKtE/K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY812VAAKCRA6cBh0uS2t
rPuwAP4i5puJyPSRIVKHOHLlPm0UaUEMqwzRZgndVwm2OXUAiQEAo1TMBEHHjutT
scfxZ8+YzP8HXj5bjef2m6Sb7jPt7w0=
=XpP9
-----END PGP SIGNATURE-----

--JG/nnC/faKMKtE/K--

--===============2521447876997128438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2521447876997128438==--
