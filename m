Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3E96516D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 00:51:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EB1F415D4;
	Mon, 19 Dec 2022 23:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EB1F415D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671493877;
	bh=kSymhyOyFQmcMU2UpztYu5wNQQzD/ICoIdWBM5nBwUI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UlzE4C2m9TwbxAsHFGEdEwyXifWLnH9zhORUowrdvMIkuyrwJKzDXd2dHsDGa43Uj
	 duvhyfMMit7J1MtzAZw81j5Q8kwmPIoaXLzwsiQ5qtHsB2kMsjOkjUT5otQlhWHXbB
	 YZb8rx5nreJWLojsEVqUFjkSL1plFY9Su+woTej6KnUrtGHFt7GJGv4a5TMZnQUIvT
	 hMUrbdyi/omY0AaftN4142+dBnCg3gh4gHgCydQFroY4/XeuwpIwoFbZCo2alzaCEl
	 3p0UWNUq8YpFvDzqdyJ1ag/ILaNWkl15uwU0lB3/zhSx+A6WnFwFmg84sp7ZCWHMFC
	 jZsJ7FW9YEu5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xU0dlvxSY2iP; Mon, 19 Dec 2022 23:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E729241295;
	Mon, 19 Dec 2022 23:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E729241295
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03B741BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBB7441295
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBB7441295
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ShXoUG3bBwON for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 23:51:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D6F340881
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D6F340881
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:51:04 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 v15-20020a9d69cf000000b006709b5a534aso6271530oto.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=eqBttIaamoNkZkUXft8VWazjM1CAIiwokzRrKVEXYG4=;
 b=DvuKQl3+PN3A1Uop9uQEwcJStqWEogrKHlPAsLLGdzaTKRKfdzl0w8o5PvoIWYLLwK
 PGadjq7/GpNojOe4eLBtPlmPoL+3rXR4xi7qrdm5hJIYUcHGX5p41Xaoi2pSvDfXDr0R
 Hprti5iGsWqmov0YUOZJfzgOAa9FxME2rns+kCh+U9OUPm7fenSZ0HIUZbEbeTSt1HGb
 hLxa+YWxvKbpZwEWe1DX2CpdQ+e08qBzoxZj21POtclsK0egsrI9pyIRUaVtX4YiL/qz
 v0X1ifTZl277rUievn81wu6z5hicgq1tlKdt3R00B7HH3fpvx4yRLhrqYFa8Szm4767d
 dAsQ==
X-Gm-Message-State: ANoB5pmfYk3MbNFp9ymfqRZTiV9/BqkfqEJ2wvESJe9phmvjlaKS4EPF
 jmXpbKyy5+9ponoR9Pgd5MsbBLprEVpLrk8CZrM=
X-Google-Smtp-Source: AA0mqf4KfxSMX9dfxu03BuO1A9l/sVNblNB18GNs5QkSOUE78Uk33m1Yjkz1Qlcn6393P0Z2A46DsmnEOcGGSDXT67s=
X-Received: by 2002:a05:6830:3890:b0:670:9045:f754 with SMTP id
 bq16-20020a056830389000b006709045f754mr2681661otb.87.1671493863557; Mon, 19
 Dec 2022 15:51:03 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <Y6DDfVhOWRybVNUt@google.com>
In-Reply-To: <Y6DDfVhOWRybVNUt@google.com>
From: Marek Majtyka <alardam@gmail.com>
Date: Tue, 20 Dec 2022 00:52:53 +0100
Message-ID: <CAAOQfrFGArAYPyBX_kw4ZvFrTjKXf-jG-2F2y69nOs-oQ8Onwg@mail.gmail.com>
To: sdf@google.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=eqBttIaamoNkZkUXft8VWazjM1CAIiwokzRrKVEXYG4=;
 b=SUc7Mvcv5Lvb3XF5zBGLnbew0/RKoNMZPS8dIliH65voOeDYJP+wj93smOxo5Mn7Ea
 YlfoLbzaxJbMbx/r+Eviy1k/kPRITvH3FXkQTiE5zC19Oxt8c9akIWTytDJ1ZEIkd6CZ
 3q45HWTb1D4L4/VpkhfFFUnvSlKW9BWSEyxSlIh1jG6RrCEmZ5e4uOEuzieh8rnMHX8g
 fxtJQUPHozLlJjtuuWGTE+CQu6lNorzFhdAUXnkJyfAFMqK0b+ZVNs9+CM7um82WIAnQ
 gvDUkJe3R7InZwPZcPUUvLv4qXZmF2rhaIR7/T7fIIUJ2w2PB4dzw8qwP5nc993oo9WZ
 h32g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SUc7Mvcv
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 grygorii.strashko@ti.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 bjorn@kernel.org, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============2987779719735236853=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2987779719735236853==
Content-Type: multipart/alternative; boundary="000000000000fb4db705f036fd92"

--000000000000fb4db705f036fd92
Content-Type: text/plain; charset="UTF-8"

At the time of writing, I wanted to be able to read additional information
about the XDP capabilities of each network interface using ethtool. This
change was intended for Linux users/admins, and not for XDP experts who
mostly don't need it and prefer tasting XDP with netlink and bpf rather
than reading network interface features with ethtool.



On Mon, Dec 19, 2022 at 9:03 PM <sdf@google.com> wrote:

