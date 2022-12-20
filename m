Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B42B6529EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 00:37:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D07740518;
	Tue, 20 Dec 2022 23:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D07740518
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671579417;
	bh=bVgeombSkBK2tFkTr4m+IA4msNrkwwD4luSaEPMwmCg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2eEd4RiU3hcueX+5Md7NuPnI6G1y4aiNk5LENnVhioCsXLTQ9pBTAPeOMxpriXfct
	 V1nEItIS+0TJLYRrl5ih5yeNncsqw88bmi1TuWAHuQ9RFfNI4Dy7OYgxEcm7i5txYQ
	 NZpovBcwLtQqMGjw59MZEzBJ392ZoNtk6Vuvys/h8m2eKrOaueB2rZrqz/eeDaiMsI
	 KkRlkowxjAvmOPkT9tC4KZD4+dQIGGXzhSE9X/ewcBdZa5Ai7sGgpQmsv5gri3ZOpQ
	 liX0AP7ry9J+Mxj12EcyvJZoKhx/IG/CtCvuiGogy3x8wO+yrcaxscncb5FqzoQT5M
	 fsffu3gtOxxPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id soQ7sj9veIaX; Tue, 20 Dec 2022 23:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3002F401B7;
	Tue, 20 Dec 2022 23:36:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3002F401B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9D61BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7719D81E2D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7719D81E2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyEA_FB_PyyS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 23:36:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D099181A8E
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D099181A8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:36:47 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id o12so13993649pjo.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 15:36:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ATlzPs/ci1pr2U5t1A6HtpTJeJB1aaGQmNFnuJqNoZU=;
 b=eHiNdiqNTXUjK2jVatJSwWc5i/3Tp2Qs0e30w1JIKzqWDrQ9EpJNNN1E3ln5YyI2zj
 c2VecCxgx9aa/J0HzQ7k4QR+fO0FsthDHU/7Tl8uNzd52G+5nhrvolUh3UrIaQ+CsnPB
 Bc6blIA8mar9Zd3KDjY50fWcNJNtZl5HZY9mnafFUu7mUtJkOZmgVFbppI3gORGz02yq
 KFWIG99MygP67+EhKFtNth0qMpNJIyrjBNTQYUhYGSNM1aUY5EcdETqCToR0EEh5h5Q9
 yIwniHjF3RZbtVlHpklWNWat8NFzP9655H8oie1hq9ru5yl0NktUEwERjHWfznz0JZ8Z
 bi2g==
X-Gm-Message-State: ANoB5pk6sYMjzP+sOuvzE6xfjdDxJMDR0k40xAQcDEcrdhk1J131CpQz
 hrBJujM2QmQ/5HTK2scRWNXb0l59ZGBeFNgjI1s67g==
X-Google-Smtp-Source: AA0mqf7J8CK6cwSRzUeYbTcj+qk+if3fHPmhL2wPTnaNHKisc+d8F2kLXEGQboLrMJ9IHXWOGnz63/0FDCj9/rgHMYw=
X-Received: by 2002:a17:902:ab5c:b0:189:97e2:ab8b with SMTP id
 ij28-20020a170902ab5c00b0018997e2ab8bmr51751428plb.131.1671579406829; Tue, 20
 Dec 2022 15:36:46 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <Y6DDfVhOWRybVNUt@google.com>
 <CAAOQfrFGArAYPyBX_kw4ZvFrTjKXf-jG-2F2y69nOs-oQ8Onwg@mail.gmail.com>
 <CAKH8qBuktjBcY_CuqqkWs74oBB8Mnkm638Cb=sF38H4kPAx3NQ@mail.gmail.com>
 <Y6GKN/1iOC9eTsEE@lore-desk>
 <CAKH8qBts19wxSDAKk0SBk76ftvdK+sW6d3ufcBWoV5cMa2ENpA@mail.gmail.com>
 <Y6I2VyBCz7YRxxTR@localhost.localdomain>
