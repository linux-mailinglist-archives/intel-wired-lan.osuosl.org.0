Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419AB67F7DB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 13:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 334534074E;
	Sat, 28 Jan 2023 12:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 334534074E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674910137;
	bh=T+VBd/H2KJfSdPajWe0YqUZGt+NAeD+eo1HwhIWdOqk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u8fVVl0VEJI8+fg0MNYD6NTvQtvGPO1WMJG1AiEoc3s8VZyI4NO1+oM9/CSlAoYHp
	 vUjHNrm8WNuKb+AU3OF9uXEuTrdb691wsntNNEetq2WC+XzcwZK5I1krAyqretgV7R
	 9gdw4FWKambqOLH+oWL7twLDvFsNRmXszAFaturd8dFz84ASUcUhtTYUTh+64hZN/o
	 do4r64zcZaN8fL8DSSjxE2MYeKeLOLN87TGzk+oqauJvGxY9A/sImqtadzDqj+1bC4
	 fECfHUw8h9x3+oxgJbK19DfpkXf5LNgii+4ZgGoINMqt/5QVOCWypGIAmxiiy9HH7Q
	 UTYnQBsxc/zqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlVl-1HwVjUa; Sat, 28 Jan 2023 12:48:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0566940638;
	Sat, 28 Jan 2023 12:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0566940638
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68D8D1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 12:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 387F340638
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 12:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 387F340638
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FxGfABs_UaaW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 12:48:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E2AB40522
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E2AB40522
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 12:48:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E3ADA60B88;
 Sat, 28 Jan 2023 12:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6647C433D2;
 Sat, 28 Jan 2023 12:48:46 +0000 (UTC)
Date: Sat, 28 Jan 2023 13:48:43 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Message-ID: <Y9UZqxwNPDQ9jEu3@lore-desk>
References: <cover.1674737592.git.lorenzo@kernel.org>
 <a7e6e8da5b2ba24f44f0d5b44a234e2bf90220fd.1674737592.git.lorenzo@kernel.org>
 <CAEf4BzYjt3J5_ESMKjRFRh6ROg-CN=QazAZpKd9wnaSxjjKbAg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEf4BzYjt3J5_ESMKjRFRh6ROg-CN=QazAZpKd9wnaSxjjKbAg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674910127;
 bh=q4YmhCFGMeK7V/V0+kIKf74gh6MkUEKWKYKZr0Q1zcM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DPaiMQg27zAkIo+OpClY8AEt4CVLMA7gO+1YHJDC4A1QYsiQN3DAFrSjJR0++Q9om
 XTq6Pr9y+zogKe3Smxba9zOL4172/aDqY3ZfBCGCP1IRq6DrebB7Bj9oeVDEcefC4C
 20EwOPn/AWtNSpu0Iis/oQuIuugkPbDNeOzAenp1SslJg61Eo3UDFYhL2YAqJsP7Eu
 sBgMi2v9YqTAT9518gmPm8YaBzUFpvm9+nmMjMPDa7vVpp+XWWnufFxBnHbs0/QUni
 jYJbQmE4yzWsi/cR75E+4Zk3QpLnWDDgnayXeh5878o+i0ilnKAb1qTRhssZf1ujQn
 5s2AcclSllVqw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DPaiMQg2
Subject: Re: [Intel-wired-lan] [PATCH v3 bpf-next 5/8] libbpf: add API to
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============0136912451744417953=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0136912451744417953==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H5r5tXaizAjuuM7h"
Content-Disposition: inline


--H5r5tXaizAjuuM7h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Thu, Jan 26, 2023 at 4:59 AM Lorenzo Bianconi <lorenzo@kernel.org> wro=
te:
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
> >  tools/lib/bpf/netlink.c | 99 +++++++++++++++++++++++++++++++++++++++++
> >  tools/lib/bpf/nlattr.h  | 12 +++++
> >  3 files changed, 113 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
> > index 898db26e42e9..29cb7040fa77 100644
> > --- a/tools/lib/bpf/libbpf.h
> > +++ b/tools/lib/bpf/libbpf.h
> > @@ -982,9 +982,10 @@ struct bpf_xdp_query_opts {
> >         __u32 hw_prog_id;       /* output */
> >         __u32 skb_prog_id;      /* output */
> >         __u8 attach_mode;       /* output */
> > +       __u64 fflags;           /* output */
> >         size_t :0;
> >  };
> > -#define bpf_xdp_query_opts__last_field attach_mode
> > +#define bpf_xdp_query_opts__last_field fflags
>=20
> is "fflags" an obvious name in this context? I'd expect
> "feature_flags", especially that there are already "flags". Is saving
> a few characters worth the confusion?