> On 12/19, Lorenzo Bianconi wrote:
> > From: Marek Majtyka <alardam@gmail.com>
>
> > Implement support for checking what kind of XDP features a netdev
> > supports. Previously, there was no way to do this other than to try to
> > create an AF_XDP socket on the interface or load an XDP program and see
> > if it worked. This commit changes this by adding a new variable which
> > describes all xdp supported functions on pretty detailed level:
>
> >   - aborted
> >   - drop
> >   - pass
> >   - tx
> >   - redirect
> >   - sock_zerocopy
> >   - hw_offload
> >   - redirect_target
> >   - tx_lock
> >   - frag_rx
> >   - frag_target
>
> > Zerocopy mode requires that redirect XDP operation is implemented in a
> > driver and the driver supports also zero copy mode. Full mode requires
> > that all XDP operation are implemented in the driver. Basic mode is just
> > full mode without redirect operation. Frag target requires
> > redirect_target one is supported by the driver.
>
> Can you share more about _why_ is it needed? If we can already obtain
> most of these signals via probing, why export the flags?
>
> > Initially, these new flags are disabled for all drivers by default.
>
> > Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > ---
> >   .../networking/netdev-xdp-features.rst        | 60 +++++++++++++++++
> >   include/linux/netdevice.h                     |  2 +
> >   include/linux/xdp_features.h                  | 64 +++++++++++++++++++
> >   include/uapi/linux/if_link.h                  |  7 ++
> >   include/uapi/linux/xdp_features.h             | 34 ++++++++++
> >   net/core/rtnetlink.c                          | 34 ++++++++++
> >   tools/include/uapi/linux/if_link.h            |  7 ++
> >   tools/include/uapi/linux/xdp_features.h       | 34 ++++++++++
> >   8 files changed, 242 insertions(+)
> >   create mode 100644 Documentation/networking/netdev-xdp-features.rst
> >   create mode 100644 include/linux/xdp_features.h
> >   create mode 100644 include/uapi/linux/xdp_features.h
> >   create mode 100644 tools/include/uapi/linux/xdp_features.h
>
> > diff --git a/Documentation/networking/netdev-xdp-features.rst
> > b/Documentation/networking/netdev-xdp-features.rst
> > new file mode 100644
> > index 000000000000..1dc803fe72dd
> > --- /dev/null
> > +++ b/Documentation/networking/netdev-xdp-features.rst
> > @@ -0,0 +1,60 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> > +=====================
> > +Netdev XDP features
> > +=====================
> > +
> > + * XDP FEATURES FLAGS
> > +
> > +Following netdev xdp features flags can be retrieved over route netlink
> > +interface (compact form) - the same way as netdev feature flags.
> > +These features flags are read only and cannot be change at runtime.
> > +
> > +*  XDP_ABORTED
> > +
> > +This feature informs if netdev supports xdp aborted action.
> > +
> > +*  XDP_DROP
> > +
> > +This feature informs if netdev supports xdp drop action.
> > +
> > +*  XDP_PASS
> > +
> > +This feature informs if netdev supports xdp pass action.
> > +
> > +*  XDP_TX
> > +
> > +This feature informs if netdev supports xdp tx action.
> > +
> > +*  XDP_REDIRECT
> > +
> > +This feature informs if netdev supports xdp redirect action.
> > +It assumes the all beforehand mentioned flags are enabled.
> > +
> > +*  XDP_SOCK_ZEROCOPY
> > +
> > +This feature informs if netdev driver supports xdp zero copy.
> > +It assumes the all beforehand mentioned flags are enabled.
> > +
> > +*  XDP_HW_OFFLOAD
> > +
> > +This feature informs if netdev driver supports xdp hw oflloading.
> > +
> > +*  XDP_TX_LOCK
> > +
> > +This feature informs if netdev ndo_xdp_xmit function requires locking.
> > +
> > +*  XDP_REDIRECT_TARGET
> > +
> > +This feature informs if netdev implements ndo_xdp_xmit callback.
> > +
> > +*  XDP_FRAG_RX
> > +
> > +This feature informs if netdev implements non-linear xdp buff support in
> > +the driver napi callback.
> > +
> > +*  XDP_FRAG_TARGET
> > +
> > +This feature informs if netdev implements non-linear xdp buff support in
> > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is
> > properly
> > +supported.
> > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > index aad12a179e54..ae5a8564383b 100644
> > --- a/include/linux/netdevice.h
> > +++ b/include/linux/netdevice.h
> > @@ -43,6 +43,7 @@
> >   #include <net/xdp.h>
>
> >   #include <linux/netdev_features.h>
> > +#include <linux/xdp_features.h>
> >   #include <linux/neighbour.h>
> >   #include <uapi/linux/netdevice.h>
> >   #include <uapi/linux/if_bonding.h>
> > @@ -2362,6 +2363,7 @@ struct net_device {
> >       struct rtnl_hw_stats64  *offload_xstats_l3;
>
> >       struct devlink_port     *devlink_port;
> > +     xdp_features_t          xdp_features;
> >   };
> >   #define to_net_dev(d) container_of(d, struct net_device, dev)
>
> > diff --git a/include/linux/xdp_features.h b/include/linux/xdp_features.h
> > new file mode 100644
> > index 000000000000..4e72a86ef329
> > --- /dev/null
> > +++ b/include/linux/xdp_features.h
> > @@ -0,0 +1,64 @@
> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > +/*
> > + * Network device xdp features.
> > + */
> > +#ifndef _LINUX_XDP_FEATURES_H
> > +#define _LINUX_XDP_FEATURES_H
> > +
> > +#include <linux/types.h>
> > +#include <linux/bitops.h>
> > +#include <asm/byteorder.h>
> > +#include <uapi/linux/xdp_features.h>
> > +
> > +typedef u32 xdp_features_t;
> > +
> > +#define __XDP_F_BIT(bit)     ((xdp_features_t)1 << (bit))
> > +#define __XDP_F(name)                __XDP_F_BIT(XDP_F_##name##_BIT)
> > +
> > +#define XDP_F_ABORTED                __XDP_F(ABORTED)
> > +#define XDP_F_DROP           __XDP_F(DROP)
> > +#define XDP_F_PASS           __XDP_F(PASS)
> > +#define XDP_F_TX             __XDP_F(TX)
> > +#define XDP_F_REDIRECT               __XDP_F(REDIRECT)
> > +#define XDP_F_REDIRECT_TARGET        __XDP_F(REDIRECT_TARGET)
> > +#define XDP_F_SOCK_ZEROCOPY  __XDP_F(SOCK_ZEROCOPY)
> > +#define XDP_F_HW_OFFLOAD     __XDP_F(HW_OFFLOAD)
> > +#define XDP_F_TX_LOCK                __XDP_F(TX_LOCK)
> > +#define XDP_F_FRAG_RX                __XDP_F(FRAG_RX)
> > +#define XDP_F_FRAG_TARGET    __XDP_F(FRAG_TARGET)
> > +
> > +#define XDP_F_BASIC          (XDP_F_ABORTED | XDP_F_DROP |   \
> > +                              XDP_F_PASS | XDP_F_TX)
> > +
> > +#define XDP_F_FULL           (XDP_F_BASIC | XDP_F_REDIRECT)
> > +
> > +#define XDP_F_FULL_ZC                (XDP_F_FULL | XDP_F_SOCK_ZEROCOPY)
> > +
> > +#define XDP_FEATURES_ABORTED_STR             "xdp-aborted"
> > +#define XDP_FEATURES_DROP_STR                        "xdp-drop"
> > +#define XDP_FEATURES_PASS_STR                        "xdp-pass"
> > +#define XDP_FEATURES_TX_STR                  "xdp-tx"
> > +#define XDP_FEATURES_REDIRECT_STR            "xdp-redirect"
> > +#define XDP_FEATURES_REDIRECT_TARGET_STR     "xdp-redirect-target"
> > +#define XDP_FEATURES_SOCK_ZEROCOPY_STR               "xdp-sock-zerocopy"
> > +#define XDP_FEATURES_HW_OFFLOAD_STR          "xdp-hw-offload"
> > +#define XDP_FEATURES_TX_LOCK_STR             "xdp-tx-lock"
> > +#define XDP_FEATURES_FRAG_RX_STR             "xdp-frag-rx"
> > +#define XDP_FEATURES_FRAG_TARGET_STR         "xdp-frag-target"
> > +
> > +#define DECLARE_XDP_FEATURES_TABLE(name, length)
>      \
> > +     const char name[][length] = {
>      \
> > +             [XDP_F_ABORTED_BIT] = XDP_FEATURES_ABORTED_STR,
>      \
> > +             [XDP_F_DROP_BIT] = XDP_FEATURES_DROP_STR,
>      \
> > +             [XDP_F_PASS_BIT] = XDP_FEATURES_PASS_STR,
>      \
> > +             [XDP_F_TX_BIT] = XDP_FEATURES_TX_STR,
>      \
> > +             [XDP_F_REDIRECT_BIT] = XDP_FEATURES_REDIRECT_STR,
>      \
> > +             [XDP_F_REDIRECT_TARGET_BIT] =
> XDP_FEATURES_REDIRECT_TARGET_STR, \
> > +             [XDP_F_SOCK_ZEROCOPY_BIT] =
> XDP_FEATURES_SOCK_ZEROCOPY_STR,     \
> > +             [XDP_F_HW_OFFLOAD_BIT] = XDP_FEATURES_HW_OFFLOAD_STR,
>      \
> > +             [XDP_F_TX_LOCK_BIT] = XDP_FEATURES_TX_LOCK_STR,
>      \
> > +             [XDP_F_FRAG_RX_BIT] = XDP_FEATURES_FRAG_RX_STR,
>      \
> > +             [XDP_F_FRAG_TARGET_BIT] = XDP_FEATURES_FRAG_TARGET_STR,
>      \
> > +     }
> > +
> > +#endif /* _LINUX_XDP_FEATURES_H */
> > diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> > index 1021a7e47a86..971c658ceaea 100644
> > --- a/include/uapi/linux/if_link.h
> > +++ b/include/uapi/linux/if_link.h
> > @@ -374,6 +374,8 @@ enum {
>
> >       IFLA_DEVLINK_PORT,
>
> > +     IFLA_XDP_FEATURES,
> > +
> >       __IFLA_MAX
> >   };
>
> > @@ -1318,6 +1320,11 @@ enum {
>
> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
>
> > +enum {
> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > +};
> > +
> >   enum {
> >       IFLA_EVENT_NONE,
> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > diff --git a/include/uapi/linux/xdp_features.h
> > b/include/uapi/linux/xdp_features.h
> > new file mode 100644
> > index 000000000000..48eb42069bcd
> > --- /dev/null
> > +++ b/include/uapi/linux/xdp_features.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > +/*
> > + * Copyright (c) 2020 Intel
> > + */
> > +
> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > +#define __UAPI_LINUX_XDP_FEATURES__
> > +
> > +enum {
> > +     XDP_F_ABORTED_BIT,
> > +     XDP_F_DROP_BIT,
> > +     XDP_F_PASS_BIT,
> > +     XDP_F_TX_BIT,
> > +     XDP_F_REDIRECT_BIT,
> > +     XDP_F_REDIRECT_TARGET_BIT,
> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > +     XDP_F_HW_OFFLOAD_BIT,
> > +     XDP_F_TX_LOCK_BIT,
> > +     XDP_F_FRAG_RX_BIT,
> > +     XDP_F_FRAG_TARGET_BIT,
> > +     /*
> > +      * Add your fresh new property above and remember to update
> > +      * documentation.
> > +      */
> > +     XDP_FEATURES_COUNT,
> > +};
> > +
> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32
> - 1) / 32)
> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) %
> 32U)
> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > +
> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > index 64289bc98887..1c299746b614 100644
> > --- a/net/core/rtnetlink.c
> > +++ b/net/core/rtnetlink.c
> > @@ -1016,6 +1016,14 @@ static size_t rtnl_xdp_size(void)
> >       return xdp_size;
> >   }
>
> > +static size_t rtnl_xdp_features_size(void)
> > +{
> > +     size_t xdp_size = nla_total_size(0) +   /* nest IFLA_XDP_FEATURES
> */
> > +                       XDP_FEATURES_WORDS * nla_total_size(4);
> > +
> > +     return xdp_size;
> > +}
> > +
> >   static size_t rtnl_prop_list_size(const struct net_device *dev)
> >   {
> >       struct netdev_name_node *name_node;
> > @@ -1103,6 +1111,7 @@ static noinline size_t if_nlmsg_size(const struct
> > net_device *dev,
> >              + rtnl_prop_list_size(dev)
> >              + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADDRESS */
> >              + rtnl_devlink_port_size(dev)
> > +            + rtnl_xdp_features_size() /* IFLA_XDP_FEATURES */
> >              + 0;
> >   }
>
> > @@ -1546,6 +1555,27 @@ static int rtnl_xdp_fill(struct sk_buff *skb,
> > struct net_device *dev)
> >       return err;
> >   }
>
> > +static int rtnl_xdp_features_fill(struct sk_buff *skb, struct
> net_device
> > *dev)
> > +{
> > +     struct nlattr *attr;
> > +
> > +     attr = nla_nest_start_noflag(skb, IFLA_XDP_FEATURES);
> > +     if (!attr)
> > +             return -EMSGSIZE;
> > +
> > +     BUILD_BUG_ON(XDP_FEATURES_WORDS != 1);
> > +     if (nla_put_u32(skb, IFLA_XDP_FEATURES_BITS_WORD,
> dev->xdp_features))
> > +             goto err_cancel;
> > +
> > +     nla_nest_end(skb, attr);
> > +
> > +     return 0;
> > +
> > +err_cancel:
> > +     nla_nest_cancel(skb, attr);
> > +     return -EMSGSIZE;
> > +}
> > +
> >   static u32 rtnl_get_event(unsigned long event)
> >   {
> >       u32 rtnl_event_type = IFLA_EVENT_NONE;
> > @@ -1904,6 +1934,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
> >       if (rtnl_fill_devlink_port(skb, dev))
> >               goto nla_put_failure;
>
> > +     if (rtnl_xdp_features_fill(skb, dev))
> > +             goto nla_put_failure;
> > +
> >       nlmsg_end(skb, nlh);
> >       return 0;
>
> > @@ -1968,6 +2001,7 @@ static const struct nla_policy
> > ifla_policy[IFLA_MAX+1] = {
> >       [IFLA_TSO_MAX_SIZE]     = { .type = NLA_REJECT },
> >       [IFLA_TSO_MAX_SEGS]     = { .type = NLA_REJECT },
> >       [IFLA_ALLMULTI]         = { .type = NLA_REJECT },
> > +     [IFLA_XDP_FEATURES]     = { .type = NLA_NESTED },
> >   };
>
> >   static const struct nla_policy ifla_info_policy[IFLA_INFO_MAX+1] = {
> > diff --git a/tools/include/uapi/linux/if_link.h
> > b/tools/include/uapi/linux/if_link.h
> > index 82fe18f26db5..994228e9909a 100644
> > --- a/tools/include/uapi/linux/if_link.h
> > +++ b/tools/include/uapi/linux/if_link.h
> > @@ -354,6 +354,8 @@ enum {
>
> >       IFLA_DEVLINK_PORT,
>
> > +     IFLA_XDP_FEATURES,
> > +
> >       __IFLA_MAX
> >   };
>
> > @@ -1222,6 +1224,11 @@ enum {
>
> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
>
> > +enum {
> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > +};
> > +
> >   enum {
> >       IFLA_EVENT_NONE,
> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > diff --git a/tools/include/uapi/linux/xdp_features.h
> > b/tools/include/uapi/linux/xdp_features.h
> > new file mode 100644
> > index 000000000000..48eb42069bcd
> > --- /dev/null
> > +++ b/tools/include/uapi/linux/xdp_features.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > +/*
> > + * Copyright (c) 2020 Intel
> > + */
> > +
> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > +#define __UAPI_LINUX_XDP_FEATURES__
> > +
> > +enum {
> > +     XDP_F_ABORTED_BIT,
> > +     XDP_F_DROP_BIT,
> > +     XDP_F_PASS_BIT,
> > +     XDP_F_TX_BIT,
> > +     XDP_F_REDIRECT_BIT,
> > +     XDP_F_REDIRECT_TARGET_BIT,
> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > +     XDP_F_HW_OFFLOAD_BIT,
> > +     XDP_F_TX_LOCK_BIT,
> > +     XDP_F_FRAG_RX_BIT,
> > +     XDP_F_FRAG_TARGET_BIT,
> > +     /*
> > +      * Add your fresh new property above and remember to update
> > +      * documentation.
> > +      */
> > +     XDP_FEATURES_COUNT,
> > +};
> > +
> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32
> - 1) / 32)
> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) %
> 32U)
> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > +
> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > --
> > 2.38.1
>
>

