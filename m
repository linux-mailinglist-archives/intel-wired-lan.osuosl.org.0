Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684965359C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 18:51:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B882D60BA8;
	Wed, 21 Dec 2022 17:51:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B882D60BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671645066;
	bh=2cGNPXmqD2r3hp/PW4Az5vSheoQPC20W++1Dy83Pu4Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uASkmAcH8pVB6UQo2anjsQbcqURcdWPDzlxu+8KlMrNn429AGLpcNdKp7oEHzW5SO
	 zoYdb2iA5VXFMpfYe+mhUhPZeeYMxkXX++Ch5GAEgErI9iAHYtmdBJDG8MMl59/KGJ
	 8Soi7h/zvvzMuik/3EpVZ4SflgOTJDBKBB5W8p9RdGn5k5ZLA81KP+4lq7zU22IpU/
	 vxaBbPc5lL45/v53DZFtOtR37L1r7Sc0SlI1dHIzMsq2ipezmih6agzBhfLewmxlgL
	 J7ywZU6vT1YVbiRmS48Sxv1o7FSjQSV+TiNben8l6s03vhBHw8q1x79TPgAURhxdwE
	 1hiB7Wcak3Syg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBICWioeW_Zx; Wed, 21 Dec 2022 17:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED03160B6C;
	Wed, 21 Dec 2022 17:51:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED03160B6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1A71BF844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04696404A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04696404A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xbmJZLbKa6c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 17:50:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FC84400A6
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FC84400A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 17:50:58 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 w4-20020a17090ac98400b002186f5d7a4cso3135454pjt.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 09:50:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Y1TjQ3DnvGblKxcV4mpqMt5wNmihV26Sfy0OZO/hyGA=;
 b=P3X6aX8sH47c4XrX7bYXvkERRCJgmUaT+GUa074+igEfbJ3+al3MF0GjV7+XBL0qSR
 /yg+V5HzXbTHvNCzpTiDT7qRsOsednlZek7IcaMelNzQWr8FPudHzaJcs6O1/2z6OyZM
 c+SBLnaPT1J5EyuXrgMOPbJJRgHD3yY9UnK/yFKg/ZGVyQiD9U5r0O4Vd0M5wqaTkpKJ
 kR82ayfz/PTiO0zN/DQm3sno1619OrjwXvpHvdyXHyurYmV9yLL7YTjhF/BEntm6oLmj
 VmyNlFDIRejTMMjAqtRmuUAYd2zebG2fxx3Auksq7kV0r938OxOvYz3dq4LLMFF8xwIn
 KN7Q==
X-Gm-Message-State: AFqh2kp2r/V5KjukB6l/5VqZfcOjACtY4hUWccVFPAhV8LveQrQkj9T8
 +VRb4cNMT+oNKvtxPYcDU80l9wYAYBDXEp20SS1Wvg==
X-Google-Smtp-Source: AMrXdXuwWuD5OiXNakvYJAfg6u0D7ABf686R8MJjms3J2cZ/9B/Cbr4fWTvpDyWNAiEYFWkC4mOEbGfbsC4ScNIVHk8=
X-Received: by 2002:a17:90a:a02:b0:21e:df53:9183 with SMTP id
 o2-20020a17090a0a0200b0021edf539183mr249582pjo.66.1671645057567; Wed, 21 Dec
 2022 09:50:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <Y6DDfVhOWRybVNUt@google.com>
 <CAAOQfrFGArAYPyBX_kw4ZvFrTjKXf-jG-2F2y69nOs-oQ8Onwg@mail.gmail.com>
 <CAKH8qBuktjBcY_CuqqkWs74oBB8Mnkm638Cb=sF38H4kPAx3NQ@mail.gmail.com>
 <Y6GKN/1iOC9eTsEE@lore-desk>
 <CAKH8qBts19wxSDAKk0SBk76ftvdK+sW6d3ufcBWoV5cMa2ENpA@mail.gmail.com>
 <Y6I2VyBCz7YRxxTR@localhost.localdomain>
 <CAKH8qBv1AhXEfeymiTBE_MLniAXQc6shpuiHeYyidH-Y0Fc2ew@mail.gmail.com>
 <Y6Liehq9ZsXQMD2B@lore-desk>
