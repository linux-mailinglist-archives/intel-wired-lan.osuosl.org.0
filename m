Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1E652FB7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 11:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E73B960FBD;
	Wed, 21 Dec 2022 10:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E73B960FBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671619208;
	bh=DgeD8ppfj3P52mUh7fhpUXv2f8P4bq7czBbljSTVFuQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zLta54xTaTbgMF62M5OTSgvq7daI0x/ayoc+LvkTLYri01CXoBxfzEQWOJ7bzTc8q
	 BWSXb3qe92BDPml9/KDn2HViCL2n97HmqJfRI5DikRH0QqT3j0xGfBR1wAkLY3LBOf
	 CjSEGvPkxOxnkO3IP/ZseQBfpojcQEJ+rHzlYxYofHs3o1KtaJU7ei3puOos2dnJsd
	 9PXWF9vXpx+dQzK6vbKETFMi3ouFH+JUoLkSaQuSsWVlrEaf+eIVDAt4mFw52eleNK
	 VpYGCniycgqoc//N6/6Bg+P85vlHDi8UwDoV24TCEo/uciY6kiY+uYBGCHZQKNhQUz
	 2JCPYpSRxgWQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 85DGGfkkKpxO; Wed, 21 Dec 2022 10:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35C8160AA0;
	Wed, 21 Dec 2022 10:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35C8160AA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 730401BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58B27401F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58B27401F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-qVAgy2aF5j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 10:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01E0B401EF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01E0B401EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:39:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C367661761;
 Wed, 21 Dec 2022 10:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81ABCC433EF;
 Wed, 21 Dec 2022 10:39:57 +0000 (UTC)
Date: Wed, 21 Dec 2022 11:39:54 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <sdf@google.com>
Message-ID: <Y6Liehq9ZsXQMD2B@lore-desk>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <Y6DDfVhOWRybVNUt@google.com>
 <CAAOQfrFGArAYPyBX_kw4ZvFrTjKXf-jG-2F2y69nOs-oQ8Onwg@mail.gmail.com>
 <CAKH8qBuktjBcY_CuqqkWs74oBB8Mnkm638Cb=sF38H4kPAx3NQ@mail.gmail.com>
 <Y6GKN/1iOC9eTsEE@lore-desk>
 <CAKH8qBts19wxSDAKk0SBk76ftvdK+sW6d3ufcBWoV5cMa2ENpA@mail.gmail.com>
 <Y6I2VyBCz7YRxxTR@localhost.localdomain>
 <CAKH8qBv1AhXEfeymiTBE_MLniAXQc6shpuiHeYyidH-Y0Fc2ew@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKH8qBv1AhXEfeymiTBE_MLniAXQc6shpuiHeYyidH-Y0Fc2ew@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671619198;
 bh=ZAMCssAv9RDewTT5QkUiuR2tS5wNLJei8R8iSKaqoWQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BJ4LAb5SKr1QZ2b9vMueVA1r9kpW7ns9AAppZC1S7niQ/Iv7mYrBdSeqVUt3waX73
 qgoqwA5GuyAxKtOR0CUoKchyq3zD86u2vskV4CR7981kFRAmlCKADBSmkSBmmMmt+s
 n7HZokpnzhJLeAeOCNB2Yf+KEnsOyyR6Gt/q2j5i/nNHLHapOEVGMpFQ0fIrVSrG+0
 sDRIencTHQCvPrxzaWyoL48GAXu+ICydYVDsH+eHzS9NXg0Gcz67EQ0r5bydEugJYD
 y3456d7qesKFgbKIQtC1Ya1aJV9dBdSS5IKOLQwo34L6+2wW9sSsZdPfvR3xmqiHLU
 KDQjSQMaeeR8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BJ4LAb5S
Subject: Re: [Intel-wired-lan] [RFC bpf-next 2/8] net: introduce XDP
 features flag
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
Cc: mst@redhat.com, simon.horman@corigine.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, Marek Majtyka <alardam@gmail.com>,
 gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============7135597648429004876=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7135597648429004876==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hrDZeboCK6meSxP4"
Content-Disposition: inline


