Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8EC67464D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 23:39:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 771A960FE5;
	Thu, 19 Jan 2023 22:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 771A960FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674167984;
	bh=hhDLdFQob7QgSFoY4eoDsz/TyM4Z+hMiElMzq+52yEQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tbhxsuXWL5ZfVWJ1KahWZaN1/l11PJcp89iCumTsTeewLEtE0tbRo4+0vaikVHnzn
	 C0sU1RtkrdshYBxNmPPlwXlvn+h0bswjZuL9mHZiZqqxrGqJ5HArv1Hf0LhV6gZa7+
	 f0AjLN0Ojq0MhxXwMAU+2dny9pa5sHhHntw3xLNd7A1qJIrAKgpDR5jqme1XBtkJTa
	 RKACYhemJ7gSfsaTB9xG4/TUyk4QjweSvdkGOjZB4iW/xnL39d2VNEWg9l5OexlozN
	 zX5beBa1C6msY9TYFwPUP0vdRwYJwIn8OoKfD5NRWYJuSfaK0evBBgGi+x+tHzcFmV
	 03/UqoSIFvzgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MgBkYerCDzF; Thu, 19 Jan 2023 22:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4241D610DB;
	Thu, 19 Jan 2023 22:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4241D610DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 235AD1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 22:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AFB441148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 22:39:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AFB441148
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dTucIOwfeHkC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 22:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA2F741145
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA2F741145
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 22:39:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D65C560CF5;
 Thu, 19 Jan 2023 22:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDDE3C433F0;
 Thu, 19 Jan 2023 22:39:35 +0000 (UTC)
Date: Thu, 19 Jan 2023 23:39:32 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y8nGpFYVbDsKiboP@lore-desk>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <e58d34cd95e39caf0efb25951bc2da9948c6f486.1673710867.git.lorenzo@kernel.org>
 <20230117165804.65118609@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230117165804.65118609@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674167976;
 bh=NzKcg98ug8ID9hmODl/qVZyxg5QFwan7Bs9Ruvccb94=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dke9aIuAzfSxV8RiUl94zdppLCV+86mb+N1+2sWpP/lozDJP2GgYG+BoidFA8wCCf
 SGMPqij1p07iwMKwnbfn0hP74Qm2bFh2cufc7wAe9kPYHwlnxpMdTwEYz7A4ArP9IG
 4vX3tIw5/ZT9i3Ee2EaTOHd3TT8i9oTzZM67JnhxKAxzWCQy1U4DNqN0RVNeRk34dI
 zD0wx3M3nOfJ29aCNn/0/VfolDHAYRUMp6GNPS3FUNsNrAz2HEVbm79Cspp5kj+gBQ
 /kJi39los2sBbbqWl5s1kXKZRYFY679Kpvbd+XvxtKF6RMuuA/lk2fsAk2sVihXx2a
 bvh6f0W2NBFgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dke9aIuA
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 5/7] libbpf: add API to get
 XDP/XSK supported features
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============6817270953480795723=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6817270953480795723==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HT+pcQxuV+Cc6rHk"
Content-Disposition: inline


--HT+pcQxuV+Cc6rHk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Sat, 14 Jan 2023 16:54:35 +0100 Lorenzo Bianconi wrote:
> > +	struct nlattr *na =3D (struct nlattr *)(NLMSG_DATA(nh) + GENL_HDRLEN);
> > +
> > +	na =3D (struct nlattr *)((void *)na + NLA_ALIGN(na->nla_len));
> > +	if (na->nla_type =3D=3D CTRL_ATTR_FAMILY_ID) {
>=20
> Assuming layout of attributes within a message is a hard no-no.

ack, right. I will fix it.

Regards,
Lorenzo

--HT+pcQxuV+Cc6rHk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY8nGpAAKCRA6cBh0uS2t
rNbgAQDOtrvJXuU1X4UMSBzDVuHwhqklptzWOTG5H9GzaRPBUwEAvzDPuVMQqIIu
kukZbbSG8QZez3de/yFhXQPj21YdPgc=
=C2Hp
-----END PGP SIGNATURE-----

--HT+pcQxuV+Cc6rHk--

--===============6817270953480795723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6817270953480795723==--
