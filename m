Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C86B1D88D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 22:07:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C77458815C;
	Mon, 18 May 2020 20:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O+HQxc+c1n8K; Mon, 18 May 2020 20:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C4FF8825E;
	Mon, 18 May 2020 20:07:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FF7F1BF400
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 19:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 61C7C2040E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 19:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JNXRd5JieUl3 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2020 19:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 58C3D2035B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 19:04:36 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id e2so6978057eje.13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 12:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wnLypuPdtL0C61OykHZywljajBtmpW7roP2qVljE5nE=;
 b=B10f4ZayXxWhsyJW8Pk0RGCQXYz1NOafsQBK6cMamYPcqh4mywFLh3iEbyk7VNs13C
 BnkZawDWFsSXXMuKQggjm99qQQ7XUzyeGmtGBbreY8K4OqTSyj1iLA3gtpOq4YjLJxQI
 uLzYfVb7rf7BY7GS5B3fH97uaJZFODdvzNFEFeofhtI7VZ1llhBDbUSMj2QJZNfSsSQZ
 iQCb3LDLdqMBpN9DQU03Pzxo44GIRSjACQGumEzdufXqZDs2HZfdBIt0xHu+aK6NG0dl
 C6nnsT9/XzZmpPABaKu31I58A6bciTa0bfoGHfw+xQYe2RCHIwJSV6/a7fGilrMO2dig
 IHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wnLypuPdtL0C61OykHZywljajBtmpW7roP2qVljE5nE=;
 b=n4IfpoXDSJGMwkOiSNpeQ2vG2kiIyQKFOqqFmUyWZGKxHByvidlIZtCc0/kbkl88NC
 xSVErTNokDGJEdPm6N+Fbsuu0BVTdTmJpXbUMhfIzUo7ECVnUuAXikPAPMdJp0GDC1kV
 Jl2Ezvf+yb7cVz+Sgxp/XC1bZ0rZ/QiYueCwW0Nd5AxlLal34GwByCwmVms01vgpAAsh
 QTgdYNLHDnp4WESKfQXnLSbQul0Ya64L37HHXtHTncl63QtXOGmlFBUH3KsAA/MnvHZp
 GdDSCJayvrVrTzNWGedNB03fAJGPpTZI75l93IjNU/LISwOeFS5oOGyZRT1tx6nxfSBb
 R88A==
X-Gm-Message-State: AOAM530zgCrl/BA8+H+EAiTa/lPJ4YGKxme9L3moVaz8e6mybbirykJr
 hJWUz1EfdjLukGtLskWuzscrpmkdLD+WaxuTRMM=
X-Google-Smtp-Source: ABdhPJw2/FqYoj09p4Cfjkysu1L2a8nVyipsr/Rn+x7gzmV3jJmtS2GNHewqNeG3wP9adl8V1756TGUxt2URz6ksf8E=
X-Received: by 2002:a17:907:1002:: with SMTP id
 ox2mr20792ejb.189.1589742274487; 
 Sun, 17 May 2020 12:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <CA+h21hrg_CeD2-zT+7v3b3hPRFaeggmZC9NqPp+soedCYwG63A@mail.gmail.com>
 <20200517184514.GD606317@lunn.ch>
In-Reply-To: <20200517184514.GD606317@lunn.ch>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sun, 17 May 2020 22:04:23 +0300
Message-ID: <CA+h21hqi0dX349dxXz8vrWUGLoHrk-er77S4rvUrj7jM3QAXWQ@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Approved-At: Mon, 18 May 2020 20:07:01 +0000
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, netdev <netdev@vger.kernel.org>,
 Po Liu <po.liu@nxp.com>, Murali Karicheri <m-karicheri2@ti.com>,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andrew,

On Sun, 17 May 2020 at 21:45, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Sun, May 17, 2020 at 01:51:19PM +0300, Vladimir Oltean wrote:
> > On Sun, 17 May 2020 at 01:19, David Miller <davem@davemloft.net> wrote:
> > >
> > > From: Vladimir Oltean <olteanv@gmail.com>
> > > Date: Sun, 17 May 2020 00:03:39 +0300
> > >
> > > > As to why this doesn't go to tc but to ethtool: why would it go to tc?
> > >
> > > Maybe you can't %100 duplicate the on-the-wire special format and
> > > whatever, but the queueing behavior ABSOLUTELY you can emulate in
> > > software.
> > >
> > > And then you have the proper hooks added for HW offload which can
> > > do the on-the-wire stuff.
> > >
> > > That's how we do these things, not with bolted on ethtool stuff.
> >
> > When talking about frame preemption in the way that it is defined in
> > 802.1Qbu and 802.3br, it says or assumes nothing about queuing. It
> > describes the fact that there are 2 MACs per interface, 1 MAC dealing
> > with some traffic classes and the other dealing with the rest.
>
> I did not follow the previous discussion, but i assume you talked
> about modelling it in Linux as two MACs? Why was that approach not
> followed?
>
>    Andrew

I don't recall having discussed that option, but I guess that you can
see why, if I quote this portion from IEEE 802.1Q-2018:

6.7.1 Support of the ISS by IEEE Std 802.3 (Ethernet)
Mapping between M_CONTROL.requests/indications and IEEE 802.3
MA_CONTROL.requests/indications is performed as specified in IEEE Std
802.1AC. If the MAC supports IEEE 802.3br (TM) Interspersing Express
Traffic, then PFC M_CONTROL.requests are mapped onto the MAC control
interface associated with the express MAC (eMAC).
If frame preemption (6.7.2) is supported on a Port, then the IEEE
802.3 MAC provides the following two MAC service interfaces (99.4 of
IEEE Std 802.3br (TM)-2016 [B21]):
a) A preemptible MAC (pMAC) service interface
b) An express MAC (eMAC) service interface
For priority values that are identified in the frame preemption status
table (6.7.2) as preemptible, frames that are selected for
transmission shall be transmitted using the pMAC service instance, and
for priority values that are identified in the frame preemption status
table as express, frames that are selected for transmission shall be
transmitted using the eMAC service instance.

_In all other respects, the Port behaves as if it is supported by a
single MAC service interface_ (emphasis mine). In particular, all
frames received by the Port are treated as if they were received on a
single MAC service interface regardless of whether they were received
on the eMAC service interface or the pMAC service interface, except
with respect to frame preemption.

Thanks,
-Vladimir
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
