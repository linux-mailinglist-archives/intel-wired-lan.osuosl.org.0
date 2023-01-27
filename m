Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A304F67EC67
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 18:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFE8483096;
	Fri, 27 Jan 2023 17:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFE8483096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674840420;
	bh=vNStFrANNPKwRQ9Ih1LjqF/alZYPmY34mixZq8f6ROY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FelyF9G99ShQhkEdGimGqIm+KATlH0YguKevXyjAbB2hq1xxUW1bIyMc0/B9x+/N1
	 0sIykOU7HcO2g8r8At4xXHoXwPBPQtts+Vy3UpcYuz6KyU7t7khIQ54FnStjM5Lwoo
	 85ihela66oX4kltT1R1sVSRgBDaKAA0Kianuhn1sP4GtuO59B9Hmkb7hvTaQSHj7qg
	 Zi+fzYyJ2GDTitzzso0uxexjZzNNwaFbIizva6ObI5zPYhYvJJy1HbtCWea4P3cR47
	 3E50/32Hc20iHUL+LbuexfeZePCX0qkVEOr69TWLTKNmzmslphthzZ5X9HY9/AE4Py
	 37kDdHABQUTdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRYK6q9B9r9k; Fri, 27 Jan 2023 17:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB4EB8308B;
	Fri, 27 Jan 2023 17:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB4EB8308B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42FB81BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ADCB40BE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ADCB40BE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfOd_4hVqb10 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56CF940562
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56CF940562
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:26:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 95FE861D04;
 Fri, 27 Jan 2023 17:26:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48FC4C433EF;
 Fri, 27 Jan 2023 17:26:52 +0000 (UTC)
Date: Fri, 27 Jan 2023 18:26:49 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Martin KaFai Lau <martin.lau@linux.dev>
Message-ID: <Y9QJWQvGKbSPK676@lore-desk>
References: <cover.1674737592.git.lorenzo@kernel.org>
 <0b05b08d4579b017dd96869d1329cd82801bd803.1674737592.git.lorenzo@kernel.org>
 <Y9LIPaojtpTjYlNu@google.com>
 <a208ed96-20e5-43d3-13e9-122776230da1@linux.dev>
MIME-Version: 1.0
In-Reply-To: <a208ed96-20e5-43d3-13e9-122776230da1@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674840412;
 bh=gYHGzcwIWB6r9pYDG7+Doxt3/yZ9rRNntWchRcQmgpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oH6NEamFnW04HpSJVChCO/sGKY2pAoO3wq1Rs31n6rlC6KKfZwS5YzGXGn8kAn7Qf
 8zEWOuGItp1ahLB4QLctQe1jwG6/XV1TftlxzFThFn3ealcDMCv2z9uVcXn2U2fGq5
 NhIX5e2pOli3RT6DeJE8NSNAKk7zTa9wM78dRvQ9nAtvZw6FwD5Sx5ngD4iMCgO24f
 TOwJQy0IJGTGMZHAsT+46ms3N46W9JeORQDBMreWt0OHpufYnZjrKGykLUjbwWJXv2
 fadEXch1JkwIdiDIxki8U59ZltVHGGoHCG5WvFIfT8ApLyLl6KngApNJx5oDSqxg6Y
 C4HCLYTRkCz8w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oH6NEamF
Subject: Re: [Intel-wired-lan] [PATCH v3 bpf-next 8/8] selftests/bpf:
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============6278673534874831577=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6278673534874831577==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KiRMcXiEPgyYvHA4"
Content-Disposition: inline


--KiRMcXiEPgyYvHA4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 1/26/23 10:36 AM, sdf@google.com wrote:
> >=20
> > > +=A0=A0=A0 sockfd =3D socket(AF_INET, SOCK_DGRAM, 0);
> > > +=A0=A0=A0 if (sockfd < 0) {
> > > +=A0=A0=A0=A0=A0=A0=A0 fprintf(stderr, "Failed to create echo socket\=
n");
> > > +=A0=A0=A0=A0=A0=A0=A0 return -errno;
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 err =3D setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &optv=
al,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sizeof(optval));
> > > +=A0=A0=A0 if (err < 0) {
> > > +=A0=A0=A0=A0=A0=A0=A0 fprintf(stderr, "Failed sockopt on echo socket=
\n");
> > > +=A0=A0=A0=A0=A0=A0=A0 return -errno;
> > > +=A0=A0=A0 }
> > > +
> > > +=A0=A0=A0 err =3D bind(sockfd, (struct sockaddr *)&addr, sizeof(addr=
));
> > > +=A0=A0=A0 if (err) {
> > > +=A0=A0=A0=A0=A0=A0=A0 fprintf(stderr, "Failed to bind echo socket\n"=
);
> > > +=A0=A0=A0=A0=A0=A0=A0 return -errno;
> > > +=A0=A0=A0 }
> >=20
> > IIRC, Martin mentioned IPv6 support in the previous version. Should we
> > also make the userspace v6 aware by at least using AF_INET6 dualstack
> > sockets? I feel like listening on inaddr_any with AF_INET6 should
> > get us there without too much pain..
>=20
> Yeah. Think about host that only has IPv6 address. A tool not supporting
> IPv6 is a no-go nowadays.

ack, I will add it in v4.

Regards,
Lorenzo

--KiRMcXiEPgyYvHA4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9QJWQAKCRA6cBh0uS2t
rFw9AP9ousu//jWlNMITDvqrt7FJNIylXsgBvlR5WsQRpFpt6QD+PzACals6ZKT5
bOI6PXbXDrYTXIE9UV/wk/5H+bUbIwE=
=P+rQ
-----END PGP SIGNATURE-----

--KiRMcXiEPgyYvHA4--

--===============6278673534874831577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6278673534874831577==--