ack, I will fix it.

>=20
>=20
> >
> >  LIBBPF_API int bpf_xdp_attach(int ifindex, int prog_fd, __u32 flags,
> >                               const struct bpf_xdp_attach_opts *opts);
> > diff --git a/tools/lib/bpf/netlink.c b/tools/lib/bpf/netlink.c
> > index d2468a04a6c3..674e4d61e67e 100644
> > --- a/tools/lib/bpf/netlink.c
> > +++ b/tools/lib/bpf/netlink.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/if_ether.h>
> >  #include <linux/pkt_cls.h>
> >  #include <linux/rtnetlink.h>
> > +#include <linux/netdev.h>
> >  #include <sys/socket.h>
> >  #include <errno.h>
> >  #include <time.h>
> > @@ -39,6 +40,12 @@ struct xdp_id_md {
> >         int ifindex;
> >         __u32 flags;
> >         struct xdp_link_info info;
> > +       __u64 fflags;
> > +};
> > +
> > +struct xdp_features_md {
> > +       int ifindex;
> > +       __u64 flags;
> >  };
> >
> >  static int libbpf_netlink_open(__u32 *nl_pid, int proto)
>=20
> [...]
>=20
> >  int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opt=
s *opts)
> >  {
> >         struct libbpf_nla_req req =3D {
> > @@ -393,6 +460,38 @@ int bpf_xdp_query(int ifindex, int xdp_flags, stru=
ct bpf_xdp_query_opts *opts)
> >         OPTS_SET(opts, skb_prog_id, xdp_id.info.skb_prog_id);
> >         OPTS_SET(opts, attach_mode, xdp_id.info.attach_mode);
> >
> > +       if (OPTS_HAS(opts, fflags)) {
>=20
> maybe invert condition, return early, reduce nesting of the following cod=
e?

ack, fine, I will fix it.

>=20
> > +               struct xdp_features_md md =3D {
> > +                       .ifindex =3D ifindex,
> > +               };
> > +               __u16 id;
> > +
> > +               err =3D libbpf_netlink_resolve_genl_family_id("netdev",
> > +                                                           sizeof("net=
dev"),
> > +                                                           &id);
>=20
> nit: if it fits under 100 characters, let's leave it on a single line

ack, fine, I will fix it (I am still used to 79 char limits :))

Regards,
Lorenzo

>=20
> > +               if (err < 0)
> > +                       return libbpf_err(err);
> > +
> > +               memset(&req, 0, sizeof(req));
> > +               req.nh.nlmsg_len =3D NLMSG_LENGTH(GENL_HDRLEN);
> > +               req.nh.nlmsg_flags =3D NLM_F_REQUEST;
> > +               req.nh.nlmsg_type =3D id;
> > +               req.gnl.cmd =3D NETDEV_CMD_DEV_GET;
> > +               req.gnl.version =3D 2;
> > +
> > +               err =3D nlattr_add(&req, NETDEV_A_DEV_IFINDEX, &ifindex,
> > +                                sizeof(ifindex));
> > +               if (err < 0)
> > +                       return err;
> > +
> > +               err =3D libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
> > +                                              parse_xdp_features, NULL=
, &md);
> > +               if (err)
> > +                       return libbpf_err(err);
> > +
> > +               opts->fflags =3D md.flags;
> > +       }
> > +
> >         return 0;
> >  }
> >
>=20
> [...]

--H5r5tXaizAjuuM7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9UZqwAKCRA6cBh0uS2t
rBxoAP0cbq7hs6/E0Xww1WyBoVO/koarQuFXB5dQjh+u7148WAD+IB9ZdSVQzt5f
ogltg73yhQG8hmRf64y75STgSRlB6Qc=
=/DWr
-----END PGP SIGNATURE-----

--H5r5tXaizAjuuM7h--

--===============0136912451744417953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0136912451744417953==--
