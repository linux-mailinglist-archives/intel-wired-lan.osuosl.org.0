Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D82D66AC1F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 16:33:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1B2640591;
	Sat, 14 Jan 2023 15:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1B2640591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673710407;
	bh=fixJEYQvD/2yuVwuAmIYWLy318cQgQYiYCTMGjr7tic=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MiCjoo2eN+RJqQmA62wNu/IjAChFqVgY5DMrF6z+NPRrVCkYTyGQICzUa2k38udgb
	 aMO13/8z8swRi3/hpkowPVS000bHZCw2mfXSfpgWgjKUet2oxdjcW06WVn0fYnzx5C
	 g0mDYyRViCiqEg0vyth83sR1ID/nxR+qw7gkwGZMov70D5NcaHrvO+B0BRXU0q2ar+
	 hfG99tX0UqOsF/4dkqhUIYcyy8g04Bl1e/SXeZASSB2Z1gNxKUcY+SXbYiuaYlphxk
	 6bPrBsDIYBgZf9kTpO7MaoNgpGiLKmiStxz+92XL3lZKJLv6nHFyrSxeIq4LT22tdY
	 d7/r+WqQR+fqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUepSXxX4ZGk; Sat, 14 Jan 2023 15:33:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ECF4402C5;
	Sat, 14 Jan 2023 15:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ECF4402C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6A31BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 64DA640576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64DA640576
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWcgfRqgNIlK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 15:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F303B4038D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F303B4038D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:33:19 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-192-j0PCv006P9eXQHerGVfopg-1; Sat, 14 Jan 2023 10:33:16 -0500
X-MC-Unique: j0PCv006P9eXQHerGVfopg-1
Received: by mail-wm1-f71.google.com with SMTP id
 l31-20020a05600c1d1f00b003da8b330db2so440647wms.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 07:33:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rocdlOE7cHWC1zE1mEMZfdO9OdSReGB8PfyH9d+AaeU=;
 b=2HeMq5QoSBYM0ckUdUwbTMCG1P6U8+CrPWxMoR05Unry7QArHtEGQC2VEIIe0Dnxgc
 9+3KmDQPx5QpWzpshTdal5wWwy0uscRp0vFprRQvwBQxhP7H2Z9fbC/TvdczAWEF5rUH
 Y5ymprwIats8K+qhCpV5nZzr1CE0gREZw47HiMU8PxAb+ragwfoQp5YjeLSxKrPXoxeA
 QqO6w1lNLah8nwRj5G7yJqtx95yDwAH3PHuEN+hG41mcSizIKDcStDJfwyAL0879Wzpq
 FL6aCV0vjdJOWXNxt5LBxO9kcT+9bFz2CJwdgaZ0GT4mY9vybDn2Lpst5leJ5biw7FIR
 wjpw==
X-Gm-Message-State: AFqh2ko6eskjyQfCtxDYmKQNstTW/bZLDYGEsqdBvAL7bvnJcu7pw0MQ
 Z0xTpeLmCQDOm+6aRQonT06s011t/jxP4ZhgQjRsYjoex0fUIhZU323tgFFnd653Q/I5hJrapn+
 OsxU6rjM8q+JUJ2VrjB6CoimqDnZaZA==
X-Received: by 2002:a05:600c:331d:b0:3d6:ecc4:6279 with SMTP id
 q29-20020a05600c331d00b003d6ecc46279mr2876540wmp.27.1673710395576; 
 Sat, 14 Jan 2023 07:33:15 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvW1I48o8cgiyW4Lk1zD/zOvGZMEH2HKEq45sGbIyCQoT2K7GCZqzn0n1PQCFPsX8CzChG+pA==
X-Received: by 2002:a05:600c:331d:b0:3d6:ecc4:6279 with SMTP id
 q29-20020a05600c331d00b003d6ecc46279mr2876501wmp.27.1673710395255; 
 Sat, 14 Jan 2023 07:33:15 -0800 (PST)
Received: from localhost (net-188-216-77-84.cust.vodafonedsl.it.
 [188.216.77.84]) by smtp.gmail.com with ESMTPSA id
 i8-20020a1c5408000000b003da065105c9sm12488884wmb.40.2023.01.14.07.33.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Jan 2023 07:33:14 -0800 (PST)
Date: Sat, 14 Jan 2023 16:33:11 +0100
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Message-ID: <Y8LLN5qiTDlLNQcK@lore-desk>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
 <CAEf4BzbOF-S3kjbNVXCZR-K=TGarfi06ZwG1cbNF=HSSodwEfg@mail.gmail.com>
 <Y72f1U2/dw8jo0/0@lore-desk>
 <CAEf4BzawqXs6q18U8e5GD5d+9v1_w2+QOJYqmEpNb9rZ40E1Tw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEf4BzawqXs6q18U8e5GD5d+9v1_w2+QOJYqmEpNb9rZ40E1Tw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673710398;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rocdlOE7cHWC1zE1mEMZfdO9OdSReGB8PfyH9d+AaeU=;
 b=WEHyMsI/Ot0/h32F/IgPOhM3e5eO08uQfsNOu4JXGddM4kFD3niDO4pBAkRFuIHR0zBsUp
 HfxCCH7kFDi7JkBSid7h8SL+OO0ISF57IBR2vz2GGFlz1Q+BLBB/12A8qIH8p0HfGXv0DE
 /uaVD8SHgVOhVlbbE7e0T1mc51ZQerU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WEHyMsI/
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
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 grygorii.strashko@ti.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============0261658562618289000=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0261658562618289000==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n89kErnvPkHUjfpP"
Content-Disposition: inline


