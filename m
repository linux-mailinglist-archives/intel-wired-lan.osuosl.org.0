Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B632CEE68
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 13:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D167280EAD;
	Fri,  4 Dec 2020 12:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMXEGNnlFAIn; Fri,  4 Dec 2020 12:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6FA5B86EA2;
	Fri,  4 Dec 2020 12:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 463851BF86D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36B3386BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZqaif0cOMTP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 12:54:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2431480EAD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:54:30 +0000 (UTC)
IronPort-SDR: mRuXsCcAhziwHmF4z6ppVIOt/cNoKz5Fb1qNmYdzczqwEzCJenyuiAGwZQPEO3kudpRdpFj3Kk
 t3NlOSY+K4UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="258083946"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="258083946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 04:54:29 -0800
IronPort-SDR: 62N7mcUJssHEBrSPA3Fs2vP6Pc7CKJOokY/FOW3TTe0ytuNKV960hbP63jmJk9MlzrdPa84uQK
 2xrT1fPzWKHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="482381436"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 04 Dec 2020 04:54:25 -0800
Date: Fri, 4 Dec 2020 13:46:18 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Message-ID: <20201204124618.GA23696@ranger.igk.intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sad933c.fsf@toke.dk>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 04, 2020 at 01:18:31PM +0100, Toke H=F8iland-J=F8rgensen wrote:
> alardam@gmail.com writes:
> =

> > From: Marek Majtyka <marekx.majtyka@intel.com>
> >
> > Implement support for checking what kind of xdp functionality a netdev
> > supports. Previously, there was no way to do this other than to try
> > to create an AF_XDP socket on the interface or load an XDP program and =
see
> > if it worked. This commit changes this by adding a new variable which
> > describes all xdp supported functions on pretty detailed level:
> =

> I like the direction this is going! :)
> =

> >  - aborted
> >  - drop
> >  - pass
> >  - tx
> >  - redirect
> =

> Drivers can in principle implement support for the XDP_REDIRECT return
> code (and calling xdp_do_redirect()) without implementing ndo_xdp_xmit()
> for being the *target* of a redirect. While my quick grepping doesn't
> turn up any drivers that do only one of these right now, I think we've
> had examples of it in the past, so it would probably be better to split
> the redirect feature flag in two.
> =

> This would also make it trivial to replace the check in __xdp_enqueue()
> (in devmap.c) from looking at whether the ndo is defined, and just
> checking the flag. It would be great if you could do this as part of
> this series.
> =

> Maybe we could even make the 'redirect target' flag be set automatically
> if a driver implements ndo_xdp_xmit?

+1

> =

> >  - zero copy
> >  - hardware offload.
> >
> > Zerocopy mode requires that redirect xdp operation is implemented
> > in a driver and the driver supports also zero copy mode.
> > Full mode requires that all xdp operation are implemented in the driver.
> > Basic mode is just full mode without redirect operation.
> >
> > Initially, these new flags are disabled for all drivers by default.
> >
> > Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
> > ---
> >  .../networking/netdev-xdp-properties.rst      | 42 ++++++++
> >  include/linux/netdevice.h                     |  2 +
> >  include/linux/xdp_properties.h                | 53 +++++++++++
> >  include/net/xdp.h                             | 95 +++++++++++++++++++
> >  include/net/xdp_sock_drv.h                    | 10 ++
> >  include/uapi/linux/ethtool.h                  |  1 +
> >  include/uapi/linux/xdp_properties.h           | 32 +++++++
> >  net/ethtool/common.c                          | 11 +++
> >  net/ethtool/common.h                          |  4 +
> >  net/ethtool/strset.c                          |  5 +
> >  10 files changed, 255 insertions(+)
> >  create mode 100644 Documentation/networking/netdev-xdp-properties.rst
> >  create mode 100644 include/linux/xdp_properties.h
> >  create mode 100644 include/uapi/linux/xdp_properties.h
> >
> > diff --git a/Documentation/networking/netdev-xdp-properties.rst b/Docum=
entation/networking/netdev-xdp-properties.rst
> > new file mode 100644
> > index 000000000000..4a434a1c512b
> > --- /dev/null
> > +++ b/Documentation/networking/netdev-xdp-properties.rst
> > @@ -0,0 +1,42 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +Netdev XDP properties
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > + * XDP PROPERTIES FLAGS
> > +
> > +Following netdev xdp properties flags can be retrieve over netlink eth=
tool
> > +interface the same way as netdev feature flags. These properties flags=
 are
> > +read only and cannot be change in the runtime.
> > +
> > +
> > +*  XDP_ABORTED
> > +
> > +This property informs if netdev supports xdp aborted action.
> > +
> > +*  XDP_DROP
> > +
> > +This property informs if netdev supports xdp drop action.
> > +
> > +*  XDP_PASS
> > +
> > +This property informs if netdev supports xdp pass action.
> > +
> > +*  XDP_TX
> > +
> > +This property informs if netdev supports xdp tx action.
> > +
> > +*  XDP_REDIRECT
> > +
> > +This property informs if netdev supports xdp redirect action.
> > +It assumes the all beforehand mentioned flags are enabled.
> > +
> > +*  XDP_ZEROCOPY
> > +
> > +This property informs if netdev driver supports xdp zero copy.
> > +It assumes the all beforehand mentioned flags are enabled.
> =

> Nit: I think 'XDP_ZEROCOPY' can lead people to think that this is
> zero-copy support for all XDP operations, which is obviously not the
> case. So maybe 'XDP_SOCK_ZEROCOPY' (and update the description to
> mention AF_XDP sockets explicitly)?

AF_XDP_ZEROCOPY?

> =

> -Toke
> =

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