--hrDZeboCK6meSxP4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[...]
>=20
> All of the above makes sense, thanks for the details. In this case,
> agreed that it's probably not possible to probe these easily without
> explicit flags :-(
>=20
> Let me bikeshed the names a bit as well, feel free to ignore...
>=20
> 1. Maybe group XDP_{ABORTED,DROP,PASS,TX,REDIRECT} with some common
> prefix? XDP_ACT_xxx (ACT for action)? Or XDP_RET_xxx?
>=20

ack, I am fine to add ACT prefix, something like:

- XDP_ACT_ABORTED
- XDP_ACT_DROP
=2E..

- XDP_ACT_REDIRECT

> 2. Maybe: XDP_SOCK_ZEROCOPY -> XSK_ZEROCOPY ?

ack, agree

>=20
> 3. XDP_HW_OFFLOAD we don't seem to set anywhere? nfp/netdevsim changes
> are missing or out of scope?

actually we set XDP_F_HW_OFFLOAD for netdevsim and nfp driver

>=20
> 4. Agree with Jakub, not sure XDP_TX_LOCK doesn't seem relevant?

ack, I agree we can drop it

>=20
> 5. XDP_REDIRECT_TARGET -> XDP_RCV_REDIRECT (can 'receive' and handle
> redirects? in this case XDP_ACT_REDIRECT means can 'generate'

naming is always hard :) what about XDP_NDO_XMIT instead of
XDP_REDIRECT_TARGET? (and rely on XDP_ACT_REDIRECT for XDP_F_REDIRECT)

> redirects)
>=20
> 6. For frags, maybe:
>=20
> XDP_FRAG_RX     -> XDP_SG_RX

fine

> XDP_FRAG_TARGET -> XDP_SG_RCV_REDIRECT (so this is that same as
> XDP_RCV_REDIRECT but can handle frags)

what about of XDP_NDO_XMIT_SG?

Regards,
Lorenzo

>=20
> But also probably fine to keep FRAG instead of SG to match BPF_F_XDP_HAS_=
FRAGS?
>=20
> > Regards,
> > Lorenzo
> >
> > >
> > > > Regards,
> > > > Lorenzo
> > > >
> > > > >
> > > > > > On Mon, Dec 19, 2022 at 9:03 PM <sdf@google.com> wrote:
> > > > > >>
> > > > > >> On 12/19, Lorenzo Bianconi wrote:
> > > > > >> > From: Marek Majtyka <alardam@gmail.com>
> > > > > >>
> > > > > >> > Implement support for checking what kind of XDP features a n=
etdev
> > > > > >> > supports. Previously, there was no way to do this other than=
 to try to
> > > > > >> > create an AF_XDP socket on the interface or load an XDP prog=
ram and see
> > > > > >> > if it worked. This commit changes this by adding a new varia=
ble which
> > > > > >> > describes all xdp supported functions on pretty detailed lev=
el:
> > > > > >>
> > > > > >> >   - aborted
> > > > > >> >   - drop
> > > > > >> >   - pass
> > > > > >> >   - tx
> > > > > >> >   - redirect
> > > > > >> >   - sock_zerocopy
> > > > > >> >   - hw_offload
> > > > > >> >   - redirect_target
> > > > > >> >   - tx_lock
> > > > > >> >   - frag_rx
> > > > > >> >   - frag_target
> > > > > >>
> > > > > >> > Zerocopy mode requires that redirect XDP operation is implem=
ented in a
> > > > > >> > driver and the driver supports also zero copy mode. Full mod=
e requires
> > > > > >> > that all XDP operation are implemented in the driver. Basic =
mode is just
> > > > > >> > full mode without redirect operation. Frag target requires
> > > > > >> > redirect_target one is supported by the driver.
> > > > > >>
> > > > > >> Can you share more about _why_ is it needed? If we can already=
 obtain