In-Reply-To: <Y6Liehq9ZsXQMD2B@lore-desk>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 21 Dec 2022 09:50:45 -0800
Message-ID: <CAKH8qBsZo4H6beK5uhZWZaWfTgnCHvdC1zzh+VKFr_Od-R9G4g@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Y1TjQ3DnvGblKxcV4mpqMt5wNmihV26Sfy0OZO/hyGA=;
 b=oYy1yjhKEiclC8hhW2oXbz1XG0CaV4R/FE33BUQ5LeK9l2wjHAce8c+g2j8BUnMI0r
 8jzZELlK14fsBZu6NOLzo0Cy2QbshbT1al2bmC1s4qfvkdr3AExQvW9VzrNiLtPbXZQ2
 1Jr74wu8RsNrl9u6hyV1lAx1BuKNs58JEkGzX120M4y+Hmhe/y5prT/uFXvYzxJJRivg
 mLgUDJJ1cC+Cyf4pZedUwkzTuG44UglLaUGNrip6fUFewlpxtgNgPsznYzoSZaSCzj25
 A56Nfy1O3S4zY8B0x2x2lTAFSTJvhzMYKusPCHgjb7irdiZ7VI4OtR9k8xQbjHC780kR
 tJwQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=oYy1yjhK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 21, 2022 at 2:39 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> [...]
> >
> > All of the above makes sense, thanks for the details. In this case,
> > agreed that it's probably not possible to probe these easily without
> > explicit flags :-(
> >
> > Let me bikeshed the names a bit as well, feel free to ignore...
> >
> > 1. Maybe group XDP_{ABORTED,DROP,PASS,TX,REDIRECT} with some common
> > prefix? XDP_ACT_xxx (ACT for action)? Or XDP_RET_xxx?
> >
>
> ack, I am fine to add ACT prefix, something like:
>
> - XDP_ACT_ABORTED
> - XDP_ACT_DROP
> ...
>
> - XDP_ACT_REDIRECT
>
> > 2. Maybe: XDP_SOCK_ZEROCOPY -> XSK_ZEROCOPY ?
>
> ack, agree
>
> >
> > 3. XDP_HW_OFFLOAD we don't seem to set anywhere? nfp/netdevsim changes
> > are missing or out of scope?
>
> actually we set XDP_F_HW_OFFLOAD for netdevsim and nfp driver
>
> >
> > 4. Agree with Jakub, not sure XDP_TX_LOCK doesn't seem relevant?
>
> ack, I agree we can drop it
>
> >
> > 5. XDP_REDIRECT_TARGET -> XDP_RCV_REDIRECT (can 'receive' and handle
> > redirects? in this case XDP_ACT_REDIRECT means can 'generate'
>
> naming is always hard :) what about XDP_NDO_XMIT instead of
> XDP_REDIRECT_TARGET? (and rely on XDP_ACT_REDIRECT for XDP_F_REDIRECT)

Sounds good!

> > redirects)
> >
> > 6. For frags, maybe:
> >
> > XDP_FRAG_RX     -> XDP_SG_RX
>
> fine
>
> > XDP_FRAG_TARGET -> XDP_SG_RCV_REDIRECT (so this is that same as
> > XDP_RCV_REDIRECT but can handle frags)
>
> what about of XDP_NDO_XMIT_SG?

Same here. I'm now getting quiet in order to not make it more complicated :-)


