Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E60268C9D4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 23:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6914A60C24;
	Mon,  6 Feb 2023 22:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6914A60C24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675724118;
	bh=yv/DTrJ1wazB5RZ4makwAd8Ym8DEeuiGr1wi/hY/keY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o3Rqn8l2kaOpazcx6lGTg9mpOyXUN1N1pUqxAM+8JMWcjPDSwOlMnEkBLWqqmYmw2
	 RGtSw88QRtfKUECCX2rPYJj6Pd2w8z9/o3p2ySfVA+SNL268qcAdZJaZlqk9VC2+bY
	 RajHLD1Ngq961Co9Gwp4PH/y43a2yzx9J7nkHSI6rRROvZWWOKepGK7j5ZBxaZWXm7
	 urKfim9rw1nR7xt41YWoH1Digt0lW9oHeOeXzBM2paxMq4tchnpPe4IRd962abwiIO
	 ClTfk1QFuypUuPxZENZ+zLn1i8N/CFqPwuVCDrA//f1LYvwl3526JGpyBnqntr1PO6
	 St/UttPS9ob8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9OSMF5sL0nUO; Mon,  6 Feb 2023 22:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54A7E60A6A;
	Mon,  6 Feb 2023 22:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54A7E60A6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA58F1BF422
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 22:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA02A41759
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 22:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA02A41759
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSSfomUk-pvS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 22:55:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A666A4151F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A666A4151F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 22:55:10 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-479-UaaSzbE9P2CcG0M3goKeGA-1; Mon, 06 Feb 2023 17:55:07 -0500
X-MC-Unique: UaaSzbE9P2CcG0M3goKeGA-1
Received: by mail-wm1-f69.google.com with SMTP id
 d14-20020a05600c34ce00b003dd07ce79c8so7250248wmq.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Feb 2023 14:55:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5BMxmF2QM4fBq+3cTZMsRqiaXUUE3XWKiUfkoH7JsxM=;
 b=YyFwVYlNtmr37mwPNF/qpXyshhKmh3Q7r4OLz540C79zq334hJ1M3xxde+kL4PuDQD
 fYpK++bF3pgG6QlO1H2t1HlZ2rUnDbJK4Y3WD7NhKUrfjQ140D93+F+6iyVRyCHd7g/w
 DXUVhAlpENqc080XiYMjSQCsITl7HDai47kMBAyH4WxzUbM/pARbBK1AvS523u+4VAMH
 K7P78krAUC6JL1m/vwousUnNgZe3ma7+K8HK1bzNFN0H4BzJXV6X44yaQ2z9h3Mc4t0h
 FZAfov6Y3V7IBAJdVSekPKbsAO78q6Wl78IfW94MUBa6mZQAGp/1VqauOWnXlqlPnCiX
 06xg==
X-Gm-Message-State: AO0yUKWF9AuXDNntQhpRLI8kIOXw2j9InPsdvgnHumkdJQ4L+cKtXXV/
 VN0/o//sJH2757R7xrlW7D/BH5LsFLqmQkoZ0HHfQqNanLKvwfoozBJcT/UEBnXn5O7S9D2UqmC
 ucUsjrSvNJueYJJP0dkahJVUs1H55NA==
X-Received: by 2002:a05:600c:230f:b0:3da:f665:5b66 with SMTP id
 15-20020a05600c230f00b003daf6655b66mr1785172wmo.6.1675724106500; 
 Mon, 06 Feb 2023 14:55:06 -0800 (PST)
X-Google-Smtp-Source: AK7set9bGZQlwzoKZ+U5jL/lcK74l/5ol5+6MgkpECWBCB+hBsXFHBrRpsWvuzWHuhyXlrl7ZLRDSA==
X-Received: by 2002:a05:600c:230f:b0:3da:f665:5b66 with SMTP id
 15-20020a05600c230f00b003daf6655b66mr1785126wmo.6.1675724106210; 
 Mon, 06 Feb 2023 14:55:06 -0800 (PST)
Received: from localhost (net-188-216-77-84.cust.vodafonedsl.it.
 [188.216.77.84]) by smtp.gmail.com with ESMTPSA id
 z17-20020a7bc7d1000000b003dc3f07c876sm17528965wmk.46.2023.02.06.14.55.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Feb 2023 14:55:04 -0800 (PST)