--000000000000fb4db705f036fd92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">At the time of writing, I wanted to be able to read additi=
onal information about the XDP capabilities of each network interface using=
 ethtool. This change was intended for Linux users/admins, and not for XDP =
experts who mostly don&#39;t need it and prefer tasting XDP with netlink an=
d bpf rather than reading network interface features with ethtool.<br><br><=
/div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Dec 19, 2022 at 9:03 PM &lt;<a href=3D"mailto:sdf@google.com">sd=
f@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 12/19, Lorenzo Bianconi wrote:<br>
&gt; From: Marek Majtyka &lt;<a href=3D"mailto:alardam@gmail.com" target=3D=
"_blank">alardam@gmail.com</a>&gt;<br>
<br>
&gt; Implement support for checking what kind of XDP features a netdev<br>
&gt; supports. Previously, there was no way to do this other than to try to=
<br>
&gt; create an AF_XDP socket on the interface or load an XDP program and se=
e<br>
&gt; if it worked. This commit changes this by adding a new variable which<=
br>
&gt; describes all xdp supported functions on pretty detailed level:<br>
<br>
&gt;=C2=A0 =C2=A0- aborted<br>
&gt;=C2=A0 =C2=A0- drop<br>
&gt;=C2=A0 =C2=A0- pass<br>
&gt;=C2=A0 =C2=A0- tx<br>
&gt;=C2=A0 =C2=A0- redirect<br>
&gt;=C2=A0 =C2=A0- sock_zerocopy<br>
&gt;=C2=A0 =C2=A0- hw_offload<br>
&gt;=C2=A0 =C2=A0- redirect_target<br>
&gt;=C2=A0 =C2=A0- tx_lock<br>
&gt;=C2=A0 =C2=A0- frag_rx<br>
&gt;=C2=A0 =C2=A0- frag_target<br>
<br>
&gt; Zerocopy mode requires that redirect XDP operation is implemented in a=
<br>
&gt; driver and the driver supports also zero copy mode. Full mode requires=
<br>
&gt; that all XDP operation are implemented in the driver. Basic mode is ju=
st<br>
&gt; full mode without redirect operation. Frag target requires<br>
&gt; redirect_target one is supported by the driver.<br>
<br>
Can you share more about _why_ is it needed? If we can already obtain<br>
most of these signals via probing, why export the flags?<br>
<br>
&gt; Initially, these new flags are disabled for all drivers by default.<br=
>
<br>
&gt; Co-developed-by: Kumar Kartikeya Dwivedi &lt;<a href=3D"mailto:memxor@=
gmail.com" target=3D"_blank">memxor@gmail.com</a>&gt;<br>
&gt; Signed-off-by: Kumar Kartikeya Dwivedi &lt;<a href=3D"mailto:memxor@gm=
ail.com" target=3D"_blank">memxor@gmail.com</a>&gt;<br>
&gt; Co-developed-by: Lorenzo Bianconi &lt;<a href=3D"mailto:lorenzo@kernel=
.org" target=3D"_blank">lorenzo@kernel.org</a>&gt;<br>
&gt; Signed-off-by: Lorenzo Bianconi &lt;<a href=3D"mailto:lorenzo@kernel.o=
rg" target=3D"_blank">lorenzo@kernel.org</a>&gt;<br>
&gt; Signed-off-by: Marek Majtyka &lt;<a href=3D"mailto:alardam@gmail.com" =
target=3D"_blank">alardam@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../networking/netdev-xdp-features.rst=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | 60 +++++++++++++++++<br>
&gt;=C2=A0 =C2=A0include/linux/netdevice.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +<br>
&gt;=C2=A0 =C2=A0include/linux/xdp_features.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 64 +++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0include/uapi/linux/if_link.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 7 ++<br>
&gt;=C2=A0 =C2=A0include/uapi/linux/xdp_features.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 34 ++++++++++<br>
&gt;=C2=A0 =C2=A0net/core/rtnetlink.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 34 ++++++++++<br>
&gt;=C2=A0 =C2=A0tools/include/uapi/linux/if_link.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 7 ++<br>
&gt;=C2=A0 =C2=A0tools/include/uapi/linux/xdp_features.h=C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 34 ++++++++++<br>
&gt;=C2=A0 =C2=A08 files changed, 242 insertions(+)<br>
&gt;=C2=A0 =C2=A0create mode 100644 Documentation/networking/netdev-xdp-fea=
tures.rst<br>
&gt;=C2=A0 =C2=A0create mode 100644 include/linux/xdp_features.h<br>
&gt;=C2=A0 =C2=A0create mode 100644 include/uapi/linux/xdp_features.h<br>
&gt;=C2=A0 =C2=A0create mode 100644 tools/include/uapi/linux/xdp_features.h=
<br>
<br>
&gt; diff --git a/Documentation/networking/netdev-xdp-features.rst=C2=A0 <b=
r>
&gt; b/Documentation/networking/netdev-xdp-features.rst<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..1dc803fe72dd<br>
&gt; --- /dev/null<br>
&gt; +++ b/Documentation/networking/netdev-xdp-features.rst<br>
&gt; @@ -0,0 +1,60 @@<br>
&gt; +.. SPDX-License-Identifier: GPL-2.0<br>
&gt; +<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; +Netdev XDP features<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; +<br>
&gt; + * XDP FEATURES FLAGS<br>
&gt; +<br>
&gt; +Following netdev xdp features flags can be retrieved over route netli=
nk<br>
&gt; +interface (compact form) - the same way as netdev feature flags.<br>
&gt; +These features flags are read only and cannot be change at runtime.<b=
r>
&gt; +<br>
&gt; +*=C2=A0 XDP_ABORTED<br>
&gt; +<br>
&gt; +This feature informs if netdev supports xdp aborted action.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_DROP<br>
&gt; +<br>
&gt; +This feature informs if netdev supports xdp drop action.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_PASS<br>
&gt; +<br>
&gt; +This feature informs if netdev supports xdp pass action.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_TX<br>
&gt; +<br>
&gt; +This feature informs if netdev supports xdp tx action.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_REDIRECT<br>
&gt; +<br>
&gt; +This feature informs if netdev supports xdp redirect action.<br>
&gt; +It assumes the all beforehand mentioned flags are enabled.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_SOCK_ZEROCOPY<br>
&gt; +<br>
&gt; +This feature informs if netdev driver supports xdp zero copy.<br>
&gt; +It assumes the all beforehand mentioned flags are enabled.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_HW_OFFLOAD<br>
&gt; +<br>
&gt; +This feature informs if netdev driver supports xdp hw oflloading.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_TX_LOCK<br>
&gt; +<br>
&gt; +This feature informs if netdev ndo_xdp_xmit function requires locking=
.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_REDIRECT_TARGET<br>
&gt; +<br>
&gt; +This feature informs if netdev implements ndo_xdp_xmit callback.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_FRAG_RX<br>
&gt; +<br>
&gt; +This feature informs if netdev implements non-linear xdp buff support=
 in<br>