--n89kErnvPkHUjfpP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Tue, Jan 10, 2023 at 9:26 AM Lorenzo Bianconi <lorenzo@kernel.org> wro=
te:
> >
> > > On Mon, Dec 19, 2022 at 7:42 AM Lorenzo Bianconi <lorenzo@kernel.org>=
 wrote:
> > > >
> > > > From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > >
> > > > Add functions to get XDP/XSK supported function of netdev over route
> > > > netlink interface. These functions provide functionalities that are
> > > > going to be used in upcoming change.
> > > >
> > > > The newly added bpf_xdp_query_features takes a fflags_cnt parameter,
> > > > which denotes the number of elements in the output fflags array. Th=
is
> > > > must be at least 1 and maybe greater than XDP_FEATURES_WORDS. The
> > > > function only writes to words which is min of fflags_cnt and
> > > > XDP_FEATURES_WORDS.
> > > >
> > > > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > Co-developed-by: Marek Majtyka <alardam@gmail.com>
> > > > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > > > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > ---
> > > >  tools/lib/bpf/libbpf.h   |  1 +
> > > >  tools/lib/bpf/libbpf.map |  1 +
> > > >  tools/lib/bpf/netlink.c  | 62 ++++++++++++++++++++++++++++++++++++=
++++
> > > >  3 files changed, 64 insertions(+)
> > > >
> > > > diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
> > > > index eee883f007f9..9d102eb5007e 100644
> > > > --- a/tools/lib/bpf/libbpf.h
> > > > +++ b/tools/lib/bpf/libbpf.h
> > > > @@ -967,6 +967,7 @@ LIBBPF_API int bpf_xdp_detach(int ifindex, __u3=
2 flags,
> > > >                               const struct bpf_xdp_attach_opts *opt=
s);
> > > >  LIBBPF_API int bpf_xdp_query(int ifindex, int flags, struct bpf_xd=
p_query_opts *opts);
> > > >  LIBBPF_API int bpf_xdp_query_id(int ifindex, int flags, __u32 *pro=
g_id);
> > > > +LIBBPF_API int bpf_xdp_query_features(int ifindex, __u32 *fflags, =
__u32 *fflags_cnt);
> > >
> > > no need to add new API, just extend bpf_xdp_query()?
> >
> > Hi Andrii,
> >
> > AFAIK libbpf supports just NETLINK_ROUTE protocol. In order to connect =
with the
> > genl family code shared by Jakub we need to add NETLINK_GENERIC protoco=
l support
> > to libbf. Is it ok to introduce a libmnl or libnl dependency in libbpf =
or do you
> > prefer to add open code to just what we need?
>=20
> I'd very much like to avoid any extra dependencies. But I also have no
> clue how much new code we are talking about, tbh. Either way, the less
> dependencies, the better, if the result is an acceptable amount of
> extra code to maintain.

ack, I avoided to introduce an extra dependencies since most of the protocol
is already implemented in libbpf and I added just few code.

>=20
> > I guess we should have a dedicated API to dump xdp features in this cas=
e since
> > all the other code relies on NETLINK_ROUTE protocol. What do you think?
> >
>=20
> From API standpoint it looks like an extension to bpf_xdp_query()
> family of APIs, which is already extendable through opts. Which is why
> I suggested that there is no need for new API. NETLINK_ROUTE vs
> NETLINK_GENERIC seems like an internal implementation detail (but
> again, I spent literally zero time trying to understand what's going
> on here).

ack, I extended bpf_xdp_query routine instead of adding a new API.

Regards,
Lorenzo

>=20
> > Regards,
> > Lorenzo
> >
> > >
> > > >
> > > >  /* TC related API */
> > > >  enum bpf_tc_attach_point {
> > > > diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
> > > > index 71bf5691a689..9c2abb58fa4b 100644
> > > > --- a/tools/lib/bpf/libbpf.map
> > > > +++ b/tools/lib/bpf/libbpf.map
> > > > @@ -362,6 +362,7 @@ LIBBPF_1.0.0 {
> > > >                 bpf_program__set_autoattach;
> > > >                 btf__add_enum64;
> > > >                 btf__add_enum64_value;
> > > > +               bpf_xdp_query_features;
> > > >                 libbpf_bpf_attach_type_str;
> > > >                 libbpf_bpf_link_type_str;
> > > >                 libbpf_bpf_map_type_str;
> > >
> > > [...]
>=20

--n89kErnvPkHUjfpP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY8LLNwAKCRA6cBh0uS2t
rHQpAP9S1nRxJxn6VI8kE+ZgcmpcM4bn41k/iKTInZDlJMnuRgD/UDwB7wgWf7IR
N84yItCjaXrkRBsk+05kHyYqvmSVTwI=
=5cEs
-----END PGP SIGNATURE-----

--n89kErnvPkHUjfpP--


--===============0261658562618289000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0261658562618289000==--

