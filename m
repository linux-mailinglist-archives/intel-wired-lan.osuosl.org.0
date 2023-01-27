Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6458A67ECDC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 18:58:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9832F612FF;
	Fri, 27 Jan 2023 17:58:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9832F612FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674842319;
	bh=7R3x1Yb0xFSFP0jXVAGl8cOUAUoXy7Y2iPr2HfZtBmQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WllOVWt1VrTVJvMXrsuJpWc5JZ1ZvjCZYEkRxOYLGALGWXUEMOVmPh0qABooXZ9Op
	 m2Uc3gvhFoJhBWV1tBjqP99dexxTv0ZA9uZSiQ4PeY/Dgb6A2F9NFiMMqf+Gm5HsbZ
	 fYpswgzn6Ra51BKnaBvcOQfKC2gQFlZ0JvWdvLQTVqVYtjWNkVpxY5g8V+XE9YK2yL
	 anhI98VvR4ZjKtvpc5MrvggjuIB7svr2LwaP4cFfgDXJ4MRe3LJMBw9Nxpe1uG+sbl
	 lix8w72fphanpHSS/umSfyMfOFQExO9fCDjagjssyH4RRO6AX3QGlhaD8rMw3E9zYG
	 J+zfFuaV5FHmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qH_MpjO7OVan; Fri, 27 Jan 2023 17:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A01D60B0B;
	Fri, 27 Jan 2023 17:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A01D60B0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F11771BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7BE8408D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7BE8408D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVRXB-Jo6rka for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 295A64053D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 295A64053D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:58:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 145CD61D68;
 Fri, 27 Jan 2023 17:58:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AA23C433D2;
 Fri, 27 Jan 2023 17:58:31 +0000 (UTC)
Date: Fri, 27 Jan 2023 18:58:28 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <Y9QQxMIVd+1chwm3@lore-desk>
References: <cover.1674737592.git.lorenzo@kernel.org>
 <0b05b08d4579b017dd96869d1329cd82801bd803.1674737592.git.lorenzo@kernel.org>
 <Y9LIPaojtpTjYlNu@google.com> <Y9QJQHq8X9HZxoW3@lore-desk>
 <CAKH8qBv9wKzkW8Qk+hDKCmROKem6ajkqhF_KRqdEKWSLL6_HsA@mail.gmail.com>
 <874jsblv9h.fsf@toke.dk>
MIME-Version: 1.0
In-Reply-To: <874jsblv9h.fsf@toke.dk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674842311;
 bh=N+Ds2WLgmVpIO+ReMX/s0l2bz1e2AaUGR7Xqr/UAV/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cvo+RMDb5M1imZ4EUjn/FmCL+dbQyExp9U+EHugl4V3FcZnSJACnF23vXUb6kF/yp
 uFKycAOAGWH/WBQH9UjUen+q1jJGjmCorJIb0PBU1/57Swzm50oiYx94IphJt46n15
 HvjY0VP0KhbJX9Geit2xfTvCLq9QQ/CVaTVj/YfPrKI7HoMsZW+AAJTj2I9tO4jQzc
 Jxnvs292NlPHJ52zv681r+cX+xRzFkvKtO14C4SRanIFz/IA+xr1e7eFbUMidNA3/A
 H0Kf7oW0/IgkTWloqC0iQEpqF0inMYyeF5b5uJIGcQK1wOLVY19hLqm3koGrbT4hLC
 PSgK+WxCl14dw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Cvo+RMDb
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
 edumazet@google.com, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, daniel@iogearbox.net, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============8482855692448002734=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8482855692448002734==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="atQHAAWLKsFpGAis"
Content-Disposition: inline


--atQHAAWLKsFpGAis
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 27, Toke wrote:
> Stanislav Fomichev <sdf@google.com> writes:
>=20
> >> > > +
> >> > > +   ctrl_sockfd =3D accept(sockfd, (struct sockaddr *)&ctrl_addr, =
&len);
> >> > > +   if (ctrl_sockfd < 0) {
> >> > > +           fprintf(stderr, "Failed to accept connection on DUT so=
cket\n");
> >> > > +           close(sockfd);
> >> > > +           return -errno;
> >> > > +   }
> >> > > +
> >>
> >> [...]
> >>
> >> >
> >> > There is also connect_to_fd, maybe we can use that? It should take
> >> > care of the timeouts.. (requires plumbing server_fd, not sure whether
> >> > it's a problem or not)
> >>
> >> please correct me if I am wrong, but in order to have server_fd it is =
mandatory
> >> both tester and DUT are running on the same process, right? Here, I gu=
ess 99% of
> >> the times DUT and tester will run on two separated devices. Agree?
> >
> > Yes, it's targeting more the case where you have a server fd and a
> > bunch of clients in the same process. But I think it's still usable in
> > your case, you're not using fork() anywhere afaict, so even if these
> > are separate devices, connect_to_fd should still work. (unless I'm
> > missing something, haven't looked too closely)
>=20
> Just to add a bit of context here, "separate devices" can refer to the
> hosts as well as the netdevs. I.e., it should also be possible to run
> this in a mode where the client bit runs on a different physical machine
> than the server bit (as it will not be feasible in any case to connect
> things with loopback cables).

yes, this is what I meant with 'DUT and tester will run on two separated
devices' (sorry to have not been so clear). Looking at the code server_fd
is always obtained from start_server(), while here the client on the tester
just knows the IPv4/IPv6 address and the port of the server running on the =
DUT.

Regards,
Lorenzo

>=20
> -Toke
>=20

--atQHAAWLKsFpGAis
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9QQwwAKCRA6cBh0uS2t
rAjaAQDsR6t3WrY32n3NIiX7fqsZbZp73P9DDPn+2OTKiToLfAD/UmUgOjbXpIpG
5TOf4FhHFCV/Eo4xke2f+//CBQTeFwc=
=simG
-----END PGP SIGNATURE-----

--atQHAAWLKsFpGAis--

--===============8482855692448002734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8482855692448002734==--