&gt; +the driver napi callback.<br>
&gt; +<br>
&gt; +*=C2=A0 XDP_FRAG_TARGET<br>
&gt; +<br>
&gt; +This feature informs if netdev implements non-linear xdp buff support=
 in<br>
&gt; +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET i=
s=C2=A0 <br>
&gt; properly<br>
&gt; +supported.<br>
&gt; diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h<br>
&gt; index aad12a179e54..ae5a8564383b 100644<br>
&gt; --- a/include/linux/netdevice.h<br>
&gt; +++ b/include/linux/netdevice.h<br>
&gt; @@ -43,6 +43,7 @@<br>
&gt;=C2=A0 =C2=A0#include &lt;net/xdp.h&gt;<br>
<br>
&gt;=C2=A0 =C2=A0#include &lt;linux/netdev_features.h&gt;<br>
&gt; +#include &lt;linux/xdp_features.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;linux/neighbour.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;uapi/linux/netdevice.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;uapi/linux/if_bonding.h&gt;<br>
&gt; @@ -2362,6 +2363,7 @@ struct net_device {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct rtnl_hw_stats64=C2=A0 *offload_xstats=
_l3;<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct devlink_port=C2=A0 =C2=A0 =C2=A0*devl=
ink_port;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0xdp_features_t=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
xdp_features;<br>
&gt;=C2=A0 =C2=A0};<br>
&gt;=C2=A0 =C2=A0#define to_net_dev(d) container_of(d, struct net_device, d=
ev)<br>
<br>
&gt; diff --git a/include/linux/xdp_features.h b/include/linux/xdp_features=
.h<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..4e72a86ef329<br>
&gt; --- /dev/null<br>
&gt; +++ b/include/linux/xdp_features.h<br>
&gt; @@ -0,0 +1,64 @@<br>
&gt; +/* SPDX-License-Identifier: GPL-2.0-or-later */<br>
&gt; +/*<br>
&gt; + * Network device xdp features.<br>
&gt; + */<br>
&gt; +#ifndef _LINUX_XDP_FEATURES_H<br>
&gt; +#define _LINUX_XDP_FEATURES_H<br>
&gt; +<br>
&gt; +#include &lt;linux/types.h&gt;<br>
&gt; +#include &lt;linux/bitops.h&gt;<br>
&gt; +#include &lt;asm/byteorder.h&gt;<br>
&gt; +#include &lt;uapi/linux/xdp_features.h&gt;<br>
&gt; +<br>
&gt; +typedef u32 xdp_features_t;<br>
&gt; +<br>
&gt; +#define __XDP_F_BIT(bit)=C2=A0 =C2=A0 =C2=A0((xdp_features_t)1 &lt;&l=
t; (bit))<br>
&gt; +#define __XDP_F(name)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 __XDP_F_BIT(XDP_F_##name##_BIT)<br>
&gt; +<br>
&gt; +#define XDP_F_ABORTED=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 __XDP_F(ABORTED)<br>
&gt; +#define XDP_F_DROP=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__XDP_F(DR=
OP)<br>
&gt; +#define XDP_F_PASS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__XDP_F(PA=
SS)<br>
&gt; +#define XDP_F_TX=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__XDP=
_F(TX)<br>
&gt; +#define XDP_F_REDIRECT=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0__XDP_F(REDIRECT)<br>
&gt; +#define XDP_F_REDIRECT_TARGET=C2=A0 =C2=A0 =C2=A0 =C2=A0 __XDP_F(REDI=
RECT_TARGET)<br>
&gt; +#define XDP_F_SOCK_ZEROCOPY=C2=A0 __XDP_F(SOCK_ZEROCOPY)<br>
&gt; +#define XDP_F_HW_OFFLOAD=C2=A0 =C2=A0 =C2=A0__XDP_F(HW_OFFLOAD)<br>
&gt; +#define XDP_F_TX_LOCK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 __XDP_F(TX_LOCK)<br>
&gt; +#define XDP_F_FRAG_RX=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 __XDP_F(FRAG_RX)<br>
&gt; +#define XDP_F_FRAG_TARGET=C2=A0 =C2=A0 __XDP_F(FRAG_TARGET)<br>
&gt; +<br>
&gt; +#define XDP_F_BASIC=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (XDP_F_ABORTED =
| XDP_F_DROP |=C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 XDP_F_PASS | XDP_F_TX)<br>
&gt; +<br>
&gt; +#define XDP_F_FULL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(XDP_F_BAS=
IC | XDP_F_REDIRECT)<br>
&gt; +<br>
&gt; +#define XDP_F_FULL_ZC=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (XDP_F_FULL | XDP_F_SOCK_ZEROCOPY)<br>
&gt; +<br>
&gt; +#define XDP_FEATURES_ABORTED_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;xdp-aborted&quot;<br>
&gt; +#define XDP_FEATURES_DROP_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;xdp-drop&quot;<br>
&gt; +#define XDP_FEATURES_PASS_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;xdp-pass&quot;<br>
&gt; +#define XDP_FEATURES_TX_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;xdp-tx&quot;<br>
&gt; +#define XDP_FEATURES_REDIRECT_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;xdp-redirect&quot;<br>
&gt; +#define XDP_FEATURES_REDIRECT_TARGET_STR=C2=A0 =C2=A0 =C2=A0&quot;xdp=
-redirect-target&quot;<br>
&gt; +#define XDP_FEATURES_SOCK_ZEROCOPY_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&quot;xdp-sock-zerocopy&quot;<br>
&gt; +#define XDP_FEATURES_HW_OFFLOAD_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;xdp-hw-offload&quot;<br>
&gt; +#define XDP_FEATURES_TX_LOCK_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;xdp-tx-lock&quot;<br>
&gt; +#define XDP_FEATURES_FRAG_RX_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;xdp-frag-rx&quot;<br>
&gt; +#define XDP_FEATURES_FRAG_TARGET_STR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;xdp-frag-target&quot;<br>
&gt; +<br>
&gt; +#define DECLARE_XDP_FEATURES_TABLE(name, length)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0const char name[][length] =3D {=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_ABORTED_BIT] =
=3D XDP_FEATURES_ABORTED_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_DROP_BIT] =3D =
XDP_FEATURES_DROP_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_PASS_BIT] =3D =
XDP_FEATURES_PASS_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_TX_BIT] =3D XD=
P_FEATURES_TX_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_REDIRECT_BIT] =
=3D XDP_FEATURES_REDIRECT_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_REDIRECT_TARGE=
T_BIT] =3D XDP_FEATURES_REDIRECT_TARGET_STR, \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_SOCK_ZEROCOPY_=
BIT] =3D XDP_FEATURES_SOCK_ZEROCOPY_STR,=C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_HW_OFFLOAD_BIT=
] =3D XDP_FEATURES_HW_OFFLOAD_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_TX_LOCK_BIT] =
=3D XDP_FEATURES_TX_LOCK_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_FRAG_RX_BIT] =
=3D XDP_FEATURES_FRAG_RX_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[XDP_F_FRAG_TARGET_BI=
T] =3D XDP_FEATURES_FRAG_TARGET_STR,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +#endif /* _LINUX_XDP_FEATURES_H */<br>
&gt; diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link=
.h<br>
&gt; index 1021a7e47a86..971c658ceaea 100644<br>
&gt; --- a/include/uapi/linux/if_link.h<br>
&gt; +++ b/include/uapi/linux/if_link.h<br>
&gt; @@ -374,6 +374,8 @@ enum {<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_DEVLINK_PORT,<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES,<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__IFLA_MAX<br>
&gt;=C2=A0 =C2=A0};<br>
<br>
&gt; @@ -1318,6 +1320,11 @@ enum {<br>
<br>
&gt;=C2=A0 =C2=A0#define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)<br>
<br>
&gt; +enum {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES_WORD_UNSPEC =3D 0,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES_BITS_WORD,<br>
&gt; +};<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0enum {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_EVENT_NONE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_EVENT_REBOOT,=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* internal reset / reboot */<br>
&gt; diff --git a/include/uapi/linux/xdp_features.h=C2=A0 <br>
&gt; b/include/uapi/linux/xdp_features.h<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..48eb42069bcd<br>
&gt; --- /dev/null<br>
&gt; +++ b/include/uapi/linux/xdp_features.h<br>
&gt; @@ -0,0 +1,34 @@<br>
&gt; +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */<br>
&gt; +/*<br>
&gt; + * Copyright (c) 2020 Intel<br>
&gt; + */<br>
&gt; +<br>
&gt; +#ifndef __UAPI_LINUX_XDP_FEATURES__<br>
&gt; +#define __UAPI_LINUX_XDP_FEATURES__<br>
&gt; +<br>
&gt; +enum {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_ABORTED_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_DROP_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_PASS_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_TX_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_REDIRECT_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_REDIRECT_TARGET_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_SOCK_ZEROCOPY_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_HW_OFFLOAD_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_TX_LOCK_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_FRAG_RX_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_FRAG_TARGET_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * Add your fresh new property above and remember=
 to update<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * documentation.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_FEATURES_COUNT,<br>
&gt; +};<br>
&gt; +<br>
&gt; +#define XDP_FEATURES_WORDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((XDP_FEATURES_COUNT + 32 - 1) / 32)<br>
&gt; +#define XDP_FEATURES_WORD(blocks, index)=C2=A0 =C2=A0 =C2=A0((blocks)=
[(index) / 32U])<br>
&gt; +#define XDP_FEATURES_FIELD_FLAG(index)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0(1U &lt;&lt; (index) % 32U)<br>
&gt; +#define XDP_FEATURES_BIT_IS_SET(blocks, index)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0(XDP_FEATURES_WORD(blocks, index) &amp; XDP_FEATU=
RES_FIELD_FLAG(index))<br>
&gt; +<br>
&gt; +#endif=C2=A0 /* __UAPI_LINUX_XDP_FEATURES__ */<br>
&gt; diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c<br>
&gt; index 64289bc98887..1c299746b614 100644<br>
&gt; --- a/net/core/rtnetlink.c<br>
&gt; +++ b/net/core/rtnetlink.c<br>
&gt; @@ -1016,6 +1016,14 @@ static size_t rtnl_xdp_size(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return xdp_size;<br>
&gt;=C2=A0 =C2=A0}<br>
<br>
&gt; +static size_t rtnl_xdp_features_size(void)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0size_t xdp_size =3D nla_total_size(0) +=C2=A0 =C2=
=A0/* nest IFLA_XDP_FEATURES */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0XDP_FEATURES_WORDS * nla_total_size(4);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return xdp_size;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0static size_t rtnl_prop_list_size(const struct net_device =
*dev)<br>
&gt;=C2=A0 =C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct netdev_name_node *name_node;<br>
&gt; @@ -1103,6 +1111,7 @@ static noinline size_t if_nlmsg_size(const struc=
t=C2=A0 <br>
&gt; net_device *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 + rtnl_prop_list_size(=
dev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 + nla_total_size(MAX_A=
DDR_LEN) /* IFLA_PERM_ADDRESS */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 + rtnl_devlink_port_si=
ze(dev)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 + rtnl_xdp_features_size() =
/* IFLA_XDP_FEATURES */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 + 0;<br>
&gt;=C2=A0 =C2=A0}<br>
<br>
&gt; @@ -1546,6 +1555,27 @@ static int rtnl_xdp_fill(struct sk_buff *skb,=
=C2=A0 <br>
&gt; struct net_device *dev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return err;<br>
&gt;=C2=A0 =C2=A0}<br>
<br>
&gt; +static int rtnl_xdp_features_fill(struct sk_buff *skb, struct net_dev=
ice=C2=A0 <br>
&gt; *dev)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct nlattr *attr;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0attr =3D nla_nest_start_noflag(skb, IFLA_XDP_FEAT=
URES);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!attr)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EMSGSIZE;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0BUILD_BUG_ON(XDP_FEATURES_WORDS !=3D 1);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (nla_put_u32(skb, IFLA_XDP_FEATURES_BITS_WORD,=
 dev-&gt;xdp_features))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err_cancel;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0nla_nest_end(skb, attr);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; +<br>