In-Reply-To: <Y6I2VyBCz7YRxxTR@localhost.localdomain>
From: Stanislav Fomichev <sdf@google.com>
Date: Tue, 20 Dec 2022 15:36:34 -0800
Message-ID: <CAKH8qBv1AhXEfeymiTBE_MLniAXQc6shpuiHeYyidH-Y0Fc2ew@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ATlzPs/ci1pr2U5t1A6HtpTJeJB1aaGQmNFnuJqNoZU=;
 b=kIhrZZkaRjiRlrBSU1pHHh77z17Cg7bvL8dwBzYdhrP4fgEU9Ww5gkfGs2IZ8G/tLA
 UYwKp2F8hqBjE8MRda8Lpj1le95+6ZcO3MJz8MAZKkAYc79qkO/PrFxOn3n6JMR7iR8C
 UDQ4Jh98mseUBkx0jMAgSZJPlaIDkMGwOyKISTSUD5BPW4bBrM9zldj9nvFu1PLkaK3H
 nOG98LU0UjJIG8+hVi8N3fT8FQt7E3VJE4bI+Awl6I/DCXqFNggUvbgSlNMitfkFXobd
 aDsXgFuiTrMzwUdx7QVVZbQvr/RnrTA0Znql1dI3rhdqQUtuk6GzpW4k4WdoKCjVF1Z+
 xXUQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=kIhrZZka
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

