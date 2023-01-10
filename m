Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC5E664766
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jan 2023 18:27:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E673416A5;
	Tue, 10 Jan 2023 17:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E673416A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673371621;
	bh=A268/MvLC3WA1ZIokYg1l96FzG4xofIHPZ90CTTQqL0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E4EQtECJKTagDunTMkXeVROtQe2+YELi1XqRSAeIaTWtC0NOmUtcdzPt5+TsmgNU5
	 gSmVYfNIFREmOnRmQY5ggP+tOUYeaLQ1PQ1cTIrlJacjSdYcfvrYFL1dURVofEKFv8
	 99hnqkvsr7E8/4eRjCeConKGKcFOsyAVUOfC/QlxFx8pyXiTiYeDzYC+plpBLhnDfK
	 x9Vct2hORDdz17fUCMaCklC79FFaEqKwGZWp+9Erwh7zzn+12PJQ2rZ4NlvteImdHy
	 65Wa8sMvnfXi/WTs+8nQo7445lwtGl6HBqPDhsOoCwJW0jI1hnkc/73KH5txwBB/F+
	 252AFThhWuHzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnKaUaL-CXHr; Tue, 10 Jan 2023 17:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A781140544;
	Tue, 10 Jan 2023 17:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A781140544
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1B2B1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 17:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8888081E8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 17:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8888081E8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W9YGuc7AVjWN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jan 2023 17:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D25981E8B
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D25981E8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 17:26:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 72B77B818EB;
 Tue, 10 Jan 2023 17:26:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE3FC433EF;
 Tue, 10 Jan 2023 17:26:48 +0000 (UTC)
Date: Tue, 10 Jan 2023 18:26:45 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Message-ID: <Y72f1U2/dw8jo0/0@lore-desk>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
 <CAEf4BzbOF-S3kjbNVXCZR-K=TGarfi06ZwG1cbNF=HSSodwEfg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEf4BzbOF-S3kjbNVXCZR-K=TGarfi06ZwG1cbNF=HSSodwEfg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673371609;
 bh=qIMUHEEcxEFfEbsuapq6m8UyQ8u7bBrd1f5qfus81vM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dWyQOYB751j90pvk6Be/N7sAgq8S/NdKvGo/Pq2IDrJqjFRcd8WnRYiAeB2CbdIBX
 PITITR+KfDlhRYo5Nw1srNwDh74Pt76tjHudW8N7HIOqk/VPc0ZAT45XHOhshPmt8j
 dJnDfjxZMtytRAdM7/kfzrtTBzDZUd/Hhx+Ohg8/hW4StQBgh3uqYFG908DIEFDJSy
 3+MHv9rINr7sNPbZtzjWZgw6IjGRy+L5rmq5qmdEPtXjVLoBrzkQhauov1Y3jRkTNd
 PQxX3XiUUF5rV2bJDbRzwLyYtV/S6IB7p2sTL85OTn4Qcvff22DYtsq9gw2oSON908
 8Vrts9C9Ma5IQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dWyQOYB7
Subject: Re: [Intel-wired-lan] [RFC bpf-next 6/8] libbpf: add API to get
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
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============1375928884433435590=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============1375928884433435590==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aGzNKNmdiT3FYYot"
Content-Disposition: inline


--aGzNKNmdiT3FYYot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon, Dec 19, 2022 at 7:42 AM Lorenzo Bianconi <lorenzo@kernel.org> wro=
te:
> >
> > From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> >
> > Add functions to get XDP/XSK supported function of netdev over route
> > netlink interface. These functions provide functionalities that are
> > going to be used in upcoming change.
> >
> > The newly added bpf_xdp_query_features takes a fflags_cnt parameter,
> > which denotes the number of elements in the output fflags array. This
> > must be at least 1 and maybe greater than XDP_FEATURES_WORDS. The
> > function only writes to words which is min of fflags_cnt and
> > XDP_FEATURES_WORDS.
> >
> > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Co-developed-by: Marek Majtyka <alardam@gmail.com>
> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > ---
> >  tools/lib/bpf/libbpf.h   |  1 +
> >  tools/lib/bpf/libbpf.map |  1 +
> >  tools/lib/bpf/netlink.c  | 62 ++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 64 insertions(+)
> >
> > diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
> > index eee883f007f9..9d102eb5007e 100644
> > --- a/tools/lib/bpf/libbpf.h
> > +++ b/tools/lib/bpf/libbpf.h
> > @@ -967,6 +967,7 @@ LIBBPF_API int bpf_xdp_detach(int ifindex, __u32 fl=
ags,
> >                               const struct bpf_xdp_attach_opts *opts);
> >  LIBBPF_API int bpf_xdp_query(int ifindex, int flags, struct bpf_xdp_qu=
ery_opts *opts);
> >  LIBBPF_API int bpf_xdp_query_id(int ifindex, int flags, __u32 *prog_id=
);
> > +LIBBPF_API int bpf_xdp_query_features(int ifindex, __u32 *fflags, __u3=
2 *fflags_cnt);
>=20
> no need to add new API, just extend bpf_xdp_query()?

Hi Andrii,

AFAIK libbpf supports just NETLINK_ROUTE protocol. In order to connect with=
 the
genl family code shared by Jakub we need to add NETLINK_GENERIC protocol su=
pport
to libbf. Is it ok to introduce a libmnl or libnl dependency in libbpf or d=
o you
prefer to add open code to just what we need?
I guess we should have a dedicated API to dump xdp features in this case si=
nce
all the other code relies on NETLINK_ROUTE protocol. What do you think?

Regards,
Lorenzo

>=20
> >
> >  /* TC related API */
> >  enum bpf_tc_attach_point {
> > diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
> > index 71bf5691a689..9c2abb58fa4b 100644
> > --- a/tools/lib/bpf/libbpf.map
> > +++ b/tools/lib/bpf/libbpf.map
> > @@ -362,6 +362,7 @@ LIBBPF_1.0.0 {
> >                 bpf_program__set_autoattach;
> >                 btf__add_enum64;
> >                 btf__add_enum64_value;
> > +               bpf_xdp_query_features;
> >                 libbpf_bpf_attach_type_str;
> >                 libbpf_bpf_link_type_str;
> >                 libbpf_bpf_map_type_str;
>=20
> [...]

--aGzNKNmdiT3FYYot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY72f1QAKCRA6cBh0uS2t
rGtIAQD9CU+tItECNI3dIRiliqYGAXnkOOl6g7JU3GkonqJsxAD9EbSrhAp9DY7o
++BFm5/bt/xOJUm02tX2yaQq43S72gQ=
=/rJB
-----END PGP SIGNATURE-----

--aGzNKNmdiT3FYYot--

--===============1375928884433435590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1375928884433435590==--