> > > > > >> most of these signals via probing, why export the flags?
> > > > > >>
> > > > > >> > Initially, these new flags are disabled for all drivers by d=
efault.
> > > > > >>
> > > > > >> > Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > > >> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > > >> > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > >> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > >> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > > > > >> > ---
> > > > > >> >   .../networking/netdev-xdp-features.rst        | 60 +++++++=
++++++++++
> > > > > >> >   include/linux/netdevice.h                     |  2 +
> > > > > >> >   include/linux/xdp_features.h                  | 64 +++++++=
++++++++++++
> > > > > >> >   include/uapi/linux/if_link.h                  |  7 ++
> > > > > >> >   include/uapi/linux/xdp_features.h             | 34 +++++++=
+++
> > > > > >> >   net/core/rtnetlink.c                          | 34 +++++++=
+++
> > > > > >> >   tools/include/uapi/linux/if_link.h            |  7 ++
> > > > > >> >   tools/include/uapi/linux/xdp_features.h       | 34 +++++++=
+++
> > > > > >> >   8 files changed, 242 insertions(+)
> > > > > >> >   create mode 100644 Documentation/networking/netdev-xdp-fea=
tures.rst
> > > > > >> >   create mode 100644 include/linux/xdp_features.h
> > > > > >> >   create mode 100644 include/uapi/linux/xdp_features.h
> > > > > >> >   create mode 100644 tools/include/uapi/linux/xdp_features.h
> > > > > >>
> > > > > >> > diff --git a/Documentation/networking/netdev-xdp-features.rst
> > > > > >> > b/Documentation/networking/netdev-xdp-features.rst
> > > > > >> > new file mode 100644
> > > > > >> > index 000000000000..1dc803fe72dd
> > > > > >> > --- /dev/null
> > > > > >> > +++ b/Documentation/networking/netdev-xdp-features.rst
> > > > > >> > @@ -0,0 +1,60 @@
> > > > > >> > +.. SPDX-License-Identifier: GPL-2.0
> > > > > >> > +
> > > > > >> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> > > > > >> > +Netdev XDP features
> > > > > >> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> > > > > >> > +
> > > > > >> > + * XDP FEATURES FLAGS
> > > > > >> > +
> > > > > >> > +Following netdev xdp features flags can be retrieved over r=
oute netlink
> > > > > >> > +interface (compact form) - the same way as netdev feature f=
lags.
> > > > > >> > +These features flags are read only and cannot be change at =
runtime.
> > > > > >> > +
> > > > > >> > +*  XDP_ABORTED
> > > > > >> > +
> > > > > >> > +This feature informs if netdev supports xdp aborted action.
> > > > > >> > +
> > > > > >> > +*  XDP_DROP
> > > > > >> > +
> > > > > >> > +This feature informs if netdev supports xdp drop action.
> > > > > >> > +
> > > > > >> > +*  XDP_PASS
> > > > > >> > +
> > > > > >> > +This feature informs if netdev supports xdp pass action.
> > > > > >> > +
> > > > > >> > +*  XDP_TX
> > > > > >> > +
> > > > > >> > +This feature informs if netdev supports xdp tx action.
> > > > > >> > +
> > > > > >> > +*  XDP_REDIRECT
> > > > > >> > +
> > > > > >> > +This feature informs if netdev supports xdp redirect action.
> > > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > > >> > +
> > > > > >> > +*  XDP_SOCK_ZEROCOPY
> > > > > >> > +
> > > > > >> > +This feature informs if netdev driver supports xdp zero cop=
y.
> > > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > > >> > +
> > > > > >> > +*  XDP_HW_OFFLOAD
> > > > > >> > +
> > > > > >> > +This feature informs if netdev driver supports xdp hw ofllo=
ading.
> > > > > >> > +
> > > > > >> > +*  XDP_TX_LOCK
> > > > > >> > +
> > > > > >> > +This feature informs if netdev ndo_xdp_xmit function requir=
es locking.
> > > > > >> > +
> > > > > >> > +*  XDP_REDIRECT_TARGET
> > > > > >> > +
> > > > > >> > +This feature informs if netdev implements ndo_xdp_xmit call=
back.
> > > > > >> > +
> > > > > >> > +*  XDP_FRAG_RX
> > > > > >> > +
> > > > > >> > +This feature informs if netdev implements non-linear xdp bu=
ff support in
> > > > > >> > +the driver napi callback.
> > > > > >> > +
> > > > > >> > +*  XDP_FRAG_TARGET
> > > > > >> > +
> > > > > >> > +This feature informs if netdev implements non-linear xdp bu=
ff support in
> > > > > >> > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIREC=
T_TARGET is
> > > > > >> > properly
> > > > > >> > +supported.
> > > > > >> > diff --git a/include/linux/netdevice.h b/include/linux/netde=
vice.h
> > > > > >> > index aad12a179e54..ae5a8564383b 100644
> > > > > >> > --- a/include/linux/netdevice.h
> > > > > >> > +++ b/include/linux/netdevice.h
> > > > > >> > @@ -43,6 +43,7 @@
> > > > > >> >   #include <net/xdp.h>
> > > > > >>
> > > > > >> >   #include <linux/netdev_features.h>
> > > > > >> > +#include <linux/xdp_features.h>
> > > > > >> >   #include <linux/neighbour.h>
> > > > > >> >   #include <uapi/linux/netdevice.h>
> > > > > >> >   #include <uapi/linux/if_bonding.h>
> > > > > >> > @@ -2362,6 +2363,7 @@ struct net_device {
> > > > > >> >       struct rtnl_hw_stats64  *offload_xstats_l3;
> > > > > >>
> > > > > >> >       struct devlink_port     *devlink_port;
> > > > > >> > +     xdp_features_t          xdp_features;
> > > > > >> >   };
> > > > > >> >   #define to_net_dev(d) container_of(d, struct net_device, d=
ev)
> > > > > >>
> > > > > >> > diff --git a/include/linux/xdp_features.h b/include/linux/xd=
p_features.h
> > > > > >> > new file mode 100644
> > > > > >> > index 000000000000..4e72a86ef329
> > > > > >> > --- /dev/null
> > > > > >> > +++ b/include/linux/xdp_features.h
> > > > > >> > @@ -0,0 +1,64 @@
> > > > > >> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > > > > >> > +/*
> > > > > >> > + * Network device xdp features.
> > > > > >> > + */
> > > > > >> > +#ifndef _LINUX_XDP_FEATURES_H
> > > > > >> > +#define _LINUX_XDP_FEATURES_H
> > > > > >> > +
> > > > > >> > +#include <linux/types.h>
> > > > > >> > +#include <linux/bitops.h>
> > > > > >> > +#include <asm/byteorder.h>
> > > > > >> > +#include <uapi/linux/xdp_features.h>
> > > > > >> > +
> > > > > >> > +typedef u32 xdp_features_t;
> > > > > >> > +
> > > > > >> > +#define __XDP_F_BIT(bit)     ((xdp_features_t)1 << (bit))
> > > > > >> > +#define __XDP_F(name)                __XDP_F_BIT(XDP_F_##na=
me##_BIT)
> > > > > >> > +
> > > > > >> > +#define XDP_F_ABORTED                __XDP_F(ABORTED)
> > > > > >> > +#define XDP_F_DROP           __XDP_F(DROP)
> > > > > >> > +#define XDP_F_PASS           __XDP_F(PASS)
> > > > > >> > +#define XDP_F_TX             __XDP_F(TX)
> > > > > >> > +#define XDP_F_REDIRECT               __XDP_F(REDIRECT)
> > > > > >> > +#define XDP_F_REDIRECT_TARGET        __XDP_F(REDIRECT_TARGE=
T)
> > > > > >> > +#define XDP_F_SOCK_ZEROCOPY  __XDP_F(SOCK_ZEROCOPY)
> > > > > >> > +#define XDP_F_HW_OFFLOAD     __XDP_F(HW_OFFLOAD)
> > > > > >> > +#define XDP_F_TX_LOCK                __XDP_F(TX_LOCK)
> > > > > >> > +#define XDP_F_FRAG_RX                __XDP_F(FRAG_RX)
> > > > > >> > +#define XDP_F_FRAG_TARGET    __XDP_F(FRAG_TARGET)
> > > > > >> > +
> > > > > >> > +#define XDP_F_BASIC          (XDP_F_ABORTED | XDP_F_DROP | =
  \