On Tue, Dec 20, 2022 at 2:25 PM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > On Tue, Dec 20, 2022 at 2:11 AM Lorenzo Bianconi
> > <lorenzo.bianconi@redhat.com> wrote:
> > >
> > > On Dec 19, Stanislav Fomichev wrote:
> > > > On Mon, Dec 19, 2022 at 3:51 PM Marek Majtyka <alardam@gmail.com> wrote:
> > > > >
> > > > > At the time of writing, I wanted to be able to read additional information about the XDP capabilities of each network interface using ethtool. This change was intended for Linux users/admins, and not for XDP experts who mostly don't need it and prefer tasting XDP with netlink and bpf rather than reading network interface features with ethtool.
> > > >
> > > > Anything preventing ethtool from doing probing similar to 'bpftool
> > > > feature probe'?
> > > > The problem with these feature bits is that they might diverge and/or
> > > > not work at all for the backported patches (where the fix/feature has
> > > > been backported, but the part that exports the bit hasn't) :-(
> > > > OTOH, I'm not sure we can probe everything from your list, but we
> > > > might try and see what's missing..
> > >
> > > Hi Stanislav,
> > >
> > > I have not added the ethtool support to this series yet since userspace part is
> > > still missing but I think we can consider XDP as a sort of sw offload so it
> > > would be nice for the user/sysadmin (not xdp or bpf developer) to check the NIC
> > > XDP capabilities similar to what we can already do for other hw offload
> > > features.
> >
> > [..]
> >
> > > Moreover let's consider XDP_REDIRECT of a scatter-gather XDP frame into a
> > > devmap. I do not think there is a way to test if the 'target' device supports
> > > SG and so we are forced to disable this feature until all drivers support it.
> >
> > See below for more questions, but why "target device has prog
> > installed and the aux->xdp_has_frags == true" won't work for the
> > internal kernel consumers?
>
> There are some drivers (e.g. all intel ones) that currently do not support
> non-linear xdp buff in the driver napi callback (XDP_FRAG_RX) but implement
> non-linear xdp buff support in ndo_xdp_xmit callback (XDP_FRAG_TARGET).
> Moreover, I guess for a sysadmin it would be better to check NIC capabilities in
> the same way he/she is used to with other features (e.g. ethool -k ...).
>
> >
> > > Introducing XDP features we can enable it on per-driver basis.
> > > I think the same apply for other capabilities as well and just assuming a given
> > > feature is not supported if an e2e test is not working seems a bit inaccurate.
> >
> > Ok, I see that these bits are used in the later patches in xsk and
> > devmap. But I guess I'm still confused about why we add all these
> > flags, but only use mostly XDP_F_REDIRECT_TARGET; maybe start with
> > that one? And why does it have to be exposed to the userspace?
> > (userspace can still probe per-device features by trying to load
> > different progs?)
>
> There are some drivers (e.g. ixgbevf or cavium thunder) that do not support
> XDP_REDIRECT but just XDP_PASS, XDP_DROP and XDP_TX, so I think we should
> differentiate between XDP_BASIC (XDP_PASS | XDP_DROP | XDP_TX) and XDP_FULL
> (XDP_BASIC | XDP_REDIRECT).
>
> >
> > Also, it seems like XDP_F_REDIRECT_TARGET really means "the bpf
> > program has been installed on this device". Instead of a flag, why not
> > explicitly check whether the target device has a prog installed (and,
> > if needed, whether the installed program has frags support)?
>
> XDP_F_REDIRECT_TARGET is used to inform if netdev implements ndo_xdp_xmit
> callback (most of the XDP drivers do not require to load a bpf program to
> XDP_REDIRECT into them).

All of the above makes sense, thanks for the details. In this case,
agreed that it's probably not possible to probe these easily without
explicit flags :-(

Let me bikeshed the names a bit as well, feel free to ignore...

1. Maybe group XDP_{ABORTED,DROP,PASS,TX,REDIRECT} with some common
prefix? XDP_ACT_xxx (ACT for action)? Or XDP_RET_xxx?

2. Maybe: XDP_SOCK_ZEROCOPY -> XSK_ZEROCOPY ?

3. XDP_HW_OFFLOAD we don't seem to set anywhere? nfp/netdevsim changes
are missing or out of scope?

4. Agree with Jakub, not sure XDP_TX_LOCK doesn't seem relevant?

5. XDP_REDIRECT_TARGET -> XDP_RCV_REDIRECT (can 'receive' and handle
redirects? in this case XDP_ACT_REDIRECT means can 'generate'
redirects)

6. For frags, maybe:

XDP_FRAG_RX     -> XDP_SG_RX
XDP_FRAG_TARGET -> XDP_SG_RCV_REDIRECT (so this is that same as
XDP_RCV_REDIRECT but can handle frags)

But also probably fine to keep FRAG instead of SG to match BPF_F_XDP_HAS_FRAGS?

> Regards,
> Lorenzo
>
> >
> > > Regards,
> > > Lorenzo
> > >
> > > >
> > > > > On Mon, Dec 19, 2022 at 9:03 PM <sdf@google.com> wrote:
> > > > >>
> > > > >> On 12/19, Lorenzo Bianconi wrote:
> > > > >> > From: Marek Majtyka <alardam@gmail.com>
> > > > >>
> > > > >> > Implement support for checking what kind of XDP features a netdev
> > > > >> > supports. Previously, there was no way to do this other than to try to
> > > > >> > create an AF_XDP socket on the interface or load an XDP program and see
> > > > >> > if it worked. This commit changes this by adding a new variable which
> > > > >> > describes all xdp supported functions on pretty detailed level:
> > > > >>
> > > > >> >   - aborted
> > > > >> >   - drop
> > > > >> >   - pass
> > > > >> >   - tx
> > > > >> >   - redirect
> > > > >> >   - sock_zerocopy
> > > > >> >   - hw_offload
> > > > >> >   - redirect_target
> > > > >> >   - tx_lock
> > > > >> >   - frag_rx
> > > > >> >   - frag_target
> > > > >>
> > > > >> > Zerocopy mode requires that redirect XDP operation is implemented in a
> > > > >> > driver and the driver supports also zero copy mode. Full mode requires
> > > > >> > that all XDP operation are implemented in the driver. Basic mode is just
> > > > >> > full mode without redirect operation. Frag target requires
> > > > >> > redirect_target one is supported by the driver.
> > > > >>
> > > > >> Can you share more about _why_ is it needed? If we can already obtain
> > > > >> most of these signals via probing, why export the flags?
> > > > >>
> > > > >> > Initially, these new flags are disabled for all drivers by default.
> > > > >>
> > > > >> > Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > >> > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > > >> > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > >> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > > >> > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > > > >> > ---
> > > > >> >   .../networking/netdev-xdp-features.rst        | 60 +++++++++++++++++
> > > > >> >   include/linux/netdevice.h                     |  2 +
> > > > >> >   include/linux/xdp_features.h                  | 64 +++++++++++++++++++
> > > > >> >   include/uapi/linux/if_link.h                  |  7 ++
> > > > >> >   include/uapi/linux/xdp_features.h             | 34 ++++++++++
> > > > >> >   net/core/rtnetlink.c                          | 34 ++++++++++
> > > > >> >   tools/include/uapi/linux/if_link.h            |  7 ++
> > > > >> >   tools/include/uapi/linux/xdp_features.h       | 34 ++++++++++
> > > > >> >   8 files changed, 242 insertions(+)
> > > > >> >   create mode 100644 Documentation/networking/netdev-xdp-features.rst
> > > > >> >   create mode 100644 include/linux/xdp_features.h
> > > > >> >   create mode 100644 include/uapi/linux/xdp_features.h
> > > > >> >   create mode 100644 tools/include/uapi/linux/xdp_features.h
> > > > >>
> > > > >> > diff --git a/Documentation/networking/netdev-xdp-features.rst
> > > > >> > b/Documentation/networking/netdev-xdp-features.rst
> > > > >> > new file mode 100644
> > > > >> > index 000000000000..1dc803fe72dd
> > > > >> > --- /dev/null
> > > > >> > +++ b/Documentation/networking/netdev-xdp-features.rst
> > > > >> > @@ -0,0 +1,60 @@
> > > > >> > +.. SPDX-License-Identifier: GPL-2.0
> > > > >> > +
> > > > >> > +=====================
> > > > >> > +Netdev XDP features
> > > > >> > +=====================
> > > > >> > +
> > > > >> > + * XDP FEATURES FLAGS
> > > > >> > +
> > > > >> > +Following netdev xdp features flags can be retrieved over route netlink
> > > > >> > +interface (compact form) - the same way as netdev feature flags.
> > > > >> > +These features flags are read only and cannot be change at runtime.
> > > > >> > +
> > > > >> > +*  XDP_ABORTED
> > > > >> > +
> > > > >> > +This feature informs if netdev supports xdp aborted action.
> > > > >> > +
> > > > >> > +*  XDP_DROP
> > > > >> > +
> > > > >> > +This feature informs if netdev supports xdp drop action.
> > > > >> > +
> > > > >> > +*  XDP_PASS
> > > > >> > +
> > > > >> > +This feature informs if netdev supports xdp pass action.
> > > > >> > +
> > > > >> > +*  XDP_TX
> > > > >> > +
> > > > >> > +This feature informs if netdev supports xdp tx action.
> > > > >> > +
> > > > >> > +*  XDP_REDIRECT
> > > > >> > +
> > > > >> > +This feature informs if netdev supports xdp redirect action.
> > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > >> > +
> > > > >> > +*  XDP_SOCK_ZEROCOPY
> > > > >> > +
> > > > >> > +This feature informs if netdev driver supports xdp zero copy.
> > > > >> > +It assumes the all beforehand mentioned flags are enabled.
> > > > >> > +
> > > > >> > +*  XDP_HW_OFFLOAD
> > > > >> > +
> > > > >> > +This feature informs if netdev driver supports xdp hw oflloading.
> > > > >> > +
> > > > >> > +*  XDP_TX_LOCK
> > > > >> > +
> > > > >> > +This feature informs if netdev ndo_xdp_xmit function requires locking.
> > > > >> > +
> > > > >> > +*  XDP_REDIRECT_TARGET
> > > > >> > +
> > > > >> > +This feature informs if netdev implements ndo_xdp_xmit callback.
> > > > >> > +
> > > > >> > +*  XDP_FRAG_RX
> > > > >> > +
> > > > >> > +This feature informs if netdev implements non-linear xdp buff support in
> > > > >> > +the driver napi callback.
> > > > >> > +
> > > > >> > +*  XDP_FRAG_TARGET
> > > > >> > +
> > > > >> > +This feature informs if netdev implements non-linear xdp buff support in
> > > > >> > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is
> > > > >> > properly
> > > > >> > +supported.
> > > > >> > diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> > > > >> > index aad12a179e54..ae5a8564383b 100644
> > > > >> > --- a/include/linux/netdevice.h
> > > > >> > +++ b/include/linux/netdevice.h
> > > > >> > @@ -43,6 +43,7 @@
> > > > >> >   #include <net/xdp.h>
> > > > >>
> > > > >> >   #include <linux/netdev_features.h>
> > > > >> > +#include <linux/xdp_features.h>
> > > > >> >   #include <linux/neighbour.h>
> > > > >> >   #include <uapi/linux/netdevice.h>
> > > > >> >   #include <uapi/linux/if_bonding.h>
> > > > >> > @@ -2362,6 +2363,7 @@ struct net_device {
> > > > >> >       struct rtnl_hw_stats64  *offload_xstats_l3;
> > > > >>
> > > > >> >       struct devlink_port     *devlink_port;
> > > > >> > +     xdp_features_t          xdp_features;
> > > > >> >   };
> > > > >> >   #define to_net_dev(d) container_of(d, struct net_device, dev)
> > > > >>
> > > > >> > diff --git a/include/linux/xdp_features.h b/include/linux/xdp_features.h
> > > > >> > new file mode 100644
> > > > >> > index 000000000000..4e72a86ef329
> > > > >> > --- /dev/null
> > > > >> > +++ b/include/linux/xdp_features.h
> > > > >> > @@ -0,0 +1,64 @@
> > > > >> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > > > >> > +/*
> > > > >> > + * Network device xdp features.
> > > > >> > + */
> > > > >> > +#ifndef _LINUX_XDP_FEATURES_H
> > > > >> > +#define _LINUX_XDP_FEATURES_H
> > > > >> > +
> > > > >> > +#include <linux/types.h>
> > > > >> > +#include <linux/bitops.h>
> > > > >> > +#include <asm/byteorder.h>
> > > > >> > +#include <uapi/linux/xdp_features.h>
> > > > >> > +
> > > > >> > +typedef u32 xdp_features_t;
> > > > >> > +
> > > > >> > +#define __XDP_F_BIT(bit)     ((xdp_features_t)1 << (bit))
> > > > >> > +#define __XDP_F(name)                __XDP_F_BIT(XDP_F_##name##_BIT)
> > > > >> > +
> > > > >> > +#define XDP_F_ABORTED                __XDP_F(ABORTED)
> > > > >> > +#define XDP_F_DROP           __XDP_F(DROP)
> > > > >> > +#define XDP_F_PASS           __XDP_F(PASS)
> > > > >> > +#define XDP_F_TX             __XDP_F(TX)
> > > > >> > +#define XDP_F_REDIRECT               __XDP_F(REDIRECT)
> > > > >> > +#define XDP_F_REDIRECT_TARGET        __XDP_F(REDIRECT_TARGET)
> > > > >> > +#define XDP_F_SOCK_ZEROCOPY  __XDP_F(SOCK_ZEROCOPY)
> > > > >> > +#define XDP_F_HW_OFFLOAD     __XDP_F(HW_OFFLOAD)
> > > > >> > +#define XDP_F_TX_LOCK                __XDP_F(TX_LOCK)
> > > > >> > +#define XDP_F_FRAG_RX                __XDP_F(FRAG_RX)
> > > > >> > +#define XDP_F_FRAG_TARGET    __XDP_F(FRAG_TARGET)
> > > > >> > +
> > > > >> > +#define XDP_F_BASIC          (XDP_F_ABORTED | XDP_F_DROP |   \
> > > > >> > +                              XDP_F_PASS | XDP_F_TX)
> > > > >> > +
> > > > >> > +#define XDP_F_FULL           (XDP_F_BASIC | XDP_F_REDIRECT)
> > > > >> > +
> > > > >> > +#define XDP_F_FULL_ZC                (XDP_F_FULL | XDP_F_SOCK_ZEROCOPY)
> > > > >> > +
> > > > >> > +#define XDP_FEATURES_ABORTED_STR             "xdp-aborted"
> > > > >> > +#define XDP_FEATURES_DROP_STR                        "xdp-drop"
> > > > >> > +#define XDP_FEATURES_PASS_STR                        "xdp-pass"
> > > > >> > +#define XDP_FEATURES_TX_STR                  "xdp-tx"
> > > > >> > +#define XDP_FEATURES_REDIRECT_STR            "xdp-redirect"
> > > > >> > +#define XDP_FEATURES_REDIRECT_TARGET_STR     "xdp-redirect-target"
> > > > >> > +#define XDP_FEATURES_SOCK_ZEROCOPY_STR               "xdp-sock-zerocopy"
> > > > >> > +#define XDP_FEATURES_HW_OFFLOAD_STR          "xdp-hw-offload"
> > > > >> > +#define XDP_FEATURES_TX_LOCK_STR             "xdp-tx-lock"
> > > > >> > +#define XDP_FEATURES_FRAG_RX_STR             "xdp-frag-rx"
> > > > >> > +#define XDP_FEATURES_FRAG_TARGET_STR         "xdp-frag-target"
> > > > >> > +
> > > > >> > +#define DECLARE_XDP_FEATURES_TABLE(name, length)                             \
> > > > >> > +     const char name[][length] = {                                           \
> > > > >> > +             [XDP_F_ABORTED_BIT] = XDP_FEATURES_ABORTED_STR,                 \
> > > > >> > +             [XDP_F_DROP_BIT] = XDP_FEATURES_DROP_STR,                       \
> > > > >> > +             [XDP_F_PASS_BIT] = XDP_FEATURES_PASS_STR,                       \
> > > > >> > +             [XDP_F_TX_BIT] = XDP_FEATURES_TX_STR,                           \
> > > > >> > +             [XDP_F_REDIRECT_BIT] = XDP_FEATURES_REDIRECT_STR,               \
> > > > >> > +             [XDP_F_REDIRECT_TARGET_BIT] = XDP_FEATURES_REDIRECT_TARGET_STR, \
> > > > >> > +             [XDP_F_SOCK_ZEROCOPY_BIT] = XDP_FEATURES_SOCK_ZEROCOPY_STR,     \
> > > > >> > +             [XDP_F_HW_OFFLOAD_BIT] = XDP_FEATURES_HW_OFFLOAD_STR,           \
> > > > >> > +             [XDP_F_TX_LOCK_BIT] = XDP_FEATURES_TX_LOCK_STR,                 \
> > > > >> > +             [XDP_F_FRAG_RX_BIT] = XDP_FEATURES_FRAG_RX_STR,                 \
> > > > >> > +             [XDP_F_FRAG_TARGET_BIT] = XDP_FEATURES_FRAG_TARGET_STR,         \
> > > > >> > +     }
> > > > >> > +
> > > > >> > +#endif /* _LINUX_XDP_FEATURES_H */
> > > > >> > diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> > > > >> > index 1021a7e47a86..971c658ceaea 100644
> > > > >> > --- a/include/uapi/linux/if_link.h
> > > > >> > +++ b/include/uapi/linux/if_link.h
> > > > >> > @@ -374,6 +374,8 @@ enum {
> > > > >>
> > > > >> >       IFLA_DEVLINK_PORT,
> > > > >>
> > > > >> > +     IFLA_XDP_FEATURES,
> > > > >> > +
> > > > >> >       __IFLA_MAX
> > > > >> >   };
> > > > >>
> > > > >> > @@ -1318,6 +1320,11 @@ enum {
> > > > >>
> > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > >>
> > > > >> > +enum {
> > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > >> > +};
> > > > >> > +
> > > > >> >   enum {
> > > > >> >       IFLA_EVENT_NONE,
> > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > > > >> > diff --git a/include/uapi/linux/xdp_features.h
> > > > >> > b/include/uapi/linux/xdp_features.h
> > > > >> > new file mode 100644
> > > > >> > index 000000000000..48eb42069bcd
> > > > >> > --- /dev/null
> > > > >> > +++ b/include/uapi/linux/xdp_features.h
> > > > >> > @@ -0,0 +1,34 @@
> > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > >> > +/*
> > > > >> > + * Copyright (c) 2020 Intel
> > > > >> > + */
> > > > >> > +
> > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > >> > +
> > > > >> > +enum {
> > > > >> > +     XDP_F_ABORTED_BIT,
> > > > >> > +     XDP_F_DROP_BIT,
> > > > >> > +     XDP_F_PASS_BIT,
> > > > >> > +     XDP_F_TX_BIT,
> > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > >> > +     /*
> > > > >> > +      * Add your fresh new property above and remember to update
> > > > >> > +      * documentation.
> > > > >> > +      */
> > > > >> > +     XDP_FEATURES_COUNT,
> > > > >> > +};
> > > > >> > +
> > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32 - 1) / 32)
> > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) % 32U)
> > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > > > >> > +
> > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > >> > diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> > > > >> > index 64289bc98887..1c299746b614 100644
> > > > >> > --- a/net/core/rtnetlink.c
> > > > >> > +++ b/net/core/rtnetlink.c
> > > > >> > @@ -1016,6 +1016,14 @@ static size_t rtnl_xdp_size(void)
> > > > >> >       return xdp_size;
> > > > >> >   }
> > > > >>
> > > > >> > +static size_t rtnl_xdp_features_size(void)
> > > > >> > +{
> > > > >> > +     size_t xdp_size = nla_total_size(0) +   /* nest IFLA_XDP_FEATURES */
> > > > >> > +                       XDP_FEATURES_WORDS * nla_total_size(4);
> > > > >> > +
> > > > >> > +     return xdp_size;
> > > > >> > +}
> > > > >> > +
> > > > >> >   static size_t rtnl_prop_list_size(const struct net_device *dev)
> > > > >> >   {
> > > > >> >       struct netdev_name_node *name_node;
> > > > >> > @@ -1103,6 +1111,7 @@ static noinline size_t if_nlmsg_size(const struct
> > > > >> > net_device *dev,
> > > > >> >              + rtnl_prop_list_size(dev)
> > > > >> >              + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADDRESS */
> > > > >> >              + rtnl_devlink_port_size(dev)
> > > > >> > +            + rtnl_xdp_features_size() /* IFLA_XDP_FEATURES */
> > > > >> >              + 0;
> > > > >> >   }
> > > > >>
> > > > >> > @@ -1546,6 +1555,27 @@ static int rtnl_xdp_fill(struct sk_buff *skb,
> > > > >> > struct net_device *dev)
> > > > >> >       return err;
> > > > >> >   }
> > > > >>
> > > > >> > +static int rtnl_xdp_features_fill(struct sk_buff *skb, struct net_device
> > > > >> > *dev)
> > > > >> > +{
> > > > >> > +     struct nlattr *attr;
> > > > >> > +
> > > > >> > +     attr = nla_nest_start_noflag(skb, IFLA_XDP_FEATURES);
> > > > >> > +     if (!attr)
> > > > >> > +             return -EMSGSIZE;
> > > > >> > +
> > > > >> > +     BUILD_BUG_ON(XDP_FEATURES_WORDS != 1);
> > > > >> > +     if (nla_put_u32(skb, IFLA_XDP_FEATURES_BITS_WORD, dev->xdp_features))
> > > > >> > +             goto err_cancel;
> > > > >> > +
> > > > >> > +     nla_nest_end(skb, attr);
> > > > >> > +
> > > > >> > +     return 0;
> > > > >> > +
> > > > >> > +err_cancel:
> > > > >> > +     nla_nest_cancel(skb, attr);
> > > > >> > +     return -EMSGSIZE;
> > > > >> > +}
> > > > >> > +
> > > > >> >   static u32 rtnl_get_event(unsigned long event)
> > > > >> >   {
> > > > >> >       u32 rtnl_event_type = IFLA_EVENT_NONE;
> > > > >> > @@ -1904,6 +1934,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
> > > > >> >       if (rtnl_fill_devlink_port(skb, dev))
> > > > >> >               goto nla_put_failure;
> > > > >>
> > > > >> > +     if (rtnl_xdp_features_fill(skb, dev))
> > > > >> > +             goto nla_put_failure;
> > > > >> > +
> > > > >> >       nlmsg_end(skb, nlh);
> > > > >> >       return 0;
> > > > >>
> > > > >> > @@ -1968,6 +2001,7 @@ static const struct nla_policy
> > > > >> > ifla_policy[IFLA_MAX+1] = {
> > > > >> >       [IFLA_TSO_MAX_SIZE]     = { .type = NLA_REJECT },
> > > > >> >       [IFLA_TSO_MAX_SEGS]     = { .type = NLA_REJECT },
> > > > >> >       [IFLA_ALLMULTI]         = { .type = NLA_REJECT },
> > > > >> > +     [IFLA_XDP_FEATURES]     = { .type = NLA_NESTED },
> > > > >> >   };
> > > > >>
> > > > >> >   static const struct nla_policy ifla_info_policy[IFLA_INFO_MAX+1] = {
> > > > >> > diff --git a/tools/include/uapi/linux/if_link.h
> > > > >> > b/tools/include/uapi/linux/if_link.h
> > > > >> > index 82fe18f26db5..994228e9909a 100644
> > > > >> > --- a/tools/include/uapi/linux/if_link.h
> > > > >> > +++ b/tools/include/uapi/linux/if_link.h
> > > > >> > @@ -354,6 +354,8 @@ enum {
> > > > >>
> > > > >> >       IFLA_DEVLINK_PORT,
> > > > >>
> > > > >> > +     IFLA_XDP_FEATURES,
> > > > >> > +
> > > > >> >       __IFLA_MAX
> > > > >> >   };
> > > > >>
> > > > >> > @@ -1222,6 +1224,11 @@ enum {
> > > > >>
> > > > >> >   #define IFLA_XDP_MAX (__IFLA_XDP_MAX - 1)
> > > > >>
> > > > >> > +enum {
> > > > >> > +     IFLA_XDP_FEATURES_WORD_UNSPEC = 0,
> > > > >> > +     IFLA_XDP_FEATURES_BITS_WORD,
> > > > >> > +};
> > > > >> > +
> > > > >> >   enum {
> > > > >> >       IFLA_EVENT_NONE,
> > > > >> >       IFLA_EVENT_REBOOT,              /* internal reset / reboot */
> > > > >> > diff --git a/tools/include/uapi/linux/xdp_features.h
> > > > >> > b/tools/include/uapi/linux/xdp_features.h
> > > > >> > new file mode 100644
> > > > >> > index 000000000000..48eb42069bcd
> > > > >> > --- /dev/null
> > > > >> > +++ b/tools/include/uapi/linux/xdp_features.h
> > > > >> > @@ -0,0 +1,34 @@
> > > > >> > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > >> > +/*
> > > > >> > + * Copyright (c) 2020 Intel
> > > > >> > + */
> > > > >> > +
> > > > >> > +#ifndef __UAPI_LINUX_XDP_FEATURES__
> > > > >> > +#define __UAPI_LINUX_XDP_FEATURES__
> > > > >> > +
> > > > >> > +enum {
> > > > >> > +     XDP_F_ABORTED_BIT,
> > > > >> > +     XDP_F_DROP_BIT,
> > > > >> > +     XDP_F_PASS_BIT,
> > > > >> > +     XDP_F_TX_BIT,
> > > > >> > +     XDP_F_REDIRECT_BIT,
> > > > >> > +     XDP_F_REDIRECT_TARGET_BIT,
> > > > >> > +     XDP_F_SOCK_ZEROCOPY_BIT,
> > > > >> > +     XDP_F_HW_OFFLOAD_BIT,
> > > > >> > +     XDP_F_TX_LOCK_BIT,
> > > > >> > +     XDP_F_FRAG_RX_BIT,
> > > > >> > +     XDP_F_FRAG_TARGET_BIT,
> > > > >> > +     /*
> > > > >> > +      * Add your fresh new property above and remember to update
> > > > >> > +      * documentation.
> > > > >> > +      */
> > > > >> > +     XDP_FEATURES_COUNT,
> > > > >> > +};
> > > > >> > +
> > > > >> > +#define XDP_FEATURES_WORDS                   ((XDP_FEATURES_COUNT + 32 - 1) / 32)
> > > > >> > +#define XDP_FEATURES_WORD(blocks, index)     ((blocks)[(index) / 32U])
> > > > >> > +#define XDP_FEATURES_FIELD_FLAG(index)               (1U << (index) % 32U)
> > > > >> > +#define XDP_FEATURES_BIT_IS_SET(blocks, index)        \
> > > > >> > +     (XDP_FEATURES_WORD(blocks, index) & XDP_FEATURES_FIELD_FLAG(index))
> > > > >> > +
> > > > >> > +#endif  /* __UAPI_LINUX_XDP_FEATURES__ */
> > > > >> > --
> > > > >> > 2.38.1
> > > > >>
> > > >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