Date: Mon, 6 Feb 2023 23:55:02 +0100
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Message-ID: <Y+GFRm+z1Ry9ssnk@lore-desk>
References: <cover.1675245257.git.lorenzo@kernel.org>
 <a72609ef4f0de7fee5376c40dbf54ad7f13bfb8d.1675245258.git.lorenzo@kernel.org>
 <CAEf4BzZS-MSen_1q4eotMe3hdkXUXxpwnfbLqEENzU1ogejxUQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEf4BzZS-MSen_1q4eotMe3hdkXUXxpwnfbLqEENzU1ogejxUQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1675724109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5BMxmF2QM4fBq+3cTZMsRqiaXUUE3XWKiUfkoH7JsxM=;
 b=CceKEyjLlri1FSR4IATGTe12Mrb533vpTJCsvSBbPYduV1gfG82a51iG1jgQjaq7fHMUll
 HZXHnWN/mrm5wR6nq5D1kubdnR1H4sUmqxz/bmocEzjDzYav9YloV01f+X1DjUISKMx2g0
 Mb6Q7sD7/hBFkLkYX2Z+kdSK0VxFdXI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CceKEyjL
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 5/8] libbpf: add API to
 get XDP/XSK supported features
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
 gerhard@engleder-embedded.com, daniel@iogearbox.net, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>, aelior@marvell.com,
 hawk@kernel.org, christophe.jaillet@wanadoo.fr, memxor@gmail.com,
 john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============3293364512745666267=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3293364512745666267==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0XM81ACP0nEwcCmt"
Content-Disposition: inline


--0XM81ACP0nEwcCmt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Wed, Feb 1, 2023 at 2:25 AM Lorenzo Bianconi <lorenzo@kernel.org> wrot=
e:
> >
> > Extend bpf_xdp_query routine in order to get XDP/XSK supported features
> > of netdev over route netlink interface.
> > Extend libbpf netlink implementation in order to support netlink_generic
> > protocol.
> >
> > Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > Co-developed-by: Marek Majtyka <alardam@gmail.com>
> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  tools/lib/bpf/libbpf.h  |  3 +-
> >  tools/lib/bpf/netlink.c | 96 +++++++++++++++++++++++++++++++++++++++++
> >  tools/lib/bpf/nlattr.h  | 12 ++++++
> >  3 files changed, 110 insertions(+), 1 deletion(-)
> >
>=20
> [...]
>=20
> > @@ -366,6 +433,10 @@ int bpf_xdp_query(int ifindex, int xdp_flags, stru=
ct bpf_xdp_query_opts *opts)
> >                 .ifinfo.ifi_family =3D AF_PACKET,
> >         };
> >         struct xdp_id_md xdp_id =3D {};
> > +       struct xdp_features_md md =3D {
> > +               .ifindex =3D ifindex,
> > +       };
> > +       __u16 id;
> >         int err;
> >
> >         if (!OPTS_VALID(opts, bpf_xdp_query_opts))
> > @@ -393,6 +464,31 @@ int bpf_xdp_query(int ifindex, int xdp_flags, stru=
ct bpf_xdp_query_opts *opts)
> >         OPTS_SET(opts, skb_prog_id, xdp_id.info.skb_prog_id);
> >         OPTS_SET(opts, attach_mode, xdp_id.info.attach_mode);
> >
> > +       if (!OPTS_HAS(opts, feature_flags))
> > +               return 0;
> > +
> > +       err =3D libbpf_netlink_resolve_genl_family_id("netdev", sizeof(=
"netdev"), &id);
> > +       if (err < 0)
> > +               return libbpf_err(err);
> > +
> > +       memset(&req, 0, sizeof(req));
> > +       req.nh.nlmsg_len =3D NLMSG_LENGTH(GENL_HDRLEN);
> > +       req.nh.nlmsg_flags =3D NLM_F_REQUEST;
> > +       req.nh.nlmsg_type =3D id;
> > +       req.gnl.cmd =3D NETDEV_CMD_DEV_GET;
> > +       req.gnl.version =3D 2;
> > +
> > +       err =3D nlattr_add(&req, NETDEV_A_DEV_IFINDEX, &ifindex, sizeof=
(ifindex));
> > +       if (err < 0)
> > +               return err;
>=20
> just noticed this, we need to use libbpf_err(err) here like in other
> error cases to set errno properly. Can you please send a follow up?

sure, I will post a fix.

Regards,
Lorenzo

>=20
> > +
> > +       err =3D libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
> > +                                      parse_xdp_features, NULL, &md);
> > +       if (err)
> > +               return libbpf_err(err);
> > +
> > +       opts->feature_flags =3D md.flags;
> > +
> >         return 0;
> >  }
> >
>=20
> [...]
>=20

--0XM81ACP0nEwcCmt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY+GFRgAKCRA6cBh0uS2t
rFT4AP9GXZT3c5tPEuaCysaaoxeuf3d+mSQMBZlko6/+JEzp+AD7BZykMXY9uY8O
JNVIS3KVeZoDsBk1415C9OCu36uW4wM=
=RfPO
-----END PGP SIGNATURE-----

--0XM81ACP0nEwcCmt--


--===============3293364512745666267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3293364512745666267==--