> > > > > >> > +                              XDP_F_PASS | XDP_F_TX)
> > > > > >> > +
> > > > > >> > +#define XDP_F_FULL           (XDP_F_BASIC | XDP_F_REDIRECT)
> > > > > >> > +
> > > > > >> > +#define XDP_F_FULL_ZC                (XDP_F_FULL | XDP_F_SO=
CK_ZEROCOPY)
> > > > > >> > +
> > > > > >> > +#define XDP_FEATURES_ABORTED_STR             "xdp-aborted"
> > > > > >> > +#define XDP_FEATURES_DROP_STR                        "xdp-d=
rop"
> > > > > >> > +#define XDP_FEATURES_PASS_STR                        "xdp-p=
ass"
> > > > > >> > +#define XDP_FEATURES_TX_STR                  "xdp-tx"
> > > > > >> > +#define XDP_FEATURES_REDIRECT_STR            "xdp-redirect"
> > > > > >> > +#define XDP_FEATURES_REDIRECT_TARGET_STR     "xdp-redirect-=
target"
> > > > > >> > +#define XDP_FEATURES_SOCK_ZEROCOPY_STR               "xdp-s=
ock-zerocopy"
> > > > > >> > +#define XDP_FEATURES_HW_OFFLOAD_STR          "xdp-hw-offloa=
d"
> > > > > >> > +#define XDP_FEATURES_TX_LOCK_STR             "xdp-tx-lock"
> > > > > >> > +#define XDP_FEATURES_FRAG_RX_STR             "xdp-frag-rx"
> > > > > >> > +#define XDP_FEATURES_FRAG_TARGET_STR         "xdp-frag-targ=
et"
> > > > > >> > +
> > > > > >> > +#define DECLARE_XDP_FEATURES_TABLE(name, length)           =
                  \