&gt; +err_cancel:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0nla_nest_cancel(skb, attr);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return -EMSGSIZE;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0static u32 rtnl_get_event(unsigned long event)<br>
&gt;=C2=A0 =C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 rtnl_event_type =3D IFLA_EVENT_NONE;<br>
&gt; @@ -1904,6 +1934,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rtnl_fill_devlink_port(skb, dev))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto nla_put_fai=
lure;<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (rtnl_xdp_features_fill(skb, dev))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto nla_put_failure;=
<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0nlmsg_end(skb, nlh);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
<br>
&gt; @@ -1968,6 +2001,7 @@ static const struct nla_policy=C2=A0 <br>
&gt; ifla_policy[IFLA_MAX+1] =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[IFLA_TSO_MAX_SIZE]=C2=A0 =C2=A0 =C2=A0=3D {=
 .type =3D NLA_REJECT },<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[IFLA_TSO_MAX_SEGS]=C2=A0 =C2=A0 =C2=A0=3D {=
 .type =3D NLA_REJECT },<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[IFLA_ALLMULTI]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D { .type =3D NLA_REJECT },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0[IFLA_XDP_FEATURES]=C2=A0 =C2=A0 =C2=A0=3D { .typ=
e =3D NLA_NESTED },<br>
&gt;=C2=A0 =C2=A0};<br>
<br>
&gt;=C2=A0 =C2=A0static const struct nla_policy ifla_info_policy[IFLA_INFO_=
MAX+1] =3D {<br>
&gt; diff --git a/tools/include/uapi/linux/if_link.h=C2=A0 <br>
&gt; b/tools/include/uapi/linux/if_link.h<br>
&gt; index 82fe18f26db5..994228e9909a 100644<br>
&gt; --- a/tools/include/uapi/linux/if_link.h<br>
&gt; +++ b/tools/include/uapi/linux/if_link.h<br>
&gt; @@ -354,6 +354,8 @@ enum {<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_DEVLINK_PORT,<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES,<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__IFLA_MAX<br>
&gt;=C2=A0 =C2=A0};<br>
<br>
&gt; @@ -1222,6 +1224,11 @@ enum {<br>
<br>
&gt;=C2=A0 =C2=A0#define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)<br>
<br>
&gt; +enum {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES_WORD_UNSPEC =3D 0,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0IFLA_XDP_FEATURES_BITS_WORD,<br>
&gt; +};<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0enum {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_EVENT_NONE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0IFLA_EVENT_REBOOT,=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 /* internal reset / reboot */<br>
&gt; diff --git a/tools/include/uapi/linux/xdp_features.h=C2=A0 <br>
&gt; b/tools/include/uapi/linux/xdp_features.h<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..48eb42069bcd<br>
&gt; --- /dev/null<br>
&gt; +++ b/tools/include/uapi/linux/xdp_features.h<br>
&gt; @@ -0,0 +1,34 @@<br>
&gt; +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */<br>
&gt; +/*<br>
&gt; + * Copyright (c) 2020 Intel<br>
&gt; + */<br>
&gt; +<br>
&gt; +#ifndef __UAPI_LINUX_XDP_FEATURES__<br>
&gt; +#define __UAPI_LINUX_XDP_FEATURES__<br>
&gt; +<br>
&gt; +enum {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_ABORTED_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_DROP_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_PASS_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_TX_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_REDIRECT_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_REDIRECT_TARGET_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_SOCK_ZEROCOPY_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_HW_OFFLOAD_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_TX_LOCK_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_FRAG_RX_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_F_FRAG_TARGET_BIT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * Add your fresh new property above and remember=
 to update<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * documentation.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0XDP_FEATURES_COUNT,<br>
&gt; +};<br>
&gt; +<br>
&gt; +#define XDP_FEATURES_WORDS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((XDP_FEATURES_COUNT + 32 - 1) / 32)<br>
&gt; +#define XDP_FEATURES_WORD(blocks, index)=C2=A0 =C2=A0 =C2=A0((blocks)=
[(index) / 32U])<br>
&gt; +#define XDP_FEATURES_FIELD_FLAG(index)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0(1U &lt;&lt; (index) % 32U)<br>
&gt; +#define XDP_FEATURES_BIT_IS_SET(blocks, index)=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0(XDP_FEATURES_WORD(blocks, index) &amp; XDP_FEATU=
RES_FIELD_FLAG(index))<br>
&gt; +<br>
&gt; +#endif=C2=A0 /* __UAPI_LINUX_XDP_FEATURES__ */<br>
&gt; --<br>
&gt; 2.38.1<br>
<br>
</blockquote></div>

--000000000000fb4db705f036fd92--


--===============2987779719735236853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2987779719735236853==--