> Regards,
> Lorenzo
>
> >
> > But also probably fine to keep FRAG instead of SG to match BPF_F_XDP_HAS_FRAGS?
> >
> > > Regards,
> > > Lorenzo
> > >
> > > >
> > > > > Regards,
> > > > > Lorenzo
> > > > >
> > > > > >
> > > > > > > On Mon, Dec 19, 2022 at 9:03 PM <sdf@google.com> wrote:
> > > > > > >>
> > > > > > >> On 12/19, Lorenzo Bianconi wrote:
> > > > > > >> > From: Marek Majtyka <alardam@gmail.com>
> > > > > > >>
> > > > > > >> > Implement support for checking what kind of XDP features a netdev
> > > > > > >> > supports. Previously, there was no way to do this other than to try to
> > > > > > >> > create an AF_XDP socket on the interface or load an XDP program and see
> > > > > > >> > if it worked. This commit changes this by adding a new variable which
> > > > > > >> > describes all xdp supported functions on pretty detailed level:
> > > > > > >>
> > > > > > >> >   - aborted
> > > > > > >> >   - drop
> > > > > > >> >   - pass
> > > > > > >> >   - tx
> > > > > > >> >   - redirect
> > > > > > >> >   - sock_zerocopy
> > > > > > >> >   - hw_offload
> > > > > > >> >   - redirect_target
> > > > > > >> >   - tx_lock
> > > > > > >> >   - frag_rx
> > > > > > >> >   - frag_target
> > > > > > >>
> > > > > > >> > Zerocopy mode requires that redirect XDP operation is implemented in a
> > > > > > >> > driver and the driver supports also zero copy mode. Full mode requires
> > > > > > >> > that all XDP operation are implemented in the driver. Basic mode is just
> > > > > > >> > full mode without redirect operation. Frag target requires
> > > > > > >> > redirect_target one is supported by the driver.
> > > > > > >>
> > > > > > >> Can you share more about _why_ is it needed? If we can already obtain
> > > > > > >> most of these signals via probing, why export the flags?
> > > > > > >>
> > > > > > >> > Initially, these new flags are disabled for all drivers by default.
> > > > > > >>
> > > > > > >> > Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > > > >> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > > > >> > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > > >> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > > > >> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > > > > > >> > ---
> > > > > > >> >   .../networking/netdev-xdp-features.rst        | 60 +++++++++++++++++
> > > > > > >> >   include/linux/netdevice.h                     |  2 +
> > > > > > >> >   include/linux/xdp_features.h                  | 64 +++++++++++++++++++
> > > > > > >> >   include/uapi/linux/if_link.h                  |  7 ++
> > > > > > >> >   include/uapi/linux/xdp_features.h             | 34 ++++++++++
> > > > > > >> >   net/core/rtnetlink.c                          | 34 ++++++++++
> > > > > > >> >   tools/include/uapi/linux/if_link.h            |  7 ++
> > > > > > >> >   tools/include/uapi/linux/xdp_features.h       | 34 ++++++++++
> > > > > > >> >   8 files changed, 242 insertions(+)
> > > > > > >> >   create mode 100644 Documentation/networking/netdev-xdp-features.rst
> > > > > > >> >   create mode 100644 include/linux/xdp_features.h
> > > > > > >> >   create mode 100644 include/uapi/linux/xdp_features.h
> > > > > > >> >   create mode 100644 tools/include/uapi/linux/xdp_features.h
> > > > > > >>
> > > > > > >> > diff --git a/Documentation/networking/netdev-xdp-features.rst
> > > > > > >> > b/Documentation/networking/netdev-xdp-features.rst
> > > > > > >> > new file mode 100644
> > > > > > >> > index 000000000000..1dc803fe72dd
> > > > > > >> > --- /dev/null
> > > > > > >> > +++ b/Documentation/networking/netdev-xdp-features.rst
> > > > > > >> > @@ -0,0 +1,60 @@
> > > > > > >> > +.. SPDX-License-Identifier: GPL-2.0
> > > > > > >> > +
> > > > > > >> > +=====================
> > > > > > >> > +Netdev XDP features
> > > > > > >> > +=====================
> > > > > > >> > +
> > > > > > >> > + * XDP FEATURES FLAGS
> > > > > > >> > +
> > > > > > >> > +Following netdev xdp features flags can be retrieved over route netlink
> > > > > > >> > +interface (compact form) - the same way as netdev feature flags.
> > > > > > >> > +These features flags are read only and cannot be change at runtime.
> > > > > > >> > +
> > > > > > >> > +*  XDP_ABORTED
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev supports xdp aborted action.
> > > > > > >> > +
> > > > > > >> > +*  XDP_DROP
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev supports xdp drop action.
> > > > > > >> > +
> > > > > > >> > +*  XDP_PASS
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev supports xdp pass action.
> > > > > > >> > +
> > > > > > >> > +*  XDP_TX
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev supports xdp tx action.
> > > > > > >> > +
> > > > > > >> > +*  XDP_REDIRECT
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev supports xdp redirect action.
> > > > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > > > >> > +
> > > > > > >> > +*  XDP_SOCK_ZEROCOPY
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev driver supports xdp zero copy.
> > > > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > > > >> > +
> > > > > > >> > +*  XDP_HW_OFFLOAD
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev driver supports xdp hw oflloading.
> > > > > > >> > +
> > > > > > >> > +*  XDP_TX_LOCK
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev ndo_xdp_xmit function requires locking.
> > > > > > >> > +
> > > > > > >> > +*  XDP_REDIRECT_TARGET
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev implements ndo_xdp_xmit callback.
> > > > > > >> > +
> > > > > > >> > +*  XDP_FRAG_RX
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev implements non-linear xdp buff support in
> > > > > > >> > +the driver napi callback.
> > > > > > >> > +
> > > > > > >> > +*  XDP_FRAG_TARGET
> > > > > > >> > +
> > > > > > >> > +This feature informs if netdev implements non-linear xdp buff support in
> > > > > > >> > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is
> > > > > > >> > properly
> > > > > > >> > +supported.
> > > > > > >> > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > > > > > >> > index aad12a179e54..ae5a8564383b 100644
> > > > > > >> > --- a/include/linux/netdevice.h
> > > > > > >> > +++ b/include/linux/netdevice.h
> > > > > > >> > @@ -43,6 +43,7 @@
> > > > > > >> >   #include <net/xdp.h>
> > > > > > >>
> > > > > > >> >   #include <linux/netdev_features.h>
> > > > > > >> > +#include <linux/xdp_features.h>
> > > > > > >> >   #include <linux/neighbour.h>
> > > > > > >> >   #include <uapi/linux/netdevice.h>
> > > > > > >> >   #include <uapi/linux/if_bonding.h>
> > > > > > >> > @@ -2362,6 +2363,7 @@ struct net_device {
> > > > > > >> >       struct rtnl_hw_stats64  *offload_xstats_l3;
> > > > > > >>
> > > > > > >> >       struct devlink_port     *devlink_port;
> > > > > > >> > +     xdp_features_t          xdp_features;
> > > > > > >> >   };
> > > > > > >> >   #define to_net_dev(d) container_of(d, struct net_device, dev)
> > > > > > >>
> > > > > > >> > diff --git a/include/linux/xdp_features.h b/include/linux/xdp_features.h
> > > > > > >> > new file mode 100644
> > > > > > >> > index 000000000000..4e72a86ef329
> > > > > > >> > --- /dev/null
> > > > > > >> > +++ b/include/linux/xdp_features.h
> > > > > > >> > @@ -0,0 +1,64 @@
> > > > > > >> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > > > > > >> > +/*
> > > > > > >> > + * Network device xdp features.
> > > > > > >> > + */
> > > > > > >> > +#ifndef _LINUX_XDP_FEATURES_H
> > > > > > >> > +#define _LINUX_XDP_FEATURES_H
> > > > > > >> > +
> > > > > > >> > +#include <linux/types.h>
> > > > > > >> > +#include <linux/bitops.h>
> > > > > > >> > +#include <asm/byteorder.h>
> > > > > > >> > +#include <uapi/linux/xdp_features.h>
> > > > > > >> > +
> > > > > > >> > +typedef u32 xdp_features_t;
> > > > > > >> > +
> > > > > > >> > +#define __XDP_F_BIT(bit)     ((xdp_features_t)1 << (bit))
> > > > > > >> > +#define __XDP_F(name)                __XDP_F_BIT(XDP_F_##name##_BIT)
> > > > > > >> > +
> > > > > > >> > +#define XDP_F_ABORTED                __XDP_F(ABORTED)
> > > > > > >> > +#define XDP_F_DROP           __XDP_F(DROP)
> > > > > > >> > +#define XDP_F_PASS           __XDP_F(PASS)
> > > > > > >> > +#define XDP_F_TX             __XDP_F(TX)
> > > > > > >> > +#define XDP_F_REDIRECT               __XDP_F(REDIRECT)
> > > > > > >> > +#define XDP_F_REDIRECT_TARGET        __XDP_F(REDIRECT_TARGET)
> > > > > > >> > +#define XDP_F_SOCK_ZEROCOPY  __XDP_F(SOCK_ZEROCOPY)
> > > > > > >> > +#define XDP_F_HW_OFFLOAD     __XDP_F(HW_OFFLOAD)
> > > > > > >> > +#define XDP_F_TX_LOCK                __XDP_F(TX_LOCK)
> > > > > > >> > +#define XDP_F_FRAG_RX                __XDP_F(FRAG_RX)
> > > > > > >> > +#define XDP_F_FRAG_TARGET    __XDP_F(FRAG_TARGET)
> > > > > > >> > +
> > > > > > >> > +#define XDP_F_BASIC          (XDP_F_ABORTED | XDP_F_DROP |   \
> > > > > > >> > +                              XDP_F_PASS | XDP_F_TX)
> > > > > > >> > +
> > > > > > >> > +#define XDP_F_FULL           (XDP_F_BASIC | XDP_F_REDIRECT)
> > > > > > >> > +
> > > > > > >> > +#define XDP_F_FULL_ZC                (XDP_F_FULL | XDP_F_SOCK_ZEROCOPY)
> > > > > > >> > +
> > > > > > >> > +#define XDP_FEATURES_ABORTED_STR             "xdp-aborted"
> > > > > > >> > +#define XDP_FEATURES_DROP_STR                        "xdp-drop"
> > > > > > >> > +#define XDP_FEATURES_PASS_STR                        "xdp-pass"
> > > > > > >> > +#define XDP_FEATURES_TX_STR                  "xdp-tx"
> > > > > > >> > +#define XDP_FEATURES_REDIRECT_STR            "xdp-redirect"
> > > > > > >> > +#define XDP_FEATURES_REDIRECT_TARGET_STR     "xdp-redirect-target"
> > > > > > >> > +#define XDP_FEATURES_SOCK_ZEROCOPY_STR               "xdp-sock-zerocopy"
> > > > > > >> > +#define XDP_FEATURES_HW_OFFLOAD_STR          "xdp-hw-offload"
> > > > > > >> > +#define XDP_FEATURES_TX_LOCK_STR             "xdp-tx-lock"
> > > > > > >> > +#define XDP_FEATURES_FRAG_RX_STR             "xdp-frag-rx"
> > > > > > >> > +#define XDP_FEATURES_FRAG_TARGET_STR         "xdp-frag-target"
> > > > > > >> > +
> > > > > > >> > +#define DECLARE_XDP_FEATURES_TABLE(name, length)                             \
> > > > > > >> > +     const char name[][length] = {                                           \
> > > > > > >> > +             [XDP_F_ABORTED_BIT] = XDP_FEATURES_ABORTED_STR,                 \
> > > > > > >> > +             [XDP_F_DROP_BIT] = XDP_FEATURES_DROP_STR,                       \
> > > > > > >> > +             [XDP_F_PASS_BIT] = XDP_FEATURES_PASS_STR,                       \
> > > > > > >> > +             [XDP_F_TX_BIT] = XDP_FEATURES_TX_STR,                           \
> > > > > > >> > +             [XDP_F_REDIRECT_BIT] = XDP_FEATURES_REDIRECT_STR,               \
> > > > > > >> > +             [XDP_F_REDIRECT_TARGET_BIT] = XDP_FEATURES_REDIRECT_TARGET_STR, \
> > > > > > >> > +             [XDP_F_SOCK_ZEROCOPY_BIT] = XDP_FEATURES_SOCK_ZEROCOPY_STR,     \
> > > > > > >> > +             [XDP_F_HW_OFFLOAD_BIT] = XDP_FEATURES_HW_OFFLOAD_STR,           \
> > > > > > >> > +             [XDP_F_TX_LOCK_BIT] = XDP_FEATURES_TX_LOCK_STR,                 \
> > > > > > >> > +             [XDP_F_FRAG_RX_BIT] = XDP_FEATURES_FRAG_RX_STR,                 \
> > > > > > >> > +             [XDP_F_FRAG_TARGET_BIT] = XDP_FEATURES_FRAG_TARGET_STR,         \
> > > > > > >> > +     }
> > > > > > >> > +
> > > > > > >> > +#endif /* _LINUX_XDP_FEATURES_H */
> > > > > > >> > diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> > > > > > >> > index 1021a7e47a86..971c658ceaea 100644
> > > > > > >> > --- a/include/uapi/linux/if_link.h
> > > > > > >> > +++ b/include/uapi/linux/if_link.h
> > > > > > >> > @@ -374,6 +374,8 @@ enum {
> > > > > > >>
> > > > > > >> >       IFLA_DEVLINK_PORT,
> > > > > > >>
> > > > > > >> > +     IFLA_XDP_FEATURES,
> > > > > > >> > +
> > > > > > >> >       __IFLA_MAX
> > > > > > >> >   };
> > > > > > >>
> > > > > > >> > @@ -1318,6 +1320,11 @@ enum {
> > > > > > >>
> > > > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > > > >>
> > > > > > >> > +enum {
> > > > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > > > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > > > >> > +};
> > > > > > >> > +
> > > > > > >> >   enum {
> > > > > > >> >       IFLA_EVENT_NONE,
> > > > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > > > > > >> > diff --git a/include/uapi/linux/xdp_features.h
> > > > > > >> > b/include/uapi/linux/xdp_features.h
> > > > > > >> > new file mode 100644
> > > > > > >> > index 000000000000..48eb42069bcd
> > > > > > >> > --- /dev/null
> > > > > > >> > +++ b/include/uapi/linux/xdp_features.h
> > > > > > >> > @@ -0,0 +1,34 @@
> > > > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > > > >> > +/*
> > > > > > >> > + * Copyright (c) 2020 Intel
> > > > > > >> > + */
> > > > > > >> > +
> > > > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > > > >> > +
> > > > > > >> > +enum {
> > > > > > >> > +     XDP_F_ABORTED_BIT,
> > > > > > >> > +     XDP_F_DROP_BIT,
> > > > > > >> > +     XDP_F_PASS_BIT,
> > > > > > >> > +     XDP_F_TX_BIT,
> > > > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > > > >> > +     /*
> > > > > > >> > +      * Add your fresh new property above and remember to update
> > > > > > >> > +      * documentation.
> > > > > > >> > +      */
> > > > > > >> > +     XDP_FEATURES_COUNT,
> > > > > > >> > +};
> > > > > > >> > +
> > > > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32 - 1) / 32)
> > > > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > > > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) % 32U)
> > > > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > > > > > >> > +
> > > > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > > > >> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > > > > > >> > index 64289bc98887..1c299746b614 100644
> > > > > > >> > --- a/net/core/rtnetlink.c
> > > > > > >> > +++ b/net/core/rtnetlink.c
> > > > > > >> > @@ -1016,6 +1016,14 @@ static size_t rtnl_xdp_size(void)
> > > > > > >> >       return xdp_size;
> > > > > > >> >   }
> > > > > > >>
> > > > > > >> > +static size_t rtnl_xdp_features_size(void)
> > > > > > >> > +{
> > > > > > >> > +     size_t xdp_size = nla_total_size(0) +   /* nest IFLA_XDP_FEATURES */
> > > > > > >> > +                       XDP_FEATURES_WORDS * nla_total_size(4);
> > > > > > >> > +
> > > > > > >> > +     return xdp_size;
> > > > > > >> > +}
> > > > > > >> > +
> > > > > > >> >   static size_t rtnl_prop_list_size(const struct net_device *dev)
> > > > > > >> >   {
> > > > > > >> >       struct netdev_name_node *name_node;
> > > > > > >> > @@ -1103,6 +1111,7 @@ static noinline size_t if_nlmsg_size(const struct
> > > > > > >> > net_device *dev,
> > > > > > >> >              + rtnl_prop_list_size(dev)
> > > > > > >> >              + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADDRESS */
> > > > > > >> >              + rtnl_devlink_port_size(dev)
> > > > > > >> > +            + rtnl_xdp_features_size() /* IFLA_XDP_FEATURES */
> > > > > > >> >              + 0;
> > > > > > >> >   }
> > > > > > >>
> > > > > > >> > @@ -1546,6 +1555,27 @@ static int rtnl_xdp_fill(struct sk_buff *skb,
> > > > > > >> > struct net_device *dev)
> > > > > > >> >       return err;
> > > > > > >> >   }
> > > > > > >>
> > > > > > >> > +static int rtnl_xdp_features_fill(struct sk_buff *skb, struct net_device
> > > > > > >> > *dev)
> > > > > > >> > +{
> > > > > > >> > +     struct nlattr *attr;
> > > > > > >> > +
> > > > > > >> > +     attr = nla_nest_start_noflag(skb, IFLA_XDP_FEATURES);
> > > > > > >> > +     if (!attr)
> > > > > > >> > +             return -EMSGSIZE;
> > > > > > >> > +
> > > > > > >> > +     BUILD_BUG_ON(XDP_FEATURES_WORDS != 1);
> > > > > > >> > +     if (nla_put_u32(skb, IFLA_XDP_FEATURES_BITS_WORD, dev->xdp_features))
> > > > > > >> > +             goto err_cancel;
> > > > > > >> > +
> > > > > > >> > +     nla_nest_end(skb, attr);
> > > > > > >> > +
> > > > > > >> > +     return 0;
> > > > > > >> > +
> > > > > > >> > +err_cancel:
> > > > > > >> > +     nla_nest_cancel(skb, attr);
> > > > > > >> > +     return -EMSGSIZE;
> > > > > > >> > +}
> > > > > > >> > +
> > > > > > >> >   static u32 rtnl_get_event(unsigned long event)
> > > > > > >> >   {
> > > > > > >> >       u32 rtnl_event_type = IFLA_EVENT_NONE;
> > > > > > >> > @@ -1904,6 +1934,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
> > > > > > >> >       if (rtnl_fill_devlink_port(skb, dev))
> > > > > > >> >               goto nla_put_failure;
> > > > > > >>
> > > > > > >> > +     if (rtnl_xdp_features_fill(skb, dev))
> > > > > > >> > +             goto nla_put_failure;
> > > > > > >> > +
> > > > > > >> >       nlmsg_end(skb, nlh);
> > > > > > >> >       return 0;
> > > > > > >>
> > > > > > >> > @@ -1968,6 +2001,7 @@ static const struct nla_policy
> > > > > > >> > ifla_policy[IFLA_MAX+1] = {
> > > > > > >> >       [IFLA_TSO_MAX_SIZE]     = { .type = NLA_REJECT },
> > > > > > >> >       [IFLA_TSO_MAX_SEGS]     = { .type = NLA_REJECT },
> > > > > > >> >       [IFLA_ALLMULTI]         = { .type = NLA_REJECT },
> > > > > > >> > +     [IFLA_XDP_FEATURES]     = { .type = NLA_NESTED },
> > > > > > >> >   };
> > > > > > >>
> > > > > > >> >   static const struct nla_policy ifla_info_policy[IFLA_INFO_MAX+1] = {
> > > > > > >> > diff --git a/tools/include/uapi/linux/if_link.h
> > > > > > >> > b/tools/include/uapi/linux/if_link.h
> > > > > > >> > index 82fe18f26db5..994228e9909a 100644
> > > > > > >> > --- a/tools/include/uapi/linux/if_link.h
> > > > > > >> > +++ b/tools/include/uapi/linux/if_link.h
> > > > > > >> > @@ -354,6 +354,8 @@ enum {
> > > > > > >>
> > > > > > >> >       IFLA_DEVLINK_PORT,
> > > > > > >>
> > > > > > >> > +     IFLA_XDP_FEATURES,
> > > > > > >> > +
> > > > > > >> >       __IFLA_MAX
> > > > > > >> >   };
> > > > > > >>
> > > > > > >> > @@ -1222,6 +1224,11 @@ enum {
> > > > > > >>
> > > > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > > > >>
> > > > > > >> > +enum {
> > > > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > > > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > > > >> > +};
> > > > > > >> > +
> > > > > > >> >   enum {
> > > > > > >> >       IFLA_EVENT_NONE,
> > > > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > > > > > >> > diff --git a/tools/include/uapi/linux/xdp_features.h
> > > > > > >> > b/tools/include/uapi/linux/xdp_features.h
> > > > > > >> > new file mode 100644
> > > > > > >> > index 000000000000..48eb42069bcd
> > > > > > >> > --- /dev/null
> > > > > > >> > +++ b/tools/include/uapi/linux/xdp_features.h
> > > > > > >> > @@ -0,0 +1,34 @@
> > > > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > > > >> > +/*
> > > > > > >> > + * Copyright (c) 2020 Intel
> > > > > > >> > + */
> > > > > > >> > +
> > > > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > > > >> > +
> > > > > > >> > +enum {
> > > > > > >> > +     XDP_F_ABORTED_BIT,
> > > > > > >> > +     XDP_F_DROP_BIT,
> > > > > > >> > +     XDP_F_PASS_BIT,
> > > > > > >> > +     XDP_F_TX_BIT,
> > > > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > > > >> > +     /*
> > > > > > >> > +      * Add your fresh new property above and remember to update
> > > > > > >> > +      * documentation.
> > > > > > >> > +      */
> > > > > > >> > +     XDP_FEATURES_COUNT,
> > > > > > >> > +};
> > > > > > >> > +
> > > > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32 - 1) / 32)
> > > > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > > > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) % 32U)
> > > > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > > > > > >> > +
> > > > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > > > >> > --
> > > > > > >> > 2.38.1
> > > > > > >>
> > > > > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