> > > > > >> > +     const char name[][length] =3D {                       =
                    \
> > > > > >> > +             [XDP_F_ABORTED_BIT] =3D XDP_FEATURES_ABORTED_S=
TR,                 \
> > > > > >> > +             [XDP_F_DROP_BIT] =3D XDP_FEATURES_DROP_STR,   =
                    \
> > > > > >> > +             [XDP_F_PASS_BIT] =3D XDP_FEATURES_PASS_STR,   =
                    \
> > > > > >> > +             [XDP_F_TX_BIT] =3D XDP_FEATURES_TX_STR,       =
                    \
> > > > > >> > +             [XDP_F_REDIRECT_BIT] =3D XDP_FEATURES_REDIRECT=
_STR,               \
> > > > > >> > +             [XDP_F_REDIRECT_TARGET_BIT] =3D XDP_FEATURES_R=
EDIRECT_TARGET_STR, \
> > > > > >> > +             [XDP_F_SOCK_ZEROCOPY_BIT] =3D XDP_FEATURES_SOC=
K_ZEROCOPY_STR,     \
> > > > > >> > +             [XDP_F_HW_OFFLOAD_BIT] =3D XDP_FEATURES_HW_OFF=
LOAD_STR,           \
> > > > > >> > +             [XDP_F_TX_LOCK_BIT] =3D XDP_FEATURES_TX_LOCK_S=
TR,                 \
> > > > > >> > +             [XDP_F_FRAG_RX_BIT] =3D XDP_FEATURES_FRAG_RX_S=
TR,                 \
> > > > > >> > +             [XDP_F_FRAG_TARGET_BIT] =3D XDP_FEATURES_FRAG_=
TARGET_STR,         \
> > > > > >> > +     }
> > > > > >> > +
> > > > > >> > +#endif /* _LINUX_XDP_FEATURES_H */
> > > > > >> > diff --git a/include/uapi/linux/if_link.h b/include/uapi/lin=
ux/if_link.h
> > > > > >> > index 1021a7e47a86..971c658ceaea 100644
> > > > > >> > --- a/include/uapi/linux/if_link.h
> > > > > >> > +++ b/include/uapi/linux/if_link.h
> > > > > >> > @@ -374,6 +374,8 @@ enum {
> > > > > >>
> > > > > >> >       IFLA_DEVLINK_PORT,
> > > > > >>
> > > > > >> > +     IFLA_XDP_FEATURES,
> > > > > >> > +
> > > > > >> >       __IFLA_MAX
> > > > > >> >   };
> > > > > >>
> > > > > >> > @@ -1318,6 +1320,11 @@ enum {
> > > > > >>
> > > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > > >>
> > > > > >> > +enum {
> > > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC =3D 0,
> > > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > > >> > +};
> > > > > >> > +
> > > > > >> >   enum {
> > > > > >> >       IFLA_EVENT_NONE,
> > > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / re=
boot */
> > > > > >> > diff --git a/include/uapi/linux/xdp_features.h
> > > > > >> > b/include/uapi/linux/xdp_features.h
> > > > > >> > new file mode 100644
> > > > > >> > index 000000000000..48eb42069bcd
> > > > > >> > --- /dev/null
> > > > > >> > +++ b/include/uapi/linux/xdp_features.h
> > > > > >> > @@ -0,0 +1,34 @@
> > > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note=
 */
> > > > > >> > +/*
> > > > > >> > + * Copyright (c) 2020 Intel
> > > > > >> > + */
> > > > > >> > +
> > > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > > >> > +
> > > > > >> > +enum {
> > > > > >> > +     XDP_F_ABORTED_BIT,
> > > > > >> > +     XDP_F_DROP_BIT,
> > > > > >> > +     XDP_F_PASS_BIT,
> > > > > >> > +     XDP_F_TX_BIT,
> > > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > > >> > +     /*
> > > > > >> > +      * Add your fresh new property above and remember to u=
pdate
> > > > > >> > +      * documentation.
> > > > > >> > +      */
> > > > > >> > +     XDP_FEATURES_COUNT,
> > > > > >> > +};
> > > > > >> > +
> > > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES=
_COUNT + 32 - 1) / 32)
> > > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(ind=
ex) / 32U])
> > > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U <<=
 (index) % 32U)
> > > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD=
_FLAG(index))
> > > > > >> > +
> > > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > > >> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > > > > >> > index 64289bc98887..1c299746b614 100644
> > > > > >> > --- a/net/core/rtnetlink.c
> > > > > >> > +++ b/net/core/rtnetlink.c
> > > > > >> > @@ -1016,6 +1016,14 @@ static size_t rtnl_xdp_size(void)
> > > > > >> >       return xdp_size;
> > > > > >> >   }
> > > > > >>
> > > > > >> > +static size_t rtnl_xdp_features_size(void)
> > > > > >> > +{
> > > > > >> > +     size_t xdp_size =3D nla_total_size(0) +   /* nest IFLA=
_XDP_FEATURES */
> > > > > >> > +                       XDP_FEATURES_WORDS * nla_total_size(=
4);
> > > > > >> > +
> > > > > >> > +     return xdp_size;
> > > > > >> > +}
> > > > > >> > +
> > > > > >> >   static size_t rtnl_prop_list_size(const struct net_device =
*dev)
> > > > > >> >   {
> > > > > >> >       struct netdev_name_node *name_node;
> > > > > >> > @@ -1103,6 +1111,7 @@ static noinline size_t if_nlmsg_size(c=
onst struct
> > > > > >> > net_device *dev,
> > > > > >> >              + rtnl_prop_list_size(dev)
> > > > > >> >              + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADD=
RESS */
> > > > > >> >              + rtnl_devlink_port_size(dev)
> > > > > >> > +            + rtnl_xdp_features_size() /* IFLA_XDP_FEATURES=
 */
> > > > > >> >              + 0;
> > > > > >> >   }
> > > > > >>
> > > > > >> > @@ -1546,6 +1555,27 @@ static int rtnl_xdp_fill(struct sk_bu=
ff *skb,
> > > > > >> > struct net_device *dev)
> > > > > >> >       return err;
> > > > > >> >   }
> > > > > >>
> > > > > >> > +static int rtnl_xdp_features_fill(struct sk_buff *skb, stru=
ct net_device
> > > > > >> > *dev)
> > > > > >> > +{
> > > > > >> > +     struct nlattr *attr;
> > > > > >> > +
> > > > > >> > +     attr =3D nla_nest_start_noflag(skb, IFLA_XDP_FEATURES);
> > > > > >> > +     if (!attr)
> > > > > >> > +             return -EMSGSIZE;
> > > > > >> > +
> > > > > >> > +     BUILD_BUG_ON(XDP_FEATURES_WORDS !=3D 1);
> > > > > >> > +     if (nla_put_u32(skb, IFLA_XDP_FEATURES_BITS_WORD, dev-=
>xdp_features))
> > > > > >> > +             goto err_cancel;
> > > > > >> > +
> > > > > >> > +     nla_nest_end(skb, attr);
> > > > > >> > +
> > > > > >> > +     return 0;
> > > > > >> > +
> > > > > >> > +err_cancel:
> > > > > >> > +     nla_nest_cancel(skb, attr);
> > > > > >> > +     return -EMSGSIZE;
> > > > > >> > +}
> > > > > >> > +
> > > > > >> >   static u32 rtnl_get_event(unsigned long event)
> > > > > >> >   {
> > > > > >> >       u32 rtnl_event_type =3D IFLA_EVENT_NONE;
> > > > > >> > @@ -1904,6 +1934,9 @@ static int rtnl_fill_ifinfo(struct sk_=
buff *skb,
> > > > > >> >       if (rtnl_fill_devlink_port(skb, dev))
> > > > > >> >               goto nla_put_failure;
> > > > > >>
> > > > > >> > +     if (rtnl_xdp_features_fill(skb, dev))
> > > > > >> > +             goto nla_put_failure;
> > > > > >> > +
> > > > > >> >       nlmsg_end(skb, nlh);
> > > > > >> >       return 0;
> > > > > >>
> > > > > >> > @@ -1968,6 +2001,7 @@ static const struct nla_policy
> > > > > >> > ifla_policy[IFLA_MAX+1] =3D {
> > > > > >> >       [IFLA_TSO_MAX_SIZE]     =3D { .type =3D NLA_REJECT },
> > > > > >> >       [IFLA_TSO_MAX_SEGS]     =3D { .type =3D NLA_REJECT },
> > > > > >> >       [IFLA_ALLMULTI]         =3D { .type =3D NLA_REJECT },
> > > > > >> > +     [IFLA_XDP_FEATURES]     =3D { .type =3D NLA_NESTED },
> > > > > >> >   };
> > > > > >>
> > > > > >> >   static const struct nla_policy ifla_info_policy[IFLA_INFO_=
MAX+1] =3D {
> > > > > >> > diff --git a/tools/include/uapi/linux/if_link.h
> > > > > >> > b/tools/include/uapi/linux/if_link.h
> > > > > >> > index 82fe18f26db5..994228e9909a 100644
> > > > > >> > --- a/tools/include/uapi/linux/if_link.h
> > > > > >> > +++ b/tools/include/uapi/linux/if_link.h
> > > > > >> > @@ -354,6 +354,8 @@ enum {
> > > > > >>
> > > > > >> >       IFLA_DEVLINK_PORT,
> > > > > >>
> > > > > >> > +     IFLA_XDP_FEATURES,
> > > > > >> > +
> > > > > >> >       __IFLA_MAX
> > > > > >> >   };
> > > > > >>
> > > > > >> > @@ -1222,6 +1224,11 @@ enum {
> > > > > >>
> > > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > > >>
> > > > > >> > +enum {
> > > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC =3D 0,
> > > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > > >> > +};
> > > > > >> > +
> > > > > >> >   enum {
> > > > > >> >       IFLA_EVENT_NONE,
> > > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / re=
boot */
> > > > > >> > diff --git a/tools/include/uapi/linux/xdp_features.h
> > > > > >> > b/tools/include/uapi/linux/xdp_features.h
> > > > > >> > new file mode 100644
> > > > > >> > index 000000000000..48eb42069bcd
> > > > > >> > --- /dev/null
> > > > > >> > +++ b/tools/include/uapi/linux/xdp_features.h
> > > > > >> > @@ -0,0 +1,34 @@
> > > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note=
 */
> > > > > >> > +/*
> > > > > >> > + * Copyright (c) 2020 Intel
> > > > > >> > + */
> > > > > >> > +
> > > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > > >> > +
> > > > > >> > +enum {
> > > > > >> > +     XDP_F_ABORTED_BIT,
> > > > > >> > +     XDP_F_DROP_BIT,
> > > > > >> > +     XDP_F_PASS_BIT,
> > > > > >> > +     XDP_F_TX_BIT,
> > > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > > >> > +     /*
> > > > > >> > +      * Add your fresh new property above and remember to u=
pdate
> > > > > >> > +      * documentation.
> > > > > >> > +      */
> > > > > >> > +     XDP_FEATURES_COUNT,
> > > > > >> > +};
> > > > > >> > +
> > > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES=
_COUNT + 32 - 1) / 32)
> > > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(ind=
ex) / 32U])
> > > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U <<=
 (index) % 32U)
> > > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD=
_FLAG(index))
> > > > > >> > +
> > > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > > >> > --
> > > > > >> > 2.38.1
> > > > > >>
> > > > >

--hrDZeboCK6meSxP4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY6LiegAKCRA6cBh0uS2t
rGhiAP9EVmc3Y17hlpmEqX1gUOtAcUCOWm1+bdXlTBIBEG52JwEAg/ukt1I9FuXY
pZLlcGFCZA9fsA62t0TEwGnYblGJIgU=
=jk7j
-----END PGP SIGNATURE-----

--hrDZeboCK6meSxP4--

--===============7135597648429004876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7135597648429004876==--
